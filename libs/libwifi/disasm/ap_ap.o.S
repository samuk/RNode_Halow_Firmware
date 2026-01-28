
libwifi/o/ap_ap.o:     file format elf32-csky-little


Disassembly of section .text.is_broadcast_ether_addr:

00000000 <is_broadcast_ether_addr>:
   0:	8060      	ld.b      	r3, (r0, 0x0)
   2:	eb4300ff 	cmpnei      	r3, 255
   6:	0817      	bt      	0x34	// 34 <is_broadcast_ether_addr+0x34>
   8:	8061      	ld.b      	r3, (r0, 0x1)
   a:	eb4300ff 	cmpnei      	r3, 255
   e:	0813      	bt      	0x34	// 34 <is_broadcast_ether_addr+0x34>
  10:	8062      	ld.b      	r3, (r0, 0x2)
  12:	eb4300ff 	cmpnei      	r3, 255
  16:	080f      	bt      	0x34	// 34 <is_broadcast_ether_addr+0x34>
  18:	8063      	ld.b      	r3, (r0, 0x3)
  1a:	eb4300ff 	cmpnei      	r3, 255
  1e:	080b      	bt      	0x34	// 34 <is_broadcast_ether_addr+0x34>
  20:	8064      	ld.b      	r3, (r0, 0x4)
  22:	eb4300ff 	cmpnei      	r3, 255
  26:	0807      	bt      	0x34	// 34 <is_broadcast_ether_addr+0x34>
  28:	8065      	ld.b      	r3, (r0, 0x5)
  2a:	eb4300ff 	cmpnei      	r3, 255
  2e:	6403      	mvcv      	r0
  30:	7400      	zextb      	r0, r0
  32:	783c      	jmp      	r15
  34:	3000      	movi      	r0, 0
  36:	07fd      	br      	0x30	// 30 <is_broadcast_ether_addr+0x30>

Disassembly of section .text.ieee80211_ap_rx_ext:

00000000 <ieee80211_ap_rx_ext>:
   0:	14d1      	push      	r4, r15
   2:	9022      	ld.w      	r1, (r0, 0x8)
   4:	6d03      	mov      	r4, r0
   6:	9167      	ld.w      	r3, (r1, 0x1c)
   8:	8b60      	ld.h      	r3, (r3, 0x0)
   a:	e46320f3 	andi      	r3, r3, 243
   e:	3b50      	cmpnei      	r3, 16
  10:	0806      	bt      	0x1c	// 1c <ieee80211_ap_rx_ext+0x1c>
  12:	9000      	ld.w      	r0, (r0, 0x0)
  14:	9075      	ld.w      	r3, (r0, 0x54)
  16:	e9030003 	bez      	r3, 0x1c	// 1c <ieee80211_ap_rx_ext+0x1c>
  1a:	7bcd      	jsr      	r3
  1c:	9402      	ld.w      	r0, (r4, 0x8)
  1e:	e0000000 	bsr      	0x0	// 0 <kfree_skb>
  22:	3000      	movi      	r0, 0
  24:	1491      	pop      	r4, r15

Disassembly of section .text.ieee80211_ap_build_hdr:

00000000 <ieee80211_ap_build_hdr>:
   0:	14d5      	push      	r4-r8, r15
   2:	6d0b      	mov      	r4, r2
   4:	8045      	ld.b      	r2, (r0, 0x5)
   6:	e4422008 	andi      	r2, r2, 8
   a:	6d43      	mov      	r5, r0
   c:	6d87      	mov      	r6, r1
   e:	d9841000 	ld.h      	r12, (r4, 0x0)
  12:	9127      	ld.w      	r1, (r1, 0x1c)
  14:	5c0e      	addi      	r0, r4, 4
  16:	e5040009 	addi      	r8, r4, 10
  1a:	2505      	addi      	r5, 6
  1c:	e4e4000f 	addi      	r7, r4, 16
  20:	e902002d 	bez      	r2, 0x7a	// 7a <ieee80211_ap_build_hdr+0x7a>
  24:	814c      	ld.b      	r2, (r1, 0xc)
  26:	d9a1000d 	ld.b      	r13, (r1, 0xd)
  2a:	4248      	lsli      	r2, r2, 8
  2c:	6cb4      	or      	r2, r13
  2e:	748b      	sexth      	r2, r2
  30:	ea0d7771 	movi      	r13, 30577
  34:	6f76      	nor      	r13, r13
  36:	674a      	cmpne      	r2, r13
  38:	0c21      	bf      	0x7a	// 7a <ieee80211_ap_build_hdr+0x7a>
  3a:	ed8c0300 	ori      	r12, r12, 768
  3e:	dd841000 	st.h      	r12, (r4, 0x0)
  42:	e903001a 	bez      	r3, 0x76	// 76 <ieee80211_ap_build_hdr+0x76>
  46:	e423001b 	addi      	r1, r3, 28
  4a:	3206      	movi      	r2, 6
  4c:	e0000000 	bsr      	0x0	// 0 <memcpy>
  50:	3206      	movi      	r2, 6
  52:	6c57      	mov      	r1, r5
  54:	6c23      	mov      	r0, r8
  56:	e0000000 	bsr      	0x0	// 0 <memcpy>
  5a:	3206      	movi      	r2, 6
  5c:	9627      	ld.w      	r1, (r6, 0x1c)
  5e:	6c1f      	mov      	r0, r7
  60:	e0000000 	bsr      	0x0	// 0 <memcpy>
  64:	9627      	ld.w      	r1, (r6, 0x1c)
  66:	3206      	movi      	r2, 6
  68:	6048      	addu      	r1, r2
  6a:	e4040017 	addi      	r0, r4, 24
  6e:	e0000000 	bsr      	0x0	// 0 <memcpy>
  72:	301e      	movi      	r0, 30
  74:	1495      	pop      	r4-r8, r15
  76:	102c      	lrw      	r1, 0x0	// a4 <ieee80211_ap_build_hdr+0xa4>
  78:	07e9      	br      	0x4a	// 4a <ieee80211_ap_build_hdr+0x4a>
  7a:	ed8c0200 	ori      	r12, r12, 512
  7e:	dd841000 	st.h      	r12, (r4, 0x0)
  82:	3206      	movi      	r2, 6
  84:	e0000000 	bsr      	0x0	// 0 <memcpy>
  88:	3206      	movi      	r2, 6
  8a:	6c57      	mov      	r1, r5
  8c:	6c23      	mov      	r0, r8
  8e:	e0000000 	bsr      	0x0	// 0 <memcpy>
  92:	9627      	ld.w      	r1, (r6, 0x1c)
  94:	3206      	movi      	r2, 6
  96:	6048      	addu      	r1, r2
  98:	6c1f      	mov      	r0, r7
  9a:	e0000000 	bsr      	0x0	// 0 <memcpy>
  9e:	3018      	movi      	r0, 24
  a0:	07ea      	br      	0x74	// 74 <ieee80211_ap_build_hdr+0x74>
  a2:	0000      	.short	0x0000
  a4:	00000000 	.long	0x00000000

Disassembly of section .text.ieee80211_ap_rx_mgmt:

