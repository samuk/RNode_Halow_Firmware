
libwifi/o/ap_cfg.o:     file format elf32-csky-little


Disassembly of section .text.fls.part.0:

00000000 <fls.part.0>:
   0:	ea22ffff 	movih      	r2, 65535
   4:	6880      	and      	r2, r0
   6:	6cc3      	mov      	r3, r0
   8:	e922001d 	bnez      	r2, 0x42	// 42 <fls.part.0+0x42>
   c:	4070      	lsli      	r3, r0, 16
   e:	3010      	movi      	r0, 16
  10:	32ff      	movi      	r2, 255
  12:	4258      	lsli      	r2, r2, 24
  14:	688c      	and      	r2, r3
  16:	e9220004 	bnez      	r2, 0x1e	// 1e <fls.part.0+0x1e>
  1a:	4368      	lsli      	r3, r3, 8
  1c:	2807      	subi      	r0, 8
  1e:	32f0      	movi      	r2, 240
  20:	4258      	lsli      	r2, r2, 24
  22:	688c      	and      	r2, r3
  24:	e9220004 	bnez      	r2, 0x2c	// 2c <fls.part.0+0x2c>
  28:	4364      	lsli      	r3, r3, 4
  2a:	2803      	subi      	r0, 4
  2c:	32c0      	movi      	r2, 192
  2e:	4258      	lsli      	r2, r2, 24
  30:	688c      	and      	r2, r3
  32:	e9220004 	bnez      	r2, 0x3a	// 3a <fls.part.0+0x3a>
  36:	4362      	lsli      	r3, r3, 2
  38:	2801      	subi      	r0, 2
  3a:	3bdf      	btsti      	r3, 31
  3c:	c4000c81 	decf      	r0, r0, 1
  40:	783c      	jmp      	r15
  42:	3020      	movi      	r0, 32
  44:	07e6      	br      	0x10	// 10 <fls.part.0+0x10>

Disassembly of section .text.ieee80211_ap_ioctl:

