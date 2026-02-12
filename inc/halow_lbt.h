#ifndef __HALOW_LBT_H_
#define __HALOW_LBT_H_

// Call on tx complete for reset timer
void halow_lbt_tx_complete_update(void);
int32_t halow_lbt_init(void);
int32_t halow_lbt_wait(void);

#endif
