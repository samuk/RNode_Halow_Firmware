#include "tcp_server.h"

#include "lwip/tcp.h"
#include "lwip/tcpip.h"
#include "sys_config.h"
#include "configdb.h"
#include "lwip/ip4_addr.h"
#include "lwip/ip_addr.h"
#include <string.h>

//#define TCP_SERVER_DEBUG

#ifdef TCP_SERVER_DEBUG
#define tcps_debug(fmt, ...)  os_printf("[TCPS] " fmt "\r\n", ##__VA_ARGS__)
#else
#define tcps_debug(fmt, ...)  do { } while (0)
#endif

#ifndef TCP_SERVER_CONFIG_PREFIX
#define TCP_SERVER_CONFIG_PREFIX                    CONFIGDB_ADD_MODULE("tcps")
#define TCP_SERVER_CONFIG_ADD_CONFIG(name)          TCP_SERVER_CONFIG_PREFIX "." name

#define TCP_SERVER_CONFIG_PORT_NAME                 TCP_SERVER_CONFIG_ADD_CONFIG("port")
#define TCP_SERVER_CONFIG_ENABLED_NAME              TCP_SERVER_CONFIG_ADD_CONFIG("enabled")
#define TCP_SERVER_CONFIG_WHITELIST_IP_NAME         TCP_SERVER_CONFIG_ADD_CONFIG("wlst_ip")
#define TCP_SERVER_CONFIG_WHITELIST_MASK_NAME       TCP_SERVER_CONFIG_ADD_CONFIG("wlst_mask")
#endif

struct tcp_tx_package {
    struct tcp_pcb* pcb;
    uint16_t len;
    uint8_t data[0];
};


static struct tcp_pcb* g_listen_pcb;
static struct tcp_pcb* g_client_pcb;
static tcp_server_config_t g_cfg;
static tcp_server_rx_cb_t g_rx_cb;
static uint8_t* g_rx_pkg_buf;


static err_t tcp_server_accept_callback(void *arg, struct tcp_pcb *newpcb, err_t err);

#ifdef TCP_SERVER_DEBUG
static inline void tcp_server_config_debug_print( const char *tag,
                                                  const tcp_server_config_t *cfg ){
    char ipbuf[16];
    char maskbuf[16];

    if (cfg == NULL) {
        return;
    }

    ip4addr_ntoa_r((const ip4_addr_t *)&cfg->whitelist_ip,   ipbuf,   sizeof(ipbuf));
    ip4addr_ntoa_r((const ip4_addr_t *)&cfg->whitelist_mask, maskbuf, sizeof(maskbuf));

    tcps_debug("%s en=%d port=%u wlst_ip=%s wlst_mask=%s",
               tag ? tag : "CFG",
               cfg->enabled ? 1 : 0,
               (unsigned)cfg->port,
               ipbuf,
               maskbuf);
}
#else
#define tcp_server_config_debug_print(tag, cfg) do { } while (0)
#endif

void tcp_server_config_load(tcp_server_config_t *cfg){
    int8_t enabled;
    int16_t port;
    int32_t ip;
    int32_t mask;

    if (cfg == NULL) {
        return;
    }

    cfg->enabled = TCP_SERVER_CONFIG_ENABLED_DEF ? true : false;
    cfg->port = TCP_SERVER_CONFIG_PORT_DEF;
    cfg->whitelist_ip.addr = (uint32_t)TCP_SERVER_CONFIG_WHITELIST_IP_DEF;
    cfg->whitelist_mask.addr = (uint32_t)TCP_SERVER_CONFIG_WHITELIST_MASK_DEF;

    if (configdb_get_i8(TCP_SERVER_CONFIG_ENABLED_NAME, &enabled) == 0) {
        cfg->enabled = enabled ? true : false;
    }
    if (configdb_get_i16(TCP_SERVER_CONFIG_PORT_NAME, &port) == 0) {
        cfg->port = (uint16_t)port;
    }
    if (configdb_get_i32(TCP_SERVER_CONFIG_WHITELIST_IP_NAME, &ip) == 0) {
        cfg->whitelist_ip.addr = (uint32_t)ip;
    }
    if (configdb_get_i32(TCP_SERVER_CONFIG_WHITELIST_MASK_NAME, &mask) == 0) {
        cfg->whitelist_mask.addr = (uint32_t)mask;
    }

    tcp_server_config_debug_print("LOAD", cfg);
}

