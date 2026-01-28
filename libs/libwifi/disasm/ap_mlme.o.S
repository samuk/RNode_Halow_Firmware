
libwifi/o/ap_mlme.o:     file format elf32-csky-little


Disassembly of section .text.ieee80211_ap_eloop_assoc_timeout_cb:

00000000 <ieee80211_ap_eloop_assoc_timeout_cb>:
   0:	14d0      	push      	r15
   2:	e9000008 	bez      	r0, 0x12	// 12 <ieee80211_ap_eloop_assoc_timeout_cb+0x12>
   6:	e9010006 	bez      	r1, 0x12	// 12 <ieee80211_ap_eloop_assoc_timeout_cb+0x12>
   a:	3301      	movi      	r3, 1
   c:	6c8f      	mov      	r2, r3
   e:	e0000000 	bsr      	0x0	// 0 <ieee80211_sta_del>
  12:	1490      	pop      	r15

Disassembly of section .text.ieee80211_ap_rx_probe_req:

00000000 <ieee80211_ap_rx_probe_req>:
   0:	14d5      	push      	r4-r8, r15
   2:	1421      	subi      	r14, r14, 4
   4:	3300      	movi      	r3, 0
   6:	dc6e0003 	st.b      	r3, (r14, 0x3)
   a:	9062      	ld.w      	r3, (r0, 0x8)
   c:	6d43      	mov      	r5, r0
   e:	93e7      	ld.w      	r7, (r3, 0x1c)
  10:	9326      	ld.w      	r1, (r3, 0x18)
  12:	e4070017 	addi      	r0, r7, 24
  16:	e46e0002 	addi      	r3, r14, 3
  1a:	6042      	subu      	r1, r0
  1c:	3200      	movi      	r2, 0
  1e:	e0000000 	bsr      	0x0	// 0 <ieee80211_ie_get>
  22:	9520      	ld.w      	r1, (r5, 0x0)
  24:	6e03      	mov      	r8, r0
  26:	8960      	ld.h      	r3, (r1, 0x0)
  28:	e4632002 	andi      	r3, r3, 2
  2c:	e903004e 	bez      	r3, 0xc8	// c8 <ieee80211_ap_rx_probe_req+0xc8>
  30:	e900004c 	bez      	r0, 0xc8	// c8 <ieee80211_ap_rx_probe_req+0xc8>
  34:	d8ce0003 	ld.b      	r6, (r14, 0x3)
  38:	e926003a 	bnez      	r6, 0xac	// ac <ieee80211_ap_rx_probe_req+0xac>
  3c:	d8612063 	ld.w      	r3, (r1, 0x18c)
  40:	837c      	ld.b      	r3, (r3, 0x1c)
  42:	e4632001 	andi      	r3, r3, 1
  46:	e9230041 	bnez      	r3, 0xc8	// c8 <ieee80211_ap_rx_probe_req+0xc8>
  4a:	8165      	ld.b      	r3, (r1, 0x5)
  4c:	e4632004 	andi      	r3, r3, 4
  50:	e923003c 	bnez      	r3, 0xc8	// c8 <ieee80211_ap_rx_probe_req+0xc8>
  54:	301c      	movi      	r0, 28
  56:	e0000000 	bsr      	0x0	// 0 <_os_zalloc>
  5a:	6d03      	mov      	r4, r0
  5c:	e9000036 	bez      	r0, 0xc8	// c8 <ieee80211_ap_rx_probe_req+0xc8>
  60:	95c0      	ld.w      	r6, (r5, 0x0)
  62:	9561      	ld.w      	r3, (r5, 0x4)
  64:	b060      	st.w      	r3, (r0, 0x0)
  66:	d866202b 	ld.w      	r3, (r6, 0xac)
  6a:	2709      	addi      	r7, 10
  6c:	8360      	ld.b      	r3, (r3, 0x0)
  6e:	a064      	st.b      	r3, (r0, 0x4)
  70:	b0e2      	st.w      	r7, (r0, 0x8)
  72:	e4060112 	addi      	r0, r6, 275
  76:	b403      	st.w      	r0, (r4, 0xc)
  78:	e0000000 	bsr      	0x0	// 0 <strlen>
  7c:	d86610aa 	ld.h      	r3, (r6, 0x154)
  80:	ac63      	st.h      	r3, (r4, 0x6)
  82:	d866203f 	ld.w      	r3, (r6, 0xfc)
  86:	3b42      	cmpnei      	r3, 2
  88:	b405      	st.w      	r0, (r4, 0x14)
  8a:	0809      	bt      	0x9c	// 9c <ieee80211_ap_rx_probe_req+0x9c>
  8c:	960d      	ld.w      	r0, (r6, 0x34)
  8e:	e9000007 	bez      	r0, 0x9c	// 9c <ieee80211_ap_rx_probe_req+0x9c>
  92:	e4240017 	addi      	r1, r4, 24
  96:	e0000000 	bsr      	0x0	// 0 <wpa_auth_get_wpa_ie>
  9a:	b404      	st.w      	r0, (r4, 0x10)
  9c:	6c53      	mov      	r1, r4
  9e:	9500      	ld.w      	r0, (r5, 0x0)
  a0:	e0000000 	bsr      	0x0	// 0 <ieee80211_send_probe_response>
  a4:	6c13      	mov      	r0, r4
  a6:	e0000000 	bsr      	0x0	// 0 <_os_free>
  aa:	040f      	br      	0xc8	// c8 <ieee80211_ap_rx_probe_req+0xc8>
  ac:	e4810112 	addi      	r4, r1, 275
  b0:	6c13      	mov      	r0, r4
  b2:	e0000000 	bsr      	0x0	// 0 <strlen>
  b6:	641a      	cmpne      	r6, r0
  b8:	0808      	bt      	0xc8	// c8 <ieee80211_ap_rx_probe_req+0xc8>
  ba:	6c9b      	mov      	r2, r6
  bc:	6c53      	mov      	r1, r4
  be:	6c23      	mov      	r0, r8
  c0:	e0000000 	bsr      	0x0	// 0 <strncmp>
  c4:	e900ffc8 	bez      	r0, 0x54	// 54 <ieee80211_ap_rx_probe_req+0x54>
  c8:	1401      	addi      	r14, r14, 4
  ca:	1495      	pop      	r4-r8, r15

