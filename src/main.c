#include "basic_include.h"
#include "lib/lmac/lmac.h"
#include "lib/skb/skb.h"
#include "lib/skb/skb_list.h"
#include "lib/bus/macbus/mac_bus.h"
#include "lib/atcmd/libatcmd.h"
#include "lib/bus/xmodem/xmodem.h"
#include "lib/net/skmonitor/skmonitor.h"
#include "lib/net/dhcpd/dhcpd.h"
#include "lib/net/utils.h"
#include "lib/umac/ieee80211.h"
#include "lib/umac/wifi_mgr.h"
#include "lib/umac/wifi_cfg.h"
#include "lib/common/atcmd.h"
#include "lwip/err.h"
#include "lwip/sockets.h"
#include "lwip/netdb.h"
#include "lwip/sys.h"
#include "lwip/ip_addr.h"
#include "lwip/tcpip.h"
#include "netif/ethernetif.h"
#include "lib/net/skmonitor/skmonitor.h"
#include "syscfg.h"
#ifdef MULTI_WAKEUP
#include "lib/common/sleep_api.h"
#include "hal/gpio.h"
#include "lib/lmac/lmac.h"
#include "lib/common/dsleepdata.h"
#endif


static struct os_work main_wk;
extern uint32_t srampool_start;
extern uint32_t srampool_end;
struct system_status  sys_status=
{
    .dbg_lmac=2,
};

extern void sys_check_wkreason(uint8 type);
extern void lmac_transceive_statics(uint8 en);
extern sysevt_hdl_res sys_event_hdl(uint32 event_id, uint32 data, uint32 priv);
int32 sys_ieee80211_event_cb(uint8 ifidx, uint16 evt, uint32 param1, uint32 param2);

void *lmacops;


int32 wifi_proc_drvcmd_cust(uint16 cmd_id, uint8 *data, uint32 len, void *hdr)
{
    /*
       cmd_id: driver cmd id (from host driver).
       data  : cmd data.
       len   : cmd data length.
       hdr   : cmd info, just used to call host_cmd_resp API.

       1. parse cmd data, do some thing if you need.

       2. send cmd response to host: 
          // has no additional response data.
          host_cmd_resp(return_value, NULL, 0, hdr);
          
          // has some additional response data.
          host_cmd_resp(return_value, reponse_data, response_data_length, hdr);
          
       3. return RET_OK if the driver cmd has been processed, else return -ENOTSUPP.

       you can process any driver cmd in this function.
    */
    return -ENOTSUPP;
}

#ifndef LED_IO
#define LED_IO    PA_7
#endif

static int32 led_init(void)
{
    gpio_set_dir(LED_IO, GPIO_DIR_OUTPUT);
    gpio_set_val(LED_IO, 0);   /* LED OFF */
    return 0;
}

static int32 sys_main_loop(struct os_work *work){
    static uint8 led = 0;

    gpio_set_val(LED_IO, led);
    led = !led;

    os_run_work_delay(&main_wk, 50);
    return 0;
}

__init static void sys_wifi_ap_init(void)
{
    ieee80211_iface_create_ap(WIFI_MODE_AP, IEEE80211_BAND_S1GHZ);
    ieee80211_pair_enable(WIFI_MODE_AP, WIFI_PAIR_MAGIC);
    wificfg_flush(WIFI_MODE_AP);
}

__init static void sys_wifi_sta_init(void)
{
    ieee80211_iface_create_sta(WIFI_MODE_STA, IEEE80211_BAND_S1GHZ);
    ieee80211_pair_enable(WIFI_MODE_STA, WIFI_PAIR_MAGIC);
    ieee80211_conf_stabr_table(WIFI_MODE_STA, 128, 10 * 60);
    wificfg_flush(WIFI_MODE_STA);
}

__init static void sys_wifi_start(void)
{
    uint8 ifidx = wificfg_get_ifidx(sys_cfgs.wifi_mode, 0);

    if (ifidx < 0) {
        ieee80211_iface_start(WIFI_MODE_AP);
        ieee80211_iface_start(WIFI_MODE_WNBAP);
    } else {
        ieee80211_iface_start(ifidx);
    }
}

