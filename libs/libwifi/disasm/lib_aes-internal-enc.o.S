
libwifi/o/lib_aes-internal-enc.o:     file format elf32-csky-little


Disassembly of section .text.aes_encrypt_init:

00000000 <aes_encrypt_init>:
   0:	14d3      	push      	r4-r6, r15
   2:	6d43      	mov      	r5, r0
   4:	30f4      	movi      	r0, 244
   6:	6d87      	mov      	r6, r1
   8:	e0000000 	bsr      	0x0	// 0 <_os_malloc>
   c:	6d03      	mov      	r4, r0
   e:	e900000f 	bez      	r0, 0x2c	// 2c <aes_encrypt_init+0x2c>
  12:	4643      	lsli      	r2, r6, 3
  14:	6c57      	mov      	r1, r5
  16:	e0000000 	bsr      	0x0	// 0 <rijndaelKeySetupEnc>
  1a:	e9a00007 	bhsz      	r0, 0x28	// 28 <aes_encrypt_init+0x28>
  1e:	6c13      	mov      	r0, r4
  20:	e0000000 	bsr      	0x0	// 0 <_os_free>
  24:	3000      	movi      	r0, 0
  26:	1493      	pop      	r4-r6, r15
  28:	dc04203c 	st.w      	r0, (r4, 0xf0)
  2c:	6c13      	mov      	r0, r4
  2e:	07fc      	br      	0x26	// 26 <aes_encrypt_init+0x26>

Disassembly of section .text.aes_encrypt:

00000000 <aes_encrypt>:
   0:	14c8      	push      	r4-r11
   2:	81a0      	ld.b      	r5, (r1, 0x0)
   4:	8161      	ld.b      	r3, (r1, 0x1)
   6:	4370      	lsli      	r3, r3, 16
   8:	45b8      	lsli      	r5, r5, 24
   a:	6d4d      	xor      	r5, r3
   c:	8163      	ld.b      	r3, (r1, 0x3)
   e:	6d4d      	xor      	r5, r3
  10:	8162      	ld.b      	r3, (r1, 0x2)
  12:	4368      	lsli      	r3, r3, 8
  14:	6d4d      	xor      	r5, r3
  16:	9060      	ld.w      	r3, (r0, 0x0)
  18:	8184      	ld.b      	r4, (r1, 0x4)
  1a:	6d4d      	xor      	r5, r3
  1c:	8165      	ld.b      	r3, (r1, 0x5)
  1e:	4370      	lsli      	r3, r3, 16
  20:	4498      	lsli      	r4, r4, 24
  22:	6d0d      	xor      	r4, r3
  24:	8167      	ld.b      	r3, (r1, 0x7)
  26:	6d0d      	xor      	r4, r3
  28:	8166      	ld.b      	r3, (r1, 0x6)
  2a:	4368      	lsli      	r3, r3, 8
  2c:	6d0d      	xor      	r4, r3
  2e:	9061      	ld.w      	r3, (r0, 0x4)
  30:	d9a10008 	ld.b      	r13, (r1, 0x8)
  34:	6d0d      	xor      	r4, r3
  36:	8169      	ld.b      	r3, (r1, 0x9)
  38:	4370      	lsli      	r3, r3, 16
  3a:	c70d482d 	lsli      	r13, r13, 24
  3e:	6f4d      	xor      	r13, r3
  40:	816b      	ld.b      	r3, (r1, 0xb)
  42:	6f4d      	xor      	r13, r3
  44:	816a      	ld.b      	r3, (r1, 0xa)
  46:	4368      	lsli      	r3, r3, 8
  48:	6f4d      	xor      	r13, r3
  4a:	9062      	ld.w      	r3, (r0, 0x8)
  4c:	d981000d 	ld.b      	r12, (r1, 0xd)
  50:	6f4d      	xor      	r13, r3
  52:	816c      	ld.b      	r3, (r1, 0xc)
  54:	c60c482c 	lsli      	r12, r12, 16
  58:	4378      	lsli      	r3, r3, 24
  5a:	6cf1      	xor      	r3, r12
  5c:	d981000f 	ld.b      	r12, (r1, 0xf)
  60:	812e      	ld.b      	r1, (r1, 0xe)
  62:	6cf1      	xor      	r3, r12
  64:	4128      	lsli      	r1, r1, 8
  66:	d980203c 	ld.w      	r12, (r0, 0xf0)
  6a:	6c4d      	xor      	r1, r3
  6c:	c42c488c 	asri      	r12, r12, 1
  70:	9063      	ld.w      	r3, (r0, 0xc)
  72:	6c4d      	xor      	r1, r3
  74:	6e33      	mov      	r8, r12
  76:	6ec3      	mov      	r11, r0
  78:	0178      	lrw      	r3, 0x0	// 394 <aes_encrypt+0x394>
  7a:	4dd8      	lsri      	r6, r5, 24
  7c:	d0c30889 	ldr.w      	r9, (r3, r6 << 2)
  80:	d8cb2004 	ld.w      	r6, (r11, 0x10)
  84:	6e59      	xor      	r9, r6
  86:	e4c120ff 	andi      	r6, r1, 255
  8a:	d0c30886 	ldr.w      	r6, (r3, r6 << 2)
  8e:	c5064906 	rotli      	r6, r6, 8
  92:	6e59      	xor      	r9, r6
  94:	c60456e6 	zext      	r6, r4, 23, 16
  98:	d0c30886 	ldr.w      	r6, (r3, r6 << 2)
  9c:	c7064906 	rotli      	r6, r6, 24
  a0:	6e59      	xor      	r9, r6
  a2:	c50d55e6 	zext      	r6, r13, 15, 8
  a6:	d0c30886 	ldr.w      	r6, (r3, r6 << 2)
  aa:	c6064906 	rotli      	r6, r6, 16
  ae:	6e59      	xor      	r9, r6
  b0:	4cd8      	lsri      	r6, r4, 24
  b2:	d0c30887 	ldr.w      	r7, (r3, r6 << 2)
  b6:	d8cb2005 	ld.w      	r6, (r11, 0x14)
  ba:	6dd9      	xor      	r7, r6
  bc:	e4c520ff 	andi      	r6, r5, 255
  c0:	d0c30886 	ldr.w      	r6, (r3, r6 << 2)
  c4:	c5064906 	rotli      	r6, r6, 8
  c8:	6dd9      	xor      	r7, r6
  ca:	c60d56e6 	zext      	r6, r13, 23, 16
  ce:	d0c30886 	ldr.w      	r6, (r3, r6 << 2)
  d2:	c7064906 	rotli      	r6, r6, 24
  d6:	6dd9      	xor      	r7, r6
  d8:	c50155e6 	zext      	r6, r1, 15, 8
  dc:	d0c30886 	ldr.w      	r6, (r3, r6 << 2)
  e0:	c6064906 	rotli      	r6, r6, 16
  e4:	6dd9      	xor      	r7, r6
  e6:	c70d4846 	lsri      	r6, r13, 24
  ea:	d0c3088a 	ldr.w      	r10, (r3, r6 << 2)
  ee:	d8cb2006 	ld.w      	r6, (r11, 0x18)
  f2:	6e99      	xor      	r10, r6
  f4:	e4c420ff 	andi      	r6, r4, 255
  f8:	d0c30886 	ldr.w      	r6, (r3, r6 << 2)
  fc:	c5064906 	rotli      	r6, r6, 8
 100:	6da9      	xor      	r6, r10
 102:	c60156ea 	zext      	r10, r1, 23, 16
 106:	d143088a 	ldr.w      	r10, (r3, r10 << 2)
 10a:	c70a490a 	rotli      	r10, r10, 24
 10e:	6da9      	xor      	r6, r10
 110:	c50555ea 	zext      	r10, r5, 15, 8
 114:	d143088a 	ldr.w      	r10, (r3, r10 << 2)
 118:	c60a490a 	rotli      	r10, r10, 16
 11c:	4938      	lsri      	r1, r1, 24
 11e:	6da9      	xor      	r6, r10
 120:	e5ad20ff 	andi      	r13, r13, 255
 124:	d023088a 	ldr.w      	r10, (r3, r1 << 2)
 128:	d82b2007 	ld.w      	r1, (r11, 0x1c)
 12c:	6c69      	xor      	r1, r10
 12e:	d1a3088a 	ldr.w      	r10, (r3, r13 << 2)
 132:	c60556e5 	zext      	r5, r5, 23, 16
 136:	c50a490a 	rotli      	r10, r10, 8
 13a:	6e85      	xor      	r10, r1
 13c:	d0a30881 	ldr.w      	r1, (r3, r5 << 2)
 140:	c7014901 	rotli      	r1, r1, 24
 144:	c50455e4 	zext      	r4, r4, 15, 8
 148:	6e85      	xor      	r10, r1
 14a:	d0830881 	ldr.w      	r1, (r3, r4 << 2)
 14e:	c6014901 	rotli      	r1, r1, 16
 152:	6e85      	xor      	r10, r1
 154:	e5081000 	subi      	r8, r8, 1
 158:	e56b001f 	addi      	r11, r11, 32
 15c:	c7094841 	lsri      	r1, r9, 24
 160:	e4aa20ff 	andi      	r5, r10, 255
 164:	e908006d 	bez      	r8, 0x23e	// 23e <aes_encrypt+0x23e>
 168:	d9ab2000 	ld.w      	r13, (r11, 0x0)
 16c:	d0230881 	ldr.w      	r1, (r3, r1 << 2)
 170:	d0a30885 	ldr.w      	r5, (r3, r5 << 2)
 174:	6c75      	xor      	r1, r13
 176:	c5054905 	rotli      	r5, r5, 8
 17a:	6d45      	xor      	r5, r1
 17c:	c60756e1 	zext      	r1, r7, 23, 16
 180:	d0230881 	ldr.w      	r1, (r3, r1 << 2)
 184:	c7014901 	rotli      	r1, r1, 24
 188:	6d45      	xor      	r5, r1
 18a:	c50655e1 	zext      	r1, r6, 15, 8
 18e:	d0230881 	ldr.w      	r1, (r3, r1 << 2)
 192:	c6014901 	rotli      	r1, r1, 16
 196:	6d45      	xor      	r5, r1
 198:	4f38      	lsri      	r1, r7, 24
 19a:	d0230884 	ldr.w      	r4, (r3, r1 << 2)
 19e:	d82b2001 	ld.w      	r1, (r11, 0x4)
 1a2:	6d05      	xor      	r4, r1
 1a4:	e42920ff 	andi      	r1, r9, 255
 1a8:	d0230881 	ldr.w      	r1, (r3, r1 << 2)
 1ac:	c5014901 	rotli      	r1, r1, 8
 1b0:	6d05      	xor      	r4, r1
 1b2:	c60656e1 	zext      	r1, r6, 23, 16
 1b6:	d0230881 	ldr.w      	r1, (r3, r1 << 2)
 1ba:	c7014901 	rotli      	r1, r1, 24
 1be:	6d05      	xor      	r4, r1
 1c0:	c50a55e1 	zext      	r1, r10, 15, 8
 1c4:	d0230881 	ldr.w      	r1, (r3, r1 << 2)
 1c8:	c6014901 	rotli      	r1, r1, 16
 1cc:	6d05      	xor      	r4, r1
 1ce:	4e38      	lsri      	r1, r6, 24
 1d0:	d023088d 	ldr.w      	r13, (r3, r1 << 2)
 1d4:	d82b2002 	ld.w      	r1, (r11, 0x8)
 1d8:	6f45      	xor      	r13, r1
 1da:	e42720ff 	andi      	r1, r7, 255
 1de:	d0230881 	ldr.w      	r1, (r3, r1 << 2)
 1e2:	c5014901 	rotli      	r1, r1, 8
 1e6:	6f45      	xor      	r13, r1
 1e8:	c60a56e1 	zext      	r1, r10, 23, 16
 1ec:	d0230881 	ldr.w      	r1, (r3, r1 << 2)
 1f0:	c7014901 	rotli      	r1, r1, 24
 1f4:	6f45      	xor      	r13, r1
 1f6:	c50955e1 	zext      	r1, r9, 15, 8
 1fa:	d0230881 	ldr.w      	r1, (r3, r1 << 2)
 1fe:	c6014901 	rotli      	r1, r1, 16
 202:	c70a484a 	lsri      	r10, r10, 24
 206:	6f45      	xor      	r13, r1
 208:	d143088a 	ldr.w      	r10, (r3, r10 << 2)
 20c:	d82b2003 	ld.w      	r1, (r11, 0xc)
 210:	6e85      	xor      	r10, r1
 212:	e42620ff 	andi      	r1, r6, 255
 216:	d0230886 	ldr.w      	r6, (r3, r1 << 2)
 21a:	c60956e1 	zext      	r1, r9, 23, 16
 21e:	c5064906 	rotli      	r6, r6, 8
 222:	d0230881 	ldr.w      	r1, (r3, r1 << 2)
 226:	c7014901 	rotli      	r1, r1, 24
 22a:	6da9      	xor      	r6, r10
 22c:	c50755e7 	zext      	r7, r7, 15, 8
 230:	6d85      	xor      	r6, r1
 232:	d0e30881 	ldr.w      	r1, (r3, r7 << 2)
 236:	c6014901 	rotli      	r1, r1, 16
 23a:	6c59      	xor      	r1, r6
 23c:	071f      	br      	0x7a	// 7a <aes_encrypt+0x7a>
 23e:	c4ac482c 	lsli      	r12, r12, 5
 242:	6030      	addu      	r0, r12
 244:	d0230881 	ldr.w      	r1, (r3, r1 << 2)
 248:	c60756ec 	zext      	r12, r7, 23, 16
 24c:	ea0d00ff 	movi      	r13, 255
 250:	c60d482d 	lsli      	r13, r13, 16
 254:	d183088c 	ldr.w      	r12, (r3, r12 << 2)
 258:	c60156e1 	zext      	r1, r1, 23, 16
 25c:	6b34      	and      	r12, r13
 25e:	4138      	lsli      	r1, r1, 24
 260:	6c70      	or      	r1, r12
 262:	34ff      	movi      	r4, 255
 264:	c50655ec 	zext      	r12, r6, 15, 8
 268:	4488      	lsli      	r4, r4, 8
 26a:	d183088c 	ldr.w      	r12, (r3, r12 << 2)
 26e:	d0a30885 	ldr.w      	r5, (r3, r5 << 2)
 272:	6b10      	and      	r12, r4
 274:	c50555e5 	zext      	r5, r5, 15, 8
 278:	6f14      	or      	r12, r5
 27a:	6c71      	xor      	r1, r12
 27c:	d9802000 	ld.w      	r12, (r0, 0x0)
 280:	6c71      	xor      	r1, r12
 282:	c701484c 	lsri      	r12, r1, 24
 286:	dd820000 	st.b      	r12, (r2, 0x0)
 28a:	c601484c 	lsri      	r12, r1, 16
 28e:	dd820001 	st.b      	r12, (r2, 0x1)
 292:	a223      	st.b      	r1, (r2, 0x3)
 294:	c501484c 	lsri      	r12, r1, 8
 298:	4f38      	lsri      	r1, r7, 24
 29a:	dd820002 	st.b      	r12, (r2, 0x2)
 29e:	d0230881 	ldr.w      	r1, (r3, r1 << 2)
 2a2:	c60656ec 	zext      	r12, r6, 23, 16
 2a6:	d183088c 	ldr.w      	r12, (r3, r12 << 2)
 2aa:	c60156e1 	zext      	r1, r1, 23, 16
 2ae:	6b34      	and      	r12, r13
 2b0:	4138      	lsli      	r1, r1, 24
 2b2:	6c70      	or      	r1, r12
 2b4:	c50a55ec 	zext      	r12, r10, 15, 8
 2b8:	d183088c 	ldr.w      	r12, (r3, r12 << 2)
 2bc:	c48c2025 	and      	r5, r12, r4
 2c0:	e58920ff 	andi      	r12, r9, 255
 2c4:	d183088c 	ldr.w      	r12, (r3, r12 << 2)
 2c8:	c50c55ec 	zext      	r12, r12, 15, 8
 2cc:	6f14      	or      	r12, r5
 2ce:	6c71      	xor      	r1, r12
 2d0:	d9802001 	ld.w      	r12, (r0, 0x4)
 2d4:	6c71      	xor      	r1, r12
 2d6:	c701484c 	lsri      	r12, r1, 24
 2da:	dd820004 	st.b      	r12, (r2, 0x4)
 2de:	c601484c 	lsri      	r12, r1, 16
 2e2:	dd820005 	st.b      	r12, (r2, 0x5)
 2e6:	a227      	st.b      	r1, (r2, 0x7)
 2e8:	c501484c 	lsri      	r12, r1, 8
 2ec:	4e38      	lsri      	r1, r6, 24
 2ee:	dd820006 	st.b      	r12, (r2, 0x6)
 2f2:	d0230881 	ldr.w      	r1, (r3, r1 << 2)
 2f6:	c60a56ec 	zext      	r12, r10, 23, 16
 2fa:	d183088c 	ldr.w      	r12, (r3, r12 << 2)
 2fe:	c60156e1 	zext      	r1, r1, 23, 16
 302:	6b34      	and      	r12, r13
 304:	4138      	lsli      	r1, r1, 24
 306:	6c70      	or      	r1, r12
 308:	c50955ec 	zext      	r12, r9, 15, 8
 30c:	d183088c 	ldr.w      	r12, (r3, r12 << 2)
 310:	c48c2025 	and      	r5, r12, r4
 314:	e58720ff 	andi      	r12, r7, 255
 318:	d183088c 	ldr.w      	r12, (r3, r12 << 2)
 31c:	c50c55ec 	zext      	r12, r12, 15, 8
 320:	6f14      	or      	r12, r5
 322:	6c71      	xor      	r1, r12
 324:	d9802002 	ld.w      	r12, (r0, 0x8)
 328:	6c71      	xor      	r1, r12
 32a:	c701484c 	lsri      	r12, r1, 24
 32e:	dd820008 	st.b      	r12, (r2, 0x8)
 332:	c601484c 	lsri      	r12, r1, 16
 336:	dd820009 	st.b      	r12, (r2, 0x9)
 33a:	c501484c 	lsri      	r12, r1, 8
 33e:	dd82000a 	st.b      	r12, (r2, 0xa)
 342:	c50755ec 	zext      	r12, r7, 15, 8
 346:	a22b      	st.b      	r1, (r2, 0xb)
 348:	d1830881 	ldr.w      	r1, (r3, r12 << 2)
 34c:	6904      	and      	r4, r1
 34e:	e42620ff 	andi      	r1, r6, 255
 352:	d0230881 	ldr.w      	r1, (r3, r1 << 2)
 356:	c50155e1 	zext      	r1, r1, 15, 8
 35a:	c70a484c 	lsri      	r12, r10, 24
 35e:	6d04      	or      	r4, r1
 360:	d183088c 	ldr.w      	r12, (r3, r12 << 2)
 364:	c60956e1 	zext      	r1, r9, 23, 16
 368:	d0230883 	ldr.w      	r3, (r3, r1 << 2)
 36c:	c60c56ec 	zext      	r12, r12, 23, 16
 370:	c70c482c 	lsli      	r12, r12, 24
 374:	6b4c      	and      	r13, r3
 376:	6f70      	or      	r13, r12
 378:	9023      	ld.w      	r1, (r0, 0xc)
 37a:	c5a42443 	xor      	r3, r4, r13
 37e:	6cc5      	xor      	r3, r1
 380:	4b38      	lsri      	r1, r3, 24
 382:	a22c      	st.b      	r1, (r2, 0xc)
 384:	4b30      	lsri      	r1, r3, 16
 386:	a22d      	st.b      	r1, (r2, 0xd)
 388:	6c23      	mov      	r0, r8
 38a:	4b28      	lsri      	r1, r3, 8
 38c:	a22e      	st.b      	r1, (r2, 0xe)
 38e:	a26f      	st.b      	r3, (r2, 0xf)
 390:	1488      	pop      	r4-r11
 392:	0000      	.short	0x0000
 394:	00000000 	.long	0x00000000

Disassembly of section .text.aes_encrypt_deinit:

00000000 <aes_encrypt_deinit>:
   0:	14d1      	push      	r4, r15
   2:	6d03      	mov      	r4, r0
   4:	32f4      	movi      	r2, 244
   6:	3100      	movi      	r1, 0
   8:	e0000000 	bsr      	0x0	// 0 <memset>
   c:	6c13      	mov      	r0, r4
   e:	e0000000 	bsr      	0x0	// 0 <_os_free>
  12:	1491      	pop      	r4, r15
