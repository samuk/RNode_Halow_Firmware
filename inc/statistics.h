#ifndef __STATISTICS_H__
#define __STATISTICS_H__

typedef struct{
    uint64_t rx_bytes;
    uint64_t tx_bytes;
    uint64_t rx_packets;
    uint64_t tx_packets;
    uint32_t rx_bitps;
    uint32_t tx_bitps;
} statistics_radio_t;

void statistics_radio_register_rx_package(uint32_t len);
void statistics_radio_register_tx_package(uint32_t len);
statistics_radio_t statistics_radio_get(void);

#endif // __STATISTICS_H__
