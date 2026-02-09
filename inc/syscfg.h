#ifndef _PROJECT_SYSCFG_H_
#define _PROJECT_SYSCFG_H_

// Musthave only for OTA
struct system_status {
    uint32 dhcpc_done : 1,
        wifi_connected : 1,
        dbg_heap : 1,
        dbg_top : 2,
        dbg_lmac : 2,
        dbg_umac : 1,
        dbg_irq : 1,
        reset_wdt : 1,
        pair_success : 1,
        upgrading : 1;
    uint8 bssid[6];
    int8 rssi;
    int8 evm;
    uint8 channel;
    struct {
        uint32 ipaddr, netmask, svrip, router, dns1, dns2;
    } dhcpc_result;
};

#endif
