
libwifi/o/wnb_sta_sta.o:     file format elf32-csky-little


Disassembly of section .text.ieee80211_wnbsta_build_hdr:

00000000 <ieee80211_wnbsta_build_hdr>:
   0:	14d0      	push      	r15
   2:	d8602063 	ld.w      	r3, (r0, 0x18c)
   6:	d9830025 	ld.b      	r12, (r3, 0x25)
   a:	e58c2008 	andi      	r12, r12, 8
   e:	e90c0005 	bez      	r12, 0x18	// 18 <ieee80211_wnbsta_build_hdr+0x18>
  12:	e0000000 	bsr      	0x0	// 0 <ieee80211_wnb_build_hdr>
  16:	1490      	pop      	r15
  18:	6c33      	mov      	r0, r12
  1a:	07fe      	br      	0x16	// 16 <ieee80211_wnbsta_build_hdr+0x16>

Disassembly of section .text.ieee80211_wnbsta_rx_ctl:

00000000 <ieee80211_wnbsta_rx_ctl>:
   0:	14d0      	push      	r15
   2:	9002      	ld.w      	r0, (r0, 0x8)
   4:	e0000000 	bsr      	0x0	// 0 <kfree_skb>
   8:	3000      	movi      	r0, 0
   a:	1490      	pop      	r15

Disassembly of section .text.ieee80211_wnbsta_rx_mgmt:

00000000 <ieee80211_wnbsta_rx_mgmt>:
   0:	14d5      	push      	r4-r8, r15
   2:	9042      	ld.w      	r2, (r0, 0x8)
   4:	6d03      	mov      	r4, r0
   6:	92a7      	ld.w      	r5, (r2, 0x1c)
   8:	8d60      	ld.h      	r3, (r5, 0x0)
   a:	e46320f3 	andi      	r3, r3, 243
   e:	eb4300d0 	cmpnei      	r3, 208
  12:	0c09      	bf      	0x24	// 24 <ieee80211_wnbsta_rx_mgmt+0x24>
  14:	eb4300e0 	cmpnei      	r3, 224
  18:	0c31      	bf      	0x7a	// 7a <ieee80211_wnbsta_rx_mgmt+0x7a>
  1a:	9402      	ld.w      	r0, (r4, 0x8)
  1c:	e0000000 	bsr      	0x0	// 0 <kfree_skb>
  20:	3000      	movi      	r0, 0
  22:	1495      	pop      	r4-r8, r15
  24:	8af4      	ld.h      	r7, (r2, 0x28)
  26:	61d4      	addu      	r7, r5
  28:	e4c50017 	addi      	r6, r5, 24
  2c:	e505000f 	addi      	r8, r5, 16
  30:	2509      	addi      	r5, 10
  32:	65d8      	cmphs      	r6, r7
  34:	0bf3      	bt      	0x1a	// 1a <ieee80211_wnbsta_rx_mgmt+0x1a>
  36:	8660      	ld.b      	r3, (r6, 0x0)
  38:	eb4300dd 	cmpnei      	r3, 221
  3c:	081b      	bt      	0x72	// 72 <ieee80211_wnbsta_rx_mgmt+0x72>
  3e:	8662      	ld.b      	r3, (r6, 0x2)
  40:	e9230019 	bnez      	r3, 0x72	// 72 <ieee80211_wnbsta_rx_mgmt+0x72>
  44:	8663      	ld.b      	r3, (r6, 0x3)
  46:	eb430040 	cmpnei      	r3, 64
  4a:	0814      	bt      	0x72	// 72 <ieee80211_wnbsta_rx_mgmt+0x72>
  4c:	8664      	ld.b      	r3, (r6, 0x4)
  4e:	3b41      	cmpnei      	r3, 1
  50:	0811      	bt      	0x72	// 72 <ieee80211_wnbsta_rx_mgmt+0x72>
  52:	8667      	ld.b      	r3, (r6, 0x7)
  54:	3b42      	cmpnei      	r3, 2
  56:	080e      	bt      	0x72	// 72 <ieee80211_wnbsta_rx_mgmt+0x72>
  58:	3206      	movi      	r2, 6
  5a:	6c63      	mov      	r1, r8
  5c:	6c17      	mov      	r0, r5
  5e:	e0000000 	bsr      	0x0	// 0 <memcmp>
  62:	e9200008 	bnez      	r0, 0x72	// 72 <ieee80211_wnbsta_rx_mgmt+0x72>
  66:	9420      	ld.w      	r1, (r4, 0x0)
  68:	9442      	ld.w      	r2, (r4, 0x8)
  6a:	d801202a 	ld.w      	r0, (r1, 0xa8)
  6e:	e0000000 	bsr      	0x0	// 0 <ieee80211_update_bss_info>
  72:	8661      	ld.b      	r3, (r6, 0x1)
  74:	2301      	addi      	r3, 2
  76:	618c      	addu      	r6, r3
  78:	07dd      	br      	0x32	// 32 <ieee80211_wnbsta_rx_mgmt+0x32>
  7a:	9000      	ld.w      	r0, (r0, 0x0)
  7c:	d860202b 	ld.w      	r3, (r0, 0xac)
  80:	8033      	ld.b      	r1, (r0, 0x13)
  82:	8340      	ld.b      	r2, (r3, 0x0)
  84:	e0000000 	bsr      	0x0	// 0 <ieee80211_chan_to_freq>
  88:	8d6d      	ld.h      	r3, (r5, 0x1a)
  8a:	640e      	cmpne      	r3, r0
  8c:	0bc7      	bt      	0x1a	// 1a <ieee80211_wnbsta_rx_mgmt+0x1a>
  8e:	8578      	ld.b      	r3, (r5, 0x18)
  90:	e443007e 	addi      	r2, r3, 127
  94:	e442207f 	andi      	r2, r2, 127
  98:	3a11      	cmphsi      	r2, 18
  9a:	0bc0      	bt      	0x1a	// 1a <ieee80211_wnbsta_rx_mgmt+0x1a>
  9c:	1022      	lrw      	r1, 0x0	// a4 <ieee80211_wnbsta_rx_mgmt+0xa4>
  9e:	d0410882 	ldr.w      	r2, (r1, r2 << 2)
  a2:	7808      	jmp      	r2
  a4:	00000000 	.long	0x00000000
  a8:	74ce      	sextb      	r3, r3
  aa:	e9a3ffb8 	bhsz      	r3, 0x1a	// 1a <ieee80211_wnbsta_rx_mgmt+0x1a>
  ae:	9400      	ld.w      	r0, (r4, 0x0)
  b0:	3206      	movi      	r2, 6
  b2:	5d2e      	addi      	r1, r5, 4
  b4:	6008      	addu      	r0, r2
  b6:	e0000000 	bsr      	0x0	// 0 <memcmp>
  ba:	e920ffb0 	bnez      	r0, 0x1a	// 1a <ieee80211_wnbsta_rx_mgmt+0x1a>
  be:	6c13      	mov      	r0, r4
  c0:	e0000000 	bsr      	0x0	// 0 <ieee80211_wnbsta_rx_assoc_resp>
  c4:	07ab      	br      	0x1a	// 1a <ieee80211_wnbsta_rx_mgmt+0x1a>
  c6:	6c13      	mov      	r0, r4
  c8:	e0000000 	bsr      	0x0	// 0 <ieee80211_wnbsta_rx_disassoc>
  cc:	07a7      	br      	0x1a	// 1a <ieee80211_wnbsta_rx_mgmt+0x1a>
  ce:	74ce      	sextb      	r3, r3
  d0:	e9a3ffa5 	bhsz      	r3, 0x1a	// 1a <ieee80211_wnbsta_rx_mgmt+0x1a>
  d4:	9400      	ld.w      	r0, (r4, 0x0)
  d6:	3206      	movi      	r2, 6
  d8:	5d2e      	addi      	r1, r5, 4
  da:	6008      	addu      	r0, r2
  dc:	e0000000 	bsr      	0x0	// 0 <memcmp>
  e0:	e920ff9d 	bnez      	r0, 0x1a	// 1a <ieee80211_wnbsta_rx_mgmt+0x1a>
  e4:	6c13      	mov      	r0, r4
  e6:	e0000000 	bsr      	0x0	// 0 <ieee80211_wnbsta_rx_probe_resp>
  ea:	0798      	br      	0x1a	// 1a <ieee80211_wnbsta_rx_mgmt+0x1a>
  ec:	6c13      	mov      	r0, r4
  ee:	e0000000 	bsr      	0x0	// 0 <ieee80211_wnb_rx_pair>
  f2:	0794      	br      	0x1a	// 1a <ieee80211_wnbsta_rx_mgmt+0x1a>
  f4:	6c13      	mov      	r0, r4
  f6:	e0000000 	bsr      	0x0	// 0 <ieee80211_wnbsta_rx_heartbeat>
  fa:	d8654018 	ld.bs      	r3, (r5, 0x18)
  fe:	e9a3ff8e 	bhsz      	r3, 0x1a	// 1a <ieee80211_wnbsta_rx_mgmt+0x1a>
 102:	6c13      	mov      	r0, r4
 104:	e0000000 	bsr      	0x0	// 0 <ieee80211_wnb_rx_roam_response>
 108:	0789      	br      	0x1a	// 1a <ieee80211_wnbsta_rx_mgmt+0x1a>
 10a:	6c13      	mov      	r0, r4
 10c:	e0000000 	bsr      	0x0	// 0 <ieee80211_wnb_rx_wakeup_frame>
 110:	0785      	br      	0x1a	// 1a <ieee80211_wnbsta_rx_mgmt+0x1a>

