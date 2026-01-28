
libwifi/o/wnb_ap_mlme.o:     file format elf32-csky-little


Disassembly of section .text.ieee80211_wnbap_rx_assoc_req:

00000000 <ieee80211_wnbap_rx_assoc_req>:
   0:	14d8      	push      	r4-r11, r15
   2:	142d      	subi      	r14, r14, 52
   4:	9062      	ld.w      	r3, (r0, 0x8)
   6:	6d03      	mov      	r4, r0
   8:	3210      	movi      	r2, 16
   a:	3100      	movi      	r1, 0
   c:	1801      	addi      	r0, r14, 4
   e:	93c7      	ld.w      	r6, (r3, 0x1c)
  10:	e0000000 	bsr      	0x0	// 0 <memset>
  14:	3336      	movi      	r3, 54
  16:	dc6e1004 	st.h      	r3, (r14, 0x8)
  1a:	8664      	ld.b      	r3, (r6, 0x4)
  1c:	e4632001 	andi      	r3, r3, 1
  20:	e5460009 	addi      	r10, r6, 10
  24:	dd4e2001 	st.w      	r10, (r14, 0x4)
  28:	94a0      	ld.w      	r5, (r4, 0x0)
  2a:	e9230009 	bnez      	r3, 0x3c	// 3c <ieee80211_wnbap_rx_assoc_req+0x3c>
  2e:	3206      	movi      	r2, 6
  30:	5e2e      	addi      	r1, r6, 4
  32:	5d08      	addu      	r0, r5, r2
  34:	e0000000 	bsr      	0x0	// 0 <memcmp>
  38:	e9200022 	bnez      	r0, 0x7c	// 7c <ieee80211_wnbap_rx_assoc_req+0x7c>
  3c:	e5260017 	addi      	r9, r6, 24
  40:	d869002c 	ld.b      	r3, (r9, 0x2c)
  44:	e4632001 	andi      	r3, r3, 1
  48:	e9230006 	bnez      	r3, 0x54	// 54 <ieee80211_wnbap_rx_assoc_req+0x54>
  4c:	d8650113 	ld.b      	r3, (r5, 0x113)
  50:	e903000b 	bez      	r3, 0x66	// 66 <ieee80211_wnbap_rx_assoc_req+0x66>
  54:	3220      	movi      	r2, 32
  56:	e4250112 	addi      	r1, r5, 275
  5a:	e406004a 	addi      	r0, r6, 75
  5e:	e0000000 	bsr      	0x0	// 0 <strncmp>
  62:	e920000d 	bnez      	r0, 0x7c	// 7c <ieee80211_wnbap_rx_assoc_req+0x7c>
  66:	3036      	movi      	r0, 54
  68:	e0000000 	bsr      	0x0	// 0 <_os_zalloc>
  6c:	6d43      	mov      	r5, r0
  6e:	e9200009 	bnez      	r0, 0x80	// 80 <ieee80211_wnbap_rx_assoc_req+0x80>
  72:	322d      	movi      	r2, 45
  74:	1330      	lrw      	r1, 0x0	// 234 <ieee80211_wnbap_rx_assoc_req+0x234>
  76:	1311      	lrw      	r0, 0x0	// 238 <ieee80211_wnbap_rx_assoc_req+0x238>
  78:	e0000000 	bsr      	0x0	// 0 <hgprintf>
  7c:	140d      	addi      	r14, r14, 52
  7e:	1498      	pop      	r4-r11, r15
  80:	3300      	movi      	r3, 0
  82:	6cab      	mov      	r2, r10
  84:	311b      	movi      	r1, 27
  86:	9400      	ld.w      	r0, (r4, 0x0)
  88:	e0000000 	bsr      	0x0	// 0 <ieee80211_iface_event>
  8c:	75c2      	sextb      	r7, r0
  8e:	e9270041 	bnez      	r7, 0x110	// 110 <ieee80211_wnbap_rx_assoc_req+0x110>
  92:	d9042000 	ld.w      	r8, (r4, 0x0)
  96:	d8680113 	ld.b      	r3, (r8, 0x113)
  9a:	e9230006 	bnez      	r3, 0xa6	// a6 <ieee80211_wnbap_rx_assoc_req+0xa6>
  9e:	d8690033 	ld.b      	r3, (r9, 0x33)
  a2:	e90300c5 	bez      	r3, 0x22c	// 22c <ieee80211_wnbap_rx_assoc_req+0x22c>
  a6:	3220      	movi      	r2, 32
  a8:	3100      	movi      	r1, 0
  aa:	1805      	addi      	r0, r14, 20
  ac:	d968203f 	ld.w      	r11, (r8, 0xfc)
  b0:	e0000000 	bsr      	0x0	// 0 <memset>
  b4:	3220      	movi      	r2, 32
  b6:	e4280112 	addi      	r1, r8, 275
  ba:	1805      	addi      	r0, r14, 20
  bc:	e0000000 	bsr      	0x0	// 0 <strncpy>
  c0:	eb4b0002 	cmpnei      	r11, 2
  c4:	08b2      	bt      	0x228	// 228 <ieee80211_wnbap_rx_assoc_req+0x228>
  c6:	e4080133 	addi      	r0, r8, 308
  ca:	1a05      	addi      	r2, r14, 20
  cc:	3301      	movi      	r3, 1
  ce:	6c4b      	mov      	r1, r2
  d0:	b860      	st.w      	r3, (r14, 0x0)
  d2:	3320      	movi      	r3, 32
  d4:	e0000000 	bsr      	0x0	// 0 <ieee80211_wnb_encrypt>
  d8:	3220      	movi      	r2, 32
  da:	e4260022 	addi      	r1, r6, 35
  de:	1805      	addi      	r0, r14, 20
  e0:	e0000000 	bsr      	0x0	// 0 <memcmp>
  e4:	3840      	cmpnei      	r0, 0
  e6:	c4000503 	mvc      	r3
  ea:	e92300a1 	bnez      	r3, 0x22c	// 22c <ieee80211_wnbap_rx_assoc_req+0x22c>
  ee:	9461      	ld.w      	r3, (r4, 0x4)
  f0:	e9230007 	bnez      	r3, 0xfe	// fe <ieee80211_wnbap_rx_assoc_req+0xfe>
  f4:	6c6b      	mov      	r1, r10
  f6:	9400      	ld.w      	r0, (r4, 0x0)
  f8:	e0000000 	bsr      	0x0	// 0 <ieee80211_sta_new>
  fc:	b401      	st.w      	r0, (r4, 0x4)
  fe:	9461      	ld.w      	r3, (r4, 0x4)
 100:	e9230008 	bnez      	r3, 0x110	// 110 <ieee80211_wnbap_rx_assoc_req+0x110>
 104:	323f      	movi      	r2, 63
 106:	122c      	lrw      	r1, 0x0	// 234 <ieee80211_wnbap_rx_assoc_req+0x234>
 108:	120d      	lrw      	r0, 0x0	// 23c <ieee80211_wnbap_rx_assoc_req+0x23c>
 10a:	e0000000 	bsr      	0x0	// 0 <hgprintf>
 10e:	3711      	movi      	r7, 17
 110:	9461      	ld.w      	r3, (r4, 0x4)
 112:	e903000f 	bez      	r3, 0x130	// 130 <ieee80211_wnbap_rx_assoc_req+0x130>
 116:	d84300c8 	ld.b      	r2, (r3, 0xc8)
 11a:	3100      	movi      	r1, 0
 11c:	c4415c20 	ins      	r2, r1, 1, 0
 120:	dc4300c8 	st.b      	r2, (r3, 0xc8)
 124:	d8430025 	ld.b      	r2, (r3, 0x25)
 128:	c4415c07 	ins      	r2, r1, 7, 7
 12c:	dc430025 	st.b      	r2, (r3, 0x25)
 130:	3204      	movi      	r2, 4
 132:	6c67      	mov      	r1, r9
 134:	6c17      	mov      	r0, r5
 136:	e0000000 	bsr      	0x0	// 0 <memcpy>
 13a:	3206      	movi      	r2, 6
 13c:	e426001c 	addi      	r1, r6, 29
 140:	5d12      	addi      	r0, r5, 5
 142:	e0000000 	bsr      	0x0	// 0 <memcpy>
 146:	e927004c 	bnez      	r7, 0x1de	// 1de <ieee80211_wnbap_rx_assoc_req+0x1de>
 14a:	d9042001 	ld.w      	r8, (r4, 0x4)
 14e:	e9080048 	bez      	r8, 0x1de	// 1de <ieee80211_wnbap_rx_assoc_req+0x1de>
 152:	d869002b 	ld.b      	r3, (r9, 0x2b)
 156:	c4035443 	zext      	r3, r3, 2, 0
 15a:	dc68000f 	st.b      	r3, (r8, 0xf)
 15e:	d868000c 	ld.b      	r3, (r8, 0xc)
 162:	a564      	st.b      	r3, (r5, 0x4)
 164:	d9442000 	ld.w      	r10, (r4, 0x0)
 168:	2644      	addi      	r6, 69
 16a:	d86a10ac 	ld.h      	r3, (r10, 0x158)
 16e:	ad66      	st.h      	r3, (r5, 0xc)
 170:	d868000e 	ld.b      	r3, (r8, 0xe)
 174:	a56e      	st.b      	r3, (r5, 0xe)
 176:	856f      	ld.b      	r3, (r5, 0xf)
 178:	c4675c01 	ins      	r3, r7, 1, 1
 17c:	a56f      	st.b      	r3, (r5, 0xf)
 17e:	d86a10aa 	ld.h      	r3, (r10, 0x154)
 182:	ad68      	st.h      	r3, (r5, 0x10)
 184:	d869002b 	ld.b      	r3, (r9, 0x2b)
 188:	e4632008 	andi      	r3, r3, 8
 18c:	adfa      	st.h      	r7, (r5, 0x34)
 18e:	e9030051 	bez      	r3, 0x230	// 230 <ieee80211_wnbap_rx_assoc_req+0x230>
 192:	3206      	movi      	r2, 6
 194:	c44a0021 	addu      	r1, r10, r2
 198:	6c1b      	mov      	r0, r6
 19a:	e0000000 	bsr      	0x0	// 0 <memcmp>
 19e:	3840      	cmpnei      	r0, 0
 1a0:	c4000503 	mvc      	r3
 1a4:	74cc      	zextb      	r3, r3
 1a6:	d8480025 	ld.b      	r2, (r8, 0x25)
 1aa:	c4435c07 	ins      	r2, r3, 7, 7
 1ae:	dc480025 	st.b      	r2, (r8, 0x25)
 1b2:	3117      	movi      	r1, 23
 1b4:	e448001b 	addi      	r2, r8, 28
 1b8:	3300      	movi      	r3, 0
 1ba:	d80a2029 	ld.w      	r0, (r10, 0xa4)
 1be:	e0000000 	bsr      	0x0	// 0 <lmac_ioctl>
 1c2:	9420      	ld.w      	r1, (r4, 0x0)
 1c4:	3206      	movi      	r2, 6
 1c6:	6048      	addu      	r1, r2
 1c8:	6c1b      	mov      	r0, r6
 1ca:	e0000000 	bsr      	0x0	// 0 <memcmp>
 1ce:	e9000008 	bez      	r0, 0x1de	// 1de <ieee80211_wnbap_rx_assoc_req+0x1de>
 1d2:	9401      	ld.w      	r0, (r4, 0x4)
 1d4:	3206      	movi      	r2, 6
 1d6:	6c5b      	mov      	r1, r6
 1d8:	20bb      	addi      	r0, 188
 1da:	e0000000 	bsr      	0x0	// 0 <memcpy>
 1de:	a5eb      	st.b      	r7, (r5, 0xb)
 1e0:	8560      	ld.b      	r3, (r5, 0x0)
 1e2:	9400      	ld.w      	r0, (r4, 0x0)
 1e4:	3201      	movi      	r2, 1
 1e6:	c4625c07 	ins      	r3, r2, 7, 7
 1ea:	a560      	st.b      	r3, (r5, 0x0)
 1ec:	d860202b 	ld.w      	r3, (r0, 0xac)
 1f0:	8033      	ld.b      	r1, (r0, 0x13)
 1f2:	8340      	ld.b      	r2, (r3, 0x0)
 1f4:	e0000000 	bsr      	0x0	// 0 <ieee80211_chan_to_freq>
 1f8:	ad01      	st.h      	r0, (r5, 0x2)
 1fa:	1a01      	addi      	r2, r14, 4
 1fc:	9421      	ld.w      	r1, (r4, 0x4)
 1fe:	9400      	ld.w      	r0, (r4, 0x0)
 200:	b8a3      	st.w      	r5, (r14, 0xc)
 202:	e0000000 	bsr      	0x0	// 0 <ieee80211_wnb_tx_mgmt>
 206:	e920000d 	bnez      	r0, 0x220	// 220 <ieee80211_wnbap_rx_assoc_req+0x220>
 20a:	9461      	ld.w      	r3, (r4, 0x4)
 20c:	e903000a 	bez      	r3, 0x220	// 220 <ieee80211_wnbap_rx_assoc_req+0x220>
 210:	3f40      	cmpnei      	r7, 0
 212:	d8430025 	ld.b      	r2, (r3, 0x25)
 216:	6443      	mvcv      	r1
 218:	c4415c01 	ins      	r2, r1, 1, 1
 21c:	dc430025 	st.b      	r2, (r3, 0x25)
 220:	6c17      	mov      	r0, r5
 222:	e0000000 	bsr      	0x0	// 0 <_os_free>
 226:	072b      	br      	0x7c	// 7c <ieee80211_wnbap_rx_assoc_req+0x7c>
 228:	3000      	movi      	r0, 0
 22a:	0750      	br      	0xca	// ca <ieee80211_wnbap_rx_assoc_req+0xca>
 22c:	3701      	movi      	r7, 1
 22e:	0771      	br      	0x110	// 110 <ieee80211_wnbap_rx_assoc_req+0x110>
 230:	6cdf      	mov      	r3, r7
 232:	07ba      	br      	0x1a6	// 1a6 <ieee80211_wnbap_rx_assoc_req+0x1a6>
	...