void tcp_server_config_save(const tcp_server_config_t *cfg){
    int8_t enabled;
    int16_t port;
    int32_t ip;
    int32_t mask;

    if (cfg == NULL) {
        return;
    }

    tcp_server_config_debug_print("SAVE", cfg);

    enabled = cfg->enabled ? 1 : 0;
    port = (int16_t)cfg->port;
    ip = (int32_t)cfg->whitelist_ip.addr;
    mask = (int32_t)cfg->whitelist_mask.addr;

    configdb_set_i8(TCP_SERVER_CONFIG_ENABLED_NAME, &enabled);
    configdb_set_i16(TCP_SERVER_CONFIG_PORT_NAME, &port);
    configdb_set_i32(TCP_SERVER_CONFIG_WHITELIST_IP_NAME, &ip);
    configdb_set_i32(TCP_SERVER_CONFIG_WHITELIST_MASK_NAME, &mask);
}

static void tcp_server_apply_cb(void *arg){
    tcp_server_config_t *cfg = (tcp_server_config_t *)arg;
    struct tcp_pcb *pcb;
    err_t err;

    if (cfg == NULL) {
        return;
    }

    if (g_listen_pcb != NULL) {
        tcp_accept(g_listen_pcb, NULL);
        tcp_close(g_listen_pcb);
        g_listen_pcb = NULL;
    }

    if (g_client_pcb != NULL) {
        tcp_arg(g_client_pcb, NULL);
        tcp_recv(g_client_pcb, NULL);
        tcp_err (g_client_pcb, NULL);
        tcp_abort(g_client_pcb);
        g_client_pcb = NULL;
    }

    g_cfg = *cfg;

    if (!g_cfg.enabled) {
        tcp_server_config_debug_print("APPLY(disabled)", &g_cfg);
        goto end;
    }

    pcb = tcp_new();
    if (pcb == NULL) {
        tcps_debug("APPLY tcp_new OOM");
        goto end;
    }

    err = tcp_bind(pcb, IP_ADDR_ANY, (uint16_t)g_cfg.port);
    if (err != ERR_OK) {
        tcps_debug("APPLY bind port=%u err=%d", (unsigned)g_cfg.port, (int)err);
        tcp_close(pcb);
        goto end;
    }
    tcp_arg(pcb, NULL);

    pcb = tcp_listen(pcb);
    if (pcb == NULL) {
        tcps_debug("APPLY listen OOM");
        goto end;
    }

    g_listen_pcb = pcb;

    tcp_nagle_disable(pcb);
    tcp_accept(pcb, tcp_server_accept_callback);
    tcp_server_config_debug_print("APPLY(ok)", &g_cfg);

end:
    os_free(cfg);
}

void tcp_server_config_apply(const tcp_server_config_t *cfg){
    tcp_server_config_t *copy;

    if (cfg == NULL) {
        return;
    }

    copy = (tcp_server_config_t *)os_malloc(sizeof(*copy));
    if (copy == NULL) {
        tcps_debug("APPLY arg OOM");
        return;
    }

    *copy = *cfg;

    if (tcpip_try_callback(tcp_server_apply_cb, copy) != ERR_OK) {
        os_free(copy);
        tcps_debug("APPLY tcpip_try_callback failed");
        return;
    }
}

bool tcp_server_get_client_info( ip4_addr_t *addr, uint16_t *port ){
    if (g_client_pcb == NULL) {
        return false;
    }

    if (addr != NULL) {
        *addr = *ip_2_ip4(&g_client_pcb->remote_ip);
    }
    if (port != NULL) {
        *port = g_client_pcb->remote_port;
    }
    return true;
}

static void tcp_server_send_callback(void *arg){
    struct tcp_tx_package* j = (struct tcp_tx_package*)arg;

    if (j == NULL) {
        return;
    }
    if (j->pcb == NULL) {
        goto end;
    }
    if(j->pcb != g_client_pcb){
        goto end;
    }
    if (tcp_sndbuf(j->pcb) < j->len) {
        goto end;
    }
    if (tcp_sndqueuelen(j->pcb) >= TCP_SND_QUEUELEN) {
        goto end;
    }
    if (tcp_write(j->pcb, j->data, j->len, TCP_WRITE_FLAG_COPY) == ERR_OK) {
        int32_t res = tcp_output(j->pcb);
        if(res != ERR_OK){
            tcps_debug("Output err=%d", res);
        }
    }
end:
    os_free(j);
}