Disassembly of section .text.ieee80211_wnbsta_do_action:

00000000 <ieee80211_wnbsta_do_action>:
   0:	14d3      	push      	r4-r6, r15
   2:	1422      	subi      	r14, r14, 8
   4:	3945      	cmpnei      	r1, 5
   6:	6d03      	mov      	r4, r0
   8:	0c22      	bf      	0x4c	// 4c <ieee80211_wnbsta_do_action+0x4c>
   a:	3905      	cmphsi      	r1, 6
   c:	0808      	bt      	0x1c	// 1c <ieee80211_wnbsta_do_action+0x1c>
   e:	3944      	cmpnei      	r1, 4
  10:	0c42      	bf      	0x94	// 94 <ieee80211_wnbsta_do_action+0x94>
  12:	6c13      	mov      	r0, r4
  14:	e0000000 	bsr      	0x0	// 0 <ieee80211_sta_do_action>
  18:	6d43      	mov      	r5, r0
  1a:	045b      	br      	0xd0	// d0 <ieee80211_wnbsta_do_action+0xd0>
  1c:	3946      	cmpnei      	r1, 6
  1e:	0c37      	bf      	0x8c	// 8c <ieee80211_wnbsta_do_action+0x8c>
  20:	3953      	cmpnei      	r1, 19
  22:	0bf8      	bt      	0x12	// 12 <ieee80211_wnbsta_do_action+0x12>
  24:	d840205d 	ld.w      	r2, (r0, 0x174)
  28:	8260      	ld.b      	r3, (r2, 0x0)
  2a:	e4232001 	andi      	r1, r3, 1
  2e:	e9010014 	bez      	r1, 0x56	// 56 <ieee80211_wnbsta_do_action+0x56>
  32:	8221      	ld.b      	r1, (r2, 0x1)
  34:	e9010011 	bez      	r1, 0x56	// 56 <ieee80211_wnbsta_do_action+0x56>
  38:	3942      	cmpnei      	r1, 2
  3a:	0c7a      	bf      	0x12e	// 12e <ieee80211_wnbsta_do_action+0x12e>
  3c:	3943      	cmpnei      	r1, 3
  3e:	080c      	bt      	0x56	// 56 <ieee80211_wnbsta_do_action+0x56>
  40:	c4435463 	zext      	r3, r3, 3, 2
  44:	3b21      	cmplti      	r3, 2
  46:	0c86      	bf      	0x152	// 152 <ieee80211_wnbsta_do_action+0x152>
  48:	3100      	movi      	r1, 0
  4a:	0477      	br      	0x138	// 138 <ieee80211_wnbsta_do_action+0x138>
  4c:	8045      	ld.b      	r2, (r0, 0x5)
  4e:	e4422081 	andi      	r2, r2, 129
  52:	3a41      	cmpnei      	r2, 1
  54:	0c03      	bf      	0x5a	// 5a <ieee80211_wnbsta_do_action+0x5a>
  56:	3500      	movi      	r5, 0
  58:	043c      	br      	0xd0	// d0 <ieee80211_wnbsta_do_action+0xd0>
  5a:	8073      	ld.b      	r3, (r0, 0x13)
  5c:	dc60003c 	st.b      	r3, (r0, 0x3c)
  60:	3102      	movi      	r1, 2
  62:	d860003d 	ld.b      	r3, (r0, 0x3d)
  66:	c4615cc1 	ins      	r3, r1, 7, 1
  6a:	c4625c00 	ins      	r3, r2, 0, 0
  6e:	dc60003d 	st.b      	r3, (r0, 0x3d)
  72:	d8602063 	ld.w      	r3, (r0, 0x18c)
  76:	3200      	movi      	r2, 0
  78:	dc431074 	st.h      	r2, (r3, 0xe8)
  7c:	dc430126 	st.b      	r2, (r3, 0x126)
  80:	e0000000 	bsr      	0x0	// 0 <ieee80211_sta_send_disassoc>
  84:	3104      	movi      	r1, 4
  86:	6c13      	mov      	r0, r4
  88:	e0000000 	bsr      	0x0	// 0 <ieee80211_state>
  8c:	6c13      	mov      	r0, r4
  8e:	e0000000 	bsr      	0x0	// 0 <ieee80211_wnbsta_do_assoc>
  92:	07e2      	br      	0x56	// 56 <ieee80211_wnbsta_do_action+0x56>
  94:	8065      	ld.b      	r3, (r0, 0x5)
  96:	e4632081 	andi      	r3, r3, 129
  9a:	3b41      	cmpnei      	r3, 1
  9c:	0bdd      	bt      	0x56	// 56 <ieee80211_wnbsta_do_action+0x56>
  9e:	8072      	ld.b      	r3, (r0, 0x12)
  a0:	3b49      	cmpnei      	r3, 9
  a2:	0bda      	bt      	0x56	// 56 <ieee80211_wnbsta_do_action+0x56>
  a4:	e0000000 	bsr      	0x0	// 0 <ieee80211_is_pairing>
  a8:	6d43      	mov      	r5, r0
  aa:	e920ffd6 	bnez      	r0, 0x56	// 56 <ieee80211_wnbsta_do_action+0x56>
  ae:	8472      	ld.b      	r3, (r4, 0x12)
  b0:	3b43      	cmpnei      	r3, 3
  b2:	d8c42063 	ld.w      	r6, (r4, 0x18c)
  b6:	0810      	bt      	0xd6	// d6 <ieee80211_wnbsta_do_action+0xd6>
  b8:	d8660025 	ld.b      	r3, (r6, 0x25)
  bc:	e4632008 	andi      	r3, r3, 8
  c0:	e903000b 	bez      	r3, 0xd6	// d6 <ieee80211_wnbsta_do_action+0xd6>
  c4:	e0000000 	bsr      	0x0	// 0 <os_jiffies>
  c8:	dc062024 	st.w      	r0, (r6, 0x90)
  cc:	dc262025 	st.w      	r1, (r6, 0x94)
  d0:	6c17      	mov      	r0, r5
  d2:	1402      	addi      	r14, r14, 8
  d4:	1493      	pop      	r4-r6, r15
  d6:	d8660025 	ld.b      	r3, (r6, 0x25)
  da:	e4632008 	andi      	r3, r3, 8
  de:	e903ffbc 	bez      	r3, 0x56	// 56 <ieee80211_wnbsta_do_action+0x56>
  e2:	d8460125 	ld.b      	r2, (r6, 0x125)
  e6:	d8660124 	ld.b      	r3, (r6, 0x124)
  ea:	648c      	cmphs      	r3, r2
  ec:	081d      	bt      	0x126	// 126 <ieee80211_wnbsta_do_action+0x126>
  ee:	d8462025 	ld.w      	r2, (r6, 0x94)
  f2:	d82410aa 	ld.h      	r1, (r4, 0x154)
  f6:	d8662024 	ld.w      	r3, (r6, 0x90)
  fa:	b821      	st.w      	r1, (r14, 0x4)
  fc:	b840      	st.w      	r2, (r14, 0x0)
  fe:	322b      	movi      	r2, 43
 100:	1036      	lrw      	r1, 0x0	// 158 <ieee80211_wnbsta_do_action+0x158>
 102:	1017      	lrw      	r0, 0x0	// 15c <ieee80211_wnbsta_do_action+0x15c>
 104:	e0000000 	bsr      	0x0	// 0 <hgprintf>
 108:	6c13      	mov      	r0, r4
 10a:	e0000000 	bsr      	0x0	// 0 <ieee80211_sta_disconnect>
 10e:	3301      	movi      	r3, 1
 110:	3200      	movi      	r2, 0
 112:	310a      	movi      	r1, 10
 114:	6c13      	mov      	r0, r4
 116:	e0000000 	bsr      	0x0	// 0 <ieee80211_iface_event>
 11a:	d8642063 	ld.w      	r3, (r4, 0x18c)
 11e:	3200      	movi      	r2, 0
 120:	dc430125 	st.b      	r2, (r3, 0x125)
 124:	07d6      	br      	0xd0	// d0 <ieee80211_wnbsta_do_action+0xd0>
 126:	6c13      	mov      	r0, r4
 128:	e0000000 	bsr      	0x0	// 0 <ieee80211_wnbsta_send_heartbeat>
 12c:	07d2      	br      	0xd0	// d0 <ieee80211_wnbsta_do_action+0xd0>
 12e:	c4435463 	zext      	r3, r3, 3, 2
 132:	3b21      	cmplti      	r3, 2
 134:	0c0b      	bf      	0x14a	// 14a <ieee80211_wnbsta_do_action+0x14a>
 136:	3101      	movi      	r1, 1
 138:	e0000000 	bsr      	0x0	// 0 <ieee80211_wnb_send_roam_request>
 13c:	d804205d 	ld.w      	r0, (r4, 0x174)
 140:	3114      	movi      	r1, 20
 142:	203b      	addi      	r0, 60
 144:	e0000000 	bsr      	0x0	// 0 <os_timer_start>
 148:	0787      	br      	0x56	// 56 <ieee80211_wnbsta_do_action+0x56>
 14a:	9236      	ld.w      	r1, (r2, 0x58)
 14c:	e0000000 	bsr      	0x0	// 0 <ieee80211_wnb_roaming_switch_ap>
 150:	0783      	br      	0x56	// 56 <ieee80211_wnbsta_do_action+0x56>
 152:	3301      	movi      	r3, 1
 154:	a261      	st.b      	r3, (r2, 0x1)
 156:	0780      	br      	0x56	// 56 <ieee80211_wnbsta_do_action+0x56>
	...

