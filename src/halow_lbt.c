#include "halow.h"

#include <string.h>

#include "lib/lmac/ieee802_11_defs.h"
#include "lib/lmac/lmac_def.h"
#include "lib/lmac/hgic.h"
#include "lib/skb/skb.h"
#include "lib/skb/skbuff.h"
#include "osal/semaphore.h"
#include "osal/string.h"
#include "utils.h"

#define HALOW_LBT_CHUNKS    5

static int64_t g_last_tx_us;
static int64_t g_last_lbt_us;


// TODO: make configurator
static uint32_t halow_lbt_no_check_time_us(void){
    return 3000U;
}

static uint32_t halow_lbt_force_check_period_ms(void){
    return 250U;
}

static uint32_t halow_lbt_window_min_time_us(void){
    return 5000U;
}

static uint32_t halow_lbt_window_max_time_us(void){
    return 10000U;
}

static uint32_t halow_lbt_window_refresh_ms(void){
    return 250U;
}

static uint32_t halow_lbt_max_wait_time_ms(void){
    return 1000U;
}

static int8_t halow_lbt_get_threshold_bknoise(void){
    return -80;
}

static void halow_lbt_rand_init_from_bknoise (void){
    uint32_t seed = 0xA5A5A5A5u;
    uint32_t cnt  = 0;

    ah_rfdigicali_bknoise_valid_pd_clr();
    lmac_bknoise_calc_en();

    while (cnt < 1000) {
        if (ah_rfdigicali_bknoise_valid_pd_get() == 0) {
            os_sleep_us(10);
            continue;
        }

        int32_t v = lmac_bknoise_get();
        lmac_bknoise_calc_en();

        seed ^= (uint32_t)((int8_t)v);
        seed = (seed << 5) | (seed >> 27);
        seed += (cnt * 0x9E3779B1u);

        cnt++;
    }

    lmac_bknoise_calc_dis();

    if (seed == 0) {
        seed = 1;
    }

    os_srand(seed);
}

int8_t halow_lbt_noise_dbm_now (int64_t sample_time_us){    
    int64_t time_start = get_time_us();
    int64_t time_end = time_start + sample_time_us;

    ah_rfdigicali_config_hw_bknoise(384, 1);
    ah_rfdigicali_bknoise_valid_pd_clr();
    lmac_bknoise_calc_en();

    ah_tdma_start();
    os_sleep_us(32);
    ah_tdma_abort();


    int64_t acc = 0;
    uint32_t cnt = 0;
    while (get_time_us() < time_end) {
        if (ah_rfdigicali_bknoise_valid_pd_get() == 0) {
            os_sleep_us(10);
            continue;
        }
        int32_t v = lmac_bknoise_get();
        lmac_bknoise_calc_en();
        acc += (int8_t)v;
        cnt++;
    }
    lmac_bknoise_calc_dis();

    if (cnt == 0) {
        return (int8_t)-128;
    }

    int64_t avg = (acc >= 0) ? (acc + (int64_t)(cnt / 2)) : (acc - (int64_t)(cnt / 2));
    avg /= (int64_t)cnt;

    if (avg > 127)  { avg = 127; }
    if (avg < -128) { avg = -128; }

    return (int8_t)avg;
}

inline int64_t halow_lbt_generate_wait_window_us( void ){
    int64_t min_time_us = (int64_t)halow_lbt_window_min_time_us();
    int64_t max_time_us = (int64_t)halow_lbt_window_max_time_us();

    if (max_time_us <= min_time_us) {
        return min_time_us;
    }

    uint64_t span = (uint64_t)(max_time_us - min_time_us + 1);
    uint64_t rnd  = (uint64_t)os_rand();

    return min_time_us + (int64_t)(rnd % span);
}

void halow_lbt_tx_complete_update(void){
    g_last_tx_us = get_time_us();
}

int32_t halow_lbt_wait ( void ){
    int64_t time_start_us = get_time_us();
    int64_t time_from_last_tx_us = time_start_us - g_last_tx_us;
    int64_t time_from_last_lbt_us = time_start_us - g_last_lbt_us;
    if( (time_from_last_tx_us    < (int64_t)halow_lbt_no_check_time_us()) &&
        (time_from_last_lbt_us   < (int64_t)halow_lbt_force_check_period_ms()*1000LL)){
        return 0;
    }

    int8_t   hist[HALOW_LBT_CHUNKS] = { 0 };
    uint32_t idx = 0;
    uint32_t filled = 0;

    int64_t window_us = halow_lbt_generate_wait_window_us();
    int64_t slice_us = window_us / HALOW_LBT_CHUNKS;

    int64_t time_update_window_us = time_start_us;

    while (1) {
        int64_t now_us = get_time_us();
        
        // Timeout
        int64_t max_wait_us = (int64_t)halow_lbt_max_wait_time_ms() * 1000LL;
        if ((now_us - time_start_us) >= max_wait_us) { 
            return -1; 
        }
        
        // Refresh if too long
        if ((now_us - time_update_window_us) >= (uint64_t)((uint64_t)halow_lbt_window_refresh_ms()*1000LL)) {
            time_update_window_us = now_us;
            window_us = halow_lbt_generate_wait_window_us();
            slice_us = window_us / HALOW_LBT_CHUNKS;
        }

        int8_t noise_dbm = halow_lbt_noise_dbm_now(slice_us);

        hist[idx] = noise_dbm;
        idx = (idx + 1) % HALOW_LBT_CHUNKS;

        if (filled < HALOW_LBT_CHUNKS) {
            filled++;
        }

        if (filled == HALOW_LBT_CHUNKS) {
            bool channel_free = true;

            for (uint32_t i = 0; i < HALOW_LBT_CHUNKS; i++) {
                if (hist[i] >= halow_lbt_get_threshold_bknoise()) {
                    channel_free = false;
                    break;
                }
            }

            if (channel_free) {
                g_last_lbt_us = now_us;
                //os_printf("LBT %d\r\n", noise_dbm);
                return 0;
            }
        }
    }
}

int32_t halow_lbt_init( void ){
    halow_lbt_rand_init_from_bknoise();
    return 0;
}