Disassembly of section .text.ieee80211_wnbap_rx_disassoc:

00000000 <ieee80211_wnbap_rx_disassoc>:
   0:	14d3      	push      	r4-r6, r15
   2:	1425      	subi      	r14, r14, 20
   4:	9062      	ld.w      	r3, (r0, 0x8)
   6:	6d43      	mov      	r5, r0
   8:	9387      	ld.w      	r4, (r3, 0x1c)
   a:	9061      	ld.w      	r3, (r0, 0x4)
   c:	e9030044 	bez      	r3, 0x94	// 94 <ieee80211_wnbap_rx_disassoc+0x94>
  10:	3206      	movi      	r2, 6
  12:	9000      	ld.w      	r0, (r0, 0x0)
  14:	5c2e      	addi      	r1, r4, 4
  16:	6008      	addu      	r0, r2
  18:	e0000000 	bsr      	0x0	// 0 <memcmp>
  1c:	6d83      	mov      	r6, r0
  1e:	e920003b 	bnez      	r0, 0x94	// 94 <ieee80211_wnbap_rx_disassoc+0x94>
  22:	8c6e      	ld.h      	r3, (r4, 0x1c)
  24:	e4632001 	andi      	r3, r3, 1
  28:	e9030019 	bez      	r3, 0x5a	// 5a <ieee80211_wnbap_rx_disassoc+0x5a>
  2c:	844f      	ld.b      	r2, (r4, 0xf)
  2e:	846a      	ld.b      	r3, (r4, 0xa)
  30:	b844      	st.w      	r2, (r14, 0x10)
  32:	844e      	ld.b      	r2, (r4, 0xe)
  34:	b843      	st.w      	r2, (r14, 0xc)
  36:	844d      	ld.b      	r2, (r4, 0xd)
  38:	b842      	st.w      	r2, (r14, 0x8)
  3a:	844c      	ld.b      	r2, (r4, 0xc)
  3c:	b841      	st.w      	r2, (r14, 0x4)
  3e:	844b      	ld.b      	r2, (r4, 0xb)
  40:	b840      	st.w      	r2, (r14, 0x0)
  42:	326b      	movi      	r2, 107
  44:	1035      	lrw      	r1, 0x0	// 98 <ieee80211_wnbap_rx_disassoc+0x98>
  46:	1016      	lrw      	r0, 0x0	// 9c <ieee80211_wnbap_rx_disassoc+0x9c>
  48:	e0000000 	bsr      	0x0	// 0 <hgprintf>
  4c:	6cdb      	mov      	r3, r6
  4e:	e4440009 	addi      	r2, r4, 10
  52:	311c      	movi      	r1, 28
  54:	9500      	ld.w      	r0, (r5, 0x0)
  56:	e0000000 	bsr      	0x0	// 0 <ieee80211_iface_event>
  5a:	9561      	ld.w      	r3, (r5, 0x4)
  5c:	d8630025 	ld.b      	r3, (r3, 0x25)
  60:	e4632008 	andi      	r3, r3, 8
  64:	e9030018 	bez      	r3, 0x94	// 94 <ieee80211_wnbap_rx_disassoc+0x94>
  68:	844f      	ld.b      	r2, (r4, 0xf)
  6a:	846a      	ld.b      	r3, (r4, 0xa)
  6c:	b844      	st.w      	r2, (r14, 0x10)
  6e:	844e      	ld.b      	r2, (r4, 0xe)
  70:	b843      	st.w      	r2, (r14, 0xc)
  72:	844d      	ld.b      	r2, (r4, 0xd)
  74:	b842      	st.w      	r2, (r14, 0x8)
  76:	844c      	ld.b      	r2, (r4, 0xc)
  78:	b841      	st.w      	r2, (r14, 0x4)
  7a:	844b      	ld.b      	r2, (r4, 0xb)
  7c:	b840      	st.w      	r2, (r14, 0x0)
  7e:	326f      	movi      	r2, 111
  80:	1026      	lrw      	r1, 0x0	// 98 <ieee80211_wnbap_rx_disassoc+0x98>
  82:	1008      	lrw      	r0, 0x0	// a0 <ieee80211_wnbap_rx_disassoc+0xa0>
  84:	e0000000 	bsr      	0x0	// 0 <hgprintf>
  88:	3300      	movi      	r3, 0
  8a:	3201      	movi      	r2, 1
  8c:	9521      	ld.w      	r1, (r5, 0x4)
  8e:	9500      	ld.w      	r0, (r5, 0x0)
  90:	e0000000 	bsr      	0x0	// 0 <ieee80211_sta_del>
  94:	1405      	addi      	r14, r14, 20
  96:	1493      	pop      	r4-r6, r15
	...

