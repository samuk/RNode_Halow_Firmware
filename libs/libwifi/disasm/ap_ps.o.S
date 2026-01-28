
libwifi/o/ap_ps.o:     file format elf32-csky-little


Disassembly of section .text.ieee80211_ap_send_psdata:

00000000 <ieee80211_ap_send_psdata>:
   0:	14d6      	push      	r4-r9, r15
   2:	d8610025 	ld.b      	r3, (r1, 0x25)
   6:	3200      	movi      	r2, 0
   8:	e4a32001 	andi      	r5, r3, 1
   c:	c4625c00 	ins      	r3, r2, 0, 0
  10:	6d83      	mov      	r6, r0
  12:	6d07      	mov      	r4, r1
  14:	dc610025 	st.b      	r3, (r1, 0x25)
  18:	e4e1000f 	addi      	r7, r1, 16
  1c:	6c1f      	mov      	r0, r7
  1e:	e0000000 	bsr      	0x0	// 0 <skb_list_count>
  22:	e9200009 	bnez      	r0, 0x34	// 34 <ieee80211_ap_send_psdata+0x34>
  26:	d8640025 	ld.b      	r3, (r4, 0x25)
  2a:	c4655c00 	ins      	r3, r5, 0, 0
  2e:	dc640025 	st.b      	r3, (r4, 0x25)
  32:	1496      	pop      	r4-r9, r15
  34:	6c1f      	mov      	r0, r7
  36:	e0000000 	bsr      	0x0	// 0 <skb_list_dequeue>
  3a:	6e03      	mov      	r8, r0
  3c:	e900fff0 	bez      	r0, 0x1c	// 1c <ieee80211_ap_send_psdata+0x1c>
  40:	d9202007 	ld.w      	r9, (r0, 0x1c)
  44:	6c1f      	mov      	r0, r7
  46:	e0000000 	bsr      	0x0	// 0 <skb_list_count>
  4a:	d8691000 	ld.h      	r3, (r9, 0x0)
  4e:	e900000c 	bez      	r0, 0x66	// 66 <ieee80211_ap_send_psdata+0x66>
  52:	ec632000 	ori      	r3, r3, 8192
  56:	dc691000 	st.h      	r3, (r9, 0x0)
  5a:	6ca3      	mov      	r2, r8
  5c:	6c53      	mov      	r1, r4
  5e:	6c1b      	mov      	r0, r6
  60:	e0000000 	bsr      	0x0	// 0 <ieee80211_tx_skb>
  64:	07dc      	br      	0x1c	// 1c <ieee80211_ap_send_psdata+0x1c>
  66:	3b8d      	bclri      	r3, 13
  68:	07f7      	br      	0x56	// 56 <ieee80211_ap_send_psdata+0x56>

Disassembly of section .text.ieee80211_ap_rx_check_psstate:

00000000 <ieee80211_ap_rx_check_psstate>:
   0:	14d2      	push      	r4-r5, r15
   2:	9062      	ld.w      	r3, (r0, 0x8)
   4:	9021      	ld.w      	r1, (r0, 0x4)
   6:	6d03      	mov      	r4, r0
   8:	93a7      	ld.w      	r5, (r3, 0x1c)
   a:	e9010011 	bez      	r1, 0x2c	// 2c <ieee80211_ap_rx_check_psstate+0x2c>
   e:	d8610025 	ld.b      	r3, (r1, 0x25)
  12:	e4632001 	andi      	r3, r3, 1
  16:	e923000c 	bnez      	r3, 0x2e	// 2e <ieee80211_ap_rx_check_psstate+0x2e>
  1a:	3280      	movi      	r2, 128
  1c:	8d60      	ld.h      	r3, (r5, 0x0)
  1e:	4245      	lsli      	r2, r2, 5
  20:	68c8      	and      	r3, r2
  22:	e9030005 	bez      	r3, 0x2c	// 2c <ieee80211_ap_rx_check_psstate+0x2c>
  26:	9000      	ld.w      	r0, (r0, 0x0)
  28:	e0000000 	bsr      	0x0	// 0 <ieee80211_sta_ps_start>
  2c:	1492      	pop      	r4-r5, r15
  2e:	6c17      	mov      	r0, r5
  30:	e0000000 	bsr      	0x0	// 0 <ieee80211_is_assoc>
  34:	e920fffc 	bnez      	r0, 0x2c	// 2c <ieee80211_ap_rx_check_psstate+0x2c>
  38:	3280      	movi      	r2, 128
  3a:	8d60      	ld.h      	r3, (r5, 0x0)
  3c:	4245      	lsli      	r2, r2, 5
  3e:	68c8      	and      	r3, r2
  40:	e923fff6 	bnez      	r3, 0x2c	// 2c <ieee80211_ap_rx_check_psstate+0x2c>
  44:	9460      	ld.w      	r3, (r4, 0x0)
  46:	9421      	ld.w      	r1, (r4, 0x4)
  48:	d803202a 	ld.w      	r0, (r3, 0xa8)
  4c:	208f      	addi      	r0, 144
  4e:	e0000000 	bsr      	0x0	// 0 <ieee80211_tim_clr>
  52:	9421      	ld.w      	r1, (r4, 0x4)
  54:	9400      	ld.w      	r0, (r4, 0x0)
  56:	e0000000 	bsr      	0x0	// 0 <ieee80211_sta_ps_end>
  5a:	07e9      	br      	0x2c	// 2c <ieee80211_ap_rx_check_psstate+0x2c>

