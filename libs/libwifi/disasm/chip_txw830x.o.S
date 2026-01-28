
libwifi/o/chip_txw830x.o:     file format elf32-csky-little


Disassembly of section .text.txw830x_iface_init:

00000000 <txw830x_iface_init>:
   0:	14d1      	push      	r4, r15
   2:	3340      	movi      	r3, 64
   4:	dc600027 	st.b      	r3, (r0, 0x27)
   8:	6d03      	mov      	r4, r0
   a:	1071      	lrw      	r3, 0x0	// 4c <txw830x_iface_init+0x4c>
   c:	9360      	ld.w      	r3, (r3, 0x0)
   e:	dc602029 	st.w      	r3, (r0, 0xa4)
  12:	1070      	lrw      	r3, 0x0	// 50 <txw830x_iface_init+0x50>
  14:	dc602021 	st.w      	r3, (r0, 0x84)
  18:	106f      	lrw      	r3, 0x0	// 54 <txw830x_iface_init+0x54>
  1a:	b075      	st.w      	r3, (r0, 0x54)
  1c:	8860      	ld.h      	r3, (r0, 0x0)
  1e:	e4432002 	andi      	r2, r3, 2
  22:	e902000f 	bez      	r2, 0x40	// 40 <txw830x_iface_init+0x40>
  26:	106d      	lrw      	r3, 0x0	// 58 <txw830x_iface_init+0x58>
  28:	102d      	lrw      	r1, 0x0	// 5c <txw830x_iface_init+0x5c>
  2a:	b074      	st.w      	r3, (r0, 0x50)
  2c:	e0000000 	bsr      	0x0	// 0 <ieee80211_setup_wmm_param>
  30:	3210      	movi      	r2, 16
  32:	102c      	lrw      	r1, 0x0	// 60 <txw830x_iface_init+0x60>
  34:	e404015b 	addi      	r0, r4, 348
  38:	e0000000 	bsr      	0x0	// 0 <memcpy>
  3c:	3000      	movi      	r0, 0
  3e:	1491      	pop      	r4, r15
  40:	e4632001 	andi      	r3, r3, 1
  44:	e903fff6 	bez      	r3, 0x30	// 30 <txw830x_iface_init+0x30>
  48:	1026      	lrw      	r1, 0x0	// 60 <txw830x_iface_init+0x60>
  4a:	07f1      	br      	0x2c	// 2c <txw830x_iface_init+0x2c>
	...

Disassembly of section .text.txw830x_sband_ioctl:

