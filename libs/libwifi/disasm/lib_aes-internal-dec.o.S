
libwifi/o/lib_aes-internal-dec.o:     file format elf32-csky-little


Disassembly of section .text.aes_decrypt_init:

00000000 <aes_decrypt_init>:
   0:	14d5      	push      	r4-r8, r15
   2:	6d43      	mov      	r5, r0
   4:	30f4      	movi      	r0, 244
   6:	6d87      	mov      	r6, r1
   8:	e0000000 	bsr      	0x0	// 0 <_os_malloc>
   c:	6d03      	mov      	r4, r0
   e:	e900001b 	bez      	r0, 0x44	// 44 <aes_decrypt_init+0x44>
  12:	4643      	lsli      	r2, r6, 3
  14:	6c57      	mov      	r1, r5
  16:	e0000000 	bsr      	0x0	// 0 <rijndaelKeySetupEnc>
  1a:	e980006c 	blz      	r0, 0xf2	// f2 <aes_decrypt_init+0xf2>
  1e:	4064      	lsli      	r3, r0, 4
  20:	6c93      	mov      	r2, r4
  22:	c440482d 	lsli      	r13, r0, 2
  26:	60d0      	addu      	r3, r4
  28:	3100      	movi      	r1, 0
  2a:	c42d008c 	subu      	r12, r13, r1
  2e:	6705      	cmplt      	r1, r12
  30:	080c      	bt      	0x48	// 48 <aes_decrypt_init+0x48>
  32:	6cd3      	mov      	r3, r4
  34:	3601      	movi      	r6, 1
  36:	ea8d0032 	lrw      	r13, 0x0	// fc <aes_decrypt_init+0xfc>
  3a:	11b2      	lrw      	r5, 0x0	// 100 <aes_decrypt_init+0x100>
  3c:	6419      	cmplt      	r6, r0
  3e:	0821      	bt      	0x80	// 80 <aes_decrypt_init+0x80>
  40:	dc04203c 	st.w      	r0, (r4, 0xf0)
  44:	6c13      	mov      	r0, r4
  46:	045a      	br      	0xfa	// fa <aes_decrypt_init+0xfa>
  48:	d9822000 	ld.w      	r12, (r2, 0x0)
  4c:	93a0      	ld.w      	r5, (r3, 0x0)
  4e:	b2a0      	st.w      	r5, (r2, 0x0)
  50:	dd832000 	st.w      	r12, (r3, 0x0)
  54:	d9822001 	ld.w      	r12, (r2, 0x4)
  58:	93a1      	ld.w      	r5, (r3, 0x4)
  5a:	b2a1      	st.w      	r5, (r2, 0x4)
  5c:	dd832001 	st.w      	r12, (r3, 0x4)
  60:	d9822002 	ld.w      	r12, (r2, 0x8)
  64:	93a2      	ld.w      	r5, (r3, 0x8)
  66:	b2a2      	st.w      	r5, (r2, 0x8)
  68:	dd832002 	st.w      	r12, (r3, 0x8)
  6c:	d9822003 	ld.w      	r12, (r2, 0xc)
  70:	93a3      	ld.w      	r5, (r3, 0xc)
  72:	b2a3      	st.w      	r5, (r2, 0xc)
  74:	2103      	addi      	r1, 4
  76:	dd832003 	st.w      	r12, (r3, 0xc)
  7a:	220f      	addi      	r2, 16
  7c:	2b0f      	subi      	r3, 16
  7e:	07d6      	br      	0x2a	// 2a <aes_decrypt_init+0x2a>
  80:	e4e3000f 	addi      	r7, r3, 16
  84:	6f1f      	mov      	r12, r7
  86:	e423001f 	addi      	r1, r3, 32
  8a:	d86c2000 	ld.w      	r3, (r12, 0x0)
  8e:	e44320ff 	andi      	r2, r3, 255
  92:	c7034848 	lsri      	r8, r3, 24
  96:	d0450882 	ldr.w      	r2, (r5, r2 << 2)
  9a:	c50255e2 	zext      	r2, r2, 15, 8
  9e:	d1050888 	ldr.w      	r8, (r5, r8 << 2)
  a2:	d04d0882 	ldr.w      	r2, (r13, r2 << 2)
  a6:	c50855e8 	zext      	r8, r8, 15, 8
  aa:	d10d0888 	ldr.w      	r8, (r13, r8 << 2)
  ae:	c5024902 	rotli      	r2, r2, 8
  b2:	6ca1      	xor      	r2, r8
  b4:	c60356e8 	zext      	r8, r3, 23, 16
  b8:	d1050888 	ldr.w      	r8, (r5, r8 << 2)
  bc:	c50355e3 	zext      	r3, r3, 15, 8
  c0:	c50855e8 	zext      	r8, r8, 15, 8
  c4:	d0650883 	ldr.w      	r3, (r5, r3 << 2)
  c8:	d10d0888 	ldr.w      	r8, (r13, r8 << 2)
  cc:	c50355e3 	zext      	r3, r3, 15, 8
  d0:	c7084908 	rotli      	r8, r8, 24
  d4:	d06d0883 	ldr.w      	r3, (r13, r3 << 2)
  d8:	6ca1      	xor      	r2, r8
  da:	c6034903 	rotli      	r3, r3, 16
  de:	6c8d      	xor      	r2, r3
  e0:	dc4c2000 	st.w      	r2, (r12, 0x0)
  e4:	e58c0003 	addi      	r12, r12, 4
  e8:	6706      	cmpne      	r1, r12
  ea:	0bd0      	bt      	0x8a	// 8a <aes_decrypt_init+0x8a>
  ec:	2600      	addi      	r6, 1
  ee:	6cdf      	mov      	r3, r7
  f0:	07a6      	br      	0x3c	// 3c <aes_decrypt_init+0x3c>
  f2:	6c13      	mov      	r0, r4
  f4:	e0000000 	bsr      	0x0	// 0 <_os_free>
  f8:	3000      	movi      	r0, 0
  fa:	1495      	pop      	r4-r8, r15
	...

