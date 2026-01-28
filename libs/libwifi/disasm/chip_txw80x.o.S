
libwifi/o/chip_txw80x.o:     file format elf32-csky-little


Disassembly of section .text.txw80x_iface_init:

00000000 <txw80x_iface_init>:
   0:	14d1      	push      	r4, r15
   2:	1071      	lrw      	r3, 0x0	// 44 <txw80x_iface_init+0x44>
   4:	6d03      	mov      	r4, r0
   6:	9360      	ld.w      	r3, (r3, 0x0)
   8:	dc602029 	st.w      	r3, (r0, 0xa4)
   c:	3340      	movi      	r3, 64
   e:	dc600027 	st.b      	r3, (r0, 0x27)
  12:	106e      	lrw      	r3, 0x0	// 48 <txw80x_iface_init+0x48>
  14:	dc602021 	st.w      	r3, (r0, 0x84)
  18:	8860      	ld.h      	r3, (r0, 0x0)
  1a:	3b41      	cmpnei      	r3, 1
  1c:	0c11      	bf      	0x3e	// 3e <txw80x_iface_init+0x3e>
  1e:	3b42      	cmpnei      	r3, 2
  20:	0803      	bt      	0x26	// 26 <txw80x_iface_init+0x26>
  22:	106b      	lrw      	r3, 0x0	// 4c <txw80x_iface_init+0x4c>
  24:	b074      	st.w      	r3, (r0, 0x50)
  26:	6c13      	mov      	r0, r4
  28:	102a      	lrw      	r1, 0x0	// 50 <txw80x_iface_init+0x50>
  2a:	e0000000 	bsr      	0x0	// 0 <ieee80211_setup_wmm_param>
  2e:	3210      	movi      	r2, 16
  30:	1029      	lrw      	r1, 0x0	// 54 <txw80x_iface_init+0x54>
  32:	e404015b 	addi      	r0, r4, 348
  36:	e0000000 	bsr      	0x0	// 0 <memcpy>
  3a:	3000      	movi      	r0, 0
  3c:	1491      	pop      	r4, r15
  3e:	1067      	lrw      	r3, 0x0	// 58 <txw80x_iface_init+0x58>
  40:	b075      	st.w      	r3, (r0, 0x54)
  42:	07f2      	br      	0x26	// 26 <txw80x_iface_init+0x26>
	...

Disassembly of section .text.txw80x_sband_ioctl:

