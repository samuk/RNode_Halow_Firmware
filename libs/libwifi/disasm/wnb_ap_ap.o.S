
libwifi/o/wnb_ap_ap.o:     file format elf32-csky-little


Disassembly of section .text.ieee80211_wnbap_tx_handler:

00000000 <ieee80211_wnbap_tx_handler>:
   0:	14d4      	push      	r4-r7, r15
   2:	6d43      	mov      	r5, r0
   4:	6d07      	mov      	r4, r1
   6:	6dcb      	mov      	r7, r2
   8:	92c7      	ld.w      	r6, (r2, 0x1c)
   a:	e9210008 	bnez      	r1, 0x1a	// 1a <ieee80211_wnbap_tx_handler+0x1a>
   e:	d865203f 	ld.w      	r3, (r5, 0xfc)
  12:	3b44      	cmpnei      	r3, 4
  14:	0829      	bt      	0x66	// 66 <ieee80211_wnbap_tx_handler+0x66>
  16:	3000      	movi      	r0, 0
  18:	041e      	br      	0x54	// 54 <ieee80211_wnbap_tx_handler+0x54>
  1a:	9161      	ld.w      	r3, (r1, 0x4)
  1c:	9140      	ld.w      	r2, (r1, 0x0)
  1e:	e9030006 	bez      	r3, 0x2a	// 2a <ieee80211_wnbap_tx_handler+0x2a>
  22:	e9020004 	bez      	r2, 0x2a	// 2a <ieee80211_wnbap_tx_handler+0x2a>
  26:	b261      	st.w      	r3, (r2, 0x4)
  28:	b340      	st.w      	r2, (r3, 0x0)
  2a:	3300      	movi      	r3, 0
  2c:	b460      	st.w      	r3, (r4, 0x0)
  2e:	d865202a 	ld.w      	r3, (r5, 0xa8)
  32:	6c5f      	mov      	r1, r7
  34:	d8432068 	ld.w      	r2, (r3, 0x1a0)
  38:	6c17      	mov      	r0, r5
  3a:	b281      	st.w      	r4, (r2, 0x4)
  3c:	b440      	st.w      	r2, (r4, 0x0)
  3e:	e443019f 	addi      	r2, r3, 416
  42:	b441      	st.w      	r2, (r4, 0x4)
  44:	dc832068 	st.w      	r4, (r3, 0x1a0)
  48:	6c93      	mov      	r2, r4
  4a:	e0000000 	bsr      	0x0	// 0 <ieee80211_ap_tx_check_psstate>
  4e:	e9000004 	bez      	r0, 0x56	// 56 <ieee80211_wnbap_tx_handler+0x56>
  52:	3001      	movi      	r0, 1
  54:	1494      	pop      	r4-r7, r15
  56:	6c9f      	mov      	r2, r7
  58:	6c53      	mov      	r1, r4
  5a:	6c17      	mov      	r0, r5
  5c:	e0000000 	bsr      	0x0	// 0 <ieee80211_wnb_roaming_do_forward>
  60:	e900ffd7 	bez      	r0, 0xe	// e <ieee80211_wnbap_tx_handler+0xe>
  64:	07f7      	br      	0x52	// 52 <ieee80211_wnbap_tx_handler+0x52>
  66:	8604      	ld.b      	r0, (r6, 0x4)
  68:	e4002001 	andi      	r0, r0, 1
  6c:	e900fff4 	bez      	r0, 0x54	// 54 <ieee80211_wnbap_tx_handler+0x54>
  70:	8e60      	ld.h      	r3, (r6, 0x0)
  72:	3b8e      	bclri      	r3, 14
  74:	ae60      	st.h      	r3, (r6, 0x0)
  76:	07d0      	br      	0x16	// 16 <ieee80211_wnbap_tx_handler+0x16>

Disassembly of section .text.ieee80211_wnbap_rx_ctl:

00000000 <ieee80211_wnbap_rx_ctl>:
   0:	14d0      	push      	r15
   2:	9002      	ld.w      	r0, (r0, 0x8)
   4:	e0000000 	bsr      	0x0	// 0 <kfree_skb>
   8:	3000      	movi      	r0, 0
   a:	1490      	pop      	r15

Disassembly of section .text.ieee80211_wnbap_rx_mgmt:

00000000 <ieee80211_wnbap_rx_mgmt>:
   0:	14d5      	push      	r4-r8, r15
   2:	9042      	ld.w      	r2, (r0, 0x8)
   4:	6d03      	mov      	r4, r0
   6:	92c7      	ld.w      	r6, (r2, 0x1c)
   8:	8e60      	ld.h      	r3, (r6, 0x0)
   a:	e46320f3 	andi      	r3, r3, 243
   e:	eb4300d0 	cmpnei      	r3, 208
  12:	0c09      	bf      	0x24	// 24 <ieee80211_wnbap_rx_mgmt+0x24>
  14:	eb4300e0 	cmpnei      	r3, 224
  18:	0c31      	bf      	0x7a	// 7a <ieee80211_wnbap_rx_mgmt+0x7a>
  1a:	9402      	ld.w      	r0, (r4, 0x8)
  1c:	e0000000 	bsr      	0x0	// 0 <kfree_skb>
  20:	3000      	movi      	r0, 0
  22:	1495      	pop      	r4-r8, r15
  24:	8af4      	ld.h      	r7, (r2, 0x28)
  26:	61d8      	addu      	r7, r6
  28:	e4a60017 	addi      	r5, r6, 24
  2c:	e506000f 	addi      	r8, r6, 16
  30:	2609      	addi      	r6, 10
  32:	65d4      	cmphs      	r5, r7
  34:	0bf3      	bt      	0x1a	// 1a <ieee80211_wnbap_rx_mgmt+0x1a>
  36:	8560      	ld.b      	r3, (r5, 0x0)
  38:	eb4300dd 	cmpnei      	r3, 221
  3c:	081b      	bt      	0x72	// 72 <ieee80211_wnbap_rx_mgmt+0x72>
  3e:	8562      	ld.b      	r3, (r5, 0x2)
  40:	e9230019 	bnez      	r3, 0x72	// 72 <ieee80211_wnbap_rx_mgmt+0x72>
  44:	8563      	ld.b      	r3, (r5, 0x3)
  46:	eb430040 	cmpnei      	r3, 64
  4a:	0814      	bt      	0x72	// 72 <ieee80211_wnbap_rx_mgmt+0x72>
  4c:	8564      	ld.b      	r3, (r5, 0x4)
  4e:	3b41      	cmpnei      	r3, 1
  50:	0811      	bt      	0x72	// 72 <ieee80211_wnbap_rx_mgmt+0x72>
  52:	8567      	ld.b      	r3, (r5, 0x7)
  54:	3b42      	cmpnei      	r3, 2
  56:	080e      	bt      	0x72	// 72 <ieee80211_wnbap_rx_mgmt+0x72>
  58:	3206      	movi      	r2, 6
  5a:	6c63      	mov      	r1, r8
  5c:	6c1b      	mov      	r0, r6
  5e:	e0000000 	bsr      	0x0	// 0 <memcmp>
  62:	e9200008 	bnez      	r0, 0x72	// 72 <ieee80211_wnbap_rx_mgmt+0x72>
  66:	9420      	ld.w      	r1, (r4, 0x0)
  68:	9442      	ld.w      	r2, (r4, 0x8)
  6a:	d801202a 	ld.w      	r0, (r1, 0xa8)
  6e:	e0000000 	bsr      	0x0	// 0 <ieee80211_update_bss_info>
  72:	8561      	ld.b      	r3, (r5, 0x1)
  74:	2301      	addi      	r3, 2
  76:	614c      	addu      	r5, r3
  78:	07dd      	br      	0x32	// 32 <ieee80211_wnbap_rx_mgmt+0x32>
  7a:	9000      	ld.w      	r0, (r0, 0x0)
  7c:	d860202b 	ld.w      	r3, (r0, 0xac)
  80:	8033      	ld.b      	r1, (r0, 0x13)
  82:	8340      	ld.b      	r2, (r3, 0x0)
  84:	e0000000 	bsr      	0x0	// 0 <ieee80211_chan_to_freq>
  88:	8e6d      	ld.h      	r3, (r6, 0x1a)
  8a:	640e      	cmpne      	r3, r0
  8c:	0bc7      	bt      	0x1a	// 1a <ieee80211_wnbap_rx_mgmt+0x1a>
  8e:	8678      	ld.b      	r3, (r6, 0x18)
  90:	e443007e 	addi      	r2, r3, 127
  94:	e442207f 	andi      	r2, r2, 127
  98:	3a11      	cmphsi      	r2, 18
  9a:	0bc0      	bt      	0x1a	// 1a <ieee80211_wnbap_rx_mgmt+0x1a>
  9c:	1022      	lrw      	r1, 0x0	// a4 <ieee80211_wnbap_rx_mgmt+0xa4>
  9e:	d0410882 	ldr.w      	r2, (r1, r2 << 2)
  a2:	7808      	jmp      	r2
  a4:	00000000 	.long	0x00000000
  a8:	74ce      	sextb      	r3, r3
  aa:	e983ffb8 	blz      	r3, 0x1a	// 1a <ieee80211_wnbap_rx_mgmt+0x1a>
  ae:	6c13      	mov      	r0, r4
  b0:	e0000000 	bsr      	0x0	// 0 <ieee80211_wnbap_rx_assoc_req>
  b4:	07b3      	br      	0x1a	// 1a <ieee80211_wnbap_rx_mgmt+0x1a>
  b6:	6c13      	mov      	r0, r4
  b8:	e0000000 	bsr      	0x0	// 0 <ieee80211_wnbap_rx_disassoc>
  bc:	07af      	br      	0x1a	// 1a <ieee80211_wnbap_rx_mgmt+0x1a>
  be:	74ce      	sextb      	r3, r3
  c0:	e983ffad 	blz      	r3, 0x1a	// 1a <ieee80211_wnbap_rx_mgmt+0x1a>
  c4:	6c13      	mov      	r0, r4
  c6:	e0000000 	bsr      	0x0	// 0 <ieee80211_wnbap_rx_probe_req>
  ca:	07a8      	br      	0x1a	// 1a <ieee80211_wnbap_rx_mgmt+0x1a>
  cc:	6c13      	mov      	r0, r4
  ce:	e0000000 	bsr      	0x0	// 0 <ieee80211_wnb_rx_pair>
  d2:	07a4      	br      	0x1a	// 1a <ieee80211_wnbap_rx_mgmt+0x1a>
  d4:	6c13      	mov      	r0, r4
  d6:	e0000000 	bsr      	0x0	// 0 <ieee80211_wnbap_rx_heartbeat>
  da:	07a0      	br      	0x1a	// 1a <ieee80211_wnbap_rx_mgmt+0x1a>
  dc:	74ce      	sextb      	r3, r3
  de:	e983ff9e 	blz      	r3, 0x1a	// 1a <ieee80211_wnbap_rx_mgmt+0x1a>
  e2:	6c13      	mov      	r0, r4
  e4:	e0000000 	bsr      	0x0	// 0 <ieee80211_wnb_rx_roam_request>
  e8:	0799      	br      	0x1a	// 1a <ieee80211_wnbap_rx_mgmt+0x1a>
  ea:	6c13      	mov      	r0, r4
  ec:	e0000000 	bsr      	0x0	// 0 <ieee80211_wnb_rx_wakeup_frame>
  f0:	0795      	br      	0x1a	// 1a <ieee80211_wnbap_rx_mgmt+0x1a>