Disassembly of section .text.ieee80211_ap_rx_assoc_req:

00000000 <ieee80211_ap_rx_assoc_req>:
   0:	14d5      	push      	r4-r8, r15
   2:	1421      	subi      	r14, r14, 4
   4:	9061      	ld.w      	r3, (r0, 0x4)
   6:	6d03      	mov      	r4, r0
   8:	9000      	ld.w      	r0, (r0, 0x0)
   a:	3b40      	cmpnei      	r3, 0
   c:	8840      	ld.h      	r2, (r0, 0x0)
   e:	e4422002 	andi      	r2, r2, 2
  12:	64c3      	mvcv      	r3
  14:	6dc7      	mov      	r7, r1
  16:	4361      	lsli      	r3, r3, 1
  18:	e9020014 	bez      	r2, 0x40	// 40 <ieee80211_ap_rx_assoc_req+0x40>
  1c:	9442      	ld.w      	r2, (r4, 0x8)
  1e:	92c7      	ld.w      	r6, (r2, 0x1c)
  20:	e4a60009 	addi      	r5, r6, 10
  24:	e9230009 	bnez      	r3, 0x36	// 36 <ieee80211_ap_rx_assoc_req+0x36>
  28:	6c97      	mov      	r2, r5
  2a:	311b      	movi      	r1, 27
  2c:	e0000000 	bsr      	0x0	// 0 <ieee80211_iface_event>
  30:	6cc3      	mov      	r3, r0
  32:	e9000009 	bez      	r0, 0x44	// 44 <ieee80211_ap_rx_assoc_req+0x44>
  36:	748d      	zexth      	r2, r3
  38:	6c57      	mov      	r1, r5
  3a:	9400      	ld.w      	r0, (r4, 0x0)
  3c:	e0000000 	bsr      	0x0	// 0 <ieee80211_send_deauth>
  40:	1401      	addi      	r14, r14, 4
  42:	1495      	pop      	r4-r8, r15
  44:	9421      	ld.w      	r1, (r4, 0x4)
  46:	d8610025 	ld.b      	r3, (r1, 0x25)
  4a:	e4632002 	andi      	r3, r3, 2
  4e:	e9230005 	bnez      	r3, 0x58	// 58 <ieee80211_ap_rx_assoc_req+0x58>
  52:	3206      	movi      	r2, 6
  54:	211b      	addi      	r1, 28
  56:	07f2      	br      	0x3a	// 3a <ieee80211_ap_rx_assoc_req+0x3a>
  58:	6cdf      	mov      	r3, r7
  5a:	9442      	ld.w      	r2, (r4, 0x8)
  5c:	9400      	ld.w      	r0, (r4, 0x0)
  5e:	e0000000 	bsr      	0x0	// 0 <ieee80211_check_assoc_ies>
  62:	6e03      	mov      	r8, r0
  64:	30a8      	movi      	r0, 168
  66:	e0000000 	bsr      	0x0	// 0 <_os_zalloc>
  6a:	6d43      	mov      	r5, r0
  6c:	e900003a 	bez      	r0, 0xe0	// e0 <ieee80211_ap_rx_assoc_req+0xe0>
  70:	9441      	ld.w      	r2, (r4, 0x4)
  72:	9420      	ld.w      	r1, (r4, 0x0)
  74:	e462001b 	addi      	r3, r2, 28
  78:	b062      	st.w      	r3, (r0, 0x8)
  7a:	5976      	addi      	r3, r1, 6
  7c:	b061      	st.w      	r3, (r0, 0x4)
  7e:	d861202b 	ld.w      	r3, (r1, 0xac)
  82:	eb480000 	cmpnei      	r8, 0
  86:	8360      	ld.b      	r3, (r3, 0x0)
  88:	dc600039 	st.b      	r3, (r0, 0x39)
  8c:	8173      	ld.b      	r3, (r1, 0x13)
  8e:	dc60003a 	st.b      	r3, (r0, 0x3a)
  92:	8a66      	ld.h      	r3, (r2, 0xc)
  94:	a876      	st.h      	r3, (r0, 0x2c)
  96:	dd000038 	st.b      	r8, (r0, 0x38)
  9a:	b040      	st.w      	r2, (r0, 0x0)
  9c:	d8620025 	ld.b      	r3, (r2, 0x25)
  a0:	c4000500 	mvc      	r0
  a4:	c4605c06 	ins      	r3, r0, 6, 6
  a8:	dc620025 	st.b      	r3, (r2, 0x25)
  ac:	e9070004 	bez      	r7, 0xb4	// b4 <ieee80211_ap_rx_assoc_req+0xb4>
  b0:	261b      	addi      	r6, 28
  b2:	b5c4      	st.w      	r6, (r5, 0x10)
  b4:	100e      	lrw      	r0, 0x0	// ec <ieee80211_ap_rx_assoc_req+0xec>
  b6:	e0000000 	bsr      	0x0	// 0 <eloop_cancel_timeout>
  ba:	9460      	ld.w      	r3, (r4, 0x0)
  bc:	31fa      	movi      	r1, 250
  be:	8b0a      	ld.h      	r0, (r3, 0x14)
  c0:	9441      	ld.w      	r2, (r4, 0x4)
  c2:	4122      	lsli      	r1, r1, 2
  c4:	b840      	st.w      	r2, (r14, 0x0)
  c6:	7c40      	mult      	r1, r0
  c8:	1049      	lrw      	r2, 0x0	// ec <ieee80211_ap_rx_assoc_req+0xec>
  ca:	3000      	movi      	r0, 0
  cc:	e0000000 	bsr      	0x0	// 0 <eloop_register_timeout>
  d0:	9400      	ld.w      	r0, (r4, 0x0)
  d2:	6c57      	mov      	r1, r5
  d4:	e0000000 	bsr      	0x0	// 0 <ieee80211_send_assoc_response>
  d8:	6c17      	mov      	r0, r5
  da:	e0000000 	bsr      	0x0	// 0 <_os_free>
  de:	07b1      	br      	0x40	// 40 <ieee80211_ap_rx_assoc_req+0x40>
  e0:	3260      	movi      	r2, 96
  e2:	1024      	lrw      	r1, 0x0	// f0 <ieee80211_ap_rx_assoc_req+0xf0>
  e4:	1004      	lrw      	r0, 0x0	// f4 <ieee80211_ap_rx_assoc_req+0xf4>
  e6:	e0000000 	bsr      	0x0	// 0 <hgprintf>
  ea:	07ab      	br      	0x40	// 40 <ieee80211_ap_rx_assoc_req+0x40>
	...

