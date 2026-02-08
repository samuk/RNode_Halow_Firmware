#include "tcp_server.h"

#include "lwip/tcp.h"
#include "lwip/tcpip.h"
#include "sys_config.h"
#include <string.h>

//#define TCP_SERVER_DEBUG

#ifdef TCP_SERVER_DEBUG
#define tcps_debug(fmt, ...)  os_printf("[TCPS] " fmt "\r\n", ##__VA_ARGS__)
#else
#define tcps_debug(fmt, ...)  do { } while (0)
#endif

struct tcp_tx_package {
    struct tcp_pcb* pcb;
    uint16_t len;
    uint8_t data[0];
};


static struct tcp_pcb* g_client_pcb;
static tcp_server_rx_cb_t g_rx_cb;
static uint8_t* g_rx_pkg_buf;

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

    pcb = tcp_new();
    if (pcb == NULL) {
        tcps_debug("Error creating PCB. Out of Memory\r\n");
        return -1;
    }

    err = tcp_bind(pcb, IP_ADDR_ANY, TCP_SERVER_PORT);
    if (err != ERR_OK) {
		tcps_debug("Unable to bind to port %u: err = %d\r\n", TCP_SERVER_PORT, err);
		return -2;
	}
    tcp_arg(pcb, NULL);

    pcb = tcp_listen(pcb);
    if (pcb == NULL) {
		tcps_debug("Out of memory while tcp_listen\r\n");
		return -3;
	}

    
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