00000000 <txw80x_sband_ioctl>:
   0:	14d2      	push      	r4-r5, r15
   2:	1421      	subi      	r14, r14, 4
   4:	2907      	subi      	r1, 8
   6:	390d      	cmphsi      	r1, 14
   8:	6d03      	mov      	r4, r0
   a:	6c0b      	mov      	r0, r2
   c:	0890      	bt      	0x12c	// 12c <txw80x_sband_ioctl+0x12c>
   e:	1043      	lrw      	r2, 0x0	// 18 <txw80x_sband_ioctl+0x18>
  10:	d0220882 	ldr.w      	r2, (r2, r1 << 2)
  14:	7808      	jmp      	r2
  16:	0000      	.short	0x0000
  18:	00000000 	.long	0x00000000
  1c:	3100      	movi      	r1, 0
  1e:	644e      	cmpne      	r3, r1
  20:	d984202b 	ld.w      	r12, (r4, 0xac)
  24:	0c0b      	bf      	0x3a	// 3a <txw80x_sband_ioctl+0x3a>
  26:	595e      	addi      	r2, r1, 8
  28:	d020044d 	ldr.h      	r13, (r0, r1 << 1)
  2c:	4242      	lsli      	r2, r2, 2
  2e:	2100      	addi      	r1, 1
  30:	60b0      	addu      	r2, r12
  32:	3950      	cmpnei      	r1, 16
  34:	dda21001 	st.h      	r13, (r2, 0x2)
  38:	0bf3      	bt      	0x1e	// 1e <txw80x_sband_ioctl+0x1e>
  3a:	3b10      	cmphsi      	r3, 17
  3c:	3210      	movi      	r2, 16
  3e:	c4430c20 	incf      	r2, r3, 0
  42:	dc4c0004 	st.b      	r2, (r12, 0x4)
  46:	6c43      	mov      	r1, r0
  48:	7489      	zexth      	r2, r2
  4a:	d8042029 	ld.w      	r0, (r4, 0xa4)
  4e:	e0000000 	bsr      	0x0	// 0 <lmac_set_chan_list>
  52:	6d43      	mov      	r5, r0
  54:	3101      	movi      	r1, 1
  56:	6c13      	mov      	r0, r4
  58:	e0000000 	bsr      	0x0	// 0 <ieee80211_set_channel>
  5c:	0428      	br      	0xac	// ac <txw80x_sband_ioctl+0xac>
  5e:	d864202b 	ld.w      	r3, (r4, 0xac)
  62:	7480      	zextb      	r2, r0
  64:	a302      	st.b      	r0, (r3, 0x2)
  66:	3102      	movi      	r1, 2
  68:	3300      	movi      	r3, 0
  6a:	d8042029 	ld.w      	r0, (r4, 0xa4)
  6e:	e0000000 	bsr      	0x0	// 0 <lmac_ioctl>
  72:	041c      	br      	0xaa	// aa <txw80x_sband_ioctl+0xaa>
  74:	d864202b 	ld.w      	r3, (r4, 0xac)
  78:	a303      	st.b      	r0, (r3, 0x3)
  7a:	3500      	movi      	r5, 0
  7c:	0418      	br      	0xac	// ac <txw80x_sband_ioctl+0xac>
  7e:	9820      	ld.w      	r1, (r14, 0x0)
  80:	c6c05022 	bmaski      	r2, 23
  84:	c4225ec9 	ins      	r1, r2, 31, 9
  88:	b820      	st.w      	r1, (r14, 0x0)
  8a:	c4205c00 	ins      	r1, r0, 0, 0
  8e:	dc2e0000 	st.b      	r1, (r14, 0x0)
  92:	d84e1000 	ld.h      	r2, (r14, 0x0)
  96:	c4435ce1 	ins      	r2, r3, 8, 1
  9a:	dc4e1000 	st.h      	r2, (r14, 0x0)
  9e:	6c7b      	mov      	r1, r14
  a0:	3200      	movi      	r2, 0
  a2:	d8042029 	ld.w      	r0, (r4, 0xa4)
  a6:	e0000000 	bsr      	0x0	// 0 <lmac_start_acs>
  aa:	6d43      	mov      	r5, r0
  ac:	6c17      	mov      	r0, r5
  ae:	1401      	addi      	r14, r14, 4
  b0:	1492      	pop      	r4-r5, r15
  b2:	8465      	ld.b      	r3, (r4, 0x5)
  b4:	e4632040 	andi      	r3, r3, 64
  b8:	e923ffe1 	bnez      	r3, 0x7a	// 7a <txw80x_sband_ioctl+0x7a>
  bc:	6c13      	mov      	r0, r4
  be:	e0000000 	bsr      	0x0	// 0 <ieee80211_vif_sta_count>
  c2:	380f      	cmphsi      	r0, 16
  c4:	6cc3      	mov      	r3, r0
  c6:	3210      	movi      	r2, 16
  c8:	e404015b 	addi      	r0, r4, 348
  cc:	0c0c      	bf      	0xe4	// e4 <txw80x_sband_ioctl+0xe4>
  ce:	103a      	lrw      	r1, 0x0	// 134 <txw80x_sband_ioctl+0x134>
  d0:	e0000000 	bsr      	0x0	// 0 <memcpy>
  d4:	d8640112 	ld.b      	r3, (r4, 0x112)
  d8:	2300      	addi      	r3, 1
  da:	e463200f 	andi      	r3, r3, 15
  de:	dc640112 	st.b      	r3, (r4, 0x112)
  e2:	07cc      	br      	0x7a	// 7a <txw80x_sband_ioctl+0x7a>
  e4:	3b06      	cmphsi      	r3, 7
  e6:	0c03      	bf      	0xec	// ec <txw80x_sband_ioctl+0xec>
  e8:	1034      	lrw      	r1, 0x0	// 138 <txw80x_sband_ioctl+0x138>
  ea:	07f3      	br      	0xd0	// d0 <txw80x_sband_ioctl+0xd0>
  ec:	3b03      	cmphsi      	r3, 4
  ee:	0c03      	bf      	0xf4	// f4 <txw80x_sband_ioctl+0xf4>
  f0:	1033      	lrw      	r1, 0x0	// 13c <txw80x_sband_ioctl+0x13c>
  f2:	07ef      	br      	0xd0	// d0 <txw80x_sband_ioctl+0xd0>
  f4:	3b01      	cmphsi      	r3, 2
  f6:	0c03      	bf      	0xfc	// fc <txw80x_sband_ioctl+0xfc>
  f8:	1032      	lrw      	r1, 0x0	// 140 <txw80x_sband_ioctl+0x140>
  fa:	07eb      	br      	0xd0	// d0 <txw80x_sband_ioctl+0xd0>
  fc:	1032      	lrw      	r1, 0x0	// 144 <txw80x_sband_ioctl+0x144>
  fe:	07e9      	br      	0xd0	// d0 <txw80x_sband_ioctl+0xd0>
 100:	7480      	zextb      	r2, r0
 102:	c7805021 	bmaski      	r1, 29
 106:	211e      	addi      	r1, 31
 108:	07b1      	br      	0x6a	// 6a <txw80x_sband_ioctl+0x6a>
 10a:	3300      	movi      	r3, 0
 10c:	6c83      	mov      	r2, r0
 10e:	3124      	movi      	r1, 36
 110:	07ad      	br      	0x6a	// 6a <txw80x_sband_ioctl+0x6a>
 112:	5863      	subi      	r3, r0, 1
 114:	3b02      	cmphsi      	r3, 3
 116:	080b      	bt      	0x12c	// 12c <txw80x_sband_ioctl+0x12c>
 118:	d844202b 	ld.w      	r2, (r4, 0xac)
 11c:	3841      	cmpnei      	r0, 1
 11e:	310c      	movi      	r1, 12
 120:	3304      	movi      	r3, 4
 122:	c4610c40 	inct      	r3, r1, 0
 126:	a265      	st.b      	r3, (r2, 0x5)
 128:	a21a      	st.b      	r0, (r2, 0x1a)
 12a:	07a8      	br      	0x7a	// 7a <txw80x_sband_ioctl+0x7a>
 12c:	ea05020b 	movi      	r5, 523
 130:	6d56      	nor      	r5, r5
 132:	07bd      	br      	0xac	// ac <txw80x_sband_ioctl+0xac>
	...