Disassembly of section .text.ieee80211_ap_rx_auth_req:

00000000 <ieee80211_ap_rx_auth_req>:
   0:	14d4      	push      	r4-r7, r15
   2:	1426      	subi      	r14, r14, 24
   4:	90e0      	ld.w      	r7, (r0, 0x0)
   6:	6d03      	mov      	r4, r0
   8:	8f60      	ld.h      	r3, (r7, 0x0)
   a:	e4632002 	andi      	r3, r3, 2
   e:	e9030060 	bez      	r3, 0xce	// ce <ieee80211_ap_rx_auth_req+0xce>
  12:	9062      	ld.w      	r3, (r0, 0x8)
  14:	3214      	movi      	r2, 20
  16:	93c7      	ld.w      	r6, (r3, 0x1c)
  18:	3100      	movi      	r1, 0
  1a:	e4a60009 	addi      	r5, r6, 10
  1e:	1801      	addi      	r0, r14, 4
  20:	e0000000 	bsr      	0x0	// 0 <memset>
  24:	3300      	movi      	r3, 0
  26:	6c1f      	mov      	r0, r7
  28:	6c97      	mov      	r2, r5
  2a:	311a      	movi      	r1, 26
  2c:	e0000000 	bsr      	0x0	// 0 <ieee80211_iface_event>
  30:	75c1      	zexth      	r7, r0
  32:	9400      	ld.w      	r0, (r4, 0x0)
  34:	5876      	addi      	r3, r0, 6
  36:	dcee100a 	st.h      	r7, (r14, 0x14)
  3a:	b861      	st.w      	r3, (r14, 0x4)
  3c:	b8a2      	st.w      	r5, (r14, 0x8)
  3e:	e9270021 	bnez      	r7, 0x80	// 80 <ieee80211_ap_rx_auth_req+0x80>
  42:	9421      	ld.w      	r1, (r4, 0x4)
  44:	e901000d 	bez      	r1, 0x5e	// 5e <ieee80211_ap_rx_auth_req+0x5e>
  48:	d8610025 	ld.b      	r3, (r1, 0x25)
  4c:	e4632004 	andi      	r3, r3, 4
  50:	e9030007 	bez      	r3, 0x5e	// 5e <ieee80211_ap_rx_auth_req+0x5e>
  54:	3301      	movi      	r3, 1
  56:	6c8f      	mov      	r2, r3
  58:	e0000000 	bsr      	0x0	// 0 <ieee80211_sta_del>
  5c:	b4e1      	st.w      	r7, (r4, 0x4)
  5e:	8e6c      	ld.h      	r3, (r6, 0x18)
  60:	e9230039 	bnez      	r3, 0xd2	// d2 <ieee80211_ap_rx_auth_req+0xd2>
  64:	dc6e1008 	st.h      	r3, (r14, 0x10)
  68:	8e6d      	ld.h      	r3, (r6, 0x1a)
  6a:	2300      	addi      	r3, 1
  6c:	dc6e1009 	st.h      	r3, (r14, 0x12)
  70:	9441      	ld.w      	r2, (r4, 0x4)
  72:	e922000a 	bnez      	r2, 0x86	// 86 <ieee80211_ap_rx_auth_req+0x86>
  76:	6c57      	mov      	r1, r5
  78:	9400      	ld.w      	r0, (r4, 0x0)
  7a:	e0000000 	bsr      	0x0	// 0 <ieee80211_sta_new>
  7e:	b401      	st.w      	r0, (r4, 0x4)
  80:	9441      	ld.w      	r2, (r4, 0x4)
  82:	e902002c 	bez      	r2, 0xda	// da <ieee80211_ap_rx_auth_req+0xda>
  86:	d8ae100a 	ld.h      	r5, (r14, 0x14)
  8a:	e9250028 	bnez      	r5, 0xda	// da <ieee80211_ap_rx_auth_req+0xda>
  8e:	d8620025 	ld.b      	r3, (r2, 0x25)
  92:	3101      	movi      	r1, 1
  94:	c4615c01 	ins      	r3, r1, 1, 1
  98:	c4655c02 	ins      	r3, r5, 2, 2
  9c:	c4655c03 	ins      	r3, r5, 3, 3
  a0:	c4655c06 	ins      	r3, r5, 6, 6
  a4:	dc620025 	st.b      	r3, (r2, 0x25)
  a8:	9420      	ld.w      	r1, (r4, 0x0)
  aa:	1013      	lrw      	r0, 0x0	// f4 <ieee80211_ap_rx_auth_req+0xf4>
  ac:	e0000000 	bsr      	0x0	// 0 <eloop_cancel_timeout>
  b0:	9460      	ld.w      	r3, (r4, 0x0)
  b2:	31fa      	movi      	r1, 250
  b4:	8b0b      	ld.h      	r0, (r3, 0x16)
  b6:	9441      	ld.w      	r2, (r4, 0x4)
  b8:	4122      	lsli      	r1, r1, 2
  ba:	b840      	st.w      	r2, (r14, 0x0)
  bc:	7c40      	mult      	r1, r0
  be:	104e      	lrw      	r2, 0x0	// f4 <ieee80211_ap_rx_auth_req+0xf4>
  c0:	6c17      	mov      	r0, r5
  c2:	e0000000 	bsr      	0x0	// 0 <eloop_register_timeout>
  c6:	1901      	addi      	r1, r14, 4
  c8:	9400      	ld.w      	r0, (r4, 0x0)
  ca:	e0000000 	bsr      	0x0	// 0 <ieee80211_send_auth>
  ce:	1406      	addi      	r14, r14, 24
  d0:	1494      	pop      	r4-r7, r15
  d2:	330d      	movi      	r3, 13
  d4:	dc6e100a 	st.h      	r3, (r14, 0x14)
  d8:	07cc      	br      	0x70	// 70 <ieee80211_ap_rx_auth_req+0x70>
  da:	d86e100a 	ld.h      	r3, (r14, 0x14)
  de:	e923fff4 	bnez      	r3, 0xc6	// c6 <ieee80211_ap_rx_auth_req+0xc6>
  e2:	3311      	movi      	r3, 17
  e4:	3294      	movi      	r2, 148
  e6:	1025      	lrw      	r1, 0x0	// f8 <ieee80211_ap_rx_auth_req+0xf8>
  e8:	1005      	lrw      	r0, 0x0	// fc <ieee80211_ap_rx_auth_req+0xfc>
  ea:	dc6e100a 	st.h      	r3, (r14, 0x14)
  ee:	e0000000 	bsr      	0x0	// 0 <hgprintf>
  f2:	07ea      	br      	0xc6	// c6 <ieee80211_ap_rx_auth_req+0xc6>
	...