Disassembly of section .text.ieee80211_ap_tx_check_psstate:

00000000 <ieee80211_ap_tx_check_psstate>:
   0:	14d5      	push      	r4-r8, r15
   2:	6d43      	mov      	r5, r0
   4:	6dc7      	mov      	r7, r1
   6:	6d0b      	mov      	r4, r2
   8:	e9220004 	bnez      	r2, 0x10	// 10 <ieee80211_ap_tx_check_psstate+0x10>
   c:	3000      	movi      	r0, 0
   e:	1495      	pop      	r4-r8, r15
  10:	d8620025 	ld.b      	r3, (r2, 0x25)
  14:	e4632001 	andi      	r3, r3, 1
  18:	e903fffa 	bez      	r3, 0xc	// c <ieee80211_ap_tx_check_psstate+0xc>
  1c:	d8600025 	ld.b      	r3, (r0, 0x25)
  20:	e903fff6 	bez      	r3, 0xc	// c <ieee80211_ap_tx_check_psstate+0xc>
  24:	9107      	ld.w      	r0, (r1, 0x1c)
  26:	e0000000 	bsr      	0x0	// 0 <ieee80211_is_assoc>
  2a:	e920fff1 	bnez      	r0, 0xc	// c <ieee80211_ap_tx_check_psstate+0xc>
  2e:	d8640025 	ld.b      	r3, (r4, 0x25)
  32:	e5032001 	andi      	r8, r3, 1
  36:	c4605c00 	ins      	r3, r0, 0, 0
  3a:	dc640025 	st.b      	r3, (r4, 0x25)
  3e:	e4c4000f 	addi      	r6, r4, 16
  42:	6c1b      	mov      	r0, r6
  44:	e0000000 	bsr      	0x0	// 0 <skb_list_count>
  48:	d8650025 	ld.b      	r3, (r5, 0x25)
  4c:	640c      	cmphs      	r3, r0
  4e:	0c13      	bf      	0x74	// 74 <ieee80211_ap_tx_check_psstate+0x74>
  50:	d8640025 	ld.b      	r3, (r4, 0x25)
  54:	c4685c00 	ins      	r3, r8, 0, 0
  58:	dc640025 	st.b      	r3, (r4, 0x25)
  5c:	6c5f      	mov      	r1, r7
  5e:	6c1b      	mov      	r0, r6
  60:	e0000000 	bsr      	0x0	// 0 <skb_list_queue>
  64:	3302      	movi      	r3, 2
  66:	8c46      	ld.h      	r2, (r4, 0xc)
  68:	3100      	movi      	r1, 0
  6a:	6c17      	mov      	r0, r5
  6c:	e0000000 	bsr      	0x0	// 0 <ieee80211_wakeup_sta>
  70:	3001      	movi      	r0, 1
  72:	07ce      	br      	0xe	// e <ieee80211_ap_tx_check_psstate+0xe>
  74:	6c1b      	mov      	r0, r6
  76:	e0000000 	bsr      	0x0	// 0 <skb_list_dequeue>
  7a:	6c83      	mov      	r2, r0
  7c:	6c53      	mov      	r1, r4
  7e:	6c17      	mov      	r0, r5
  80:	e0000000 	bsr      	0x0	// 0 <ieee80211_tx_skb>
  84:	07df      	br      	0x42	// 42 <ieee80211_ap_tx_check_psstate+0x42>
