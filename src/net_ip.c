#include "net_ip.h"

#define NET_IP_DEBUG

#ifdef NET_IP_DEBUG
#define nip_debug(fmt, ...)  os_printf("[NET_IP] " fmt "\r\n", ##__VA_ARGS__)
#else
#define nip_debug(fmt, ...)  do { } while (0)
#endif

static struct netif *g_nif;
extern struct netif *netif_default;

static void net_ip_apply_cb( void *arg ){
    net_ip_config_t* ctx = (net_ip_config_t*)arg;

    if (ctx == NULL) {
        return;
    }

    if (ctx->nif == NULL) {
        os_free(ctx);
        return;
    }

    dhcp_stop(ctx->nif);

    if (ctx->cfg.mode == NET_IP_DHCP) {
        dhcp_start(ctx->nif);
    } else {
        netif_set_addr(ctx->nif, &ctx->cfg.ip, &ctx->cfg.mask, &ctx->cfg.gw);
    }

    os_free(ctx);
}

void net_ip_config_load(net_ip_config_t *cfg){

}

void net_ip_config_save(net_ip_config_t *cfg){
    
}

void net_ip_config_apply(net_ip_config_t *cfg){

}

int32_t net_ip_init(void){
    g_nif = netif_default;
}