00000000 <txw830x_sband_ioctl>:
   0:	14d2      	push      	r4-r5, r15
   2:	1421      	subi      	r14, r14, 4
   4:	6d03      	mov      	r4, r0
   6:	6c07      	mov      	r0, r1
   8:	eb000027 	cmphsi      	r0, 40
   c:	6c4b      	mov      	r1, r2
   e:	08c0      	bt      	0x18e	// 18e <txw830x_sband_ioctl+0x18e>
  10:	1042      	lrw      	r2, 0x0	// 18 <txw830x_sband_ioctl+0x18>
  12:	d0020882 	ldr.w      	r2, (r2, r0 << 2)
  16:	7808      	jmp      	r2
  18:	00000000 	.long	0x00000000
  1c:	d864202b 	ld.w      	r3, (r4, 0xac)
  20:	7484      	zextb      	r2, r1
  22:	a322      	st.b      	r1, (r3, 0x2)
  24:	3300      	movi      	r3, 0
  26:	3102      	movi      	r1, 2
  28:	d8042029 	ld.w      	r0, (r4, 0xa4)
  2c:	e0000000 	bsr      	0x0	// 0 <lmac_ioctl>
  30:	0425      	br      	0x7a	// 7a <txw830x_sband_ioctl+0x7a>
  32:	3b0f      	cmphsi      	r3, 16
  34:	08b1      	bt      	0x196	// 196 <txw830x_sband_ioctl+0x196>
  36:	d9a4202b 	ld.w      	r13, (r4, 0xac)
  3a:	770c      	zextb      	r12, r3
  3c:	dd8d0004 	st.b      	r12, (r13, 0x4)
  40:	3200      	movi      	r2, 0
  42:	7408      	zextb      	r0, r2
  44:	6700      	cmphs      	r0, r12
  46:	0c10      	bf      	0x66	// 66 <txw830x_sband_ioctl+0x66>
  48:	748d      	zexth      	r2, r3
  4a:	d8042029 	ld.w      	r0, (r4, 0xa4)
  4e:	e0000000 	bsr      	0x0	// 0 <lmac_set_chan_list>
  52:	d864202b 	ld.w      	r3, (r4, 0xac)
  56:	6d43      	mov      	r5, r0
  58:	8324      	ld.b      	r1, (r3, 0x4)
  5a:	6c13      	mov      	r0, r4
  5c:	e0000000 	bsr      	0x0	// 0 <ieee80211_set_channel>
  60:	6c17      	mov      	r0, r5
  62:	1401      	addi      	r14, r14, 4
  64:	1492      	pop      	r4-r5, r15
  66:	4202      	lsli      	r0, r2, 2
  68:	6034      	addu      	r0, r13
  6a:	d0410445 	ldr.h      	r5, (r1, r2 << 1)
  6e:	a8b1      	st.h      	r5, (r0, 0x22)
  70:	2200      	addi      	r2, 1
  72:	07e8      	br      	0x42	// 42 <txw830x_sband_ioctl+0x42>
  74:	d864202b 	ld.w      	r3, (r4, 0xac)
  78:	a323      	st.b      	r1, (r3, 0x3)
  7a:	3500      	movi      	r5, 0
  7c:	07f2      	br      	0x60	// 60 <txw830x_sband_ioctl+0x60>
  7e:	7485      	zexth      	r2, r1
  80:	3300      	movi      	r3, 0
  82:	3113      	movi      	r1, 19
  84:	07d2      	br      	0x28	// 28 <txw830x_sband_ioctl+0x28>
  86:	3300      	movi      	r3, 0
  88:	6c8f      	mov      	r2, r3
  8a:	c7805021 	bmaski      	r1, 29
  8e:	2114      	addi      	r1, 21
  90:	d8042029 	ld.w      	r0, (r4, 0xa4)
  94:	e0000000 	bsr      	0x0	// 0 <lmac_ioctl>
  98:	6d43      	mov      	r5, r0
  9a:	07e3      	br      	0x60	// 60 <txw830x_sband_ioctl+0x60>
  9c:	7484      	zextb      	r2, r1
  9e:	c7805021 	bmaski      	r1, 29
  a2:	211e      	addi      	r1, 31
  a4:	07f6      	br      	0x90	// 90 <txw830x_sband_ioctl+0x90>
  a6:	3300      	movi      	r3, 0
  a8:	6c8f      	mov      	r2, r3
  aa:	c7805021 	bmaski      	r1, 29
  ae:	2105      	addi      	r1, 6
  b0:	07f0      	br      	0x90	// 90 <txw830x_sband_ioctl+0x90>
  b2:	8141      	ld.b      	r2, (r1, 0x1)
  b4:	8100      	ld.b      	r0, (r1, 0x0)
  b6:	4248      	lsli      	r2, r2, 8
  b8:	6c80      	or      	r2, r0
  ba:	8102      	ld.b      	r0, (r1, 0x2)
  bc:	4010      	lsli      	r0, r0, 16
  be:	6c08      	or      	r0, r2
  c0:	8143      	ld.b      	r2, (r1, 0x3)
  c2:	4258      	lsli      	r2, r2, 24
  c4:	3300      	movi      	r3, 0
  c6:	6c80      	or      	r2, r0
  c8:	3132      	movi      	r1, 50
  ca:	07e3      	br      	0x90	// 90 <txw830x_sband_ioctl+0x90>
  cc:	3300      	movi      	r3, 0
  ce:	6c8f      	mov      	r2, r3
  d0:	c7805021 	bmaski      	r1, 29
  d4:	2116      	addi      	r1, 23
  d6:	07dd      	br      	0x90	// 90 <txw830x_sband_ioctl+0x90>
  d8:	6c87      	mov      	r2, r1
  da:	3300      	movi      	r3, 0
  dc:	ea212000 	movih      	r1, 8192
  e0:	2124      	addi      	r1, 37
  e2:	07d7      	br      	0x90	// 90 <txw830x_sband_ioctl+0x90>
  e4:	7484      	zextb      	r2, r1
  e6:	3300      	movi      	r3, 0
  e8:	310b      	movi      	r1, 11
  ea:	07d3      	br      	0x90	// 90 <txw830x_sband_ioctl+0x90>
  ec:	9840      	ld.w      	r2, (r14, 0x0)
  ee:	c6c05020 	bmaski      	r0, 23
  f2:	c4405ec9 	ins      	r2, r0, 31, 9
  f6:	b840      	st.w      	r2, (r14, 0x0)
  f8:	c4415c00 	ins      	r2, r1, 0, 0
  fc:	dc4e0000 	st.b      	r2, (r14, 0x0)
 100:	d84e1000 	ld.h      	r2, (r14, 0x0)
 104:	c4435ce1 	ins      	r2, r3, 8, 1
 108:	dc4e1000 	st.h      	r2, (r14, 0x0)
 10c:	6c7b      	mov      	r1, r14
 10e:	3200      	movi      	r2, 0
 110:	d8042029 	ld.w      	r0, (r4, 0xa4)
 114:	e0000000 	bsr      	0x0	// 0 <lmac_start_acs>
 118:	07b1      	br      	0x7a	// 7a <txw830x_sband_ioctl+0x7a>
 11a:	6c13      	mov      	r0, r4
 11c:	e0000000 	bsr      	0x0	// 0 <ieee80211_vif_sta_count>
 120:	3819      	cmphsi      	r0, 26
 122:	6cc3      	mov      	r3, r0
 124:	3210      	movi      	r2, 16
 126:	e404015b 	addi      	r0, r4, 348
 12a:	0c0c      	bf      	0x142	// 142 <txw830x_sband_ioctl+0x142>
 12c:	103c      	lrw      	r1, 0x0	// 19c <txw830x_sband_ioctl+0x19c>
 12e:	e0000000 	bsr      	0x0	// 0 <memcpy>
 132:	d8640112 	ld.b      	r3, (r4, 0x112)
 136:	2300      	addi      	r3, 1
 138:	e463200f 	andi      	r3, r3, 15
 13c:	dc640112 	st.b      	r3, (r4, 0x112)
 140:	079d      	br      	0x7a	// 7a <txw830x_sband_ioctl+0x7a>
 142:	3b0f      	cmphsi      	r3, 16
 144:	0c03      	bf      	0x14a	// 14a <txw830x_sband_ioctl+0x14a>
 146:	1037      	lrw      	r1, 0x0	// 1a0 <txw830x_sband_ioctl+0x1a0>
 148:	07f3      	br      	0x12e	// 12e <txw830x_sband_ioctl+0x12e>
 14a:	3b03      	cmphsi      	r3, 4
 14c:	0c03      	bf      	0x152	// 152 <txw830x_sband_ioctl+0x152>
 14e:	1036      	lrw      	r1, 0x0	// 1a4 <txw830x_sband_ioctl+0x1a4>
 150:	07ef      	br      	0x12e	// 12e <txw830x_sband_ioctl+0x12e>
 152:	3b43      	cmpnei      	r3, 3
 154:	0803      	bt      	0x15a	// 15a <txw830x_sband_ioctl+0x15a>
 156:	1035      	lrw      	r1, 0x0	// 1a8 <txw830x_sband_ioctl+0x1a8>
 158:	07eb      	br      	0x12e	// 12e <txw830x_sband_ioctl+0x12e>
 15a:	1035      	lrw      	r1, 0x0	// 1ac <txw830x_sband_ioctl+0x1ac>
 15c:	07e9      	br      	0x12e	// 12e <txw830x_sband_ioctl+0x12e>
 15e:	7484      	zextb      	r2, r1
 160:	c7805021 	bmaski      	r1, 29
 164:	2118      	addi      	r1, 25
 166:	0761      	br      	0x28	// 28 <txw830x_sband_ioctl+0x28>
 168:	d864202b 	ld.w      	r3, (r4, 0xac)
 16c:	6c87      	mov      	r2, r1
 16e:	a33b      	st.b      	r1, (r3, 0x1b)
 170:	3300      	movi      	r3, 0
 172:	310a      	movi      	r1, 10
 174:	075a      	br      	0x28	// 28 <txw830x_sband_ioctl+0x28>
 176:	8462      	ld.b      	r3, (r4, 0x2)
 178:	c4615c07 	ins      	r3, r1, 7, 7
 17c:	a462      	st.b      	r3, (r4, 0x2)
 17e:	6c87      	mov      	r2, r1
 180:	3300      	movi      	r3, 0
 182:	3130      	movi      	r1, 48
 184:	0752      	br      	0x28	// 28 <txw830x_sband_ioctl+0x28>
 186:	6c87      	mov      	r2, r1
 188:	3320      	movi      	r3, 32
 18a:	3110      	movi      	r1, 16
 18c:	074e      	br      	0x28	// 28 <txw830x_sband_ioctl+0x28>
 18e:	ea05020b 	movi      	r5, 523
 192:	6d56      	nor      	r5, r5
 194:	0766      	br      	0x60	// 60 <txw830x_sband_ioctl+0x60>
 196:	3500      	movi      	r5, 0
 198:	2d00      	subi      	r5, 1
 19a:	0763      	br      	0x60	// 60 <txw830x_sband_ioctl+0x60>
	...