00000000 <ieee80211_ap_ioctl>:
   0:	14d8      	push      	r4-r11, r15
   2:	1424      	subi      	r14, r14, 16
   4:	eb010025 	cmphsi      	r1, 38
   8:	6d03      	mov      	r4, r0
   a:	6e47      	mov      	r9, r1
   c:	6dcb      	mov      	r7, r2
   e:	6e0f      	mov      	r8, r3
  10:	0808      	bt      	0x20	// 20 <ieee80211_ap_ioctl+0x20>
  12:	1063      	lrw      	r3, 0x0	// 1c <ieee80211_ap_ioctl+0x1c>
  14:	d0230883 	ldr.w      	r3, (r3, r1 << 2)
  18:	780c      	jmp      	r3
  1a:	0000      	.short	0x0000
  1c:	00000000 	.long	0x00000000
  20:	3600      	movi      	r6, 0
  22:	ea05020b 	movi      	r5, 523
  26:	6d56      	nor      	r5, r5
  28:	6ce3      	mov      	r3, r8
  2a:	6c9f      	mov      	r2, r7
  2c:	6c67      	mov      	r1, r9
  2e:	6c13      	mov      	r0, r4
  30:	e0000000 	bsr      	0x0	// 0 <ieee80211_sband_ioctl>
  34:	ea03020b 	movi      	r3, 523
  38:	6cce      	nor      	r3, r3
  3a:	64c2      	cmpne      	r0, r3
  3c:	c4a00c40 	inct      	r5, r0, 0
  40:	e9060035 	bez      	r6, 0xaa	// aa <ieee80211_ap_ioctl+0xaa>
  44:	8465      	ld.b      	r3, (r4, 0x5)
  46:	e4632001 	andi      	r3, r3, 1
  4a:	e9030030 	bez      	r3, 0xaa	// aa <ieee80211_ap_ioctl+0xaa>
  4e:	d8442065 	ld.w      	r2, (r4, 0x194)
  52:	5a62      	addi      	r3, r2, 1
  54:	d8242066 	ld.w      	r1, (r4, 0x198)
  58:	644d      	cmplt      	r3, r1
  5a:	5b05      	subu      	r0, r3, r1
  5c:	c4600c20 	incf      	r3, r0, 0
  60:	d8242064 	ld.w      	r1, (r4, 0x190)
  64:	644e      	cmpne      	r3, r1
  66:	0c07      	bf      	0x74	// 74 <ieee80211_ap_ioctl+0x74>
  68:	6090      	addu      	r2, r4
  6a:	3102      	movi      	r1, 2
  6c:	dc22019c 	st.b      	r1, (r2, 0x19c)
  70:	dc642065 	st.w      	r3, (r4, 0x194)
  74:	d804202a 	ld.w      	r0, (r4, 0xa8)
  78:	e0000000 	bsr      	0x0	// 0 <os_sema_up>
  7c:	d8442065 	ld.w      	r2, (r4, 0x194)
  80:	5a62      	addi      	r3, r2, 1
  82:	d8242066 	ld.w      	r1, (r4, 0x198)
  86:	644d      	cmplt      	r3, r1
  88:	5b05      	subu      	r0, r3, r1
  8a:	c4600c20 	incf      	r3, r0, 0
  8e:	d8242064 	ld.w      	r1, (r4, 0x190)
  92:	644e      	cmpne      	r3, r1
  94:	0c07      	bf      	0xa2	// a2 <ieee80211_ap_ioctl+0xa2>
  96:	6090      	addu      	r2, r4
  98:	3101      	movi      	r1, 1
  9a:	dc22019c 	st.b      	r1, (r2, 0x19c)
  9e:	dc642065 	st.w      	r3, (r4, 0x194)
  a2:	d804202a 	ld.w      	r0, (r4, 0xa8)
  a6:	e0000000 	bsr      	0x0	// 0 <os_sema_up>
  aa:	6c17      	mov      	r0, r5
  ac:	1404      	addi      	r14, r14, 16
  ae:	1498      	pop      	r4-r11, r15
  b0:	e4c00112 	addi      	r6, r0, 275
  b4:	e9020012 	bez      	r2, 0xd8	// d8 <ieee80211_ap_ioctl+0xd8>
  b8:	3220      	movi      	r2, 32
  ba:	6c5f      	mov      	r1, r7
  bc:	6c1b      	mov      	r0, r6
  be:	e0000000 	bsr      	0x0	// 0 <strncmp>
  c2:	6d43      	mov      	r5, r0
  c4:	e9000136 	bez      	r0, 0x330	// 330 <ieee80211_ap_ioctl+0x330>
  c8:	3220      	movi      	r2, 32
  ca:	6c5f      	mov      	r1, r7
  cc:	6c1b      	mov      	r0, r6
  ce:	e0000000 	bsr      	0x0	// 0 <strncpy>
  d2:	3601      	movi      	r6, 1
  d4:	3500      	movi      	r5, 0
  d6:	07a9      	br      	0x28	// 28 <ieee80211_ap_ioctl+0x28>
  d8:	3221      	movi      	r2, 33
  da:	6c5f      	mov      	r1, r7
  dc:	6c1b      	mov      	r0, r6
  de:	e0000000 	bsr      	0x0	// 0 <memset>
  e2:	07f8      	br      	0xd2	// d2 <ieee80211_ap_ioctl+0xd2>
  e4:	d860203f 	ld.w      	r3, (r0, 0xfc)
  e8:	64ca      	cmpne      	r2, r3
  ea:	0c37      	bf      	0x158	// 158 <ieee80211_ap_ioctl+0x158>
  ec:	3a44      	cmpnei      	r2, 4
  ee:	3500      	movi      	r5, 0
  f0:	0077      	lrw      	r3, 0x0	// 490 <ieee80211_ap_ioctl+0x490>
  f2:	c4650c20 	incf      	r3, r5, 0
  f6:	dc44203f 	st.w      	r2, (r4, 0xfc)
  fa:	b06e      	st.w      	r3, (r0, 0x38)
  fc:	6ccb      	mov      	r3, r2
  fe:	0039      	lrw      	r1, 0x0	// 494 <ieee80211_ap_ioctl+0x494>
 100:	328d      	movi      	r2, 141
 102:	0019      	lrw      	r0, 0x0	// 498 <ieee80211_ap_ioctl+0x498>
 104:	e0000000 	bsr      	0x0	// 0 <hgprintf>
 108:	3601      	movi      	r6, 1
 10a:	078f      	br      	0x28	// 28 <ieee80211_ap_ioctl+0x28>
 10c:	e4c00133 	addi      	r6, r0, 308
 110:	e9020016 	bez      	r2, 0x13c	// 13c <ieee80211_ap_ioctl+0x13c>
 114:	3220      	movi      	r2, 32
 116:	6c5f      	mov      	r1, r7
 118:	6c1b      	mov      	r0, r6
 11a:	e0000000 	bsr      	0x0	// 0 <memcmp>
 11e:	6d43      	mov      	r5, r0
 120:	e9000108 	bez      	r0, 0x330	// 330 <ieee80211_ap_ioctl+0x330>
 124:	6c1b      	mov      	r0, r6
 126:	3220      	movi      	r2, 32
 128:	6c5f      	mov      	r1, r7
 12a:	e0000000 	bsr      	0x0	// 0 <memcpy>
 12e:	d864203f 	ld.w      	r3, (r4, 0xfc)
 132:	3b44      	cmpnei      	r3, 4
 134:	c4000506 	mvc      	r6
 138:	759a      	sextb      	r6, r6
 13a:	07cd      	br      	0xd4	// d4 <ieee80211_ap_ioctl+0xd4>
 13c:	3120      	movi      	r1, 32
 13e:	6c1b      	mov      	r0, r6
 140:	e0000000 	bsr      	0x0	// 0 <os_random_bytes>
 144:	07c7      	br      	0xd2	// d2 <ieee80211_ap_ioctl+0xd2>
 146:	7448      	zextb      	r1, r2
 148:	e0000000 	bsr      	0x0	// 0 <ieee80211_set_channel>
 14c:	8473      	ld.b      	r3, (r4, 0x13)
 14e:	32a5      	movi      	r2, 165
 150:	012e      	lrw      	r1, 0x0	// 494 <ieee80211_ap_ioctl+0x494>
 152:	010c      	lrw      	r0, 0x0	// 49c <ieee80211_ap_ioctl+0x49c>
 154:	e0000000 	bsr      	0x0	// 0 <hgprintf>
 158:	3600      	movi      	r6, 0
 15a:	6d5b      	mov      	r5, r6
 15c:	0766      	br      	0x28	// 28 <ieee80211_ap_ioctl+0x28>
 15e:	e902020b 	bez      	r2, 0x574	// 574 <ieee80211_ap_ioctl+0x574>
 162:	74c9      	zexth      	r3, r2
 164:	d84010aa 	ld.h      	r2, (r0, 0x154)
 168:	64ca      	cmpne      	r2, r3
 16a:	0ff7      	bf      	0x158	// 158 <ieee80211_ap_ioctl+0x158>
 16c:	d8402065 	ld.w      	r2, (r0, 0x194)
 170:	d8202066 	ld.w      	r1, (r0, 0x198)
 174:	dc6010aa 	st.h      	r3, (r0, 0x154)
 178:	5a62      	addi      	r3, r2, 1
 17a:	644d      	cmplt      	r3, r1
 17c:	5b05      	subu      	r0, r3, r1
 17e:	c4600c20 	incf      	r3, r0, 0
 182:	d8242064 	ld.w      	r1, (r4, 0x190)
 186:	644e      	cmpne      	r3, r1
 188:	0c07      	bf      	0x196	// 196 <ieee80211_ap_ioctl+0x196>
 18a:	6090      	addu      	r2, r4
 18c:	310e      	movi      	r1, 14
 18e:	dc22019c 	st.b      	r1, (r2, 0x19c)
 192:	dc642065 	st.w      	r3, (r4, 0x194)
 196:	d804202a 	ld.w      	r0, (r4, 0xa8)
 19a:	e0000000 	bsr      	0x0	// 0 <os_sema_up>
 19e:	07dd      	br      	0x158	// 158 <ieee80211_ap_ioctl+0x158>
 1a0:	3a40      	cmpnei      	r2, 0
 1a2:	3301      	movi      	r3, 1
 1a4:	c4620c40 	inct      	r3, r2, 0
 1a8:	dc6010ab 	st.h      	r3, (r0, 0x156)
 1ac:	07d6      	br      	0x158	// 158 <ieee80211_ap_ioctl+0x158>
 1ae:	58d6      	addi      	r6, r0, 6
 1b0:	3206      	movi      	r2, 6
 1b2:	6c5f      	mov      	r1, r7
 1b4:	6c1b      	mov      	r0, r6
 1b6:	e0000000 	bsr      	0x0	// 0 <memcmp>
 1ba:	6d43      	mov      	r5, r0
 1bc:	e90000ba 	bez      	r0, 0x330	// 330 <ieee80211_ap_ioctl+0x330>
 1c0:	6c5f      	mov      	r1, r7
 1c2:	3206      	movi      	r2, 6
 1c4:	6c1b      	mov      	r0, r6
 1c6:	e0000000 	bsr      	0x0	// 0 <memcpy>
 1ca:	8444      	ld.b      	r2, (r4, 0x4)
 1cc:	6cdb      	mov      	r3, r6
 1ce:	2a00      	subi      	r2, 1
 1d0:	313d      	movi      	r1, 61
 1d2:	d8042029 	ld.w      	r0, (r4, 0xa4)
 1d6:	e0000000 	bsr      	0x0	// 0 <lmac_ioctl>
 1da:	6c5b      	mov      	r1, r6
 1dc:	940d      	ld.w      	r0, (r4, 0x34)
 1de:	e0000000 	bsr      	0x0	// 0 <wpa_auth_set_own_addr>
 1e2:	6cdb      	mov      	r3, r6
 1e4:	8444      	ld.b      	r2, (r4, 0x4)
 1e6:	3117      	movi      	r1, 23
 1e8:	6c13      	mov      	r0, r4
 1ea:	e0000000 	bsr      	0x0	// 0 <ieee80211_event_notify>
 1ee:	0772      	br      	0xd2	// d2 <ieee80211_ap_ioctl+0xd2>
 1f0:	e90201c2 	bez      	r2, 0x574	// 574 <ieee80211_ap_ioctl+0x574>
 1f4:	dc4410ac 	st.h      	r2, (r4, 0x158)
 1f8:	3300      	movi      	r3, 0
 1fa:	7489      	zexth      	r2, r2
 1fc:	3107      	movi      	r1, 7
 1fe:	d8002029 	ld.w      	r0, (r0, 0xa4)
 202:	e0000000 	bsr      	0x0	// 0 <lmac_ioctl>
 206:	07a9      	br      	0x158	// 158 <ieee80211_ap_ioctl+0x158>
 208:	d9422001 	ld.w      	r10, (r2, 0x4)
 20c:	9260      	ld.w      	r3, (r2, 0x0)
 20e:	e90a000a 	bez      	r10, 0x222	// 222 <ieee80211_ap_ioctl+0x222>
 212:	d960202a 	ld.w      	r11, (r0, 0xa8)
 216:	3500      	movi      	r5, 0
 218:	d9ab1026 	ld.h      	r13, (r11, 0x4c)
 21c:	6d97      	mov      	r6, r5
 21e:	6759      	cmplt      	r6, r13
 220:	0808      	bt      	0x230	// 230 <ieee80211_ap_ioctl+0x230>
 222:	74cd      	zexth      	r3, r3
 224:	e9230019 	bnez      	r3, 0x256	// 256 <ieee80211_ap_ioctl+0x256>
 228:	6d8f      	mov      	r6, r3
 22a:	3500      	movi      	r5, 0
 22c:	2d00      	subi      	r5, 1
 22e:	06fd      	br      	0x28	// 28 <ieee80211_ap_ioctl+0x28>
 230:	d80b2022 	ld.w      	r0, (r11, 0x88)
 234:	6014      	addu      	r0, r5
 236:	3206      	movi      	r2, 6
 238:	6c6b      	mov      	r1, r10
 23a:	201b      	addi      	r0, 28
 23c:	ddae2001 	st.w      	r13, (r14, 0x4)
 240:	b860      	st.w      	r3, (r14, 0x0)
 242:	e0000000 	bsr      	0x0	// 0 <memcmp>
 246:	25cb      	addi      	r5, 204
 248:	2600      	addi      	r6, 1
 24a:	9860      	ld.w      	r3, (r14, 0x0)
 24c:	d9ae2001 	ld.w      	r13, (r14, 0x4)
 250:	e920ffe7 	bnez      	r0, 0x21e	// 21e <ieee80211_ap_ioctl+0x21e>
 254:	74d9      	zexth      	r3, r6
 256:	d844202a 	ld.w      	r2, (r4, 0xa8)
 25a:	d8221026 	ld.h      	r1, (r2, 0x4c)
 25e:	64c4      	cmphs      	r1, r3
 260:	0d8d      	bf      	0x57a	// 57a <ieee80211_ap_ioctl+0x57a>
 262:	35cc      	movi      	r5, 204
 264:	7d4c      	mult      	r5, r3
 266:	2dcb      	subi      	r5, 204
 268:	d8422022 	ld.w      	r2, (r2, 0x88)
 26c:	6094      	addu      	r2, r5
 26e:	d8220025 	ld.b      	r1, (r2, 0x25)
 272:	e4c12008 	andi      	r6, r1, 8
 276:	e906ffda 	bez      	r6, 0x22a	// 22a <ieee80211_ap_ioctl+0x22a>
 27a:	d802202a 	ld.w      	r0, (r2, 0xa8)
 27e:	6412      	cmpne      	r4, r0
 280:	097d      	bt      	0x57a	// 57a <ieee80211_ap_ioctl+0x57a>
 282:	dc681000 	st.h      	r3, (r8, 0x0)
 286:	c4615461 	zext      	r1, r1, 3, 3
 28a:	d868000b 	ld.b      	r3, (r8, 0xb)
 28e:	c4615c01 	ins      	r3, r1, 1, 1
 292:	d8220025 	ld.b      	r1, (r2, 0x25)
 296:	c4615c00 	ins      	r3, r1, 0, 0
 29a:	c4815481 	zext      	r1, r1, 4, 4
 29e:	c4615c02 	ins      	r3, r1, 2, 2
 2a2:	dc68000b 	st.b      	r3, (r8, 0xb)
 2a6:	826e      	ld.b      	r3, (r2, 0xe)
 2a8:	dc68000a 	st.b      	r3, (r8, 0xa)
 2ac:	d8620022 	ld.b      	r3, (r2, 0x22)
 2b0:	dc680008 	st.b      	r3, (r8, 0x8)
 2b4:	d8620023 	ld.b      	r3, (r2, 0x23)
 2b8:	dc680009 	st.b      	r3, (r8, 0x9)
 2bc:	d8022026 	ld.w      	r0, (r2, 0x98)
 2c0:	d8222027 	ld.w      	r1, (r2, 0x9c)
 2c4:	dc082005 	st.w      	r0, (r8, 0x14)
 2c8:	dc282006 	st.w      	r1, (r8, 0x18)
 2cc:	d8022028 	ld.w      	r0, (r2, 0xa0)
 2d0:	d8222029 	ld.w      	r1, (r2, 0xa4)
 2d4:	dc082007 	st.w      	r0, (r8, 0x1c)
 2d8:	dc282008 	st.w      	r1, (r8, 0x20)
 2dc:	d8624024 	ld.bs      	r3, (r2, 0x24)
 2e0:	dc682004 	st.w      	r3, (r8, 0x10)
 2e4:	221b      	addi      	r2, 28
 2e6:	3300      	movi      	r3, 0
 2e8:	ea212000 	movih      	r1, 8192
 2ec:	211f      	addi      	r1, 32
 2ee:	d8042029 	ld.w      	r0, (r4, 0xa4)
 2f2:	e0000000 	bsr      	0x0	// 0 <lmac_ioctl>
 2f6:	d864202a 	ld.w      	r3, (r4, 0xa8)
 2fa:	dc082003 	st.w      	r0, (r8, 0xc)
 2fe:	d8232022 	ld.w      	r1, (r3, 0x88)
 302:	6054      	addu      	r1, r5
 304:	3206      	movi      	r2, 6
 306:	211b      	addi      	r1, 28
 308:	e4080001 	addi      	r0, r8, 2
 30c:	e0000000 	bsr      	0x0	// 0 <memcpy>
 310:	0724      	br      	0x158	// 158 <ieee80211_ap_ioctl+0x158>
 312:	ea0a0000 	movi      	r10, 0
 316:	6d6b      	mov      	r5, r10
 318:	6eeb      	mov      	r11, r10
 31a:	ea0c0024 	movi      	r12, 36
 31e:	6f6b      	mov      	r13, r10
 320:	d864202a 	ld.w      	r3, (r4, 0xa8)
 324:	d8431026 	ld.h      	r2, (r3, 0x4c)
 328:	64ad      	cmplt      	r11, r2
 32a:	0c03      	bf      	0x330	// 330 <ieee80211_ap_ioctl+0x330>
 32c:	6614      	cmphs      	r5, r8
 32e:	0c03      	bf      	0x334	// 334 <ieee80211_ap_ioctl+0x334>
 330:	3600      	movi      	r6, 0
 332:	067b      	br      	0x28	// 28 <ieee80211_ap_ioctl+0x28>
 334:	d8432022 	ld.w      	r2, (r3, 0x88)
 338:	60a8      	addu      	r2, r10
 33a:	d8220025 	ld.b      	r1, (r2, 0x25)
 33e:	e4612008 	andi      	r3, r1, 8
 342:	e903004d 	bez      	r3, 0x3dc	// 3dc <ieee80211_ap_ioctl+0x3dc>
 346:	d862202a 	ld.w      	r3, (r2, 0xa8)
 34a:	64d2      	cmpne      	r4, r3
 34c:	0848      	bt      	0x3dc	// 3dc <ieee80211_ap_ioctl+0x3dc>
 34e:	c5858426 	mult      	r6, r5, r12
 352:	619c      	addu      	r6, r7
 354:	c4615461 	zext      	r1, r1, 3, 3
 358:	866b      	ld.b      	r3, (r6, 0xb)
 35a:	c4615c01 	ins      	r3, r1, 1, 1
 35e:	d8220025 	ld.b      	r1, (r2, 0x25)
 362:	c4615c00 	ins      	r3, r1, 0, 0
 366:	c4815481 	zext      	r1, r1, 4, 4
 36a:	c4615c02 	ins      	r3, r1, 2, 2
 36e:	dda61000 	st.h      	r13, (r6, 0x0)
 372:	a66b      	st.b      	r3, (r6, 0xb)
 374:	826e      	ld.b      	r3, (r2, 0xe)
 376:	a66a      	st.b      	r3, (r6, 0xa)
 378:	d8620022 	ld.b      	r3, (r2, 0x22)
 37c:	a668      	st.b      	r3, (r6, 0x8)
 37e:	d8620023 	ld.b      	r3, (r2, 0x23)
 382:	a669      	st.b      	r3, (r6, 0x9)
 384:	d8022026 	ld.w      	r0, (r2, 0x98)
 388:	d8222027 	ld.w      	r1, (r2, 0x9c)
 38c:	b605      	st.w      	r0, (r6, 0x14)
 38e:	b626      	st.w      	r1, (r6, 0x18)
 390:	d8022028 	ld.w      	r0, (r2, 0xa0)
 394:	d8222029 	ld.w      	r1, (r2, 0xa4)
 398:	b607      	st.w      	r0, (r6, 0x1c)
 39a:	b628      	st.w      	r1, (r6, 0x20)
 39c:	d8624024 	ld.bs      	r3, (r2, 0x24)
 3a0:	b664      	st.w      	r3, (r6, 0x10)
 3a2:	221b      	addi      	r2, 28
 3a4:	3300      	movi      	r3, 0
 3a6:	ea212000 	movih      	r1, 8192
 3aa:	211f      	addi      	r1, 32
 3ac:	d8042029 	ld.w      	r0, (r4, 0xa4)
 3b0:	dd8e2001 	st.w      	r12, (r14, 0x4)
 3b4:	ddae2000 	st.w      	r13, (r14, 0x0)
 3b8:	e0000000 	bsr      	0x0	// 0 <lmac_ioctl>
 3bc:	d864202a 	ld.w      	r3, (r4, 0xa8)
 3c0:	b603      	st.w      	r0, (r6, 0xc)
 3c2:	d8232022 	ld.w      	r1, (r3, 0x88)
 3c6:	6068      	addu      	r1, r10
 3c8:	3206      	movi      	r2, 6
 3ca:	211b      	addi      	r1, 28
 3cc:	5e06      	addi      	r0, r6, 2
 3ce:	e0000000 	bsr      	0x0	// 0 <memcpy>
 3d2:	2500      	addi      	r5, 1
 3d4:	d98e2001 	ld.w      	r12, (r14, 0x4)
 3d8:	d9ae2000 	ld.w      	r13, (r14, 0x0)
 3dc:	e56b0000 	addi      	r11, r11, 1
 3e0:	e54a00cb 	addi      	r10, r10, 204
 3e4:	079e      	br      	0x320	// 320 <ieee80211_ap_ioctl+0x320>
 3e6:	eb0200ef 	cmphsi      	r2, 240
 3ea:	0c24      	bf      	0x432	// 432 <ieee80211_ap_ioctl+0x432>
 3ec:	4265      	lsli      	r3, r2, 5
 3ee:	d8480006 	ld.b      	r2, (r8, 0x6)
 3f2:	e442200f 	andi      	r2, r2, 15
 3f6:	e4632060 	andi      	r3, r3, 96
 3fa:	6cc8      	or      	r3, r2
 3fc:	d8480007 	ld.b      	r2, (r8, 0x7)
 400:	3a40      	cmpnei      	r2, 0
 402:	3110      	movi      	r1, 16
 404:	c4410c40 	inct      	r2, r1, 0
 408:	6cc8      	or      	r3, r2
 40a:	dc6e0008 	st.b      	r3, (r14, 0x8)
 40e:	d8481002 	ld.h      	r2, (r8, 0x4)
 412:	d8680002 	ld.b      	r3, (r8, 0x2)
 416:	4244      	lsli      	r2, r2, 4
 418:	e463200f 	andi      	r3, r3, 15
 41c:	6cc8      	or      	r3, r2
 41e:	dc6e0009 	st.b      	r3, (r14, 0x9)
 422:	1902      	addi      	r1, r14, 8
 424:	d8681000 	ld.h      	r3, (r8, 0x0)
 428:	dc6e1005 	st.h      	r3, (r14, 0xa)
 42c:	e0000000 	bsr      	0x0	// 0 <ieee80211_setup_wmm_ac_param>
 430:	0694      	br      	0x158	// 158 <ieee80211_ap_ioctl+0x158>
 432:	8065      	ld.b      	r3, (r0, 0x5)
 434:	3201      	movi      	r2, 1
 436:	c4625c06 	ins      	r3, r2, 6, 6
 43a:	a065      	st.b      	r3, (r0, 0x5)
 43c:	d8680006 	ld.b      	r3, (r8, 0x6)
 440:	4745      	lsli      	r2, r7, 5
 442:	d8280007 	ld.b      	r1, (r8, 0x7)
 446:	e4422060 	andi      	r2, r2, 96
 44a:	e463200f 	andi      	r3, r3, 15
 44e:	6cc8      	or      	r3, r2
 450:	3940      	cmpnei      	r1, 0
 452:	3210      	movi      	r2, 16
 454:	c4220c40 	inct      	r1, r2, 0
 458:	4742      	lsli      	r2, r7, 2
 45a:	6080      	addu      	r2, r0
 45c:	6cc4      	or      	r3, r1
 45e:	dc62015c 	st.b      	r3, (r2, 0x15c)
 462:	d8281002 	ld.h      	r1, (r8, 0x4)
 466:	d8680002 	ld.b      	r3, (r8, 0x2)
 46a:	e463200f 	andi      	r3, r3, 15
 46e:	4124      	lsli      	r1, r1, 4
 470:	6cc4      	or      	r3, r1
 472:	dc62015d 	st.b      	r3, (r2, 0x15d)
 476:	d8681000 	ld.h      	r3, (r8, 0x0)
 47a:	dc6210af 	st.h      	r3, (r2, 0x15e)
 47e:	d8600112 	ld.b      	r3, (r0, 0x112)
 482:	2300      	addi      	r3, 1
 484:	e463200f 	andi      	r3, r3, 15
 488:	dc600112 	st.b      	r3, (r0, 0x112)
 48c:	0666      	br      	0x158	// 158 <ieee80211_ap_ioctl+0x158>
	...
 49e:	0000      	.short	0x0000
 4a0:	3a03      	cmphsi      	r2, 4
 4a2:	081c      	bt      	0x4da	// 4da <ieee80211_ap_ioctl+0x4da>
 4a4:	4262      	lsli      	r3, r2, 2
 4a6:	60c0      	addu      	r3, r0
 4a8:	3500      	movi      	r5, 0
 4aa:	d843015c 	ld.b      	r2, (r3, 0x15c)
 4ae:	e422200f 	andi      	r1, r2, 15
 4b2:	c4825482 	zext      	r2, r2, 4, 4
 4b6:	dc280006 	st.b      	r1, (r8, 0x6)
 4ba:	dc480007 	st.b      	r2, (r8, 0x7)
 4be:	d843015d 	ld.b      	r2, (r3, 0x15d)
 4c2:	e422200f 	andi      	r1, r2, 15
 4c6:	d86310af 	ld.h      	r3, (r3, 0x15e)
 4ca:	4a44      	lsri      	r2, r2, 4
 4cc:	dc281001 	st.h      	r1, (r8, 0x2)
 4d0:	dc481002 	st.h      	r2, (r8, 0x4)
 4d4:	dc681000 	st.h      	r3, (r8, 0x0)
 4d8:	072c      	br      	0x330	// 330 <ieee80211_ap_ioctl+0x330>
 4da:	8024      	ld.b      	r1, (r0, 0x4)
 4dc:	2900      	subi      	r1, 1
 4de:	4130      	lsli      	r1, r1, 16
 4e0:	2aef      	subi      	r2, 240
 4e2:	6c84      	or      	r2, r1
 4e4:	1b02      	addi      	r3, r14, 8
 4e6:	c7805021 	bmaski      	r1, 29
 4ea:	211f      	addi      	r1, 32
 4ec:	d8002029 	ld.w      	r0, (r0, 0xa4)
 4f0:	e0000000 	bsr      	0x0	// 0 <lmac_ioctl>
 4f4:	6d43      	mov      	r5, r0
 4f6:	e920ff1d 	bnez      	r0, 0x330	// 330 <ieee80211_ap_ioctl+0x330>
 4fa:	d86e000f 	ld.b      	r3, (r14, 0xf)
 4fe:	d80e1006 	ld.h      	r0, (r14, 0xc)
 502:	dc680007 	st.b      	r3, (r8, 0x7)
 506:	d86e000e 	ld.b      	r3, (r14, 0xe)
 50a:	dc680006 	st.b      	r3, (r8, 0x6)
 50e:	e9000013 	bez      	r0, 0x534	// 534 <ieee80211_ap_ioctl+0x534>
 512:	e0000000 	bsr      	0x0	// 0 <ieee80211_ap_ioctl>
 516:	dc081002 	st.h      	r0, (r8, 0x4)
 51a:	d80e1005 	ld.h      	r0, (r14, 0xa)
 51e:	e9000004 	bez      	r0, 0x526	// 526 <ieee80211_ap_ioctl+0x526>
 522:	e0000000 	bsr      	0x0	// 0 <ieee80211_ap_ioctl>
 526:	d86e1004 	ld.h      	r3, (r14, 0x8)
 52a:	dc081001 	st.h      	r0, (r8, 0x2)
 52e:	dc681000 	st.h      	r3, (r8, 0x0)
 532:	06ff      	br      	0x330	// 330 <ieee80211_ap_ioctl+0x330>
 534:	6c17      	mov      	r0, r5
 536:	07f0      	br      	0x516	// 516 <ieee80211_ap_ioctl+0x516>
 538:	d8602043 	ld.w      	r3, (r0, 0x10c)
 53c:	64ca      	cmpne      	r2, r3
 53e:	0e0d      	bf      	0x158	// 158 <ieee80211_ap_ioctl+0x158>
 540:	dc442043 	st.w      	r2, (r4, 0x10c)
 544:	d8402065 	ld.w      	r2, (r0, 0x194)
 548:	5a62      	addi      	r3, r2, 1
 54a:	d8202066 	ld.w      	r1, (r0, 0x198)
 54e:	644d      	cmplt      	r3, r1
 550:	5b05      	subu      	r0, r3, r1
 552:	c4600c20 	incf      	r3, r0, 0
 556:	d8242064 	ld.w      	r1, (r4, 0x190)
 55a:	644e      	cmpne      	r3, r1
 55c:	0e1d      	bf      	0x196	// 196 <ieee80211_ap_ioctl+0x196>
 55e:	6090      	addu      	r2, r4
 560:	310f      	movi      	r1, 15
 562:	0616      	br      	0x18e	// 18e <ieee80211_ap_ioctl+0x18e>
 564:	e0000000 	bsr      	0x0	// 0 <ieee80211_ap_disconnect_all>
 568:	e800fdf8 	br      	0x158	// 158 <ieee80211_ap_ioctl+0x158>
 56c:	e0000000 	bsr      	0x0	// 0 <ieee80211_ap_init_wpasm>
 570:	e800fdb1 	br      	0xd2	// d2 <ieee80211_ap_ioctl+0xd2>
 574:	6d9f      	mov      	r6, r7
 576:	e800fdaf 	br      	0xd4	// d4 <ieee80211_ap_ioctl+0xd4>
 57a:	3600      	movi      	r6, 0
 57c:	6d5b      	mov      	r5, r6
 57e:	0657      	br      	0x22c	// 22c <ieee80211_ap_ioctl+0x22c>