Disassembly of section .text.ieee80211_wnb_tx_probe_response:

00000000 <ieee80211_wnb_tx_probe_response>:
   0:	14d3      	push      	r4-r6, r15
   2:	1429      	subi      	r14, r14, 36
   4:	6d47      	mov      	r5, r1
   6:	3210      	movi      	r2, 16
   8:	3100      	movi      	r1, 0
   a:	6d83      	mov      	r6, r0
   c:	1805      	addi      	r0, r14, 20
   e:	e0000000 	bsr      	0x0	// 0 <memset>
  12:	332e      	movi      	r3, 46
  14:	302e      	movi      	r0, 46
  16:	b8a5      	st.w      	r5, (r14, 0x14)
  18:	dc6e100c 	st.h      	r3, (r14, 0x18)
  1c:	e0000000 	bsr      	0x0	// 0 <_os_zalloc>
  20:	6d03      	mov      	r4, r0
  22:	e900004c 	bez      	r0, 0xba	// ba <ieee80211_wnb_tx_probe_response+0xba>
  26:	d8600024 	ld.b      	r3, (r0, 0x24)
  2a:	3201      	movi      	r2, 1
  2c:	c4625c21 	ins      	r3, r2, 2, 1
  30:	dc600024 	st.b      	r3, (r0, 0x24)
  34:	320a      	movi      	r2, 10
  36:	8060      	ld.b      	r3, (r0, 0x0)
  38:	c4625cc0 	ins      	r3, r2, 6, 0
  3c:	a060      	st.b      	r3, (r0, 0x0)
  3e:	d866202b 	ld.w      	r3, (r6, 0xac)
  42:	8633      	ld.b      	r1, (r6, 0x13)
  44:	8340      	ld.b      	r2, (r3, 0x0)
  46:	6c1b      	mov      	r0, r6
  48:	e0000000 	bsr      	0x0	// 0 <ieee80211_chan_to_freq>
  4c:	d866203f 	ld.w      	r3, (r6, 0xfc)
  50:	3b44      	cmpnei      	r3, 4
  52:	c4000502 	mvc      	r2
  56:	d8640024 	ld.b      	r3, (r4, 0x24)
  5a:	c4625c00 	ins      	r3, r2, 0, 0
  5e:	dc640024 	st.b      	r3, (r4, 0x24)
  62:	d866202b 	ld.w      	r3, (r6, 0xac)
  66:	ac01      	st.h      	r0, (r4, 0x2)
  68:	8342      	ld.b      	r2, (r3, 0x2)
  6a:	dc440028 	st.b      	r2, (r4, 0x28)
  6e:	837b      	ld.b      	r3, (r3, 0x1b)
  70:	dc640029 	st.b      	r3, (r4, 0x29)
  74:	e4260112 	addi      	r1, r6, 275
  78:	3220      	movi      	r2, 32
  7a:	5c0e      	addi      	r0, r4, 4
  7c:	e0000000 	bsr      	0x0	// 0 <memcpy>
  80:	1a05      	addi      	r2, r14, 20
  82:	3100      	movi      	r1, 0
  84:	6c1b      	mov      	r0, r6
  86:	b887      	st.w      	r4, (r14, 0x1c)
  88:	e0000000 	bsr      	0x0	// 0 <ieee80211_wnb_tx_mgmt>
  8c:	6d83      	mov      	r6, r0
  8e:	6c13      	mov      	r0, r4
  90:	e0000000 	bsr      	0x0	// 0 <_os_free>
  94:	8545      	ld.b      	r2, (r5, 0x5)
  96:	b844      	st.w      	r2, (r14, 0x10)
  98:	8544      	ld.b      	r2, (r5, 0x4)
  9a:	b843      	st.w      	r2, (r14, 0xc)
  9c:	8543      	ld.b      	r2, (r5, 0x3)
  9e:	b842      	st.w      	r2, (r14, 0x8)
  a0:	8542      	ld.b      	r2, (r5, 0x2)
  a2:	b841      	st.w      	r2, (r14, 0x4)
  a4:	8541      	ld.b      	r2, (r5, 0x1)
  a6:	b840      	st.w      	r2, (r14, 0x0)
  a8:	8560      	ld.b      	r3, (r5, 0x0)
  aa:	328b      	movi      	r2, 139
  ac:	1025      	lrw      	r1, 0x0	// c0 <ieee80211_wnb_tx_probe_response+0xc0>
  ae:	1006      	lrw      	r0, 0x0	// c4 <ieee80211_wnb_tx_probe_response+0xc4>
  b0:	e0000000 	bsr      	0x0	// 0 <hgprintf>
  b4:	6c1b      	mov      	r0, r6
  b6:	1409      	addi      	r14, r14, 36
  b8:	1493      	pop      	r4-r6, r15
  ba:	3600      	movi      	r6, 0
  bc:	2e0b      	subi      	r6, 12
  be:	07fb      	br      	0xb4	// b4 <ieee80211_wnb_tx_probe_response+0xb4>
	...

