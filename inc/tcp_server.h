#pragma once

#include <stdint.h>
#include <stddef.h>

typedef int32_t (*tcp_server_rx_cb_t)(const uint8_t *data, uint32_t len);

int32_t tcp_server_init(tcp_server_rx_cb_t cb);
int32_t tcp_server_send(const uint8_t *data, uint32_t len);
