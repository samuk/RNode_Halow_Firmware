#include "net_ip.h"
#include "lwip/netif.h"
#include "lwip/ip_addr.h"
#include "lwip/dhcp.h"
#include "configdb.h"
#include "lwip/tcpip.h"
#include "sys_config.h"

#define NET_IP_DEBUG

#ifdef NET_IP_DEBUG
#define nip_debug(fmt, ...)  os_printf("[NET_IP] " fmt "\r\n", ##__VA_ARGS__)
#else
#define nip_debug(fmt, ...)  do { } while (0)
#endif

#define NET_IP_CONFIG_PREFIX              CONFIGDB_ADD_MODULE("net_ip")
#define NET_IP_CONFIG_ADD_CONFIG(name)    NET_IP_CONFIG_PREFIX "." name

#define NET_IP_CONFIG_MODE_NAME           NET_IP_CONFIG_ADD_CONFIG("mode")
#define NET_IP_CONFIG_IP_NAME             NET_IP_CONFIG_ADD_CONFIG("ip")
#define NET_IP_CONFIG_MASK_NAME           NET_IP_CONFIG_ADD_CONFIG("mask")
#define NET_IP_CONFIG_GW_NAME             NET_IP_CONFIG_ADD_CONFIG("gw")

static struct netif *g_nif;
extern struct netif *netif_default;

static bool net_ip_config_is_valid(const net_ip_config_t *cfg){
    if (cfg == NULL) {
        return false;
    }
    if ((cfg->mode != NET_IP_MODE_DHCP) &&
        (cfg->mode != NET_IP_MODE_STATIC)) {
        return false;
    }

    if (cfg->mode == NET_IP_MODE_STATIC) {
        uint32_t m = cfg->mask.addr;
        uint32_t inv;
        
        if (cfg->ip.addr == 0) {
            return false;
        }
        if (m == 0) {
            return false;
        }
        inv = ~m;
        if ((inv & (inv + 1)) != 0) {
            return false;
        }
    }
    return true;
}


static void net_ip_apply_cb(void *arg){
    net_ip_config_t* cfg = (net_ip_config_t*)arg;

    if (cfg == NULL) {
        return;
    }
    if (g_nif == NULL) {
        os_free(cfg);
        return;
    }

    dhcp_stop(g_nif);

    if (cfg->mode == NET_IP_MODE_DHCP) {
        dhcp_start(g_nif);
    } else {
        netif_set_addr(g_nif, &cfg->ip, &cfg->mask, &cfg->gw);
    }

    os_free(cfg);
}

void net_ip_config_load(net_ip_config_t *cfg){
    if (cfg == NULL) {
        return;
    }

    configdb_get_i8(NET_IP_CONFIG_MODE_NAME, (int8_t*)&cfg->mode);

    cfg->ip.addr   = NET_IP_CONFIG_IP_DEF;
    cfg->mask.addr = NET_IP_CONFIG_MASK_DEF;
    cfg->gw.addr   = NET_IP_CONFIG_GW_DEF;

    if (cfg->mode == NET_IP_MODE_STATIC) {
        configdb_get_i32(NET_IP_CONFIG_IP_NAME,   (int32_t*)&cfg->ip.addr);
        configdb_get_i32(NET_IP_CONFIG_MASK_NAME, (int32_t*)&cfg->mask.addr);
        configdb_get_i32(NET_IP_CONFIG_GW_NAME,   (int32_t*)&cfg->gw.addr);
    }

    if (!net_ip_config_is_valid(cfg)) {
        nip_debug("Invalid config in DB -> defaults");
        cfg->mode = NET_IP_MODE_DHCP;
        cfg->ip.addr   = NET_IP_CONFIG_IP_DEF;
        cfg->mask.addr = NET_IP_CONFIG_MASK_DEF;
        cfg->gw.addr   = NET_IP_CONFIG_GW_DEF;
    }
}

void net_ip_config_save(const net_ip_config_t *cfg){
    if (cfg == NULL) {
        return;
    }
    if(!net_ip_config_is_valid(cfg)){
        nip_debug("Trying save invalid config!");
        return;
    }
    
    configdb_set_i8 (NET_IP_CONFIG_MODE_NAME, (int8_t*)&cfg->mode);
    if(cfg->mode == NET_IP_MODE_STATIC){
        configdb_set_i32(NET_IP_CONFIG_IP_NAME,   (int32_t*)&cfg->ip.addr);
        configdb_set_i32(NET_IP_CONFIG_MASK_NAME, (int32_t*)&cfg->mask.addr);
        configdb_set_i32(NET_IP_CONFIG_GW_NAME,   (int32_t*)&cfg->gw.addr);
    }
}

void net_ip_config_apply( const net_ip_config_t *cfg ){
    net_ip_config_t *cpy;

    if (cfg == NULL) {
        return;
    }
    if (g_nif == NULL) {
        return;
    }
    if (!net_ip_config_is_valid(cfg)) {
        nip_debug("Trying apply invalid config!");
        return;
    }

    cpy = (net_ip_config_t *)os_malloc(sizeof(*cpy));
    if (cpy == NULL) {
        nip_debug("apply: OOM");
        return;
    }

    memcpy(cpy, cfg, sizeof(*cpy));

    if (tcpip_try_callback(net_ip_apply_cb, cpy) != ERR_OK) {
        nip_debug("apply: tcpip_try_callback failed");
        os_free(cpy);
        return;
    }
}

int32_t net_ip_init(void){
    g_nif = netif_default;
    net_ip_config_t net_ip_config;
    net_ip_config_load(&net_ip_config);
    net_ip_config_apply(&net_ip_config);
    net_ip_config_save(&net_ip_config);
    return 0;
}