Disassembly of section .text.ieee80211_wnbap_rx_probe_req:

00000000 <ieee80211_wnbap_rx_probe_req>:
   0:	14d2      	push      	r4-r5, r15
   2:	9080      	ld.w      	r4, (r0, 0x0)
   4:	d8642063 	ld.w      	r3, (r4, 0x18c)
   8:	837c      	ld.b      	r3, (r3, 0x1c)
   a:	e4632001 	andi      	r3, r3, 1
   e:	e9230025 	bnez      	r3, 0x58	// 58 <ieee80211_wnbap_rx_probe_req+0x58>
  12:	d8640113 	ld.b      	r3, (r4, 0x113)
  16:	e9030021 	bez      	r3, 0x58	// 58 <ieee80211_wnbap_rx_probe_req+0x58>
  1a:	9062      	ld.w      	r3, (r0, 0x8)
  1c:	93a7      	ld.w      	r5, (r3, 0x1c)
  1e:	8564      	ld.b      	r3, (r5, 0x4)
  20:	e4632001 	andi      	r3, r3, 1
  24:	e9230009 	bnez      	r3, 0x36	// 36 <ieee80211_wnbap_rx_probe_req+0x36>
  28:	3206      	movi      	r2, 6
  2a:	5d2e      	addi      	r1, r5, 4
  2c:	5c08      	addu      	r0, r4, r2
  2e:	e0000000 	bsr      	0x0	// 0 <memcmp>
  32:	e9200013 	bnez      	r0, 0x58	// 58 <ieee80211_wnbap_rx_probe_req+0x58>
  36:	857c      	ld.b      	r3, (r5, 0x1c)
  38:	e903000b 	bez      	r3, 0x4e	// 4e <ieee80211_wnbap_rx_probe_req+0x4e>
  3c:	3220      	movi      	r2, 32
  3e:	e4240112 	addi      	r1, r4, 275
  42:	e405001b 	addi      	r0, r5, 28
  46:	e0000000 	bsr      	0x0	// 0 <strncmp>
  4a:	e9200007 	bnez      	r0, 0x58	// 58 <ieee80211_wnbap_rx_probe_req+0x58>
  4e:	e4250009 	addi      	r1, r5, 10
  52:	6c13      	mov      	r0, r4
  54:	e0000000 	bsr      	0x0	// 0 <ieee80211_wnbap_rx_probe_req>
  58:	1492      	pop      	r4-r5, r15