00000000 <ieee80211_ap_rx_mgmt>:
   0:	14d1      	push      	r4, r15
   2:	9062      	ld.w      	r3, (r0, 0x8)
   4:	6d03      	mov      	r4, r0
   6:	9367      	ld.w      	r3, (r3, 0x1c)
   8:	8b20      	ld.h      	r1, (r3, 0x0)
   a:	e42120f3 	andi      	r1, r1, 243
   e:	eb4100a0 	cmpnei      	r1, 160
  12:	0c24      	bf      	0x5a	// 5a <ieee80211_ap_rx_mgmt+0x5a>
  14:	eb0100a0 	cmphsi      	r1, 161
  18:	0810      	bt      	0x38	// 38 <ieee80211_ap_rx_mgmt+0x38>
  1a:	eb410020 	cmpnei      	r1, 32
  1e:	0c19      	bf      	0x50	// 50 <ieee80211_ap_rx_mgmt+0x50>
  20:	eb410040 	cmpnei      	r1, 64
  24:	0c18      	bf      	0x54	// 54 <ieee80211_ap_rx_mgmt+0x54>
  26:	e9210004 	bnez      	r1, 0x2e	// 2e <ieee80211_ap_rx_mgmt+0x2e>
  2a:	e0000000 	bsr      	0x0	// 0 <ieee80211_ap_rx_assoc_req>
  2e:	9402      	ld.w      	r0, (r4, 0x8)
  30:	e0000000 	bsr      	0x0	// 0 <kfree_skb>
  34:	3000      	movi      	r0, 0
  36:	1491      	pop      	r4, r15
  38:	eb4100c0 	cmpnei      	r1, 192
  3c:	0c12      	bf      	0x60	// 60 <ieee80211_ap_rx_mgmt+0x60>
  3e:	eb4100d0 	cmpnei      	r1, 208
  42:	0c12      	bf      	0x66	// 66 <ieee80211_ap_rx_mgmt+0x66>
  44:	eb4100b0 	cmpnei      	r1, 176
  48:	0bf3      	bt      	0x2e	// 2e <ieee80211_ap_rx_auth_req+0x2e>
  4a:	e0000000 	bsr      	0x0	// 0 <ieee80211_ap_rx_auth_req>
  4e:	07f0      	br      	0x2e	// 2e <ieee80211_ap_rx_mgmt+0x2e>
  50:	3101      	movi      	r1, 1
  52:	07ec      	br      	0x2a	// 2a <ieee80211_ap_rx_mgmt+0x2a>
  54:	e0000000 	bsr      	0x0	// 0 <ieee80211_ap_rx_probe_req>
  58:	07eb      	br      	0x2e	// 2e <ieee80211_ap_rx_disassoc_req+0x2e>
  5a:	e0000000 	bsr      	0x0	// 0 <ieee80211_ap_rx_disassoc_req>
  5e:	07e8      	br      	0x2e	// 2e <ieee80211_ap_rx_deauth_req+0x2e>
  60:	e0000000 	bsr      	0x0	// 0 <ieee80211_ap_rx_deauth_req>
  64:	07e5      	br      	0x2e	// 2e <ieee80211_ap_rx_action+0x2e>
  66:	e0000000 	bsr      	0x0	// 0 <ieee80211_ap_rx_action>
  6a:	07e2      	br      	0x2e	// 2e <ieee80211_ap_rx_mgmt+0x2e>

Disassembly of section .text.ieee80211_ap_rx_ctl:

00000000 <ieee80211_ap_rx_ctl>:
   0:	14d1      	push      	r4, r15
   2:	9062      	ld.w      	r3, (r0, 0x8)
   4:	6d03      	mov      	r4, r0
   6:	9367      	ld.w      	r3, (r3, 0x1c)
   8:	8b60      	ld.h      	r3, (r3, 0x0)
   a:	e46320f3 	andi      	r3, r3, 243
   e:	eb4300a0 	cmpnei      	r3, 160
  12:	0803      	bt      	0x18	// 18 <ieee80211_ap_rx_pspoll+0x18>
  14:	e0000000 	bsr      	0x0	// 0 <ieee80211_ap_rx_pspoll>
  18:	9402      	ld.w      	r0, (r4, 0x8)
  1a:	e0000000 	bsr      	0x0	// 0 <kfree_skb>
  1e:	3000      	movi      	r0, 0
  20:	1491      	pop      	r4, r15

Disassembly of section .text.ieee80211_ap_rx_h_check:

00000000 <ieee80211_ap_rx_h_check>:
   0:	14d1      	push      	r4, r15
   2:	6d03      	mov      	r4, r0
   4:	9002      	ld.w      	r0, (r0, 0x8)
   6:	9027      	ld.w      	r1, (r0, 0x1c)
   8:	8960      	ld.h      	r3, (r1, 0x0)
   a:	e443200c 	andi      	r2, r3, 12
   e:	3a48      	cmpnei      	r2, 8
  10:	0c0b      	bf      	0x26	// 26 <ieee80211_ap_rx_h_check+0x26>
  12:	e46320fc 	andi      	r3, r3, 252
  16:	eb4300a4 	cmpnei      	r3, 164
  1a:	0c06      	bf      	0x26	// 26 <ieee80211_ap_rx_h_check+0x26>
  1c:	6c13      	mov      	r0, r4
  1e:	e0000000 	bsr      	0x0	// 0 <ieee80211_ap_rx_check_psstate>
  22:	3000      	movi      	r0, 0
  24:	1491      	pop      	r4, r15
  26:	9461      	ld.w      	r3, (r4, 0x4)
  28:	e9030008 	bez      	r3, 0x38	// 38 <ieee80211_ap_rx_h_check+0x38>
  2c:	d8630025 	ld.b      	r3, (r3, 0x25)
  30:	e4432004 	andi      	r2, r3, 4
  34:	e922000a 	bnez      	r2, 0x48	// 48 <ieee80211_ap_rx_h_check+0x48>
  38:	3207      	movi      	r2, 7
  3a:	2109      	addi      	r1, 10
  3c:	9400      	ld.w      	r0, (r4, 0x0)
  3e:	e0000000 	bsr      	0x0	// 0 <ieee80211_send_disassoc>
  42:	3000      	movi      	r0, 0
  44:	2800      	subi      	r0, 1
  46:	07ef      	br      	0x24	// 24 <ieee80211_ap_rx_h_check+0x24>
  48:	e4632008 	andi      	r3, r3, 8
  4c:	e923ffe8 	bnez      	r3, 0x1c	// 1c <ieee80211_ap_rx_h_check+0x1c>
  50:	e0000000 	bsr      	0x0	// 0 <ieee80211_get_ether_type>
  54:	eb40888e 	cmpnei      	r0, 34958
  58:	0fe2      	bf      	0x1c	// 1c <ieee80211_ap_rx_h_check+0x1c>
  5a:	07f4      	br      	0x42	// 42 <ieee80211_ap_rx_h_check+0x42>

Disassembly of section .text.ieee80211_ap_tx_status:

00000000 <ieee80211_ap_tx_status>:
   0:	14d0      	push      	r15
   2:	9167      	ld.w      	r3, (r1, 0x1c)
   4:	e9020009 	bez      	r2, 0x16	// 16 <ieee80211_ap_tx_status+0x16>
   8:	8b60      	ld.h      	r3, (r3, 0x0)
   a:	e463200c 	andi      	r3, r3, 12
   e:	e9230004 	bnez      	r3, 0x16	// 16 <ieee80211_ap_tx_status+0x16>
  12:	e0000000 	bsr      	0x0	// 0 <ieee80211_ap_mgmt_tx_status>
  16:	1490      	pop      	r15

Disassembly of section .text.ieee80211_ap_del_sta:

00000000 <ieee80211_ap_del_sta>:
   0:	14d2      	push      	r4-r5, r15
   2:	6d43      	mov      	r5, r0
   4:	9102      	ld.w      	r0, (r1, 0x8)
   6:	6d07      	mov      	r4, r1
   8:	e9000006 	bez      	r0, 0x14	// 14 <ieee80211_ap_del_sta+0x14>
   c:	e0000000 	bsr      	0x0	// 0 <wpa_auth_sta_deinit>
  10:	3300      	movi      	r3, 0
  12:	b462      	st.w      	r3, (r4, 0x8)
  14:	d8640025 	ld.b      	r3, (r4, 0x25)
  18:	e4632001 	andi      	r3, r3, 1
  1c:	e903000f 	bez      	r3, 0x3a	// 3a <ieee80211_ap_del_sta+0x3a>
  20:	d805202a 	ld.w      	r0, (r5, 0xa8)
  24:	6c53      	mov      	r1, r4
  26:	208f      	addi      	r0, 144
  28:	e0000000 	bsr      	0x0	// 0 <ieee80211_tim_clr>
  2c:	d845202a 	ld.w      	r2, (r5, 0xa8)
  30:	d862018c 	ld.b      	r3, (r2, 0x18c)
  34:	2b00      	subi      	r3, 1
  36:	dc62018c 	st.b      	r3, (r2, 0x18c)
  3a:	3000      	movi      	r0, 0
  3c:	d86400c8 	ld.b      	r3, (r4, 0xc8)
  40:	c4605c20 	ins      	r3, r0, 1, 0
  44:	dc6400c8 	st.b      	r3, (r4, 0xc8)
  48:	d8640025 	ld.b      	r3, (r4, 0x25)
  4c:	c4605c07 	ins      	r3, r0, 7, 7
  50:	dc640025 	st.b      	r3, (r4, 0x25)
  54:	dc042031 	st.w      	r0, (r4, 0xc4)
  58:	1492      	pop      	r4-r5, r15

Disassembly of section .text.ieee80211_ap_tx_handler:

00000000 <ieee80211_ap_tx_handler>:
   0:	14d0      	push      	r15
   2:	6f0b      	mov      	r12, r2
   4:	e901001f 	bez      	r1, 0x42	// 42 <ieee80211_ap_tx_handler+0x42>
   8:	9161      	ld.w      	r3, (r1, 0x4)
   a:	9140      	ld.w      	r2, (r1, 0x0)
   c:	e9030006 	bez      	r3, 0x18	// 18 <ieee80211_ap_tx_handler+0x18>
  10:	e9020004 	bez      	r2, 0x18	// 18 <ieee80211_ap_tx_handler+0x18>
  14:	b261      	st.w      	r3, (r2, 0x4)
  16:	b340      	st.w      	r2, (r3, 0x0)
  18:	3300      	movi      	r3, 0
  1a:	b160      	st.w      	r3, (r1, 0x0)
  1c:	d860202a 	ld.w      	r3, (r0, 0xa8)
  20:	d8432068 	ld.w      	r2, (r3, 0x1a0)
  24:	b221      	st.w      	r1, (r2, 0x4)
  26:	b140      	st.w      	r2, (r1, 0x0)
  28:	e443019f 	addi      	r2, r3, 416
  2c:	b141      	st.w      	r2, (r1, 0x4)
  2e:	dc232068 	st.w      	r1, (r3, 0x1a0)
  32:	6c87      	mov      	r2, r1
  34:	6c73      	mov      	r1, r12
  36:	e0000000 	bsr      	0x0	// 0 <ieee80211_ap_tx_check_psstate>
  3a:	3840      	cmpnei      	r0, 0
  3c:	c4000500 	mvc      	r0
  40:	1490      	pop      	r15
  42:	6c07      	mov      	r0, r1
  44:	07fe      	br      	0x40	// 40 <ieee80211_ap_tx_handler+0x40>

Disassembly of section .text.ieee80211_ap_beacon_timer_cb:

00000000 <ieee80211_ap_beacon_timer_cb>:
   0:	14d0      	push      	r15
   2:	8860      	ld.h      	r3, (r0, 0x0)
   4:	e4632002 	andi      	r3, r3, 2
   8:	e903001a 	bez      	r3, 0x3c	// 3c <ieee80211_ap_beacon_timer_cb+0x3c>
   c:	d8402065 	ld.w      	r2, (r0, 0x194)
  10:	5a62      	addi      	r3, r2, 1
  12:	d8202066 	ld.w      	r1, (r0, 0x198)
  16:	644d      	cmplt      	r3, r1
  18:	c423008c 	subu      	r12, r3, r1
  1c:	c46c0c20 	incf      	r3, r12, 0
  20:	d8202064 	ld.w      	r1, (r0, 0x190)
  24:	64c6      	cmpne      	r1, r3
  26:	0c07      	bf      	0x34	// 34 <ieee80211_ap_beacon_timer_cb+0x34>
  28:	6080      	addu      	r2, r0
  2a:	3103      	movi      	r1, 3
  2c:	dc22019c 	st.b      	r1, (r2, 0x19c)
  30:	dc602065 	st.w      	r3, (r0, 0x194)
  34:	d800202a 	ld.w      	r0, (r0, 0xa8)
  38:	e0000000 	bsr      	0x0	// 0 <os_sema_up>
  3c:	1490      	pop      	r15

Disassembly of section .text.ieee80211_ap_rx_data:

00000000 <ieee80211_ap_rx_data>:
   0:	14d1      	push      	r4, r15
   2:	9022      	ld.w      	r1, (r0, 0x8)
   4:	6d03      	mov      	r4, r0
   6:	9167      	ld.w      	r3, (r1, 0x1c)
   8:	8b40      	ld.h      	r2, (r3, 0x0)
   a:	e46220f3 	andi      	r3, r2, 243
   e:	eb430040 	cmpnei      	r3, 64
  12:	0c0f      	bf      	0x30	// 30 <ieee80211_ap_rx_data+0x30>
  14:	eb030040 	cmphsi      	r3, 65
  18:	0806      	bt      	0x24	// 24 <ieee80211_ap_rx_data+0x24>
  1a:	e9030020 	bez      	r3, 0x5a	// 5a <ieee80211_ap_rx_data+0x5a>
  1e:	3000      	movi      	r0, 0
  20:	2800      	subi      	r0, 1
  22:	042a      	br      	0x76	// 76 <ieee80211_ap_rx_data+0x76>
  24:	eb430080 	cmpnei      	r3, 128
  28:	0c19      	bf      	0x5a	// 5a <ieee80211_ap_rx_data+0x5a>
  2a:	eb4300c0 	cmpnei      	r3, 192
  2e:	0bf8      	bt      	0x1e	// 1e <ieee80211_ap_rx_data+0x1e>
  30:	9420      	ld.w      	r1, (r4, 0x0)
  32:	8165      	ld.b      	r3, (r1, 0x5)
  34:	e4632004 	andi      	r3, r3, 4
  38:	e903fff3 	bez      	r3, 0x1e	// 1e <ieee80211_ap_rx_data+0x1e>
  3c:	3380      	movi      	r3, 128
  3e:	4365      	lsli      	r3, r3, 5
  40:	688c      	and      	r2, r3
  42:	e922ffee 	bnez      	r2, 0x1e	// 1e <ieee80211_ap_rx_data+0x1e>
  46:	3316      	movi      	r3, 22
  48:	dc610026 	st.b      	r3, (r1, 0x26)
  4c:	c6005020 	bmaski      	r0, 17
  50:	2012      	addi      	r0, 19
  52:	3116      	movi      	r1, 22
  54:	e0000000 	bsr      	0x0	// 0 <sys_event_new>
  58:	07e3      	br      	0x1e	// 1e <ieee80211_ap_rx_data+0x1e>
  5a:	9400      	ld.w      	r0, (r4, 0x0)
  5c:	e0000000 	bsr      	0x0	// 0 <ieee80211_data_to_8023>
  60:	e9000008 	bez      	r0, 0x70	// 70 <ieee80211_ap_rx_data+0x70>
  64:	32c4      	movi      	r2, 196
  66:	1025      	lrw      	r1, 0x0	// 78 <ieee80211_ap_rx_data+0x78>
  68:	1005      	lrw      	r0, 0x0	// 7c <ieee80211_ap_rx_data+0x7c>
  6a:	e0000000 	bsr      	0x0	// 0 <hgprintf>
  6e:	07d8      	br      	0x1e	// 1e <ieee80211_ap_rx_data+0x1e>
  70:	6c13      	mov      	r0, r4
  72:	e0000000 	bsr      	0x0	// 0 <ieee80211_rx_8023_data>
  76:	1491      	pop      	r4, r15
	...