static err_t tcp_server_recv_callback (void *arg,
                                       struct tcp_pcb *tpcb,
                                       struct pbuf *p,
                                       err_t err)
{
    (void)arg;
    (void)err;

    if (p == NULL) {
        tcp_close(tpcb);
        if (g_client_pcb == tpcb) {
            g_client_pcb = NULL;
        }
        return ERR_OK;
    }

    tcps_debug("RECV cb: tot_len=%u first_len=%u", (unsigned)p->tot_len, (unsigned)p->len);
    if (g_rx_cb == NULL) {
        tcp_recved(tpcb, p->tot_len);
        pbuf_free(p);
        return ERR_ARG;
    }
    uint32_t off = 0;
    uint32_t tot = p->tot_len;

    while (off < tot) {
        uint32_t chunk = tot - off;
        if (chunk > HALOW_MTU) {
            chunk = HALOW_MTU;
        }

        pbuf_copy_partial(p, g_rx_pkg_buf, chunk, off);

        g_rx_cb(g_rx_pkg_buf, chunk);

        off += chunk;
        tcp_recved(tpcb, chunk);
    }

    pbuf_free(p);
    return ERR_OK;
}

static void tcp_server_err_callback(void *arg, err_t err){
    (void)arg;
    (void)err;

    tcps_debug("ERR cb: err=%d client_pcb was=%p", (int)err, (void *)g_client_pcb);

    g_client_pcb = NULL;
}

static err_t tcp_server_accept_callback(void *arg, struct tcp_pcb *newpcb, err_t err){
    (void)arg;
    (void)err;

    if (g_cfg.whitelist_mask.addr != 0) {
        const ip4_addr_t *rip = ip_2_ip4(&newpcb->remote_ip);
        if (((rip->addr) & g_cfg.whitelist_mask.addr) != (g_cfg.whitelist_ip.addr & g_cfg.whitelist_mask.addr)) {
            tcp_abort(newpcb);
            return ERR_ABRT;
        }
    }

    if (g_client_pcb) {
        tcp_abort(newpcb);
        return ERR_ABRT;
    }

    g_client_pcb = newpcb;

    tcp_recv(newpcb, tcp_server_recv_callback);
    tcp_err (newpcb, tcp_server_err_callback);

	return ERR_OK;
}

int32_t tcp_server_init(tcp_server_rx_cb_t cb){
    struct tcp_pcb *pcb;
    err_t err;
    g_rx_cb = cb;

    tcp_server_config_load(&g_cfg);
    tcp_server_config_save(&g_cfg);

    if (!g_cfg.enabled) {
        tcps_debug("disabled");
        return 0;
    }

    pcb = tcp_new();
    if (pcb == NULL) {
        tcps_debug("Error creating PCB. Out of Memory\r\n");
        return -1;
    }

    err = tcp_bind(pcb, IP_ADDR_ANY, (uint16_t)g_cfg.port);
    if (err != ERR_OK) {
		tcps_debug("Unable to bind to port %u: err = %d\r\n", (unsigned)g_cfg.port, err);
		return -2;
	}
    tcp_arg(pcb, NULL);

    pcb = tcp_listen(pcb);
    if (pcb == NULL) {
		tcps_debug("Out of memory while tcp_listen\r\n");
		return -3;
	}

    g_listen_pcb = pcb;

    g_rx_pkg_buf = os_malloc(HALOW_MTU);
    if(g_rx_pkg_buf == NULL){
		tcps_debug("Out of memory while halow TX buff allocate\r\n");
        return -3;
    }

    tcp_nagle_disable(pcb);
    tcp_accept(pcb, tcp_server_accept_callback);
    return 0;
}

int32_t tcp_server_send(const uint8_t *data, uint32_t len){
    if (!data) {
        return -1;
    }
    if (len == 0) {
        return 0;
    }
    if (len > TCP_SERVER_MTU) {
        return -2;
    }
    if (!g_client_pcb) {
        return -3;
    }

    struct tcp_tx_package *tx_package = os_malloc(sizeof(struct tcp_tx_package) + len);
    if (tx_package == NULL) {
        return -4;
    }


    tx_package->pcb = g_client_pcb;
    tx_package->len = (uint16_t)len;
    memcpy(tx_package->data, data, len);

    if (tcpip_try_callback(tcp_server_send_callback, tx_package) != ERR_OK) {
        os_free(tx_package);
        return -4;
    }

    return 0;
}