Disassembly of section .text.ieee80211_ap_rx_deauth_req:

00000000 <ieee80211_ap_rx_deauth_req>:
   0:	14d0      	push      	r15
   2:	9021      	ld.w      	r1, (r0, 0x4)
   4:	6cc3      	mov      	r3, r0
   6:	e901000e 	bez      	r1, 0x22	// 22 <ieee80211_ap_rx_deauth_req+0x22>
   a:	9000      	ld.w      	r0, (r0, 0x0)
   c:	8840      	ld.h      	r2, (r0, 0x0)
   e:	e4422002 	andi      	r2, r2, 2
  12:	e9020008 	bez      	r2, 0x22	// 22 <ieee80211_ap_rx_deauth_req+0x22>
  16:	9362      	ld.w      	r3, (r3, 0x8)
  18:	3201      	movi      	r2, 1
  1a:	9367      	ld.w      	r3, (r3, 0x1c)
  1c:	8b6c      	ld.h      	r3, (r3, 0x18)
  1e:	e0000000 	bsr      	0x0	// 0 <ieee80211_sta_del>
  22:	1490      	pop      	r15

Disassembly of section .text.ieee80211_ap_rx_disassoc_req:

00000000 <ieee80211_ap_rx_disassoc_req>:
   0:	14d0      	push      	r15
   2:	9021      	ld.w      	r1, (r0, 0x4)
   4:	6cc3      	mov      	r3, r0
   6:	e901000e 	bez      	r1, 0x22	// 22 <ieee80211_ap_rx_disassoc_req+0x22>
   a:	9000      	ld.w      	r0, (r0, 0x0)
   c:	8840      	ld.h      	r2, (r0, 0x0)
   e:	e4422002 	andi      	r2, r2, 2
  12:	e9020008 	bez      	r2, 0x22	// 22 <ieee80211_ap_rx_disassoc_req+0x22>
  16:	9362      	ld.w      	r3, (r3, 0x8)
  18:	3201      	movi      	r2, 1
  1a:	9367      	ld.w      	r3, (r3, 0x1c)
  1c:	8b6c      	ld.h      	r3, (r3, 0x18)
  1e:	e0000000 	bsr      	0x0	// 0 <ieee80211_sta_del>
  22:	1490      	pop      	r15