Disassembly of section .text.ieee80211_wnbsta_tx_status:

00000000 <ieee80211_wnbsta_tx_status>:
   0:	14d1      	push      	r4, r15
   2:	6d07      	mov      	r4, r1
   4:	9167      	ld.w      	r3, (r1, 0x1c)
   6:	e9020016 	bez      	r2, 0x32	// 32 <ieee80211_wnbsta_tx_status+0x32>
   a:	8b60      	ld.h      	r3, (r3, 0x0)
   c:	e463200c 	andi      	r3, r3, 12
  10:	3b48      	cmpnei      	r3, 8
  12:	0810      	bt      	0x32	// 32 <ieee80211_wnbsta_tx_status+0x32>
  14:	d860205d 	ld.w      	r3, (r0, 0x174)
  18:	e903000d 	bez      	r3, 0x32	// 32 <ieee80211_wnbsta_tx_status+0x32>
  1c:	e0000000 	bsr      	0x0	// 0 <ieee80211_wnb_roaming_sta_cache_data>
  20:	e9000009 	bez      	r0, 0x32	// 32 <ieee80211_wnbsta_tx_status+0x32>
  24:	e0000000 	bsr      	0x0	// 0 <cpu_intrpt_save>
  28:	946f      	ld.w      	r3, (r4, 0x3c)
  2a:	2300      	addi      	r3, 1
  2c:	b46f      	st.w      	r3, (r4, 0x3c)
  2e:	e0000000 	bsr      	0x0	// 0 <cpu_intrpt_restore>
  32:	1491      	pop      	r4, r15