Disassembly of section .text.ieee80211_wnbap_do_action:

00000000 <ieee80211_wnbap_do_action>:
   0:	14d0      	push      	r15
   2:	e0000000 	bsr      	0x0	// 0 <ieee80211_ap_do_action>
   6:	1490      	pop      	r15

Disassembly of section .text.ieee80211_wnbap_tx_status:

00000000 <ieee80211_wnbap_tx_status>:
   0:	14d1      	push      	r4, r15
   2:	6d07      	mov      	r4, r1
   4:	9167      	ld.w      	r3, (r1, 0x1c)
   6:	e9020018 	bez      	r2, 0x36	// 36 <ieee80211_wnbap_tx_status+0x36>
   a:	8b60      	ld.h      	r3, (r3, 0x0)
   c:	e463200c 	andi      	r3, r3, 12
  10:	3b48      	cmpnei      	r3, 8
  12:	0813      	bt      	0x38	// 38 <ieee80211_wnbap_tx_status+0x38>
  14:	d861002a 	ld.b      	r3, (r1, 0x2a)
  18:	e4632010 	andi      	r3, r3, 16
  1c:	e923000d 	bnez      	r3, 0x36	// 36 <ieee80211_wnbap_tx_status+0x36>
  20:	e0000000 	bsr      	0x0	// 0 <ieee80211_wnb_roaming_ap_cache_data>
  24:	e9000009 	bez      	r0, 0x36	// 36 <ieee80211_wnbap_tx_status+0x36>
  28:	e0000000 	bsr      	0x0	// 0 <cpu_intrpt_save>
  2c:	946f      	ld.w      	r3, (r4, 0x3c)
  2e:	2300      	addi      	r3, 1
  30:	b46f      	st.w      	r3, (r4, 0x3c)
  32:	e0000000 	bsr      	0x0	// 0 <cpu_intrpt_restore>
  36:	1491      	pop      	r4, r15
  38:	e923ffff 	bnez      	r3, 0x36	// 36 <ieee80211_wnbap_tx_status+0x36>
  3c:	e0000000 	bsr      	0x0	// 0 <ieee80211_wnbap_mgmt_tx_status>
  40:	07fb      	br      	0x36	// 36 <ieee80211_wnbap_tx_status+0x36>