Disassembly of section .text.ieee80211_ap_mgmt_tx_status:

00000000 <ieee80211_ap_mgmt_tx_status>:
   0:	14d2      	push      	r4-r5, r15
   2:	9167      	ld.w      	r3, (r1, 0x1c)
   4:	6d43      	mov      	r5, r0
   6:	8b60      	ld.h      	r3, (r3, 0x0)
   8:	e46320f3 	andi      	r3, r3, 243
   c:	3b50      	cmpnei      	r3, 16
   e:	6d0b      	mov      	r4, r2
  10:	0c04      	bf      	0x18	// 18 <ieee80211_ap_mgmt_tx_status+0x18>
  12:	eb430030 	cmpnei      	r3, 48
  16:	0832      	bt      	0x7a	// 7a <ieee80211_ap_mgmt_tx_status+0x7a>
  18:	e9040031 	bez      	r4, 0x7a	// 7a <ieee80211_ap_mgmt_tx_status+0x7a>
  1c:	d8640025 	ld.b      	r3, (r4, 0x25)
  20:	748c      	zextb      	r2, r3
  22:	e4022040 	andi      	r0, r2, 64
  26:	e920002a 	bnez      	r0, 0x7a	// 7a <ieee80211_ap_mgmt_tx_status+0x7a>
  2a:	d821002a 	ld.b      	r1, (r1, 0x2a)
  2e:	e4212010 	andi      	r1, r1, 16
  32:	e9010024 	bez      	r1, 0x7a	// 7a <ieee80211_ap_mgmt_tx_status+0x7a>
  36:	e4222002 	andi      	r1, r2, 2
  3a:	e9010020 	bez      	r1, 0x7a	// 7a <ieee80211_ap_mgmt_tx_status+0x7a>
  3e:	e4422004 	andi      	r2, r2, 4
  42:	e922001d 	bnez      	r2, 0x7c	// 7c <ieee80211_ap_mgmt_tx_status+0x7c>
  46:	3201      	movi      	r2, 1
  48:	c4625c02 	ins      	r3, r2, 2, 2
  4c:	dc640025 	st.b      	r3, (r4, 0x25)
  50:	6c53      	mov      	r1, r4
  52:	6c17      	mov      	r0, r5
  54:	e0000000 	bsr      	0x0	// 0 <ieee80211_sta_add>
  58:	e9200007 	bnez      	r0, 0x66	// 66 <ieee80211_ap_mgmt_tx_status+0x66>
  5c:	6c93      	mov      	r2, r4
  5e:	6c57      	mov      	r1, r5
  60:	100a      	lrw      	r0, 0x0	// 88 <ieee80211_ap_mgmt_tx_status+0x88>
  62:	e0000000 	bsr      	0x0	// 0 <eloop_cancel_timeout>
  66:	d865203f 	ld.w      	r3, (r5, 0xfc)
  6a:	3b44      	cmpnei      	r3, 4
  6c:	0807      	bt      	0x7a	// 7a <ieee80211_ap_mgmt_tx_status+0x7a>
  6e:	3300      	movi      	r3, 0
  70:	6c93      	mov      	r2, r4
  72:	3108      	movi      	r1, 8
  74:	6c17      	mov      	r0, r5
  76:	e0000000 	bsr      	0x0	// 0 <ieee80211_iface_event>
  7a:	1492      	pop      	r4-r5, r15
  7c:	6c93      	mov      	r2, r4
  7e:	6c57      	mov      	r1, r5
  80:	1002      	lrw      	r0, 0x0	// 88 <ieee80211_ap_mgmt_tx_status+0x88>
  82:	e0000000 	bsr      	0x0	// 0 <eloop_cancel_timeout>
  86:	07fa      	br      	0x7a	// 7a <ieee80211_ap_mgmt_tx_status+0x7a>
  88:	00000000 	.long	0x00000000