Disassembly of section .text.ieee80211_wnbap_rx_heartbeat:

00000000 <ieee80211_wnbap_rx_heartbeat>:
   0:	14d5      	push      	r4-r8, r15
   2:	1429      	subi      	r14, r14, 36
   4:	9062      	ld.w      	r3, (r0, 0x8)
   6:	6d43      	mov      	r5, r0
   8:	3210      	movi      	r2, 16
   a:	3100      	movi      	r1, 0
   c:	1805      	addi      	r0, r14, 20
   e:	9387      	ld.w      	r4, (r3, 0x1c)
  10:	e0000000 	bsr      	0x0	// 0 <memset>
  14:	9500      	ld.w      	r0, (r5, 0x0)
  16:	3206      	movi      	r2, 6
  18:	3314      	movi      	r3, 20
  1a:	e4e40017 	addi      	r7, r4, 24
  1e:	5c2e      	addi      	r1, r4, 4
  20:	6008      	addu      	r0, r2
  22:	dc6e100c 	st.h      	r3, (r14, 0x18)
  26:	b8e7      	st.w      	r7, (r14, 0x1c)
  28:	e0000000 	bsr      	0x0	// 0 <memcmp>
  2c:	e9200030 	bnez      	r0, 0x8c	// 8c <ieee80211_wnbap_rx_heartbeat+0x8c>
  30:	d9052001 	ld.w      	r8, (r5, 0x4)
  34:	e908002c 	bez      	r8, 0x8c	// 8c <ieee80211_wnbap_rx_heartbeat+0x8c>
  38:	d8c80025 	ld.b      	r6, (r8, 0x25)
  3c:	e4c62008 	andi      	r6, r6, 8
  40:	e9060028 	bez      	r6, 0x90	// 90 <ieee80211_wnbap_rx_heartbeat+0x90>
  44:	e0000000 	bsr      	0x0	// 0 <os_jiffies>
  48:	8478      	ld.b      	r3, (r4, 0x18)
  4a:	748e      	sextb      	r2, r3
  4c:	dc082024 	st.w      	r0, (r8, 0x90)
  50:	dc282025 	st.w      	r1, (r8, 0x94)
  54:	e982001c 	blz      	r2, 0x8c	// 8c <ieee80211_wnbap_rx_heartbeat+0x8c>
  58:	9541      	ld.w      	r2, (r5, 0x4)
  5a:	d8220025 	ld.b      	r1, (r2, 0x25)
  5e:	e4212001 	andi      	r1, r1, 1
  62:	e9210015 	bnez      	r1, 0x8c	// 8c <ieee80211_wnbap_rx_heartbeat+0x8c>
  66:	221b      	addi      	r2, 28
  68:	b845      	st.w      	r2, (r14, 0x14)
  6a:	9500      	ld.w      	r0, (r5, 0x0)
  6c:	3201      	movi      	r2, 1
  6e:	c4625c07 	ins      	r3, r2, 7, 7
  72:	a478      	st.b      	r3, (r4, 0x18)
  74:	d860202b 	ld.w      	r3, (r0, 0xac)
  78:	8033      	ld.b      	r1, (r0, 0x13)
  7a:	8340      	ld.b      	r2, (r3, 0x0)
  7c:	e0000000 	bsr      	0x0	// 0 <ieee80211_chan_to_freq>
  80:	ac0d      	st.h      	r0, (r4, 0x1a)
  82:	1a05      	addi      	r2, r14, 20
  84:	9521      	ld.w      	r1, (r5, 0x4)
  86:	9500      	ld.w      	r0, (r5, 0x0)
  88:	e0000000 	bsr      	0x0	// 0 <ieee80211_wnb_tx_mgmt>
  8c:	1409      	addi      	r14, r14, 36
  8e:	1495      	pop      	r4-r8, r15
  90:	844f      	ld.b      	r2, (r4, 0xf)
  92:	846a      	ld.b      	r3, (r4, 0xa)
  94:	b844      	st.w      	r2, (r14, 0x10)
  96:	844e      	ld.b      	r2, (r4, 0xe)
  98:	b843      	st.w      	r2, (r14, 0xc)
  9a:	844d      	ld.b      	r2, (r4, 0xd)
  9c:	b842      	st.w      	r2, (r14, 0x8)
  9e:	844c      	ld.b      	r2, (r4, 0xc)
  a0:	b841      	st.w      	r2, (r14, 0x4)
  a2:	844b      	ld.b      	r2, (r4, 0xb)
  a4:	b840      	st.w      	r2, (r14, 0x0)
  a6:	32b9      	movi      	r2, 185
  a8:	1026      	lrw      	r1, 0x0	// c0 <ieee80211_wnbap_rx_heartbeat+0xc0>
  aa:	1007      	lrw      	r0, 0x0	// c4 <ieee80211_wnbap_rx_heartbeat+0xc4>
  ac:	e0000000 	bsr      	0x0	// 0 <hgprintf>
  b0:	6c9b      	mov      	r2, r6
  b2:	e4240009 	addi      	r1, r4, 10
  b6:	9500      	ld.w      	r0, (r5, 0x0)
  b8:	e0000000 	bsr      	0x0	// 0 <ieee80211_wnb_send_disassoc>
  bc:	07e8      	br      	0x8c	// 8c <ieee80211_wnbap_rx_heartbeat+0x8c>
	...