Disassembly of section .text.roaming_pkthook_tx:

00000000 <roaming_pkthook_tx>:
   0:	14d0      	push      	r15
   2:	8266      	ld.b      	r3, (r2, 0x6)
   4:	e4632001 	andi      	r3, r3, 1
   8:	6c07      	mov      	r0, r1
   a:	6c4b      	mov      	r1, r2
   c:	e9030008 	bez      	r3, 0x1c	// 1c <roaming_pkthook_tx+0x1c>
  10:	8a42      	ld.h      	r2, (r2, 0x4)
  12:	9120      	ld.w      	r1, (r1, 0x0)
  14:	e0000000 	bsr      	0x0	// 0 <ieee80211_tx>
  18:	3001      	movi      	r0, 1
  1a:	1490      	pop      	r15
  1c:	6c0f      	mov      	r0, r3
  1e:	07fe      	br      	0x1a	// 1a <roaming_pkthook_tx+0x1a>

Disassembly of section .text.ieee80211_wnbap_init:

00000000 <ieee80211_wnbap_init>:
   0:	14d2      	push      	r4-r5, r15
   2:	6d03      	mov      	r4, r0
   4:	3020      	movi      	r0, 32
   6:	e0000000 	bsr      	0x0	// 0 <_os_zalloc>
   a:	dc042063 	st.w      	r0, (r4, 0x18c)
   e:	e9200007 	bnez      	r0, 0x1c	// 1c <ieee80211_wnbap_init+0x1c>
  12:	1152      	lrw      	r2, 0x0	// d8 <ieee80211_wnbap_init+0xd8>
  14:	31a9      	movi      	r1, 169
  16:	1112      	lrw      	r0, 0x0	// dc <ieee80211_wnbap_init+0xdc>
  18:	e0000000 	bsr      	0x0	// 0 <assert_internal>
  1c:	33fa      	movi      	r3, 250
  1e:	4361      	lsli      	r3, r3, 1
  20:	32fa      	movi      	r2, 250
  22:	ac6a      	st.h      	r3, (r4, 0x14)
  24:	ac6b      	st.h      	r3, (r4, 0x16)
  26:	dc6410aa 	st.h      	r3, (r4, 0x154)
  2a:	4243      	lsli      	r2, r2, 3
  2c:	ea030dac 	movi      	r3, 3500
  30:	ac4c      	st.h      	r2, (r4, 0x18)
  32:	3102      	movi      	r1, 2
  34:	8442      	ld.b      	r2, (r4, 0x2)
  36:	dc6410ad 	st.h      	r3, (r4, 0x15a)
  3a:	3501      	movi      	r5, 1
  3c:	8465      	ld.b      	r3, (r4, 0x5)
  3e:	c4415c44 	ins      	r2, r1, 6, 4
  42:	c4655c03 	ins      	r3, r5, 3, 3
  46:	a442      	st.b      	r2, (r4, 0x2)
  48:	a465      	st.b      	r3, (r4, 0x5)
  4a:	d804202a 	ld.w      	r0, (r4, 0xa8)
  4e:	e0000000 	bsr      	0x0	// 0 <ieee80211_stainfo_init>
  52:	6c97      	mov      	r2, r5
  54:	6cd3      	mov      	r3, r4
  56:	1123      	lrw      	r1, 0x0	// e0 <ieee80211_wnbap_init+0xe0>
  58:	d8042063 	ld.w      	r0, (r4, 0x18c)
  5c:	e0000000 	bsr      	0x0	// 0 <os_timer_init>
  60:	1161      	lrw      	r3, 0x0	// e4 <ieee80211_wnbap_init+0xe4>
  62:	1102      	lrw      	r0, 0x0	// e8 <ieee80211_wnbap_init+0xe8>
  64:	b47c      	st.w      	r3, (r4, 0x70)
  66:	1162      	lrw      	r3, 0x0	// ec <ieee80211_wnbap_init+0xec>
  68:	b47d      	st.w      	r3, (r4, 0x74)
  6a:	1162      	lrw      	r3, 0x0	// f0 <ieee80211_wnbap_init+0xf0>
  6c:	b47b      	st.w      	r3, (r4, 0x6c)
  6e:	1162      	lrw      	r3, 0x0	// f4 <ieee80211_wnbap_init+0xf4>
  70:	b47a      	st.w      	r3, (r4, 0x68)
  72:	1162      	lrw      	r3, 0x0	// f8 <ieee80211_wnbap_init+0xf8>
  74:	b479      	st.w      	r3, (r4, 0x64)
  76:	1162      	lrw      	r3, 0x0	// fc <ieee80211_wnbap_init+0xfc>
  78:	b477      	st.w      	r3, (r4, 0x5c)
  7a:	1162      	lrw      	r3, 0x0	// 100 <ieee80211_wnbap_init+0x100>
  7c:	b478      	st.w      	r3, (r4, 0x60)
  7e:	1162      	lrw      	r3, 0x0	// 104 <ieee80211_wnbap_init+0x104>
  80:	b476      	st.w      	r3, (r4, 0x58)
  82:	1162      	lrw      	r3, 0x0	// 108 <ieee80211_wnbap_init+0x108>
  84:	b473      	st.w      	r3, (r4, 0x4c)
  86:	1162      	lrw      	r3, 0x0	// 10c <ieee80211_wnbap_init+0x10c>
  88:	b472      	st.w      	r3, (r4, 0x48)
  8a:	1162      	lrw      	r3, 0x0	// 110 <ieee80211_wnbap_init+0x110>
  8c:	dc642020 	st.w      	r3, (r4, 0x80)
  90:	1161      	lrw      	r3, 0x0	// 114 <ieee80211_wnbap_init+0x114>
  92:	b471      	st.w      	r3, (r4, 0x44)
  94:	1161      	lrw      	r3, 0x0	// 118 <ieee80211_wnbap_init+0x118>
  96:	dc642022 	st.w      	r3, (r4, 0x88)
  9a:	1161      	lrw      	r3, 0x0	// 11c <ieee80211_wnbap_init+0x11c>
  9c:	dc642023 	st.w      	r3, (r4, 0x8c)
  a0:	1160      	lrw      	r3, 0x0	// 120 <ieee80211_wnbap_init+0x120>
  a2:	b47e      	st.w      	r3, (r4, 0x78)
  a4:	1160      	lrw      	r3, 0x0	// 124 <ieee80211_wnbap_init+0x124>
  a6:	dc642027 	st.w      	r3, (r4, 0x9c)
  aa:	1160      	lrw      	r3, 0x0	// 128 <ieee80211_wnbap_init+0x128>
  ac:	dc642025 	st.w      	r3, (r4, 0x94)
  b0:	107f      	lrw      	r3, 0x0	// 12c <ieee80211_wnbap_init+0x12c>
  b2:	dc642024 	st.w      	r3, (r4, 0x90)
  b6:	107f      	lrw      	r3, 0x0	// 130 <ieee80211_wnbap_init+0x130>
  b8:	dc642026 	st.w      	r3, (r4, 0x98)
  bc:	107e      	lrw      	r3, 0x0	// 134 <ieee80211_wnbap_init+0x134>
  be:	dc642028 	st.w      	r3, (r4, 0xa0)
  c2:	e0000000 	bsr      	0x0	// 0 <ieee80211_register_pkthook>
  c6:	8c60      	ld.h      	r3, (r4, 0x0)
  c8:	32c8      	movi      	r2, 200
  ca:	103c      	lrw      	r1, 0x0	// 138 <ieee80211_wnbap_init+0x138>
  cc:	101c      	lrw      	r0, 0x0	// 13c <ieee80211_wnbap_init+0x13c>
  ce:	e0000000 	bsr      	0x0	// 0 <hgprintf>
  d2:	3000      	movi      	r0, 0
  d4:	1492      	pop      	r4-r5, r15
	...