Disassembly of section .text.txw80x_add_extra_ie:

00000000 <txw80x_add_extra_ie>:
   0:	14d2      	push      	r4-r5, r15
   2:	3904      	cmphsi      	r1, 5
   4:	6d03      	mov      	r4, r0
   6:	6d4b      	mov      	r5, r2
   8:	081e      	bt      	0x44	// 44 <txw80x_add_extra_ie+0x44>
   a:	3301      	movi      	r3, 1
   c:	c4234021 	lsl      	r1, r3, r1
  10:	e461201b 	andi      	r3, r1, 27
  14:	e9230010 	bnez      	r3, 0x34	// 34 <txw80x_add_extra_ie+0x34>
  18:	e4212004 	andi      	r1, r1, 4
  1c:	e9010014 	bez      	r1, 0x44	// 44 <txw80x_add_extra_ie+0x44>
  20:	8033      	ld.b      	r1, (r0, 0x13)
  22:	6c0b      	mov      	r0, r2
  24:	e0000000 	bsr      	0x0	// 0 <ieee80211_ie_add_dsparam>
  28:	e444015b 	addi      	r2, r4, 348
  2c:	6c57      	mov      	r1, r5
  2e:	6c13      	mov      	r0, r4
  30:	e0000000 	bsr      	0x0	// 0 <ieee80211_ie_add_wmm>
  34:	6c57      	mov      	r1, r5
  36:	6c13      	mov      	r0, r4
  38:	e0000000 	bsr      	0x0	// 0 <ieee80211_ie_add_ht_capabilities>
  3c:	6c57      	mov      	r1, r5
  3e:	6c13      	mov      	r0, r4
  40:	e0000000 	bsr      	0x0	// 0 <ieee80211_ie_add_ht_operation>
  44:	1492      	pop      	r4-r5, r15

Disassembly of section .text.ieee80211_support_txw80x:

00000000 <ieee80211_support_txw80x>:
   0:	14d3      	push      	r4-r6, r15
   2:	1428      	subi      	r14, r14, 32
   4:	11a5      	lrw      	r5, 0x0	// 98 <ieee80211_support_txw80x+0x98>
   6:	b500      	st.w      	r0, (r5, 0x0)
   8:	3068      	movi      	r0, 104
   a:	e0000000 	bsr      	0x0	// 0 <_os_zalloc>
   e:	6d03      	mov      	r4, r0
  10:	e9200007 	bnez      	r0, 0x1e	// 1e <ieee80211_support_txw80x+0x1e>
  14:	1142      	lrw      	r2, 0x0	// 9c <ieee80211_support_txw80x+0x9c>
  16:	319a      	movi      	r1, 154
  18:	1102      	lrw      	r0, 0x0	// a0 <ieee80211_support_txw80x+0xa0>
  1a:	e0000000 	bsr      	0x0	// 0 <assert_internal>
  1e:	1162      	lrw      	r3, 0x0	// a4 <ieee80211_support_txw80x+0xa4>
  20:	3600      	movi      	r6, 0
  22:	b479      	st.w      	r3, (r4, 0x64)
  24:	1161      	lrw      	r3, 0xfbde0421	// a8 <ieee80211_support_txw80x+0xa8>
  26:	b465      	st.w      	r3, (r4, 0x14)
  28:	3314      	movi      	r3, 20
  2a:	a462      	st.b      	r3, (r4, 0x2)
  2c:	3238      	movi      	r2, 56
  2e:	a4c0      	st.b      	r6, (r4, 0x0)
  30:	e404001f 	addi      	r0, r4, 32
  34:	103e      	lrw      	r1, 0x0	// ac <memcpy+0xac>
  36:	e0000000 	bsr      	0x0	// 0 <memcpy>
  3a:	330e      	movi      	r3, 14
  3c:	a464      	st.b      	r3, (r4, 0x4)
  3e:	a4c3      	st.b      	r6, (r4, 0x3)
  40:	a4c1      	st.b      	r6, (r4, 0x1)
  42:	b4b8      	st.w      	r5, (r4, 0x60)
  44:	3200      	movi      	r2, 0
  46:	107b      	lrw      	r3, 0x0	// b0 <ieee80211_support_txw80x+0xb0>
  48:	b463      	st.w      	r3, (r4, 0xc)
  4a:	330c      	movi      	r3, 12
  4c:	a465      	st.b      	r3, (r4, 0x5)
  4e:	107a      	lrw      	r3, 0x0	// b4 <ieee80211_support_txw80x+0xb4>
  50:	b462      	st.w      	r3, (r4, 0x8)
  52:	331a      	movi      	r3, 26
  54:	a466      	st.b      	r3, (r4, 0x6)
  56:	1079      	lrw      	r3, 0x0	// b8 <ieee80211_support_txw80x+0xb8>
  58:	b464      	st.w      	r3, (r4, 0x10)
  5a:	3316      	movi      	r3, 22
  5c:	a467      	st.b      	r3, (r4, 0x7)
  5e:	3303      	movi      	r3, 3
  60:	a47a      	st.b      	r3, (r4, 0x1a)
  62:	ea030401 	movi      	r3, 1025
  66:	ac6c      	st.h      	r3, (r4, 0x18)
  68:	1075      	lrw      	r3, 0x0	// bc <ieee80211_support_txw80x+0xbc>
  6a:	b396      	st.w      	r4, (r3, 0x58)
  6c:	4262      	lsli      	r3, r2, 2
  6e:	60d0      	addu      	r3, r4
  70:	8b71      	ld.h      	r3, (r3, 0x22)
  72:	d44e0443 	str.h      	r3, (r14, r2 << 1)
  76:	2200      	addi      	r2, 1
  78:	3a4e      	cmpnei      	r2, 14
  7a:	0bf9      	bt      	0x6c	// 6c <ieee80211_support_txw80x+0x6c>
  7c:	6c7b      	mov      	r1, r14
  7e:	9500      	ld.w      	r0, (r5, 0x0)
  80:	e0000000 	bsr      	0x0	// 0 <lmac_set_chan_list>
  84:	8461      	ld.b      	r3, (r4, 0x1)
  86:	9500      	ld.w      	r0, (r5, 0x0)
  88:	d06e0441 	ldr.h      	r1, (r14, r3 << 1)
  8c:	7445      	zexth      	r1, r1
  8e:	906c      	ld.w      	r3, (r0, 0x30)
  90:	7bcd      	jsr      	r3
  92:	3000      	movi      	r0, 0
  94:	1408      	addi      	r14, r14, 32
  96:	1493      	pop      	r4-r6, r15
	...
  a8:	fbde0421 	.long	0xfbde0421
	...