__init static void sys_wifi_start_acs(void *ops)
{
    int32 ret;
    struct lmac_acs_ctl acs_ctl;

    if (sys_cfgs.channel == 0 && MODE_IS_AP(sys_cfgs.wifi_mode)) {
        acs_ctl.enable     = sys_cfgs.acs_enable;
        acs_ctl.scan_ms    = sys_cfgs.acs_tmo;
        acs_ctl.chn_bitmap = ~0;
        ret = lmac_start_acs(ops, &acs_ctl, 1);  //阻塞式扫描
        if (ret != RET_ERR) {
            sys_cfgs.channel = ret;
        }
    }
}

__init static void sys_wifi_init(void)
{
    struct lmac_init_param lparam;
    struct ieee80211_initparam param;

    skbpool_init(SKB_POOL_ADDR, (uint32)SKB_POOL_SIZE, 90, 0);
    os_memset(&lparam, 0, sizeof(lparam));
    lparam.rxbuf = WIFI_RX_BUFF_ADDR;
    lparam.rxbuf_size = WIFI_RX_BUFF_SIZE;
    lparam.tdma_buff = TDMA_BUFF_ADDR;
    lparam.tdma_buff_size = TDMA_BUFF_SIZE;

#ifdef MACBUS_USB
    lparam.uart_tx_io = 1;//pa11
#else
    #ifdef UART_TX_PA31
        lparam.uart_tx_io = 2;//pa31
    #else
        lparam.uart_tx_io = 0;//pa13
    #endif
#endif
    //os_printf("uart_tx_io=%d in main\r\n",lparam.uart_tx_io);

#ifdef DUAL_ANT_OPT
    lparam.dual_ant = 1;//enable dual ant
#else
    lparam.dual_ant = 0;//disable dual ant
#endif

    lmacops = lmac_ah_init(&lparam);

    os_memset(&param, 0, sizeof(param));
    param.vif_maxcnt = 4;
    param.sta_maxcnt = sys_cfgs.sta_max ? sys_cfgs.sta_max : 8;
    param.bss_maxcnt = 32;
    param.bss_lifetime  = 300; //300 seconds
    param.evt_cb = sys_ieee80211_event_cb;

    ieee80211_init(&param);
    ieee80211_support_txw830x(lmacops);
    wifi_mgr_init(FMAC_MAC_BUS, WIFIMGR_FRM_TYPE, DRV_AGGSIZE, lmacops, NULL);

    ieee80211_deliver_init(128, 60);

#if WIFI_AP_SUPPORT
    sys_wifi_ap_init();
#endif

#if WIFI_STA_SUPPORT
    sys_wifi_sta_init();
#endif

#if WIFI_WNBAP_SUPPORT
    sys_wifi_wnbap_init();
#endif

#if WIFI_WNBSTA_SUPPORT
    sys_wifi_wnbsta_init();
#endif

#ifdef CONFIG_SLEEP
#if WIFI_PSALIVE_SUPPORT
    wifi_mgr_enable_psalive();
#endif

#if WIFI_PSCONNECT_SUPPORT
    wifi_mgr_enable_psconnect();
#endif
#endif

#if WIFI_MGR_CMD
    wifi_mgrcmd_enable();
#endif

#if WIFI_DHCPC_SUPPORT
    wifi_mgr_enable_dhcpc();
#endif
    sys_wifi_start_acs(lmacops);
    sys_wifi_start();
}

__init int main(void)
{
    mcu_watchdog_timeout(5);
    sys_event_init(32);
    sys_event_take(0xffffffff, sys_event_hdl, 0);
    while (1){}
    
    extern uint32 __sinit, __einit;
	//syscfg_set_default_val();
    //syscfg_check();
    led_init();
    sys_event_init(32);
    sys_event_take(0xffffffff, sys_event_hdl, 0);
    //sys_wifi_init();
    OS_WORK_INIT(&main_wk, sys_main_loop, 0);
    os_run_work_delay(&main_wk, 100);
    sysheap_collect_init(&sram_heap, (uint32)&__sinit, (uint32)&__einit);
    return 0;
}