
#include "basic_include.h"
#include "osal/time.h"
#include "lib/posix/pthread.h"
#include "utils.h"

int64_t get_time_ms(void){
    return (os_jiffies() * NANOSECONDS_PER_TICK) / 1000000ULL;
}

// MUST BE REWORKED!!! DO NOT RETURN US
int64_t get_time_us(void){
    struct timespec ts;

    /* лучше монотонные часы для замеров */
    clock_gettime(CLOCK_MONOTONIC, &ts);

    return ((uint64_t)ts.tv_sec * 1000000ULL) +
           ((uint64_t)ts.tv_nsec / 1000ULL);
}