Disassembly of section .text.ieee80211_ap_add_sta:

00000000 <ieee80211_ap_add_sta>:
   0:	14d2      	push      	r4-r5, r15
   2:	d860203f 	ld.w      	r3, (r0, 0xfc)
   6:	3b44      	cmpnei      	r3, 4
   8:	6d03      	mov      	r4, r0
   a:	6d47      	mov      	r5, r1
   c:	0c18      	bf      	0x3c	// 3c <ieee80211_ap_add_sta+0x3c>
   e:	900d      	ld.w      	r0, (r0, 0x34)
  10:	e9000013 	bez      	r0, 0x36	// 36 <ieee80211_ap_add_sta+0x36>
  14:	9122      	ld.w      	r1, (r1, 0x8)
  16:	e9210011 	bnez      	r1, 0x38	// 38 <ieee80211_ap_add_sta+0x38>
  1a:	32cb      	movi      	r2, 203
  1c:	4241      	lsli      	r2, r2, 1
  1e:	1029      	lrw      	r1, 0x0	// 40 <ieee80211_ap_add_sta+0x40>
  20:	1009      	lrw      	r0, 0x0	// 44 <ieee80211_ap_add_sta+0x44>
  22:	e0000000 	bsr      	0x0	// 0 <hgprintf>
  26:	6c13      	mov      	r0, r4
  28:	3302      	movi      	r3, 2
  2a:	3201      	movi      	r2, 1
  2c:	6c57      	mov      	r1, r5
  2e:	e0000000 	bsr      	0x0	// 0 <ieee80211_sta_del>
  32:	3000      	movi      	r0, 0
  34:	2800      	subi      	r0, 1
  36:	1492      	pop      	r4-r5, r15
  38:	e0000000 	bsr      	0x0	// 0 <wpa_auth_sta_associated>
  3c:	3000      	movi      	r0, 0
  3e:	07fc      	br      	0x36	// 36 <ieee80211_ap_add_sta+0x36>
	...

Disassembly of section .text.ieee80211_ap_lookup_rasta:

00000000 <ieee80211_ap_lookup_rasta>:
   0:	14d3      	push      	r4-r6, r15
   2:	6d0f      	mov      	r4, r3
   4:	8160      	ld.b      	r3, (r1, 0x0)
   6:	e4632001 	andi      	r3, r3, 1
   a:	6d83      	mov      	r6, r0
   c:	6d47      	mov      	r5, r1
   e:	e9230019 	bnez      	r3, 0x40	// 40 <ieee80211_ap_lookup_rasta+0x40>
  12:	e0000000 	bsr      	0x0	// 0 <ieee80211_sta_get>
  16:	6c83      	mov      	r2, r0
  18:	b400      	st.w      	r0, (r4, 0x0)
  1a:	e9200013 	bnez      	r0, 0x40	// 40 <ieee80211_ap_lookup_rasta+0x40>
  1e:	d806202a 	ld.w      	r0, (r6, 0xa8)
  22:	d8602078 	ld.w      	r3, (r0, 0x1e0)
  26:	e903000d 	bez      	r3, 0x40	// 40 <ieee80211_ap_lookup_rasta+0x40>
  2a:	d9832049 	ld.w      	r12, (r3, 0x124)
  2e:	6c57      	mov      	r1, r5
  30:	6cdb      	mov      	r3, r6
  32:	7bf1      	jsr      	r12
  34:	e9000006 	bez      	r0, 0x40	// 40 <ieee80211_ap_lookup_rasta+0x40>
  38:	9063      	ld.w      	r3, (r0, 0xc)
  3a:	e9030003 	bez      	r3, 0x40	// 40 <ieee80211_ap_lookup_rasta+0x40>
  3e:	b460      	st.w      	r3, (r4, 0x0)
  40:	3000      	movi      	r0, 0
  42:	1493      	pop      	r4-r6, r15

Disassembly of section .text.ieee80211_ap_accept_frame:

00000000 <ieee80211_ap_accept_frame>:
   0:	14d5      	push      	r4-r8, r15
   2:	9062      	ld.w      	r3, (r0, 0x8)
   4:	9040      	ld.w      	r2, (r0, 0x0)
   6:	93a7      	ld.w      	r5, (r3, 0x1c)
   8:	8b34      	ld.h      	r1, (r3, 0x28)
   a:	6e03      	mov      	r8, r0
   c:	6c17      	mov      	r0, r5
   e:	e0000000 	bsr      	0x0	// 0 <ieee80211_get_bssid>
  12:	8564      	ld.b      	r3, (r5, 0x4)
  14:	e4632001 	andi      	r3, r3, 1
  18:	6dc3      	mov      	r7, r0
  1a:	e9230014 	bnez      	r3, 0x42	// 42 <ieee80211_ap_accept_frame+0x42>
  1e:	8d60      	ld.h      	r3, (r5, 0x0)
  20:	e46320fc 	andi      	r3, r3, 252
  24:	3b5c      	cmpnei      	r3, 28
  26:	6403      	mvcv      	r0
  28:	7580      	zextb      	r6, r0
  2a:	d8082000 	ld.w      	r0, (r8, 0x0)
  2e:	e927000c 	bnez      	r7, 0x46	// 46 <ieee80211_ap_accept_frame+0x46>
  32:	3206      	movi      	r2, 6
  34:	5d2e      	addi      	r1, r5, 4
  36:	6008      	addu      	r0, r2
  38:	e0000000 	bsr      	0x0	// 0 <memcmp>
  3c:	3840      	cmpnei      	r0, 0
  3e:	6403      	mvcv      	r0
  40:	1495      	pop      	r4-r8, r15
  42:	3601      	movi      	r6, 1
  44:	07f3      	br      	0x2a	// 2a <ieee80211_ap_accept_frame+0x2a>
  46:	5896      	addi      	r4, r0, 6
  48:	3206      	movi      	r2, 6
  4a:	6c53      	mov      	r1, r4
  4c:	6c1f      	mov      	r0, r7
  4e:	e0000000 	bsr      	0x0	// 0 <memcmp>
  52:	e900002b 	bez      	r0, 0xa8	// a8 <ieee80211_ap_accept_frame+0xa8>
  56:	6c1f      	mov      	r0, r7
  58:	e0000000 	bsr      	0x0	// 0 <ieee80211_ap_accept_frame>
  5c:	e9200026 	bnez      	r0, 0xa8	// a8 <ieee80211_ap_accept_frame+0xa8>
  60:	e9260009 	bnez      	r6, 0x72	// 72 <ieee80211_ap_accept_frame+0x72>
  64:	3206      	movi      	r2, 6
  66:	5d2e      	addi      	r1, r5, 4
  68:	6c13      	mov      	r0, r4
  6a:	e0000000 	bsr      	0x0	// 0 <memcmp>
  6e:	e9200017 	bnez      	r0, 0x9c	// 9c <ieee80211_ap_accept_frame+0x9c>
  72:	d8682002 	ld.w      	r3, (r8, 0x8)
  76:	8b74      	ld.h      	r3, (r3, 0x28)
  78:	3b18      	cmphsi      	r3, 25
  7a:	8d60      	ld.h      	r3, (r5, 0x0)
  7c:	0c09      	bf      	0x8e	// 8e <ieee80211_ap_accept_frame+0x8e>
  7e:	e44320fc 	andi      	r2, r3, 252
  82:	eb4200d0 	cmpnei      	r2, 208
  86:	0804      	bt      	0x8e	// 8e <ieee80211_ap_accept_frame+0x8e>
  88:	8558      	ld.b      	r2, (r5, 0x18)
  8a:	3a44      	cmpnei      	r2, 4
  8c:	0c0c      	bf      	0xa4	// a4 <ieee80211_ap_accept_frame+0xa4>
  8e:	e46320fc 	andi      	r3, r3, 252
  92:	eb430080 	cmpnei      	r3, 128
  96:	0c07      	bf      	0xa4	// a4 <ieee80211_ap_accept_frame+0xa4>
  98:	3b5c      	cmpnei      	r3, 28
  9a:	07d2      	br      	0x3e	// 3e <ieee80211_ap_accept_frame+0x3e>
  9c:	6c1b      	mov      	r0, r6
  9e:	07d1      	br      	0x40	// 40 <ieee80211_ap_accept_frame+0x40>
  a0:	6c13      	mov      	r0, r4
  a2:	07cf      	br      	0x40	// 40 <ieee80211_ap_accept_frame+0x40>
  a4:	3001      	movi      	r0, 1
  a6:	07cd      	br      	0x40	// 40 <ieee80211_ap_accept_frame+0x40>
  a8:	8d60      	ld.h      	r3, (r5, 0x0)
  aa:	e4032100 	andi      	r0, r3, 256
  ae:	e503200c 	andi      	r8, r3, 12
  b2:	e9200017 	bnez      	r0, 0xe0	// e0 <ieee80211_ap_accept_frame+0xe0>
  b6:	eb480008 	cmpnei      	r8, 8
  ba:	0fc3      	bf      	0x40	// 40 <ieee80211_ap_accept_frame+0x40>
  bc:	e46320fc 	andi      	r3, r3, 252
  c0:	eb4300d0 	cmpnei      	r3, 208
  c4:	080e      	bt      	0xe0	// e0 <ieee80211_ap_accept_frame+0xe0>
  c6:	6c1f      	mov      	r0, r7
  c8:	e0000000 	bsr      	0x0	// 0 <ieee80211_ap_accept_frame>
  cc:	6d03      	mov      	r4, r0
  ce:	e9200009 	bnez      	r0, 0xe0	// e0 <ieee80211_ap_accept_frame+0xe0>
  d2:	3206      	movi      	r2, 6
  d4:	5d2e      	addi      	r1, r5, 4
  d6:	6c1f      	mov      	r0, r7
  d8:	e0000000 	bsr      	0x0	// 0 <memcmp>
  dc:	e920ffe2 	bnez      	r0, 0xa0	// a0 <ieee80211_ap_accept_frame+0xa0>
  e0:	eb480008 	cmpnei      	r8, 8
  e4:	0be0      	bt      	0xa4	// a4 <ieee80211_ap_accept_frame+0xa4>
  e6:	e4064001 	xori      	r0, r6, 1
  ea:	07ab      	br      	0x40	// 40 <ieee80211_ap_accept_frame+0x40>

