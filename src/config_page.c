#include "config_page.h"
#include "lwip/tcp.h"
#include "lwip/tcpip.h"
#include "sys_config.h"
#include <string.h>

//#define CONFIG_PAGE_DEBUG

#ifdef CONFIG_PAGE_DEBUG
#define cfgp_debug(fmt, ...)  os_printf("[CFGP] " fmt "\r\n", ##__VA_ARGS__)
#else
#define cfgp_debug(fmt, ...)  do { } while (0)
#endif

static struct tcp_pcb* g_client_pcb;

static err_t config_accept_callback(void *arg, struct tcp_pcb *newpcb, err_t err){
    if (g_client_pcb) {
        tcp_abort(newpcb);
        return ERR_ABRT;
    }

    g_client_pcb = newpcb;

    //tcp_recv(newpcb, tcp_server_recv_callback);
    //tcp_err (newpcb, tcp_server_err_callback);

	return ERR_OK;
}

int32_t config_page_init(void){
    struct tcp_pcb *pcb;
    err_t err;
    //g_rx_cb = cb;

    pcb = tcp_new();
    if (pcb == NULL) {
        cfgp_debug("Error creating PCB. Out of Memory\r\n");
        return -1;
    }

    err = tcp_bind(pcb, IP_ADDR_ANY, TCP_SERVER_PORT);
    if (err != ERR_OK) {
		cfgp_debug("Unable to bind to port %u: err = %d\r\n", CFG_SERVER_PORT, err);
		return -2;
	}
    tcp_arg(pcb, NULL);

    pcb = tcp_listen(pcb);
    if (pcb == NULL) {
		cfgp_debug("Out of memory while tcp_listen\r\n");
		return -3;
	}

    tcp_nagle_disable(pcb);
    tcp_accept(pcb, config_accept_callback);
    return 0;
}