Disassembly of section .text.ieee80211_wnbsta_init:

00000000 <ieee80211_wnbsta_init>:
   0:	14d2      	push      	r4-r5, r15
   2:	6d03      	mov      	r4, r0
   4:	3094      	movi      	r0, 148
   6:	4001      	lsli      	r0, r0, 1
   8:	e0000000 	bsr      	0x0	// 0 <_os_zalloc>
   c:	dc042063 	st.w      	r0, (r4, 0x18c)
  10:	e9200007 	bnez      	r0, 0x1e	// 1e <ieee80211_wnbsta_init+0x1e>
  14:	114d      	lrw      	r2, 0x0	// c8 <ieee80211_wnbsta_init+0xc8>
  16:	31cb      	movi      	r1, 203
  18:	110d      	lrw      	r0, 0x0	// cc <ieee80211_wnbsta_init+0xcc>
  1a:	e0000000 	bsr      	0x0	// 0 <assert_internal>
  1e:	3364      	movi      	r3, 100
  20:	ac6a      	st.h      	r3, (r4, 0x14)
  22:	ac6b      	st.h      	r3, (r4, 0x16)
  24:	d8042063 	ld.w      	r0, (r4, 0x18c)
  28:	33fa      	movi      	r3, 250
  2a:	4363      	lsli      	r3, r3, 3
  2c:	ac6c      	st.h      	r3, (r4, 0x18)
  2e:	dc80202a 	st.w      	r4, (r0, 0xa8)
  32:	8465      	ld.b      	r3, (r4, 0x5)
  34:	3501      	movi      	r5, 1
  36:	c4655c03 	ins      	r3, r5, 3, 3
  3a:	6c97      	mov      	r2, r5
  3c:	a465      	st.b      	r3, (r4, 0x5)
  3e:	20cb      	addi      	r0, 204
  40:	6cd3      	mov      	r3, r4
  42:	1124      	lrw      	r1, 0x0	// d0 <ieee80211_wnbsta_init+0xd0>
  44:	e0000000 	bsr      	0x0	// 0 <os_timer_init>
  48:	d8042063 	ld.w      	r0, (r4, 0x18c)
  4c:	d82410aa 	ld.h      	r1, (r4, 0x154)
  50:	20cb      	addi      	r0, 204
  52:	e0000000 	bsr      	0x0	// 0 <os_timer_start>
  56:	8462      	ld.b      	r3, (r4, 0x2)
  58:	c4655c44 	ins      	r3, r5, 6, 4
  5c:	a462      	st.b      	r3, (r4, 0x2)
  5e:	32e7      	movi      	r2, 231
  60:	107d      	lrw      	r3, 0x0	// d4 <ieee80211_wnbsta_init+0xd4>
  62:	103e      	lrw      	r1, 0x0	// d8 <ieee80211_wnbsta_init+0xd8>
  64:	101e      	lrw      	r0, 0x0	// dc <ieee80211_wnbsta_init+0xdc>
  66:	b47c      	st.w      	r3, (r4, 0x70)
  68:	107e      	lrw      	r3, 0x0	// e0 <ieee80211_wnbsta_init+0xe0>
  6a:	b47d      	st.w      	r3, (r4, 0x74)
  6c:	107e      	lrw      	r3, 0x0	// e4 <ieee80211_wnbsta_init+0xe4>
  6e:	b47b      	st.w      	r3, (r4, 0x6c)
  70:	107e      	lrw      	r3, 0x0	// e8 <ieee80211_wnbsta_init+0xe8>
  72:	b47a      	st.w      	r3, (r4, 0x68)
  74:	107e      	lrw      	r3, 0x0	// ec <ieee80211_wnbsta_init+0xec>
  76:	b479      	st.w      	r3, (r4, 0x64)
  78:	107e      	lrw      	r3, 0x0	// f0 <ieee80211_wnbsta_init+0xf0>
  7a:	b477      	st.w      	r3, (r4, 0x5c)
  7c:	107e      	lrw      	r3, 0x0	// f4 <ieee80211_wnbsta_init+0xf4>
  7e:	b478      	st.w      	r3, (r4, 0x60)
  80:	107e      	lrw      	r3, 0x0	// f8 <ieee80211_wnbsta_init+0xf8>
  82:	b476      	st.w      	r3, (r4, 0x58)
  84:	107e      	lrw      	r3, 0x0	// fc <ieee80211_wnbsta_init+0xfc>
  86:	b473      	st.w      	r3, (r4, 0x4c)
  88:	107e      	lrw      	r3, 0x0	// 100 <ieee80211_wnbsta_init+0x100>
  8a:	b472      	st.w      	r3, (r4, 0x48)
  8c:	107e      	lrw      	r3, 0x0	// 104 <ieee80211_wnbsta_init+0x104>
  8e:	dc642020 	st.w      	r3, (r4, 0x80)
  92:	107e      	lrw      	r3, 0x0	// 108 <ieee80211_wnbsta_init+0x108>
  94:	b470      	st.w      	r3, (r4, 0x40)
  96:	107e      	lrw      	r3, 0x0	// 10c <ieee80211_wnbsta_init+0x10c>
  98:	b471      	st.w      	r3, (r4, 0x44)
  9a:	107e      	lrw      	r3, 0x0	// 110 <ieee80211_wnbsta_init+0x110>
  9c:	dc642022 	st.w      	r3, (r4, 0x88)
  a0:	107d      	lrw      	r3, 0x0	// 114 <ieee80211_wnbsta_init+0x114>
  a2:	dc642023 	st.w      	r3, (r4, 0x8c)
  a6:	107d      	lrw      	r3, 0x0	// 118 <ieee80211_wnbsta_init+0x118>
  a8:	dc642024 	st.w      	r3, (r4, 0x90)
  ac:	107c      	lrw      	r3, 0x0	// 11c <ieee80211_wnbsta_init+0x11c>
  ae:	dc642025 	st.w      	r3, (r4, 0x94)
  b2:	107c      	lrw      	r3, 0x0	// 120 <ieee80211_wnbsta_init+0x120>
  b4:	dc642026 	st.w      	r3, (r4, 0x98)
  b8:	107b      	lrw      	r3, 0x0	// 124 <ieee80211_wnbsta_init+0x124>
  ba:	dc642027 	st.w      	r3, (r4, 0x9c)
  be:	8c60      	ld.h      	r3, (r4, 0x0)
  c0:	e0000000 	bsr      	0x0	// 0 <hgprintf>
  c4:	3000      	movi      	r0, 0
  c6:	1492      	pop      	r4-r5, r15
	...