Disassembly of section .text.ieee80211_ap_reset_beacon:

00000000 <ieee80211_ap_reset_beacon>:
   0:	14d3      	push      	r4-r6, r15
   2:	6d03      	mov      	r4, r0
   4:	6d87      	mov      	r6, r1
   6:	3101      	movi      	r1, 1
   8:	e0000000 	bsr      	0x0	// 0 <ieee80211_check_ap_running>
   c:	6d43      	mov      	r5, r0
   e:	d8042063 	ld.w      	r0, (r4, 0x18c)
  12:	e0000000 	bsr      	0x0	// 0 <os_timer_stop>
  16:	3d40      	cmpnei      	r5, 0
  18:	3300      	movi      	r3, 0
  1a:	6483      	mvcv      	r2
  1c:	3154      	movi      	r1, 84
  1e:	d8042029 	ld.w      	r0, (r4, 0xa4)
  22:	e0000000 	bsr      	0x0	// 0 <lmac_ioctl>
  26:	8465      	ld.b      	r3, (r4, 0x5)
  28:	e4632001 	andi      	r3, r3, 1
  2c:	e9030013 	bez      	r3, 0x52	// 52 <ieee80211_ap_reset_beacon+0x52>
  30:	e9260011 	bnez      	r6, 0x52	// 52 <ieee80211_ap_reset_beacon+0x52>
  34:	e925000f 	bnez      	r5, 0x52	// 52 <ieee80211_ap_reset_beacon+0x52>
  38:	d82410aa 	ld.h      	r1, (r4, 0x154)
  3c:	d8042063 	ld.w      	r0, (r4, 0x18c)
  40:	e0000000 	bsr      	0x0	// 0 <os_timer_start>
  44:	6cd7      	mov      	r3, r5
  46:	3201      	movi      	r2, 1
  48:	3154      	movi      	r1, 84
  4a:	d8042029 	ld.w      	r0, (r4, 0xa4)
  4e:	e0000000 	bsr      	0x0	// 0 <lmac_ioctl>
  52:	1493      	pop      	r4-r6, r15

Disassembly of section .text.ieee80211_ap_send_beacon:

00000000 <ieee80211_ap_send_beacon>:
   0:	14d2      	push      	r4-r5, r15
   2:	8065      	ld.b      	r3, (r0, 0x5)
   4:	e4632081 	andi      	r3, r3, 129
   8:	3b41      	cmpnei      	r3, 1
   a:	6d03      	mov      	r4, r0
   c:	081a      	bt      	0x40	// 40 <ieee80211_ap_send_beacon+0x40>
   e:	8860      	ld.h      	r3, (r0, 0x0)
  10:	e4632002 	andi      	r3, r3, 2
  14:	e9030016 	bez      	r3, 0x40	// 40 <ieee80211_ap_send_beacon+0x40>
  18:	e0000000 	bsr      	0x0	// 0 <ieee80211_ap_gen_beacon>
  1c:	6d43      	mov      	r5, r0
  1e:	e9000011 	bez      	r0, 0x40	// 40 <ieee80211_ap_send_beacon+0x40>
  22:	d8042029 	ld.w      	r0, (r4, 0xa4)
  26:	6c57      	mov      	r1, r5
  28:	9065      	ld.w      	r3, (r0, 0x14)
  2a:	7bcd      	jsr      	r3
  2c:	e900000b 	bez      	r0, 0x42	// 42 <ieee80211_ap_send_beacon+0x42>
  30:	d864207b 	ld.w      	r3, (r4, 0x1ec)
  34:	2300      	addi      	r3, 1
  36:	dc64207b 	st.w      	r3, (r4, 0x1ec)
  3a:	6c17      	mov      	r0, r5
  3c:	e0000000 	bsr      	0x0	// 0 <kfree_skb>
  40:	1492      	pop      	r4-r5, r15
  42:	e0000000 	bsr      	0x0	// 0 <os_jiffies>
  46:	d8642077 	ld.w      	r3, (r4, 0x1dc)
  4a:	2300      	addi      	r3, 1
  4c:	b40a      	st.w      	r0, (r4, 0x28)
  4e:	b42b      	st.w      	r1, (r4, 0x2c)
  50:	dc642077 	st.w      	r3, (r4, 0x1dc)
  54:	07f6      	br      	0x40	// 40 <ieee80211_ap_send_beacon+0x40>

Disassembly of section .text.ieee80211_ap_disconnect_all:

00000000 <ieee80211_ap_disconnect_all>:
   0:	14d3      	push      	r4-r6, r15
   2:	d860202a 	ld.w      	r3, (r0, 0xa8)
   6:	6d43      	mov      	r5, r0
   8:	d8832068 	ld.w      	r4, (r3, 0x1a0)
   c:	94c0      	ld.w      	r6, (r4, 0x0)
   e:	d865202a 	ld.w      	r3, (r5, 0xa8)
  12:	e463019f 	addi      	r3, r3, 416
  16:	64d2      	cmpne      	r4, r3
  18:	0802      	bt      	0x1c	// 1c <ieee80211_ap_disconnect_all+0x1c>
  1a:	1493      	pop      	r4-r6, r15
  1c:	d864202a 	ld.w      	r3, (r4, 0xa8)
  20:	64d6      	cmpne      	r5, r3
  22:	080d      	bt      	0x3c	// 3c <ieee80211_ap_disconnect_all+0x3c>
  24:	3204      	movi      	r2, 4
  26:	e424001b 	addi      	r1, r4, 28
  2a:	6c17      	mov      	r0, r5
  2c:	e0000000 	bsr      	0x0	// 0 <ieee80211_send_disassoc>
  30:	3301      	movi      	r3, 1
  32:	6c8f      	mov      	r2, r3
  34:	6c53      	mov      	r1, r4
  36:	6c17      	mov      	r0, r5
  38:	e0000000 	bsr      	0x0	// 0 <ieee80211_sta_del>
  3c:	6d1b      	mov      	r4, r6
  3e:	96c0      	ld.w      	r6, (r6, 0x0)
  40:	07e7      	br      	0xe	// e <ieee80211_ap_disconnect_all+0xe>

Disassembly of section .text.ieee80211_ap_check_heartbeat:

00000000 <ieee80211_ap_check_heartbeat>:
   0:	14d8      	push      	r4-r11, r15
   2:	1429      	subi      	r14, r14, 36
   4:	8065      	ld.b      	r3, (r0, 0x5)
   6:	e4632081 	andi      	r3, r3, 129
   a:	3b41      	cmpnei      	r3, 1
   c:	6ec3      	mov      	r11, r0
   e:	081a      	bt      	0x42	// 42 <ieee80211_ap_check_heartbeat+0x42>
  10:	8860      	ld.h      	r3, (r0, 0x0)
  12:	e4632002 	andi      	r3, r3, 2
  16:	e9030016 	bez      	r3, 0x42	// 42 <ieee80211_ap_check_heartbeat+0x42>
  1a:	d860202a 	ld.w      	r3, (r0, 0xa8)
  1e:	d88010ac 	ld.h      	r4, (r0, 0x158)
  22:	d9832068 	ld.w      	r12, (r3, 0x1a0)
  26:	448a      	lsli      	r4, r4, 10
  28:	1272      	lrw      	r3, 0x0	// 170 <ieee80211_ap_check_heartbeat+0x170>
  2a:	6eb3      	mov      	r10, r12
  2c:	b867      	st.w      	r3, (r14, 0x1c)
  2e:	d8ac2000 	ld.w      	r5, (r12, 0x0)
  32:	1271      	lrw      	r3, 0x0	// 174 <ieee80211_ap_check_heartbeat+0x174>
  34:	b868      	st.w      	r3, (r14, 0x20)
  36:	d86b202a 	ld.w      	r3, (r11, 0xa8)
  3a:	e463019f 	addi      	r3, r3, 416
  3e:	64ea      	cmpne      	r10, r3
  40:	0804      	bt      	0x48	// 48 <ieee80211_ap_check_heartbeat+0x48>
  42:	3000      	movi      	r0, 0
  44:	1409      	addi      	r14, r14, 36
  46:	1498      	pop      	r4-r11, r15
  48:	d86a202a 	ld.w      	r3, (r10, 0xa8)
  4c:	64ee      	cmpne      	r11, r3
  4e:	0875      	bt      	0x138	// 138 <ieee80211_ap_check_heartbeat+0x138>
  50:	d86a0025 	ld.b      	r3, (r10, 0x25)
  54:	e4432008 	andi      	r2, r3, 8
  58:	e9020070 	bez      	r2, 0x138	// 138 <ieee80211_ap_check_heartbeat+0x138>
  5c:	d84b0005 	ld.b      	r2, (r11, 0x5)
  60:	e4422004 	andi      	r2, r2, 4
  64:	e922000b 	bnez      	r2, 0x7a	// 7a <ieee80211_ap_check_heartbeat+0x7a>
  68:	e4632001 	andi      	r3, r3, 1
  6c:	e9230007 	bnez      	r3, 0x7a	// 7a <ieee80211_ap_check_heartbeat+0x7a>
  70:	d86b10ad 	ld.h      	r3, (r11, 0x15a)
  74:	3b40      	cmpnei      	r3, 0
  76:	c4830c40 	inct      	r4, r3, 0
  7a:	d86a00c8 	ld.b      	r3, (r10, 0xc8)
  7e:	e4632003 	andi      	r3, r3, 3
  82:	3b40      	cmpnei      	r3, 0
  84:	5c50      	addu      	r2, r4, r4
  86:	c4820c40 	inct      	r4, r2, 0
  8a:	d8ca2024 	ld.w      	r6, (r10, 0x90)
  8e:	d8ea2025 	ld.w      	r7, (r10, 0x94)
  92:	6e13      	mov      	r8, r4
  94:	ea090000 	movi      	r9, 0
  98:	6599      	cmplt      	r6, r6
  9a:	61a1      	addc      	r6, r8
  9c:	61e5      	addc      	r7, r9
  9e:	e0000000 	bsr      	0x0	// 0 <os_jiffies>
  a2:	6400      	cmphs      	r0, r0
  a4:	c4060100 	subc      	r0, r6, r0
  a8:	c4270101 	subc      	r1, r7, r1
  ac:	e9a1005a 	bhsz      	r1, 0x160	// 160 <ieee80211_ap_check_heartbeat+0x160>
  b0:	d84b10ac 	ld.h      	r2, (r11, 0x158)
  b4:	424a      	lsli      	r2, r2, 10
  b6:	d86a001c 	ld.b      	r3, (r10, 0x1c)
  ba:	b846      	st.w      	r2, (r14, 0x18)
  bc:	d84b10ad 	ld.h      	r2, (r11, 0x15a)
  c0:	b845      	st.w      	r2, (r14, 0x14)
  c2:	d84a0021 	ld.b      	r2, (r10, 0x21)
  c6:	b844      	st.w      	r2, (r14, 0x10)
  c8:	d84a0020 	ld.b      	r2, (r10, 0x20)
  cc:	b843      	st.w      	r2, (r14, 0xc)
  ce:	d84a001f 	ld.b      	r2, (r10, 0x1f)
  d2:	b842      	st.w      	r2, (r14, 0x8)
  d4:	d84a001e 	ld.b      	r2, (r10, 0x1e)
  d8:	b841      	st.w      	r2, (r14, 0x4)
  da:	d84a001d 	ld.b      	r2, (r10, 0x1d)
  de:	b840      	st.w      	r2, (r14, 0x0)
  e0:	9827      	ld.w      	r1, (r14, 0x1c)
  e2:	3262      	movi      	r2, 98
  e4:	9808      	ld.w      	r0, (r14, 0x20)
  e6:	e0000000 	bsr      	0x0	// 0 <hgprintf>
  ea:	d80a0025 	ld.b      	r0, (r10, 0x25)
  ee:	7480      	zextb      	r2, r0
  f0:	e4222001 	andi      	r1, r2, 1
  f4:	e9010010 	bez      	r1, 0x114	// 114 <ieee80211_ap_check_heartbeat+0x114>
  f8:	330d      	movi      	r3, 13
  fa:	d84a1006 	ld.h      	r2, (r10, 0xc)
  fe:	6c67      	mov      	r1, r9
 100:	6c2f      	mov      	r0, r11
 102:	e0000000 	bsr      	0x0	// 0 <ieee80211_wakeup_sta>
 106:	3301      	movi      	r3, 1
 108:	6c8f      	mov      	r2, r3
 10a:	6c6b      	mov      	r1, r10
 10c:	6c2f      	mov      	r0, r11
 10e:	e0000000 	bsr      	0x0	// 0 <ieee80211_sta_del>
 112:	0413      	br      	0x138	// 138 <ieee80211_ap_check_heartbeat+0x138>
 114:	e4422020 	andi      	r2, r2, 32
 118:	d86b0005 	ld.b      	r3, (r11, 0x5)
 11c:	e9220011 	bnez      	r2, 0x13e	// 13e <ieee80211_ap_check_heartbeat+0x13e>
 120:	6c43      	mov      	r1, r0
 122:	3001      	movi      	r0, 1
 124:	c4205c05 	ins      	r1, r0, 5, 5
 128:	dc2a0025 	st.b      	r1, (r10, 0x25)
 12c:	c4435443 	zext      	r3, r3, 2, 2
 130:	6c6b      	mov      	r1, r10
 132:	6c2f      	mov      	r0, r11
 134:	e0000000 	bsr      	0x0	// 0 <ieee80211_send_nullfunc>
 138:	6e97      	mov      	r10, r5
 13a:	95a0      	ld.w      	r5, (r5, 0x0)
 13c:	077d      	br      	0x36	// 36 <ieee80211_ap_check_heartbeat+0x36>
 13e:	e4632004 	andi      	r3, r3, 4
 142:	e9030008 	bez      	r3, 0x152	// 152 <ieee80211_ap_check_heartbeat+0x152>
 146:	3315      	movi      	r3, 21
 148:	dc6b0026 	st.b      	r3, (r11, 0x26)
 14c:	3001      	movi      	r0, 1
 14e:	e0000000 	bsr      	0x0	// 0 <system_resume>
 152:	3202      	movi      	r2, 2
 154:	e42a001b 	addi      	r1, r10, 28
 158:	6c2f      	mov      	r0, r11
 15a:	e0000000 	bsr      	0x0	// 0 <ieee80211_send_deauth>
 15e:	07d4      	br      	0x106	// 106 <ieee80211_ap_check_heartbeat+0x106>
 160:	d86a0025 	ld.b      	r3, (r10, 0x25)
 164:	c4695c05 	ins      	r3, r9, 5, 5
 168:	dc6a0025 	st.b      	r3, (r10, 0x25)
 16c:	07e6      	br      	0x138	// 138 <ieee80211_ap_check_heartbeat+0x138>
	...

