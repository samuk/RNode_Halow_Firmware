
libwifi/o/sta_cfg.o:     file format elf32-csky-little


Disassembly of section .text.ieee80211_sta_ioctl:

00000000 <ieee80211_sta_ioctl>:
   0:	14d5      	push      	r4-r8, r15
   2:	3918      	cmphsi      	r1, 25
   4:	6d03      	mov      	r4, r0
   6:	6e07      	mov      	r8, r1
   8:	6d4b      	mov      	r5, r2
   a:	6dcf      	mov      	r7, r3
   c:	0955      	bt      	0x2b6	// 2b6 <ieee80211_sta_ioctl+0x2b6>
   e:	1063      	lrw      	r3, 0x0	// 18 <ieee80211_sta_ioctl+0x18>
  10:	d0230883 	ldr.w      	r3, (r3, r1 << 2)
  14:	780c      	jmp      	r3
  16:	0000      	.short	0x0000
  18:	00000000 	.long	0x00000000
  1c:	e4c00112 	addi      	r6, r0, 275
  20:	e9220013 	bnez      	r2, 0x46	// 46 <ieee80211_sta_ioctl+0x46>
  24:	3221      	movi      	r2, 33
  26:	6c57      	mov      	r1, r5
  28:	6c1b      	mov      	r0, r6
  2a:	e0000000 	bsr      	0x0	// 0 <memset>
  2e:	d8642063 	ld.w      	r3, (r4, 0x18c)
  32:	d8630025 	ld.b      	r3, (r3, 0x25)
  36:	e4632008 	andi      	r3, r3, 8
  3a:	e903000c 	bez      	r3, 0x52	// 52 <ieee80211_sta_ioctl+0x52>
  3e:	6c13      	mov      	r0, r4
  40:	e0000000 	bsr      	0x0	// 0 <ieee80211_sta_start_assoc>
  44:	0407      	br      	0x52	// 52 <ieee80211_sta_ioctl+0x52>
  46:	6c4b      	mov      	r1, r2
  48:	6c1b      	mov      	r0, r6
  4a:	e0000000 	bsr      	0x0	// 0 <strcmp>
  4e:	e9200004 	bnez      	r0, 0x56	// 56 <ieee80211_sta_ioctl+0x56>
  52:	3600      	movi      	r6, 0
  54:	0412      	br      	0x78	// 78 <ieee80211_sta_ioctl+0x78>
  56:	3220      	movi      	r2, 32
  58:	6c1b      	mov      	r0, r6
  5a:	6c57      	mov      	r1, r5
  5c:	e0000000 	bsr      	0x0	// 0 <strncpy>
  60:	d8642063 	ld.w      	r3, (r4, 0x18c)
  64:	3600      	movi      	r6, 0
  66:	d84300ea 	ld.b      	r2, (r3, 0xea)
  6a:	c4465c03 	ins      	r2, r6, 3, 3
  6e:	dc4300ea 	st.b      	r2, (r3, 0xea)
  72:	6c13      	mov      	r0, r4
  74:	e0000000 	bsr      	0x0	// 0 <ieee80211_sta_start_assoc>
  78:	6cdf      	mov      	r3, r7
  7a:	6c97      	mov      	r2, r5
  7c:	6c63      	mov      	r1, r8
  7e:	6c13      	mov      	r0, r4
  80:	e0000000 	bsr      	0x0	// 0 <ieee80211_sband_ioctl>
  84:	ea03020b 	movi      	r3, 523
  88:	6cce      	nor      	r3, r3
  8a:	64c2      	cmpne      	r0, r3
  8c:	c4060c20 	incf      	r0, r6, 0
  90:	1495      	pop      	r4-r8, r15
  92:	d8002063 	ld.w      	r0, (r0, 0x18c)
  96:	d86000ea 	ld.b      	r3, (r0, 0xea)
  9a:	e9020027 	bez      	r2, 0xe8	// e8 <ieee80211_sta_ioctl+0xe8>
  9e:	3201      	movi      	r2, 1
  a0:	c4625c03 	ins      	r3, r2, 3, 3
  a4:	dc6000ea 	st.b      	r3, (r0, 0xea)
  a8:	3206      	movi      	r2, 6
  aa:	6c57      	mov      	r1, r5
  ac:	20ec      	addi      	r0, 237
  ae:	e0000000 	bsr      	0x0	// 0 <memcpy>
  b2:	d844202b 	ld.w      	r2, (r4, 0xac)
  b6:	d8242063 	ld.w      	r1, (r4, 0x18c)
  ba:	3300      	movi      	r3, 0
  bc:	21ec      	addi      	r1, 237
  be:	8240      	ld.b      	r2, (r2, 0x0)
  c0:	d804202a 	ld.w      	r0, (r4, 0xa8)
  c4:	e0000000 	bsr      	0x0	// 0 <ieee80211_bss_disable>
  c8:	d8242063 	ld.w      	r1, (r4, 0x18c)
  cc:	d8610025 	ld.b      	r3, (r1, 0x25)
  d0:	e4632008 	andi      	r3, r3, 8
  d4:	e903ffbf 	bez      	r3, 0x52	// 52 <ieee80211_sta_ioctl+0x52>
  d8:	3206      	movi      	r2, 6
  da:	211b      	addi      	r1, 28
  dc:	6c17      	mov      	r0, r5
  de:	e0000000 	bsr      	0x0	// 0 <memcmp>
  e2:	e900ffb8 	bez      	r0, 0x52	// 52 <ieee80211_sta_ioctl+0x52>
  e6:	07ac      	br      	0x3e	// 3e <ieee80211_sta_ioctl+0x3e>
  e8:	c4625c03 	ins      	r3, r2, 3, 3
  ec:	dc6000ea 	st.b      	r3, (r0, 0xea)
  f0:	3206      	movi      	r2, 6
  f2:	6c57      	mov      	r1, r5
  f4:	20ec      	addi      	r0, 237
  f6:	e0000000 	bsr      	0x0	// 0 <memset>
  fa:	07ac      	br      	0x52	// 52 <ieee80211_sta_ioctl+0x52>
  fc:	d860203f 	ld.w      	r3, (r0, 0xfc)
 100:	64ca      	cmpne      	r2, r3
 102:	0fa8      	bf      	0x52	// 52 <ieee80211_sta_ioctl+0x52>
 104:	3600      	movi      	r6, 0
 106:	3a44      	cmpnei      	r2, 4
 108:	136f      	lrw      	r3, 0x0	// 2c4 <ieee80211_sta_ioctl+0x2c4>
 10a:	c4660c20 	incf      	r3, r6, 0
 10e:	dc44203f 	st.w      	r2, (r4, 0xfc)
 112:	b06e      	st.w      	r3, (r0, 0x38)
 114:	07af      	br      	0x72	// 72 <ieee80211_sta_ioctl+0x72>
 116:	e4c00133 	addi      	r6, r0, 308
 11a:	e9220007 	bnez      	r2, 0x128	// 128 <ieee80211_sta_ioctl+0x128>
 11e:	3120      	movi      	r1, 32
 120:	6c1b      	mov      	r0, r6
 122:	e0000000 	bsr      	0x0	// 0 <os_random_bytes>
 126:	0796      	br      	0x52	// 52 <ieee80211_sta_ioctl+0x52>
 128:	3220      	movi      	r2, 32
 12a:	6c57      	mov      	r1, r5
 12c:	6c1b      	mov      	r0, r6
 12e:	e0000000 	bsr      	0x0	// 0 <memcmp>
 132:	e900ff90 	bez      	r0, 0x52	// 52 <ieee80211_sta_ioctl+0x52>
 136:	3220      	movi      	r2, 32
 138:	6c57      	mov      	r1, r5
 13a:	6c1b      	mov      	r0, r6
 13c:	e0000000 	bsr      	0x0	// 0 <memcpy>
 140:	d864203f 	ld.w      	r3, (r4, 0xfc)
 144:	3b44      	cmpnei      	r3, 4
 146:	0b7c      	bt      	0x3e	// 3e <ieee80211_sta_ioctl+0x3e>
 148:	0785      	br      	0x52	// 52 <ieee80211_sta_ioctl+0x52>
 14a:	7448      	zextb      	r1, r2
 14c:	e0000000 	bsr      	0x0	// 0 <ieee80211_set_channel>
 150:	8473      	ld.b      	r3, (r4, 0x13)
 152:	3244      	movi      	r2, 68
 154:	123d      	lrw      	r1, 0x0	// 2c8 <ieee80211_sta_ioctl+0x2c8>
 156:	121e      	lrw      	r0, 0x0	// 2cc <ieee80211_sta_ioctl+0x2cc>
 158:	e0000000 	bsr      	0x0	// 0 <hgprintf>
 15c:	077b      	br      	0x52	// 52 <ieee80211_sta_ioctl+0x52>
 15e:	58d6      	addi      	r6, r0, 6
 160:	3206      	movi      	r2, 6
 162:	6c57      	mov      	r1, r5
 164:	6c1b      	mov      	r0, r6
 166:	e0000000 	bsr      	0x0	// 0 <memcmp>
 16a:	e900ff74 	bez      	r0, 0x52	// 52 <ieee80211_sta_ioctl+0x52>
 16e:	6c57      	mov      	r1, r5
 170:	3206      	movi      	r2, 6
 172:	6c1b      	mov      	r0, r6
 174:	e0000000 	bsr      	0x0	// 0 <memcpy>
 178:	8444      	ld.b      	r2, (r4, 0x4)
 17a:	6cdb      	mov      	r3, r6
 17c:	2a00      	subi      	r2, 1
 17e:	313d      	movi      	r1, 61
 180:	d8042029 	ld.w      	r0, (r4, 0xa4)
 184:	e0000000 	bsr      	0x0	// 0 <lmac_ioctl>
 188:	6c5b      	mov      	r1, r6
 18a:	940d      	ld.w      	r0, (r4, 0x34)
 18c:	e0000000 	bsr      	0x0	// 0 <wpa_sm_set_own_addr>
 190:	6cdb      	mov      	r3, r6
 192:	8444      	ld.b      	r2, (r4, 0x4)
 194:	3117      	movi      	r1, 23
 196:	6c13      	mov      	r0, r4
 198:	e0000000 	bsr      	0x0	// 0 <ieee80211_event_notify>
 19c:	075b      	br      	0x52	// 52 <ieee80211_sta_ioctl+0x52>
 19e:	d8402063 	ld.w      	r2, (r0, 0x18c)
 1a2:	d8620025 	ld.b      	r3, (r2, 0x25)
 1a6:	e4232008 	andi      	r1, r3, 8
 1aa:	e901008a 	bez      	r1, 0x2be	// 2be <ieee80211_sta_ioctl+0x2be>
 1ae:	3100      	movi      	r1, 0
 1b0:	af20      	st.h      	r1, (r7, 0x0)
 1b2:	c4635461 	zext      	r1, r3, 3, 3
 1b6:	876b      	ld.b      	r3, (r7, 0xb)
 1b8:	c4615c01 	ins      	r3, r1, 1, 1
 1bc:	d8220025 	ld.b      	r1, (r2, 0x25)
 1c0:	c4615c00 	ins      	r3, r1, 0, 0
 1c4:	c4815481 	zext      	r1, r1, 4, 4
 1c8:	c4615c02 	ins      	r3, r1, 2, 2
 1cc:	a76b      	st.b      	r3, (r7, 0xb)
 1ce:	826e      	ld.b      	r3, (r2, 0xe)
 1d0:	a76a      	st.b      	r3, (r7, 0xa)
 1d2:	d8620022 	ld.b      	r3, (r2, 0x22)
 1d6:	a768      	st.b      	r3, (r7, 0x8)
 1d8:	d8620023 	ld.b      	r3, (r2, 0x23)
 1dc:	a769      	st.b      	r3, (r7, 0x9)
 1de:	d8022028 	ld.w      	r0, (r2, 0xa0)
 1e2:	d8222029 	ld.w      	r1, (r2, 0xa4)
 1e6:	b707      	st.w      	r0, (r7, 0x1c)
 1e8:	b728      	st.w      	r1, (r7, 0x20)
 1ea:	d8022026 	ld.w      	r0, (r2, 0x98)
 1ee:	d8222027 	ld.w      	r1, (r2, 0x9c)
 1f2:	b705      	st.w      	r0, (r7, 0x14)
 1f4:	b726      	st.w      	r1, (r7, 0x18)
 1f6:	d8624024 	ld.bs      	r3, (r2, 0x24)
 1fa:	b764      	st.w      	r3, (r7, 0x10)
 1fc:	221b      	addi      	r2, 28
 1fe:	3300      	movi      	r3, 0
 200:	ea212000 	movih      	r1, 8192
 204:	211f      	addi      	r1, 32
 206:	d8042029 	ld.w      	r0, (r4, 0xa4)
 20a:	e0000000 	bsr      	0x0	// 0 <lmac_ioctl>
 20e:	b703      	st.w      	r0, (r7, 0xc)
 210:	d8242063 	ld.w      	r1, (r4, 0x18c)
 214:	3206      	movi      	r2, 6
 216:	211b      	addi      	r1, 28
 218:	5f06      	addi      	r0, r7, 2
 21a:	e0000000 	bsr      	0x0	// 0 <memcpy>
 21e:	071a      	br      	0x52	// 52 <ieee80211_sta_ioctl+0x52>
 220:	eb0200ef 	cmphsi      	r2, 240
 224:	0c02      	bf      	0x228	// 228 <ieee80211_sta_ioctl+0x228>
 226:	2def      	subi      	r5, 240
 228:	8465      	ld.b      	r3, (r4, 0x5)
 22a:	3201      	movi      	r2, 1
 22c:	c4625c06 	ins      	r3, r2, 6, 6
 230:	a465      	st.b      	r3, (r4, 0x5)
 232:	8766      	ld.b      	r3, (r7, 0x6)
 234:	4525      	lsli      	r1, r5, 5
 236:	e463200f 	andi      	r3, r3, 15
 23a:	e4212060 	andi      	r1, r1, 96
 23e:	6c4c      	or      	r1, r3
 240:	8767      	ld.b      	r3, (r7, 0x7)
 242:	3b40      	cmpnei      	r3, 0
 244:	3210      	movi      	r2, 16
 246:	c4620c40 	inct      	r3, r2, 0
 24a:	4542      	lsli      	r2, r5, 2
 24c:	6090      	addu      	r2, r4
 24e:	6cc4      	or      	r3, r1
 250:	dc62015c 	st.b      	r3, (r2, 0x15c)
 254:	8f22      	ld.h      	r1, (r7, 0x4)
 256:	8762      	ld.b      	r3, (r7, 0x2)
 258:	4124      	lsli      	r1, r1, 4
 25a:	e463200f 	andi      	r3, r3, 15
 25e:	6cc4      	or      	r3, r1
 260:	e4250056 	addi      	r1, r5, 87
 264:	dc62015d 	st.b      	r3, (r2, 0x15d)
 268:	4122      	lsli      	r1, r1, 2
 26a:	8f60      	ld.h      	r3, (r7, 0x0)
 26c:	dc6210af 	st.h      	r3, (r2, 0x15e)
 270:	6050      	addu      	r1, r4
 272:	6c13      	mov      	r0, r4
 274:	e0000000 	bsr      	0x0	// 0 <ieee80211_setup_wmm_ac_param>
 278:	06ed      	br      	0x52	// 52 <ieee80211_sta_ioctl+0x52>
 27a:	eb0200ef 	cmphsi      	r2, 240
 27e:	0c02      	bf      	0x282	// 282 <ieee80211_sta_ioctl+0x282>
 280:	2def      	subi      	r5, 240
 282:	4562      	lsli      	r3, r5, 2
 284:	60d0      	addu      	r3, r4
 286:	d843015c 	ld.b      	r2, (r3, 0x15c)
 28a:	e422200f 	andi      	r1, r2, 15
 28e:	c4825482 	zext      	r2, r2, 4, 4
 292:	a726      	st.b      	r1, (r7, 0x6)
 294:	a747      	st.b      	r2, (r7, 0x7)
 296:	d843015d 	ld.b      	r2, (r3, 0x15d)
 29a:	e422200f 	andi      	r1, r2, 15
 29e:	d86310af 	ld.h      	r3, (r3, 0x15e)
 2a2:	4a44      	lsri      	r2, r2, 4
 2a4:	af21      	st.h      	r1, (r7, 0x2)
 2a6:	af42      	st.h      	r2, (r7, 0x4)
 2a8:	af60      	st.h      	r3, (r7, 0x0)
 2aa:	06d4      	br      	0x52	// 52 <ieee80211_sta_ioctl+0x52>
 2ac:	d8602063 	ld.w      	r3, (r0, 0x18c)
 2b0:	dc430124 	st.b      	r2, (r3, 0x124)
 2b4:	06cf      	br      	0x52	// 52 <ieee80211_sta_ioctl+0x52>
 2b6:	ea06020b 	movi      	r6, 523
 2ba:	6d9a      	nor      	r6, r6
 2bc:	06de      	br      	0x78	// 78 <ieee80211_sta_ioctl+0x78>
 2be:	3600      	movi      	r6, 0
 2c0:	2e00      	subi      	r6, 1
 2c2:	06db      	br      	0x78	// 78 <ieee80211_sta_ioctl+0x78>
	...