Disassembly of section .text.aes_decrypt:

00000000 <aes_decrypt>:
   0:	14c8      	push      	r4-r11
   2:	8180      	ld.b      	r4, (r1, 0x0)
   4:	8161      	ld.b      	r3, (r1, 0x1)
   6:	4370      	lsli      	r3, r3, 16
   8:	4498      	lsli      	r4, r4, 24
   a:	6d0d      	xor      	r4, r3
   c:	8163      	ld.b      	r3, (r1, 0x3)
   e:	6d0d      	xor      	r4, r3
  10:	8162      	ld.b      	r3, (r1, 0x2)
  12:	4368      	lsli      	r3, r3, 8
  14:	6d0d      	xor      	r4, r3
  16:	9060      	ld.w      	r3, (r0, 0x0)
  18:	d9a10004 	ld.b      	r13, (r1, 0x4)
  1c:	6d0d      	xor      	r4, r3
  1e:	8165      	ld.b      	r3, (r1, 0x5)
  20:	4370      	lsli      	r3, r3, 16
  22:	c70d482d 	lsli      	r13, r13, 24
  26:	6f4d      	xor      	r13, r3
  28:	8167      	ld.b      	r3, (r1, 0x7)
  2a:	6f4d      	xor      	r13, r3
  2c:	8166      	ld.b      	r3, (r1, 0x6)
  2e:	4368      	lsli      	r3, r3, 8
  30:	6f4d      	xor      	r13, r3
  32:	9061      	ld.w      	r3, (r0, 0x4)
  34:	d9810008 	ld.b      	r12, (r1, 0x8)
  38:	6f4d      	xor      	r13, r3
  3a:	8169      	ld.b      	r3, (r1, 0x9)
  3c:	4370      	lsli      	r3, r3, 16
  3e:	c70c482c 	lsli      	r12, r12, 24
  42:	6f0d      	xor      	r12, r3
  44:	816b      	ld.b      	r3, (r1, 0xb)
  46:	6f0d      	xor      	r12, r3
  48:	816a      	ld.b      	r3, (r1, 0xa)
  4a:	4368      	lsli      	r3, r3, 8
  4c:	6f0d      	xor      	r12, r3
  4e:	9062      	ld.w      	r3, (r0, 0x8)
  50:	81ad      	ld.b      	r5, (r1, 0xd)
  52:	6f0d      	xor      	r12, r3
  54:	816c      	ld.b      	r3, (r1, 0xc)
  56:	45b0      	lsli      	r5, r5, 16
  58:	4378      	lsli      	r3, r3, 24
  5a:	6cd5      	xor      	r3, r5
  5c:	81af      	ld.b      	r5, (r1, 0xf)
  5e:	812e      	ld.b      	r1, (r1, 0xe)
  60:	6cd5      	xor      	r3, r5
  62:	4128      	lsli      	r1, r1, 8
  64:	d940203c 	ld.w      	r10, (r0, 0xf0)
  68:	6c4d      	xor      	r1, r3
  6a:	c42a488a 	asri      	r10, r10, 1
  6e:	9063      	ld.w      	r3, (r0, 0xc)
  70:	6c4d      	xor      	r1, r3
  72:	6e2b      	mov      	r8, r10
  74:	6e43      	mov      	r9, r0
  76:	017e      	lrw      	r3, 0x0	// 378 <aes_decrypt+0x378>
  78:	4cb8      	lsri      	r5, r4, 24
  7a:	d0a30887 	ldr.w      	r7, (r3, r5 << 2)
  7e:	d8a92004 	ld.w      	r5, (r9, 0x10)
  82:	6dd5      	xor      	r7, r5
  84:	e4ad20ff 	andi      	r5, r13, 255
  88:	d0a30885 	ldr.w      	r5, (r3, r5 << 2)
  8c:	c5054905 	rotli      	r5, r5, 8
  90:	6dd5      	xor      	r7, r5
  92:	c60156e5 	zext      	r5, r1, 23, 16
  96:	d0a30885 	ldr.w      	r5, (r3, r5 << 2)
  9a:	c7054905 	rotli      	r5, r5, 24
  9e:	6dd5      	xor      	r7, r5
  a0:	c50c55e5 	zext      	r5, r12, 15, 8
  a4:	d0a30885 	ldr.w      	r5, (r3, r5 << 2)
  a8:	c6054905 	rotli      	r5, r5, 16
  ac:	6dd5      	xor      	r7, r5
  ae:	c70d4845 	lsri      	r5, r13, 24
  b2:	d0a30886 	ldr.w      	r6, (r3, r5 << 2)
  b6:	d8a92005 	ld.w      	r5, (r9, 0x14)
  ba:	6d95      	xor      	r6, r5
  bc:	e4ac20ff 	andi      	r5, r12, 255
  c0:	d0a30885 	ldr.w      	r5, (r3, r5 << 2)
  c4:	c5054905 	rotli      	r5, r5, 8
  c8:	6d95      	xor      	r6, r5
  ca:	c60456e5 	zext      	r5, r4, 23, 16
  ce:	d0a30885 	ldr.w      	r5, (r3, r5 << 2)
  d2:	c7054905 	rotli      	r5, r5, 24
  d6:	6d95      	xor      	r6, r5
  d8:	c50155e5 	zext      	r5, r1, 15, 8
  dc:	d0a30885 	ldr.w      	r5, (r3, r5 << 2)
  e0:	c6054905 	rotli      	r5, r5, 16
  e4:	6d95      	xor      	r6, r5
  e6:	c70c4845 	lsri      	r5, r12, 24
  ea:	d0a3088b 	ldr.w      	r11, (r3, r5 << 2)
  ee:	d8a92006 	ld.w      	r5, (r9, 0x18)
  f2:	6ed5      	xor      	r11, r5
  f4:	e4a120ff 	andi      	r5, r1, 255
  f8:	d0a30885 	ldr.w      	r5, (r3, r5 << 2)
  fc:	c5054905 	rotli      	r5, r5, 8
 100:	6d6d      	xor      	r5, r11
 102:	c60d56eb 	zext      	r11, r13, 23, 16
 106:	d163088b 	ldr.w      	r11, (r3, r11 << 2)
 10a:	c70b490b 	rotli      	r11, r11, 24
 10e:	6d6d      	xor      	r5, r11
 110:	c50455eb 	zext      	r11, r4, 15, 8
 114:	d163088b 	ldr.w      	r11, (r3, r11 << 2)
 118:	c60b490b 	rotli      	r11, r11, 16
 11c:	4938      	lsri      	r1, r1, 24
 11e:	6d6d      	xor      	r5, r11
 120:	e48420ff 	andi      	r4, r4, 255
 124:	d023088b 	ldr.w      	r11, (r3, r1 << 2)
 128:	d8292007 	ld.w      	r1, (r9, 0x1c)
 12c:	6ec5      	xor      	r11, r1
 12e:	c60c56ec 	zext      	r12, r12, 23, 16
 132:	d0830881 	ldr.w      	r1, (r3, r4 << 2)
 136:	c5014901 	rotli      	r1, r1, 8
 13a:	d183088c 	ldr.w      	r12, (r3, r12 << 2)
 13e:	6c6d      	xor      	r1, r11
 140:	c50d55ed 	zext      	r13, r13, 15, 8
 144:	c70c490c 	rotli      	r12, r12, 24
 148:	6f05      	xor      	r12, r1
 14a:	d1a30881 	ldr.w      	r1, (r3, r13 << 2)
 14e:	c6014901 	rotli      	r1, r1, 16
 152:	e5081000 	subi      	r8, r8, 1
 156:	6c71      	xor      	r1, r12
 158:	e529001f 	addi      	r9, r9, 32
 15c:	c707484d 	lsri      	r13, r7, 24
 160:	e56620ff 	andi      	r11, r6, 255
 164:	e908006e 	bez      	r8, 0x240	// 240 <aes_decrypt+0x240>
 168:	d1a30884 	ldr.w      	r4, (r3, r13 << 2)
 16c:	d9892000 	ld.w      	r12, (r9, 0x0)
 170:	6d31      	xor      	r4, r12
 172:	d163088c 	ldr.w      	r12, (r3, r11 << 2)
 176:	c50c490c 	rotli      	r12, r12, 8
 17a:	6d31      	xor      	r4, r12
 17c:	c60156ec 	zext      	r12, r1, 23, 16
 180:	d183088c 	ldr.w      	r12, (r3, r12 << 2)
 184:	c70c490c 	rotli      	r12, r12, 24
 188:	6d31      	xor      	r4, r12
 18a:	c50555ec 	zext      	r12, r5, 15, 8
 18e:	d183088c 	ldr.w      	r12, (r3, r12 << 2)
 192:	c60c490c 	rotli      	r12, r12, 16
 196:	6d31      	xor      	r4, r12
 198:	c706484c 	lsri      	r12, r6, 24
 19c:	d183088d 	ldr.w      	r13, (r3, r12 << 2)
 1a0:	d9892001 	ld.w      	r12, (r9, 0x4)
 1a4:	6f71      	xor      	r13, r12
 1a6:	e58520ff 	andi      	r12, r5, 255
 1aa:	d183088c 	ldr.w      	r12, (r3, r12 << 2)
 1ae:	c50c490c 	rotli      	r12, r12, 8
 1b2:	6f71      	xor      	r13, r12
 1b4:	c60756ec 	zext      	r12, r7, 23, 16
 1b8:	d183088c 	ldr.w      	r12, (r3, r12 << 2)
 1bc:	c70c490c 	rotli      	r12, r12, 24
 1c0:	6f71      	xor      	r13, r12
 1c2:	c50155ec 	zext      	r12, r1, 15, 8
 1c6:	d183088c 	ldr.w      	r12, (r3, r12 << 2)
 1ca:	c60c490c 	rotli      	r12, r12, 16
 1ce:	6f71      	xor      	r13, r12
 1d0:	c705484c 	lsri      	r12, r5, 24
 1d4:	d183088b 	ldr.w      	r11, (r3, r12 << 2)
 1d8:	d9892002 	ld.w      	r12, (r9, 0x8)
 1dc:	6ef1      	xor      	r11, r12
 1de:	e58120ff 	andi      	r12, r1, 255
 1e2:	d183088c 	ldr.w      	r12, (r3, r12 << 2)
 1e6:	c50c490c 	rotli      	r12, r12, 8
 1ea:	6f2d      	xor      	r12, r11
 1ec:	c60656eb 	zext      	r11, r6, 23, 16
 1f0:	d163088b 	ldr.w      	r11, (r3, r11 << 2)
 1f4:	c70b490b 	rotli      	r11, r11, 24
 1f8:	6f2d      	xor      	r12, r11
 1fa:	c50755eb 	zext      	r11, r7, 15, 8
 1fe:	d163088b 	ldr.w      	r11, (r3, r11 << 2)
 202:	c60b490b 	rotli      	r11, r11, 16
 206:	4938      	lsri      	r1, r1, 24
 208:	6f2d      	xor      	r12, r11
 20a:	e4e720ff 	andi      	r7, r7, 255
 20e:	d023088b 	ldr.w      	r11, (r3, r1 << 2)
 212:	d8292003 	ld.w      	r1, (r9, 0xc)
 216:	6ec5      	xor      	r11, r1
 218:	c60556e5 	zext      	r5, r5, 23, 16
 21c:	d0e30881 	ldr.w      	r1, (r3, r7 << 2)
 220:	c5014901 	rotli      	r1, r1, 8
 224:	d0a30885 	ldr.w      	r5, (r3, r5 << 2)
 228:	6c6d      	xor      	r1, r11
 22a:	c7054905 	rotli      	r5, r5, 24
 22e:	c50655e6 	zext      	r6, r6, 15, 8
 232:	6d45      	xor      	r5, r1
 234:	d0c30881 	ldr.w      	r1, (r3, r6 << 2)
 238:	c6014901 	rotli      	r1, r1, 16
 23c:	6c55      	xor      	r1, r5
 23e:	071d      	br      	0x78	// 78 <aes_decrypt+0x78>
 240:	c4aa482c 	lsli      	r12, r10, 5
 244:	126e      	lrw      	r3, 0x0	// 37c <aes_decrypt+0x37c>
 246:	6300      	addu      	r12, r0
 248:	d1a3002d 	ldr.b      	r13, (r3, r13 << 0)
 24c:	d88c2000 	ld.w      	r4, (r12, 0x0)
 250:	d1630020 	ldr.b      	r0, (r3, r11 << 0)
 254:	6c11      	xor      	r0, r4
 256:	c70d482d 	lsli      	r13, r13, 24
 25a:	6c35      	xor      	r0, r13
 25c:	c60156ed 	zext      	r13, r1, 23, 16
 260:	d1a3002d 	ldr.b      	r13, (r3, r13 << 0)
 264:	c60d482d 	lsli      	r13, r13, 16
 268:	6c35      	xor      	r0, r13
 26a:	c50555ed 	zext      	r13, r5, 15, 8
 26e:	d1a3002d 	ldr.b      	r13, (r3, r13 << 0)
 272:	c50d482d 	lsli      	r13, r13, 8
 276:	6c35      	xor      	r0, r13
 278:	c700484d 	lsri      	r13, r0, 24
 27c:	dda20000 	st.b      	r13, (r2, 0x0)
 280:	c600484d 	lsri      	r13, r0, 16
 284:	dda20001 	st.b      	r13, (r2, 0x1)
 288:	c500484d 	lsri      	r13, r0, 8
 28c:	a203      	st.b      	r0, (r2, 0x3)
 28e:	dda20002 	st.b      	r13, (r2, 0x2)
 292:	e40520ff 	andi      	r0, r5, 255
 296:	d9ac2001 	ld.w      	r13, (r12, 0x4)
 29a:	d0030020 	ldr.b      	r0, (r3, r0 << 0)
 29e:	6c35      	xor      	r0, r13
 2a0:	c706484d 	lsri      	r13, r6, 24
 2a4:	d1a3002d 	ldr.b      	r13, (r3, r13 << 0)
 2a8:	c70d482d 	lsli      	r13, r13, 24
 2ac:	6c35      	xor      	r0, r13
 2ae:	c60756ed 	zext      	r13, r7, 23, 16
 2b2:	d1a3002d 	ldr.b      	r13, (r3, r13 << 0)
 2b6:	c60d482d 	lsli      	r13, r13, 16
 2ba:	6c35      	xor      	r0, r13
 2bc:	c50155ed 	zext      	r13, r1, 15, 8
 2c0:	d1a3002d 	ldr.b      	r13, (r3, r13 << 0)
 2c4:	c50d482d 	lsli      	r13, r13, 8
 2c8:	6c35      	xor      	r0, r13
 2ca:	c700484d 	lsri      	r13, r0, 24
 2ce:	dda20004 	st.b      	r13, (r2, 0x4)
 2d2:	c600484d 	lsri      	r13, r0, 16
 2d6:	dda20005 	st.b      	r13, (r2, 0x5)
 2da:	c500484d 	lsri      	r13, r0, 8
 2de:	a207      	st.b      	r0, (r2, 0x7)
 2e0:	dda20006 	st.b      	r13, (r2, 0x6)
 2e4:	e40120ff 	andi      	r0, r1, 255
 2e8:	d9ac2002 	ld.w      	r13, (r12, 0x8)
 2ec:	d0030020 	ldr.b      	r0, (r3, r0 << 0)
 2f0:	6c35      	xor      	r0, r13
 2f2:	c705484d 	lsri      	r13, r5, 24
 2f6:	d1a3002d 	ldr.b      	r13, (r3, r13 << 0)
 2fa:	c70d482d 	lsli      	r13, r13, 24
 2fe:	6c35      	xor      	r0, r13
 300:	c60656ed 	zext      	r13, r6, 23, 16
 304:	d1a3002d 	ldr.b      	r13, (r3, r13 << 0)
 308:	c60d482d 	lsli      	r13, r13, 16
 30c:	6c35      	xor      	r0, r13
 30e:	c50755ed 	zext      	r13, r7, 15, 8
 312:	d1a3002d 	ldr.b      	r13, (r3, r13 << 0)
 316:	c50d482d 	lsli      	r13, r13, 8
 31a:	6c35      	xor      	r0, r13
 31c:	c700484d 	lsri      	r13, r0, 24
 320:	dda20008 	st.b      	r13, (r2, 0x8)
 324:	c600484d 	lsri      	r13, r0, 16
 328:	dda20009 	st.b      	r13, (r2, 0x9)
 32c:	c500484d 	lsri      	r13, r0, 8
 330:	a20b      	st.b      	r0, (r2, 0xb)
 332:	dda2000a 	st.b      	r13, (r2, 0xa)
 336:	e4e720ff 	andi      	r7, r7, 255
 33a:	4938      	lsri      	r1, r1, 24
 33c:	d0e30020 	ldr.b      	r0, (r3, r7 << 0)
 340:	d98c2003 	ld.w      	r12, (r12, 0xc)
 344:	d0230021 	ldr.b      	r1, (r3, r1 << 0)
 348:	6c31      	xor      	r0, r12
 34a:	c60556e5 	zext      	r5, r5, 23, 16
 34e:	4138      	lsli      	r1, r1, 24
 350:	6c41      	xor      	r1, r0
 352:	c50655e6 	zext      	r6, r6, 15, 8
 356:	d0a30020 	ldr.b      	r0, (r3, r5 << 0)
 35a:	4010      	lsli      	r0, r0, 16
 35c:	d0c30023 	ldr.b      	r3, (r3, r6 << 0)
 360:	6c41      	xor      	r1, r0
 362:	4368      	lsli      	r3, r3, 8
 364:	6cc5      	xor      	r3, r1
 366:	4b38      	lsri      	r1, r3, 24
 368:	a22c      	st.b      	r1, (r2, 0xc)
 36a:	4b30      	lsri      	r1, r3, 16
 36c:	a22d      	st.b      	r1, (r2, 0xd)
 36e:	6c23      	mov      	r0, r8
 370:	4b28      	lsri      	r1, r3, 8
 372:	a22e      	st.b      	r1, (r2, 0xe)
 374:	a26f      	st.b      	r3, (r2, 0xf)
 376:	1488      	pop      	r4-r11
	...

Disassembly of section .text.aes_decrypt_deinit:

00000000 <aes_decrypt_deinit>:
   0:	14d1      	push      	r4, r15
   2:	6d03      	mov      	r4, r0
   4:	32f4      	movi      	r2, 244
   6:	3100      	movi      	r1, 0
   8:	e0000000 	bsr      	0x0	// 0 <memset>
   c:	6c13      	mov      	r0, r4
   e:	e0000000 	bsr      	0x0	// 0 <_os_free>
  12:	1491      	pop      	r4, r15