Disassembly of section .text.ieee80211_ap_init_wpasm:

00000000 <ieee80211_ap_init_wpasm>:
   0:	14d1      	push      	r4, r15
   2:	1421      	subi      	r14, r14, 4
   4:	d860203f 	ld.w      	r3, (r0, 0xfc)
   8:	3b44      	cmpnei      	r3, 4
   a:	6d03      	mov      	r4, r0
   c:	0c23      	bf      	0x52	// 52 <ieee80211_ap_init_wpasm+0x52>
   e:	8062      	ld.b      	r3, (r0, 0x2)
  10:	e4632070 	andi      	r3, r3, 112
  14:	e923001f 	bnez      	r3, 0x52	// 52 <ieee80211_ap_init_wpasm+0x52>
  18:	d980200d 	ld.w      	r12, (r0, 0x34)
  1c:	d8402041 	ld.w      	r2, (r0, 0x104)
  20:	d8202042 	ld.w      	r1, (r0, 0x108)
  24:	d8602040 	ld.w      	r3, (r0, 0x100)
  28:	e92c0017 	bnez      	r12, 0x56	// 56 <ieee80211_ap_init_wpasm+0x56>
  2c:	b860      	st.w      	r3, (r14, 0x0)
  2e:	6ccb      	mov      	r3, r2
  30:	6c87      	mov      	r2, r1
  32:	5836      	addi      	r1, r0, 6
  34:	e0000000 	bsr      	0x0	// 0 <wpa_auth_setup>
  38:	b40d      	st.w      	r0, (r4, 0x34)
  3a:	e9200007 	bnez      	r0, 0x48	// 48 <ieee80211_ap_init_wpasm+0x48>
  3e:	1049      	lrw      	r2, 0x0	// 60 <ieee80211_ap_init_wpasm+0x60>
  40:	31ed      	movi      	r1, 237
  42:	1009      	lrw      	r0, 0x0	// 64 <ieee80211_ap_init_wpasm+0x64>
  44:	e0000000 	bsr      	0x0	// 0 <assert_internal>
  48:	940d      	ld.w      	r0, (r4, 0x34)
  4a:	e0000000 	bsr      	0x0	// 0 <wpa_init_keys>
  4e:	1067      	lrw      	r3, 0x0	// 68 <ieee80211_ap_init_wpasm+0x68>
  50:	b46e      	st.w      	r3, (r4, 0x38)
  52:	1401      	addi      	r14, r14, 4
  54:	1491      	pop      	r4, r15
  56:	6c33      	mov      	r0, r12
  58:	e0000000 	bsr      	0x0	// 0 <wpa_auth_reconfig>
  5c:	07fb      	br      	0x52	// 52 <ieee80211_ap_init_wpasm+0x52>
	...

Disassembly of section .text.ieee80211_ap_do_action:

00000000 <ieee80211_ap_do_action>:
   0:	14d2      	push      	r4-r5, r15
   2:	2900      	subi      	r1, 1
   4:	7445      	zexth      	r1, r1
   6:	3910      	cmphsi      	r1, 17
   8:	6d03      	mov      	r4, r0
   a:	085c      	bt      	0xc2	// c2 <ieee80211_ap_do_action+0xc2>
   c:	1062      	lrw      	r3, 0x0	// 14 <ieee80211_ap_do_action+0x14>
   e:	d0230883 	ldr.w      	r3, (r3, r1 << 2)
  12:	780c      	jmp      	r3
  14:	00000000 	.long	0x00000000
  18:	8065      	ld.b      	r3, (r0, 0x5)
  1a:	e4a32001 	andi      	r5, r3, 1
  1e:	e9250016 	bnez      	r5, 0x4a	// 4a <ieee80211_ap_do_action+0x4a>
  22:	3201      	movi      	r2, 1
  24:	c4625c00 	ins      	r3, r2, 0, 0
  28:	a065      	st.b      	r3, (r0, 0x5)
  2a:	e0000000 	bsr      	0x0	// 0 <ieee80211_ap_do_action>
  2e:	6c57      	mov      	r1, r5
  30:	6c13      	mov      	r0, r4
  32:	e0000000 	bsr      	0x0	// 0 <ieee80211_ap_do_action>
  36:	3109      	movi      	r1, 9
  38:	6c13      	mov      	r0, r4
  3a:	e0000000 	bsr      	0x0	// 0 <ieee80211_state>
  3e:	6cd7      	mov      	r3, r5
  40:	8444      	ld.b      	r2, (r4, 0x4)
  42:	3114      	movi      	r1, 20
  44:	6c13      	mov      	r0, r4
  46:	e0000000 	bsr      	0x0	// 0 <ieee80211_iface_event>
  4a:	3000      	movi      	r0, 0
  4c:	043d      	br      	0xc6	// c6 <ieee80211_ap_do_action+0xc6>
  4e:	8065      	ld.b      	r3, (r0, 0x5)
  50:	e4032001 	andi      	r0, r3, 1
  54:	3500      	movi      	r5, 0
  56:	e9000038 	bez      	r0, 0xc6	// c6 <ieee80211_ap_do_action+0xc6>
  5a:	c4655c00 	ins      	r3, r5, 0, 0
  5e:	a465      	st.b      	r3, (r4, 0x5)
  60:	3101      	movi      	r1, 1
  62:	6c13      	mov      	r0, r4
  64:	e0000000 	bsr      	0x0	// 0 <ieee80211_ap_do_action>
  68:	6c13      	mov      	r0, r4
  6a:	e0000000 	bsr      	0x0	// 0 <ieee80211_ap_do_action>
  6e:	6c13      	mov      	r0, r4
  70:	e0000000 	bsr      	0x0	// 0 <ieee80211_del_gtk>
  74:	d804202a 	ld.w      	r0, (r4, 0xa8)
  78:	d8602078 	ld.w      	r3, (r0, 0x1e0)
  7c:	e9030007 	bez      	r3, 0x8a	// 8a <ieee80211_ap_do_action+0x8a>
  80:	d863204c 	ld.w      	r3, (r3, 0x130)
  84:	6c97      	mov      	r2, r5
  86:	6c53      	mov      	r1, r4
  88:	7bcd      	jsr      	r3
  8a:	e4040177 	addi      	r0, r4, 376
  8e:	e0000000 	bsr      	0x0	// 0 <skb_list_destroy>
  92:	3101      	movi      	r1, 1
  94:	6c13      	mov      	r0, r4
  96:	e0000000 	bsr      	0x0	// 0 <ieee80211_state>
  9a:	3300      	movi      	r3, 0
  9c:	8444      	ld.b      	r2, (r4, 0x4)
  9e:	3115      	movi      	r1, 21
  a0:	07d2      	br      	0x44	// 44 <ieee80211_ap_do_action+0x44>
  a2:	e0000000 	bsr      	0x0	// 0 <ieee80211_ap_do_action>
  a6:	6c13      	mov      	r0, r4
  a8:	e0000000 	bsr      	0x0	// 0 <ieee80211_ap_do_action>
  ac:	07cf      	br      	0x4a	// 4a <ieee80211_ap_do_action+0x4a>
  ae:	3100      	movi      	r1, 0
  b0:	e0000000 	bsr      	0x0	// 0 <ieee80211_ap_do_action>
  b4:	07cb      	br      	0x4a	// 4a <ieee80211_ap_do_action+0x4a>
  b6:	d8202043 	ld.w      	r1, (r0, 0x10c)
  ba:	900d      	ld.w      	r0, (r0, 0x34)
  bc:	e0000000 	bsr      	0x0	// 0 <wpa_auth_set_group_rekey>
  c0:	07c5      	br      	0x4a	// 4a <ieee80211_ap_do_action+0x4a>
  c2:	3000      	movi      	r0, 0
  c4:	2800      	subi      	r0, 1
  c6:	1492      	pop      	r4-r5, r15

Disassembly of section .text.ieee80211_ap_init:

00000000 <ieee80211_ap_init>:
   0:	14d1      	push      	r4, r15
   2:	6d03      	mov      	r4, r0
   4:	3020      	movi      	r0, 32
   6:	e0000000 	bsr      	0x0	// 0 <_os_zalloc>
   a:	dc042063 	st.w      	r0, (r4, 0x18c)
   e:	e9200008 	bnez      	r0, 0x1e	// 1e <ieee80211_ap_init+0x1e>
  12:	31df      	movi      	r1, 223
  14:	1142      	lrw      	r2, 0x0	// 9c <ieee80211_ap_init+0x9c>
  16:	4121      	lsli      	r1, r1, 1
  18:	1102      	lrw      	r0, 0x0	// a0 <ieee80211_ap_init+0xa0>
  1a:	e0000000 	bsr      	0x0	// 0 <assert_internal>
  1e:	33fa      	movi      	r3, 250
  20:	4361      	lsli      	r3, r3, 1
  22:	ac6a      	st.h      	r3, (r4, 0x14)
  24:	ac6b      	st.h      	r3, (r4, 0x16)
  26:	33fa      	movi      	r3, 250
  28:	4363      	lsli      	r3, r3, 3
  2a:	ac6c      	st.h      	r3, (r4, 0x18)
  2c:	d804202a 	ld.w      	r0, (r4, 0xa8)
  30:	e0000000 	bsr      	0x0	// 0 <ieee80211_stainfo_init>
  34:	6cd3      	mov      	r3, r4
  36:	3201      	movi      	r2, 1
  38:	103b      	lrw      	r1, 0x0	// a4 <ieee80211_ap_init+0xa4>
  3a:	d8042063 	ld.w      	r0, (r4, 0x18c)
  3e:	e0000000 	bsr      	0x0	// 0 <os_timer_init>
  42:	107a      	lrw      	r3, 0x0	// a8 <ieee80211_ap_init+0xa8>
  44:	32ea      	movi      	r2, 234
  46:	b47c      	st.w      	r3, (r4, 0x70)
  48:	4241      	lsli      	r2, r2, 1
  4a:	1079      	lrw      	r3, 0x0	// ac <ieee80211_ap_init+0xac>
  4c:	1039      	lrw      	r1, 0x0	// b0 <ieee80211_ap_init+0xb0>
  4e:	101a      	lrw      	r0, 0x0	// b4 <ieee80211_ap_init+0xb4>
  50:	b47d      	st.w      	r3, (r4, 0x74)
  52:	107a      	lrw      	r3, 0x0	// b8 <ieee80211_ap_init+0xb8>
  54:	b47b      	st.w      	r3, (r4, 0x6c)
  56:	107a      	lrw      	r3, 0x0	// bc <ieee80211_ap_init+0xbc>
  58:	b47a      	st.w      	r3, (r4, 0x68)
  5a:	107a      	lrw      	r3, 0x0	// c0 <ieee80211_ap_init+0xc0>
  5c:	b479      	st.w      	r3, (r4, 0x64)
  5e:	107a      	lrw      	r3, 0x0	// c4 <ieee80211_ap_init+0xc4>
  60:	b477      	st.w      	r3, (r4, 0x5c)
  62:	107a      	lrw      	r3, 0x0	// c8 <ieee80211_ap_init+0xc8>
  64:	b478      	st.w      	r3, (r4, 0x60)
  66:	107a      	lrw      	r3, 0x0	// cc <ieee80211_ap_init+0xcc>
  68:	b476      	st.w      	r3, (r4, 0x58)
  6a:	107a      	lrw      	r3, 0x0	// d0 <ieee80211_ap_init+0xd0>
  6c:	b473      	st.w      	r3, (r4, 0x4c)
  6e:	107a      	lrw      	r3, 0x0	// d4 <ieee80211_ap_init+0xd4>
  70:	b472      	st.w      	r3, (r4, 0x48)
  72:	107a      	lrw      	r3, 0x0	// d8 <ieee80211_ap_init+0xd8>
  74:	dc642020 	st.w      	r3, (r4, 0x80)
  78:	1079      	lrw      	r3, 0x0	// dc <ieee80211_ap_init+0xdc>
  7a:	b470      	st.w      	r3, (r4, 0x40)
  7c:	1079      	lrw      	r3, 0x0	// e0 <ieee80211_ap_init+0xe0>
  7e:	b471      	st.w      	r3, (r4, 0x44)
  80:	1079      	lrw      	r3, 0x0	// e4 <ieee80211_ap_init+0xe4>
  82:	dc642022 	st.w      	r3, (r4, 0x88)
  86:	1079      	lrw      	r3, 0x0	// e8 <ieee80211_ap_init+0xe8>
  88:	dc642023 	st.w      	r3, (r4, 0x8c)
  8c:	1078      	lrw      	r3, 0x0	// ec <ieee80211_ap_init+0xec>
  8e:	b47e      	st.w      	r3, (r4, 0x78)
  90:	8c60      	ld.h      	r3, (r4, 0x0)
  92:	e0000000 	bsr      	0x0	// 0 <hgprintf>
  96:	3000      	movi      	r0, 0
  98:	1491      	pop      	r4, r15
	...