Disassembly of section .text.ieee80211_support_txw830x:

00000000 <ieee80211_support_txw830x>:
   0:	14d3      	push      	r4-r6, r15
   2:	1428      	subi      	r14, r14, 32
   4:	12a2      	lrw      	r5, 0x0	// 10c <ieee80211_support_txw830x+0x10c>
   6:	b500      	st.w      	r0, (r5, 0x0)
   8:	3068      	movi      	r0, 104
   a:	e0000000 	bsr      	0x0	// 0 <_os_zalloc>
   e:	6d03      	mov      	r4, r0
  10:	e9200007 	bnez      	r0, 0x1e	// 1e <ieee80211_support_txw830x+0x1e>
  14:	115f      	lrw      	r2, 0x0	// 110 <ieee80211_support_txw830x+0x110>
  16:	319d      	movi      	r1, 157
  18:	111f      	lrw      	r0, 0x0	// 114 <ieee80211_support_txw830x+0x114>
  1a:	e0000000 	bsr      	0x0	// 0 <assert_internal>
  1e:	117f      	lrw      	r3, 0x0	// 118 <ieee80211_support_txw830x+0x118>
  20:	3603      	movi      	r6, 3
  22:	b479      	st.w      	r3, (r4, 0x64)
  24:	3300      	movi      	r3, 0
  26:	2b00      	subi      	r3, 1
  28:	b465      	st.w      	r3, (r4, 0x14)
  2a:	a4c0      	st.b      	r6, (r4, 0x0)
  2c:	e404001f 	addi      	r0, r4, 32
  30:	117b      	lrw      	r3, 0x0	// 11c <ieee80211_support_txw830x+0x11c>
  32:	8367      	ld.b      	r3, (r3, 0x7)
  34:	3b41      	cmpnei      	r3, 1
  36:	0808      	bt      	0x46	// 46 <ieee80211_support_txw830x+0x46>
  38:	320c      	movi      	r2, 12
  3a:	113a      	lrw      	r1, 0x0	// 120 <ieee80211_support_txw830x+0x120>
  3c:	e0000000 	bsr      	0x0	// 0 <memcpy>
  40:	a4c4      	st.b      	r6, (r4, 0x4)
  42:	3308      	movi      	r3, 8
  44:	0458      	br      	0xf4	// f4 <ieee80211_support_txw830x+0xf4>
  46:	3b45      	cmpnei      	r3, 5
  48:	0848      	bt      	0xd8	// d8 <ieee80211_support_txw830x+0xd8>
  4a:	3608      	movi      	r6, 8
  4c:	6c9b      	mov      	r2, r6
  4e:	1136      	lrw      	r1, 0x0	// 124 <ieee80211_support_txw830x+0x124>
  50:	e0000000 	bsr      	0x0	// 0 <memcpy>
  54:	3302      	movi      	r3, 2
  56:	a464      	st.b      	r3, (r4, 0x4)
  58:	a4c2      	st.b      	r6, (r4, 0x2)
  5a:	1174      	lrw      	r3, 0x0	// 128 <ieee80211_support_txw830x+0x128>
  5c:	3204      	movi      	r2, 4
  5e:	b463      	st.w      	r3, (r4, 0xc)
  60:	3101      	movi      	r1, 1
  62:	1173      	lrw      	r3, 0x0	// 12c <ieee80211_support_txw830x+0x12c>
  64:	b462      	st.w      	r3, (r4, 0x8)
  66:	330f      	movi      	r3, 15
  68:	a466      	st.b      	r3, (r4, 0x6)
  6a:	3300      	movi      	r3, 0
  6c:	a463      	st.b      	r3, (r4, 0x3)
  6e:	a461      	st.b      	r3, (r4, 0x1)
  70:	3303      	movi      	r3, 3
  72:	a47b      	st.b      	r3, (r4, 0x1b)
  74:	ac2c      	st.h      	r1, (r4, 0x18)
  76:	a445      	st.b      	r2, (r4, 0x5)
  78:	a45a      	st.b      	r2, (r4, 0x1a)
  7a:	b4b8      	st.w      	r5, (r4, 0x60)
  7c:	116d      	lrw      	r3, 0x0	// 130 <ieee80211_support_txw830x+0x130>
  7e:	b399      	st.w      	r4, (r3, 0x64)
  80:	8424      	ld.b      	r1, (r4, 0x4)
  82:	3300      	movi      	r3, 0
  84:	748c      	zextb      	r2, r3
  86:	6448      	cmphs      	r2, r1
  88:	0c3b      	bf      	0xfe	// fe <ieee80211_support_txw830x+0xfe>
  8a:	3300      	movi      	r3, 0
  8c:	8442      	ld.b      	r2, (r4, 0x2)
  8e:	3102      	movi      	r1, 2
  90:	9500      	ld.w      	r0, (r5, 0x0)
  92:	e0000000 	bsr      	0x0	// 0 <lmac_ioctl>
  96:	8444      	ld.b      	r2, (r4, 0x4)
  98:	6c7b      	mov      	r1, r14
  9a:	9500      	ld.w      	r0, (r5, 0x0)
  9c:	e0000000 	bsr      	0x0	// 0 <lmac_set_chan_list>
  a0:	3300      	movi      	r3, 0
  a2:	32ff      	movi      	r2, 255
  a4:	3104      	movi      	r1, 4
  a6:	9500      	ld.w      	r0, (r5, 0x0)
  a8:	e0000000 	bsr      	0x0	// 0 <lmac_ioctl>
  ac:	3300      	movi      	r3, 0
  ae:	3214      	movi      	r2, 20
  b0:	3106      	movi      	r1, 6
  b2:	9500      	ld.w      	r0, (r5, 0x0)
  b4:	e0000000 	bsr      	0x0	// 0 <lmac_ioctl>
  b8:	3203      	movi      	r2, 3
  ba:	3300      	movi      	r3, 0
  bc:	310a      	movi      	r1, 10
  be:	9500      	ld.w      	r0, (r5, 0x0)
  c0:	e0000000 	bsr      	0x0	// 0 <lmac_ioctl>
  c4:	8461      	ld.b      	r3, (r4, 0x1)
  c6:	9500      	ld.w      	r0, (r5, 0x0)
  c8:	d06e0441 	ldr.h      	r1, (r14, r3 << 1)
  cc:	7445      	zexth      	r1, r1
  ce:	906c      	ld.w      	r3, (r0, 0x30)
  d0:	7bcd      	jsr      	r3
  d2:	3000      	movi      	r0, 0
  d4:	1408      	addi      	r14, r14, 32
  d6:	1493      	pop      	r4-r6, r15
  d8:	3b50      	cmpnei      	r3, 16
  da:	0805      	bt      	0xe4	// e4 <ieee80211_support_txw830x+0xe4>
  dc:	3608      	movi      	r6, 8
  de:	6c9b      	mov      	r2, r6
  e0:	1035      	lrw      	r1, 0x0	// 134 <ieee80211_support_txw830x+0x134>
  e2:	07b7      	br      	0x50	// 50 <ieee80211_support_txw830x+0x50>
  e4:	3b43      	cmpnei      	r3, 3
  e6:	0809      	bt      	0xf8	// f8 <ieee80211_support_txw830x+0xf8>
  e8:	3208      	movi      	r2, 8
  ea:	1034      	lrw      	r1, 0x0	// 138 <ieee80211_support_txw830x+0x138>
  ec:	e0000000 	bsr      	0x0	// 0 <memcpy>
  f0:	3302      	movi      	r3, 2
  f2:	a464      	st.b      	r3, (r4, 0x4)
  f4:	a462      	st.b      	r3, (r4, 0x2)
  f6:	07b2      	br      	0x5a	// 5a <ieee80211_support_txw830x+0x5a>
  f8:	320c      	movi      	r2, 12
  fa:	1031      	lrw      	r1, 0x0	// 13c <ieee80211_support_txw830x+0x13c>
  fc:	07a0      	br      	0x3c	// 3c <ieee80211_support_txw830x+0x3c>
  fe:	4342      	lsli      	r2, r3, 2
 100:	6090      	addu      	r2, r4
 102:	8a51      	ld.h      	r2, (r2, 0x22)
 104:	d46e0442 	str.h      	r2, (r14, r3 << 1)
 108:	2300      	addi      	r3, 1
 10a:	07bd      	br      	0x84	// 84 <ieee80211_support_txw830x+0x84>
	...
