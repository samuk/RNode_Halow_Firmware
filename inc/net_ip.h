#ifndef __NET_IP__
#define __NET_IP__

#include "lwip/ip4_addr.h"

typedef enum {
    NET_IP_DHCP = 0,
    NET_IP_STATIC
} net_ip_mode_t;

typedef struct {
    net_ip_mode_t mode;
    ip4_addr_t ip;
    ip4_addr_t mask;
    ip4_addr_t gw;
} net_ip_config_t;

int32_t net_ip_init(void);
void net_ip_config_load(net_ip_config_t *cfg);
void net_ip_config_save(net_ip_config_t *cfg);
void net_ip_config_apply(net_ip_config_t *cfg);

#endif // __NET_IP__