Disassembly of section .text.ieee80211_wnbap_mgmt_tx_status:

00000000 <ieee80211_wnbap_mgmt_tx_status>:
   0:	14d5      	push      	r4-r8, r15
   2:	1421      	subi      	r14, r14, 4
   4:	9167      	ld.w      	r3, (r1, 0x1c)
   6:	6d43      	mov      	r5, r0
   8:	8378      	ld.b      	r3, (r3, 0x18)
   a:	e4c3207f 	andi      	r6, r3, 127
   e:	3e41      	cmpnei      	r6, 1
  10:	6d0b      	mov      	r4, r2
  12:	0c05      	bf      	0x1c	// 1c <ieee80211_wnbap_mgmt_tx_status+0x1c>
  14:	3e48      	cmpnei      	r6, 8
  16:	0c4b      	bf      	0xac	// ac <ieee80211_wnbap_mgmt_tx_status+0xac>
  18:	1401      	addi      	r14, r14, 4
  1a:	1495      	pop      	r4-r8, r15
  1c:	74ce      	sextb      	r3, r3
  1e:	e9a3fffd 	bhsz      	r3, 0x18	// 18 <ieee80211_wnbap_mgmt_tx_status+0x18>
  22:	d861002a 	ld.b      	r3, (r1, 0x2a)
  26:	e4632010 	andi      	r3, r3, 16
  2a:	e903fff7 	bez      	r3, 0x18	// 18 <ieee80211_wnbap_mgmt_tx_status+0x18>
  2e:	e902fff5 	bez      	r2, 0x18	// 18 <ieee80211_wnbap_mgmt_tx_status+0x18>
  32:	d8620025 	ld.b      	r3, (r2, 0x25)
  36:	e4632006 	andi      	r3, r3, 6
  3a:	3b42      	cmpnei      	r3, 2
  3c:	082b      	bt      	0x92	// 92 <ieee80211_wnbap_mgmt_tx_status+0x92>
  3e:	6c4b      	mov      	r1, r2
  40:	d900203f 	ld.w      	r8, (r0, 0xfc)
  44:	e0000000 	bsr      	0x0	// 0 <ieee80211_sta_add>
  48:	6dc3      	mov      	r7, r0
  4a:	e920002b 	bnez      	r0, 0xa0	// a0 <ieee80211_wnbap_mgmt_tx_status+0xa0>
  4e:	d8640025 	ld.b      	r3, (r4, 0x25)
  52:	c4665c02 	ins      	r3, r6, 2, 2
  56:	dc640025 	st.b      	r3, (r4, 0x25)
  5a:	e4c4001b 	addi      	r6, r4, 28
  5e:	6cc3      	mov      	r3, r0
  60:	6c9b      	mov      	r2, r6
  62:	316a      	movi      	r1, 106
  64:	d8052029 	ld.w      	r0, (r5, 0xa4)
  68:	e0000000 	bsr      	0x0	// 0 <lmac_ioctl>
  6c:	eb480002 	cmpnei      	r8, 2
  70:	c4000501 	mvc      	r1
  74:	e4650133 	addi      	r3, r5, 308
  78:	6c9b      	mov      	r2, r6
  7a:	7444      	zextb      	r1, r1
  7c:	b8e0      	st.w      	r7, (r14, 0x0)
  7e:	6c17      	mov      	r0, r5
  80:	e0000000 	bsr      	0x0	// 0 <ieee80211_wnb_set_key>
  84:	e46400bb 	addi      	r3, r4, 188
  88:	320a      	movi      	r2, 10
  8a:	6c53      	mov      	r1, r4
  8c:	6c17      	mov      	r0, r5
  8e:	e0000000 	bsr      	0x0	// 0 <ieee80211_wnb_roaming_do_notify_roam_in>
  92:	846f      	ld.b      	r3, (r4, 0xf)
  94:	6c93      	mov      	r2, r4
  96:	3108      	movi      	r1, 8
  98:	6c17      	mov      	r0, r5
  9a:	e0000000 	bsr      	0x0	// 0 <ieee80211_iface_event>
  9e:	07bd      	br      	0x18	// 18 <ieee80211_wnbap_mgmt_tx_status+0x18>
  a0:	32cf      	movi      	r2, 207
  a2:	102a      	lrw      	r1, 0x0	// c8 <ieee80211_wnbap_mgmt_tx_status+0xc8>
  a4:	100a      	lrw      	r0, 0x0	// cc <ieee80211_wnbap_mgmt_tx_status+0xcc>
  a6:	e0000000 	bsr      	0x0	// 0 <hgprintf>
  aa:	07f4      	br      	0x92	// 92 <ieee80211_wnbap_mgmt_tx_status+0x92>
  ac:	d861002a 	ld.b      	r3, (r1, 0x2a)
  b0:	e4632010 	andi      	r3, r3, 16
  b4:	e903ffb2 	bez      	r3, 0x18	// 18 <ieee80211_wnbap_mgmt_tx_status+0x18>
  b8:	3301      	movi      	r3, 1
  ba:	221b      	addi      	r2, 28
  bc:	3117      	movi      	r1, 23
  be:	d8002029 	ld.w      	r0, (r0, 0xa4)
  c2:	e0000000 	bsr      	0x0	// 0 <lmac_ioctl>
  c6:	07a9      	br      	0x18	// 18 <ieee80211_wnbap_mgmt_tx_status+0x18>
	...