Disassembly of section .text.ieee80211_ap_rx_action:

00000000 <ieee80211_ap_rx_action>:
   0:	14d2      	push      	r4-r5, r15
   2:	9062      	ld.w      	r3, (r0, 0x8)
   4:	6d03      	mov      	r4, r0
   6:	93a7      	ld.w      	r5, (r3, 0x1c)
   8:	9060      	ld.w      	r3, (r0, 0x0)
   a:	8b60      	ld.h      	r3, (r3, 0x0)
   c:	e4632002 	andi      	r3, r3, 2
  10:	e9030007 	bez      	r3, 0x1e	// 1e <ieee80211_ap_rx_action+0x1e>
  14:	8d6c      	ld.h      	r3, (r5, 0x18)
  16:	3b43      	cmpnei      	r3, 3
  18:	0803      	bt      	0x1e	// 1e <ieee80211_ap_rx_action+0x1e>
  1a:	e0000000 	bsr      	0x0	// 0 <ieee80211_rx_addba_requst>
  1e:	9460      	ld.w      	r3, (r4, 0x0)
  20:	8b60      	ld.h      	r3, (r3, 0x0)
  22:	e4632002 	andi      	r3, r3, 2
  26:	e9030009 	bez      	r3, 0x38	// 38 <ieee80211_ap_rx_action+0x38>
  2a:	8578      	ld.b      	r3, (r5, 0x18)
  2c:	eb43007f 	cmpnei      	r3, 127
  30:	0804      	bt      	0x38	// 38 <ieee80211_ap_rx_action+0x38>
  32:	6c13      	mov      	r0, r4
  34:	e0000000 	bsr      	0x0	// 0 <ieee80211_rx_vendor_spec_action>
  38:	1492      	pop      	r4-r5, r15

Disassembly of section .text.ieee80211_ap_rx_pspoll:

00000000 <ieee80211_ap_rx_pspoll>:
   0:	14d1      	push      	r4, r15
   2:	9021      	ld.w      	r1, (r0, 0x4)
   4:	6d03      	mov      	r4, r0
   6:	e9010011 	bez      	r1, 0x28	// 28 <ieee80211_ap_rx_pspoll+0x28>
   a:	9000      	ld.w      	r0, (r0, 0x0)
   c:	8860      	ld.h      	r3, (r0, 0x0)
   e:	e4632002 	andi      	r3, r3, 2
  12:	e903000b 	bez      	r3, 0x28	// 28 <ieee80211_ap_rx_pspoll+0x28>
  16:	e0000000 	bsr      	0x0	// 0 <ieee80211_ap_send_psdata>
  1a:	9460      	ld.w      	r3, (r4, 0x0)
  1c:	9421      	ld.w      	r1, (r4, 0x4)
  1e:	d803202a 	ld.w      	r0, (r3, 0xa8)
  22:	208f      	addi      	r0, 144
  24:	e0000000 	bsr      	0x0	// 0 <ieee80211_tim_clr>
  28:	1491      	pop      	r4, r15
