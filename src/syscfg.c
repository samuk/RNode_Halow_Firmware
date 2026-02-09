#include "sys_config.h"
#include "typesdef.h"
#include "list.h"
#include "dev.h"
#include "devid.h"
#include "osal/string.h"
#include "osal/semaphore.h"
#include "osal/mutex.h"
#include "osal/irq.h"
#include "osal/task.h"
#include "osal/sleep.h"
#include "osal/timer.h"
#include "hal/gpio.h"
#include "hal/uart.h"
#include "lib/common/common.h"
#include "lib/umac/ieee80211.h"
#include "lib/umac/wifi_cfg.h"
#include "lib/syscfg/syscfg.h"
#include "lib/atcmd/libatcmd.h"
#include "lib/net/dhcpd/dhcpd.h"
#include "lwip/ip_addr.h"
#include "lwip/netdb.h"
#include "netif/ethernetif.h"
#include "lib/lmac/lmac.h"
#include "syscfg.h"

extern void *lmacops;

struct sys_config sys_cfgs = {
    .wifi_mode        = SYS_WIFI_MODE,
    .channel          = 0,
    .beacon_int       = 500,
    .dtim_period      = 2,
    .bss_max_idle     = 300,
    .key_mgmt         = WPA_KEY_MGMT_PSK,
    .ipaddr           = 0x017BA8C0, // 192.168.123.1
    .netmask          = 0x00FFFFFF, // 255.255.255.0
    .gw_ip            = 0x017BA8C0, // 192.168.123.1
    .dhcpd_startip    = 0x027BA8C0, // 192.168.123.2
    .dhcpd_endip      = 0xFE7BA8C0, // 192.168.123.254
    .dhcpd_lease_time = 3600,
    .dhcpd_en         = SYS_DHCPD_EN,
    .dhcpc_en         = SYS_DHCPC_EN,
    .sta_max          = SYS_STA_MAX,
    .acs_enable       = 1,
    .use4addr         = 1,
    .wpa_proto        = WPA_PROTO_RSN,
    .pairwise_cipher  = WPA_CIPHER_CCMP,
    .group_cipher     = WPA_CIPHER_CCMP,
};

int32 syscfg_save(void) {
    return syscfg_write(&sys_cfgs, sizeof(sys_cfgs));
}

void syscfg_set_default_val() {
    sysctrl_efuse_mac_addr_calc(sys_cfgs.mac);
    if (IS_ZERO_ADDR(sys_cfgs.mac)) {
        os_random_bytes(sys_cfgs.mac, 6);
        sys_cfgs.mac[0] &= 0xfe;
        os_printf("use random mac " MACSTR "\r\n", MAC2STR(sys_cfgs.mac));
    }
    os_strcpy(sys_cfgs.devname, WNB_DEV_DOMAIN);
    os_snprintf((char *)sys_cfgs.ssid, SSID_MAX_LEN, "%s%02X%02X%02X", WIFI_SSID_PREFIX, sys_cfgs.mac[3], sys_cfgs.mac[4], sys_cfgs.mac[5]);
    os_strcpy(sys_cfgs.passwd, "12345678");
    //wpa_passphrase(sys_cfgs.ssid, sys_cfgs.passwd, sys_cfgs.psk);
    os_snprintf((char *)sys_cfgs.ssid, SSID_MAX_LEN, WIFI_SSID_PREFIX"%02X%02X%02X", sys_cfgs.mac[3], sys_cfgs.mac[4], sys_cfgs.mac[5]);

    if (module_efuse_info.module_type == MODULE_TYPE_750M) {
        sys_cfgs.chan_list[0] = 7640;
        sys_cfgs.chan_list[1] = 7720;
        sys_cfgs.chan_list[2] = 7800;
        sys_cfgs.chan_cnt     = 3;
        sys_cfgs.bss_bw       = 8;
    } else if (module_efuse_info.module_type == MODULE_TYPE_810M) {
        sys_cfgs.chan_list[0] = 8050;
        sys_cfgs.chan_list[1] = 8150;
        sys_cfgs.chan_cnt     = 2;
        sys_cfgs.bss_bw       = 8;
    } else if (module_efuse_info.module_type == MODULE_TYPE_850M) {
        sys_cfgs.chan_list[0] = 8450;
        sys_cfgs.chan_list[1] = 8550;
        sys_cfgs.chan_cnt     = 2;
        sys_cfgs.bss_bw       = 8;
    } else if (module_efuse_info.module_type == MODULE_TYPE_860M) {
        sys_cfgs.chan_list[0] = 8640;
        sys_cfgs.chan_list[1] = 8660;
        sys_cfgs.chan_cnt     = 2;
        sys_cfgs.bss_bw       = 2;
    } else { // 915M case
        sys_cfgs.chan_list[0] = 9080;
        sys_cfgs.chan_list[1] = 9160;
        sys_cfgs.chan_list[2] = 9240;
        sys_cfgs.chan_cnt     = 3;
        sys_cfgs.bss_bw       = 8;
    }

    sys_cfgs.txpower = WNB_TX_POWER;
    // os_printf("txpower init:%d\r\n",sys_cfgs.txpower);
}
