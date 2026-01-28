
libwifi/o/lib_md5-internal.o:     file format elf32-csky-little


Disassembly of section .text.MD5Transform:

00000000 <MD5Transform>:
   0:	14c8      	push      	r4-r11
   2:	142a      	subi      	r14, r14, 40
   4:	d9412000 	ld.w      	r10, (r1, 0x0)
   8:	ea8301a2 	lrw      	r3, 0xd76aa478	// 690 <MD5Transform+0x690>
   c:	60e8      	addu      	r3, r10
   e:	9040      	ld.w      	r2, (r0, 0x0)
  10:	d9802003 	ld.w      	r12, (r0, 0xc)
  14:	608c      	addu      	r2, r3
  16:	9062      	ld.w      	r3, (r0, 0x8)
  18:	6cf1      	xor      	r3, r12
  1a:	d9802001 	ld.w      	r12, (r0, 0x4)
  1e:	68f0      	and      	r3, r12
  20:	d9802003 	ld.w      	r12, (r0, 0xc)
  24:	6cf1      	xor      	r3, r12
  26:	60c8      	addu      	r3, r2
  28:	c4e34903 	rotli      	r3, r3, 7
  2c:	9041      	ld.w      	r2, (r0, 0x4)
  2e:	60c8      	addu      	r3, r2
  30:	ea8c0199 	lrw      	r12, 0xe8c7b756	// 694 <MD5Transform+0x694>
  34:	9141      	ld.w      	r2, (r1, 0x4)
  36:	c582002d 	addu      	r13, r2, r12
  3a:	b840      	st.w      	r2, (r14, 0x0)
  3c:	9043      	ld.w      	r2, (r0, 0xc)
  3e:	d9802001 	ld.w      	r12, (r0, 0x4)
  42:	60b4      	addu      	r2, r13
  44:	d9a02002 	ld.w      	r13, (r0, 0x8)
  48:	6f71      	xor      	r13, r12
  4a:	6b4c      	and      	r13, r3
  4c:	d9802002 	ld.w      	r12, (r0, 0x8)
  50:	6f71      	xor      	r13, r12
  52:	6348      	addu      	r13, r2
  54:	ea8c0191 	lrw      	r12, 0x242070db	// 698 <MD5Transform+0x698>
  58:	9142      	ld.w      	r2, (r1, 0x8)
  5a:	b841      	st.w      	r2, (r14, 0x4)
  5c:	6308      	addu      	r12, r2
  5e:	9042      	ld.w      	r2, (r0, 0x8)
  60:	60b0      	addu      	r2, r12
  62:	c58d490d 	rotli      	r13, r13, 12
  66:	d9802001 	ld.w      	r12, (r0, 0x4)
  6a:	634c      	addu      	r13, r3
  6c:	6f0d      	xor      	r12, r3
  6e:	9081      	ld.w      	r4, (r0, 0x4)
  70:	6b34      	and      	r12, r13
  72:	6f11      	xor      	r12, r4
  74:	6308      	addu      	r12, r2
  76:	ea84018a 	lrw      	r4, 0xc1bdceee	// 69c <MD5Transform+0x69c>
  7a:	9143      	ld.w      	r2, (r1, 0xc)
  7c:	b842      	st.w      	r2, (r14, 0x8)
  7e:	6108      	addu      	r4, r2
  80:	c62c490c 	rotli      	r12, r12, 17
  84:	9041      	ld.w      	r2, (r0, 0x4)
  86:	6334      	addu      	r12, r13
  88:	6108      	addu      	r4, r2
  8a:	c5a32442 	xor      	r2, r3, r13
  8e:	68b0      	and      	r2, r12
  90:	6c8d      	xor      	r2, r3
  92:	6090      	addu      	r2, r4
  94:	ea850183 	lrw      	r5, 0xf57c0faf	// 6a0 <MD5Transform+0x6a0>
  98:	9184      	ld.w      	r4, (r1, 0x10)
  9a:	b883      	st.w      	r4, (r14, 0xc)
  9c:	c6c24902 	rotli      	r2, r2, 22
  a0:	6114      	addu      	r4, r5
  a2:	60b0      	addu      	r2, r12
  a4:	60d0      	addu      	r3, r4
  a6:	c58d2444 	xor      	r4, r13, r12
  aa:	6908      	and      	r4, r2
  ac:	6d35      	xor      	r4, r13
  ae:	60d0      	addu      	r3, r4
  b0:	ea85017d 	lrw      	r5, 0x4787c62a	// 6a4 <MD5Transform+0x6a4>
  b4:	9185      	ld.w      	r4, (r1, 0x14)
  b6:	b884      	st.w      	r4, (r14, 0x10)
  b8:	c4e34903 	rotli      	r3, r3, 7
  bc:	6114      	addu      	r4, r5
  be:	60c8      	addu      	r3, r2
  c0:	6350      	addu      	r13, r4
  c2:	c44c2444 	xor      	r4, r12, r2
  c6:	690c      	and      	r4, r3
  c8:	6d31      	xor      	r4, r12
  ca:	6350      	addu      	r13, r4
  cc:	ea850177 	lrw      	r5, 0xa8304613	// 6a8 <MD5Transform+0x6a8>
  d0:	9186      	ld.w      	r4, (r1, 0x18)
  d2:	b885      	st.w      	r4, (r14, 0x14)
  d4:	c58d490d 	rotli      	r13, r13, 12
  d8:	6114      	addu      	r4, r5
  da:	634c      	addu      	r13, r3
  dc:	6310      	addu      	r12, r4
  de:	c4622444 	xor      	r4, r2, r3
  e2:	6934      	and      	r4, r13
  e4:	6d09      	xor      	r4, r2
  e6:	d9212007 	ld.w      	r9, (r1, 0x1c)
  ea:	6310      	addu      	r12, r4
  ec:	ea840170 	lrw      	r4, 0xfd469501	// 6ac <MD5Transform+0x6ac>
  f0:	6124      	addu      	r4, r9
  f2:	c62c490c 	rotli      	r12, r12, 17
  f6:	6334      	addu      	r12, r13
  f8:	6090      	addu      	r2, r4
  fa:	c5a32444 	xor      	r4, r3, r13
  fe:	6930      	and      	r4, r12
 100:	6d0d      	xor      	r4, r3
 102:	6090      	addu      	r2, r4
 104:	ea85016b 	lrw      	r5, 0x698098d8	// 6b0 <MD5Transform+0x6b0>
 108:	9188      	ld.w      	r4, (r1, 0x20)
 10a:	b886      	st.w      	r4, (r14, 0x18)
 10c:	c6c24902 	rotli      	r2, r2, 22
 110:	6114      	addu      	r4, r5
 112:	60b0      	addu      	r2, r12
 114:	60d0      	addu      	r3, r4
 116:	c58d2444 	xor      	r4, r13, r12
 11a:	6908      	and      	r4, r2
 11c:	6d35      	xor      	r4, r13
 11e:	60d0      	addu      	r3, r4
 120:	ea850165 	lrw      	r5, 0x8b44f7af	// 6b4 <MD5Transform+0x6b4>
 124:	9189      	ld.w      	r4, (r1, 0x24)
 126:	b887      	st.w      	r4, (r14, 0x1c)
 128:	c4e34903 	rotli      	r3, r3, 7
 12c:	6114      	addu      	r4, r5
 12e:	60c8      	addu      	r3, r2
 130:	6350      	addu      	r13, r4
 132:	c44c2444 	xor      	r4, r12, r2
 136:	690c      	and      	r4, r3
 138:	6d31      	xor      	r4, r12
 13a:	91ca      	ld.w      	r6, (r1, 0x28)
 13c:	6350      	addu      	r13, r4
 13e:	ea04a44e 	movi      	r4, 42062
 142:	6d12      	nor      	r4, r4
 144:	6118      	addu      	r4, r6
 146:	c58d490d 	rotli      	r13, r13, 12
 14a:	634c      	addu      	r13, r3
 14c:	6310      	addu      	r12, r4
 14e:	c4622444 	xor      	r4, r2, r3
 152:	6934      	and      	r4, r13
 154:	6d09      	xor      	r4, r2
 156:	6310      	addu      	r12, r4
 158:	ea850158 	lrw      	r5, 0x895cd7be	// 6b8 <MD5Transform+0x6b8>
 15c:	918b      	ld.w      	r4, (r1, 0x2c)
 15e:	b888      	st.w      	r4, (r14, 0x20)
 160:	c62c490c 	rotli      	r12, r12, 17
 164:	6114      	addu      	r4, r5
 166:	6334      	addu      	r12, r13
 168:	6090      	addu      	r2, r4
 16a:	c5a32444 	xor      	r4, r3, r13
 16e:	6930      	and      	r4, r12
 170:	6d0d      	xor      	r4, r3
 172:	91ec      	ld.w      	r7, (r1, 0x30)
 174:	6090      	addu      	r2, r4
 176:	ea840152 	lrw      	r4, 0x6b901122	// 6bc <MD5Transform+0x6bc>
 17a:	611c      	addu      	r4, r7
 17c:	c6c24902 	rotli      	r2, r2, 22
 180:	60b0      	addu      	r2, r12
 182:	60d0      	addu      	r3, r4
 184:	c58d2444 	xor      	r4, r13, r12
 188:	6908      	and      	r4, r2
 18a:	6d35      	xor      	r4, r13
 18c:	60d0      	addu      	r3, r4
 18e:	ea85014d 	lrw      	r5, 0xfd987193	// 6c0 <MD5Transform+0x6c0>
 192:	918d      	ld.w      	r4, (r1, 0x34)
 194:	6150      	addu      	r5, r4
 196:	c4e34903 	rotli      	r3, r3, 7
 19a:	60c8      	addu      	r3, r2
 19c:	6354      	addu      	r13, r5
 19e:	c44c2445 	xor      	r5, r12, r2
 1a2:	694c      	and      	r5, r3
 1a4:	6d71      	xor      	r5, r12
 1a6:	d901200e 	ld.w      	r8, (r1, 0x38)
 1aa:	b889      	st.w      	r4, (r14, 0x24)
 1ac:	6354      	addu      	r13, r5
 1ae:	ea840146 	lrw      	r4, 0xa679438e	// 6c4 <MD5Transform+0x6c4>
 1b2:	c4880025 	addu      	r5, r8, r4
 1b6:	c58d490d 	rotli      	r13, r13, 12
 1ba:	634c      	addu      	r13, r3
 1bc:	6314      	addu      	r12, r5
 1be:	c4622445 	xor      	r5, r2, r3
 1c2:	6974      	and      	r5, r13
 1c4:	6d49      	xor      	r5, r2
 1c6:	6314      	addu      	r12, r5
 1c8:	91af      	ld.w      	r5, (r1, 0x3c)
 1ca:	ea810140 	lrw      	r1, 0x49b40821	// 6c8 <MD5Transform+0x6c8>
 1ce:	6054      	addu      	r1, r5
 1d0:	c62c490c 	rotli      	r12, r12, 17
 1d4:	6334      	addu      	r12, r13
 1d6:	6084      	addu      	r2, r1
 1d8:	c5a32441 	xor      	r1, r3, r13
 1dc:	6870      	and      	r1, r12
 1de:	6c4d      	xor      	r1, r3
 1e0:	6084      	addu      	r2, r1
 1e2:	ea84013b 	lrw      	r4, 0xf61e2562	// 6cc <MD5Transform+0x6cc>
 1e6:	9820      	ld.w      	r1, (r14, 0x0)
 1e8:	c6c24902 	rotli      	r2, r2, 22
 1ec:	60b0      	addu      	r2, r12
 1ee:	6050      	addu      	r1, r4
 1f0:	60c4      	addu      	r3, r1
 1f2:	c44c2441 	xor      	r1, r12, r2
 1f6:	6874      	and      	r1, r13
 1f8:	6c71      	xor      	r1, r12
 1fa:	60c4      	addu      	r3, r1
 1fc:	ea840135 	lrw      	r4, 0xc040b340	// 6d0 <MD5Transform+0x6d0>
 200:	9825      	ld.w      	r1, (r14, 0x14)
 202:	c4a34903 	rotli      	r3, r3, 5
 206:	60c8      	addu      	r3, r2
 208:	6050      	addu      	r1, r4
 20a:	6344      	addu      	r13, r1
 20c:	c4622441 	xor      	r1, r2, r3
 210:	6870      	and      	r1, r12
 212:	6c49      	xor      	r1, r2
 214:	6074      	addu      	r1, r13
 216:	ea840130 	lrw      	r4, 0x265e5a51	// 6d4 <MD5Transform+0x6d4>
 21a:	d9ae2008 	ld.w      	r13, (r14, 0x20)
 21e:	c5214901 	rotli      	r1, r1, 9
 222:	604c      	addu      	r1, r3
 224:	6350      	addu      	r13, r4
 226:	6334      	addu      	r12, r13
 228:	c423244d 	xor      	r13, r3, r1
 22c:	6b48      	and      	r13, r2
 22e:	6f4d      	xor      	r13, r3
 230:	6334      	addu      	r12, r13
 232:	c5cc490c 	rotli      	r12, r12, 14
 236:	ea8d0129 	lrw      	r13, 0xe9b6c7aa	// 6d8 <MD5Transform+0x6d8>
 23a:	6304      	addu      	r12, r1
 23c:	6368      	addu      	r13, r10
 23e:	60b4      	addu      	r2, r13
 240:	c581244d 	xor      	r13, r1, r12
 244:	6b4c      	and      	r13, r3
 246:	6f45      	xor      	r13, r1
 248:	60b4      	addu      	r2, r13
 24a:	ea840125 	lrw      	r4, 0xd62f105d	// 6dc <MD5Transform+0x6dc>
 24e:	d9ae2004 	ld.w      	r13, (r14, 0x10)
 252:	c6824902 	rotli      	r2, r2, 20
 256:	60b0      	addu      	r2, r12
 258:	6350      	addu      	r13, r4
 25a:	60f4      	addu      	r3, r13
 25c:	c44c244d 	xor      	r13, r12, r2
 260:	6b44      	and      	r13, r1
 262:	6f71      	xor      	r13, r12
 264:	60f4      	addu      	r3, r13
 266:	c4a34903 	rotli      	r3, r3, 5
 26a:	ea8d011e 	lrw      	r13, 0x2441453	// 6e0 <MD5Transform+0x6e0>
 26e:	60c8      	addu      	r3, r2
 270:	6358      	addu      	r13, r6
 272:	6074      	addu      	r1, r13
 274:	c462244d 	xor      	r13, r2, r3
 278:	6b70      	and      	r13, r12
 27a:	6f49      	xor      	r13, r2
 27c:	6074      	addu      	r1, r13
 27e:	c5214901 	rotli      	r1, r1, 9
 282:	ea8d0119 	lrw      	r13, 0xd8a1e681	// 6e4 <MD5Transform+0x6e4>
 286:	604c      	addu      	r1, r3
 288:	6354      	addu      	r13, r5
 28a:	6334      	addu      	r12, r13
 28c:	c423244d 	xor      	r13, r3, r1
 290:	6b48      	and      	r13, r2
 292:	6f4d      	xor      	r13, r3
 294:	6334      	addu      	r12, r13
 296:	ea840115 	lrw      	r4, 0xe7d3fbc8	// 6e8 <MD5Transform+0x6e8>
 29a:	d9ae2003 	ld.w      	r13, (r14, 0xc)
 29e:	c5cc490c 	rotli      	r12, r12, 14
 2a2:	6304      	addu      	r12, r1
 2a4:	6350      	addu      	r13, r4
 2a6:	60b4      	addu      	r2, r13
 2a8:	c581244d 	xor      	r13, r1, r12
 2ac:	6b4c      	and      	r13, r3
 2ae:	6f45      	xor      	r13, r1
 2b0:	60b4      	addu      	r2, r13
 2b2:	ea84010f 	lrw      	r4, 0x21e1cde6	// 6ec <MD5Transform+0x6ec>
 2b6:	d9ae2007 	ld.w      	r13, (r14, 0x1c)
 2ba:	c6824902 	rotli      	r2, r2, 20
 2be:	60b0      	addu      	r2, r12
 2c0:	6350      	addu      	r13, r4
 2c2:	60f4      	addu      	r3, r13
 2c4:	c44c244d 	xor      	r13, r12, r2
 2c8:	6b44      	and      	r13, r1
 2ca:	6f71      	xor      	r13, r12
 2cc:	60f4      	addu      	r3, r13
 2ce:	c4a34903 	rotli      	r3, r3, 5
 2d2:	ea8d0108 	lrw      	r13, 0xc33707d6	// 6f0 <MD5Transform+0x6f0>
 2d6:	60c8      	addu      	r3, r2
 2d8:	6360      	addu      	r13, r8
 2da:	6074      	addu      	r1, r13
 2dc:	c462244d 	xor      	r13, r2, r3
 2e0:	6b70      	and      	r13, r12
 2e2:	6f49      	xor      	r13, r2
 2e4:	6074      	addu      	r1, r13
 2e6:	ea840104 	lrw      	r4, 0xf4d50d87	// 6f4 <MD5Transform+0x6f4>
 2ea:	d9ae2002 	ld.w      	r13, (r14, 0x8)
 2ee:	c5214901 	rotli      	r1, r1, 9
 2f2:	604c      	addu      	r1, r3
 2f4:	6350      	addu      	r13, r4
 2f6:	6334      	addu      	r12, r13
 2f8:	c423244d 	xor      	r13, r3, r1
 2fc:	6b48      	and      	r13, r2
 2fe:	6f4d      	xor      	r13, r3
 300:	6334      	addu      	r12, r13
 302:	0081      	lrw      	r4, 0x455a14ed	// 6f8 <MD5Transform+0x6f8>
 304:	d9ae2006 	ld.w      	r13, (r14, 0x18)
 308:	c5cc490c 	rotli      	r12, r12, 14
 30c:	6304      	addu      	r12, r1
 30e:	6350      	addu      	r13, r4
 310:	60b4      	addu      	r2, r13
 312:	c581244d 	xor      	r13, r1, r12
 316:	6b4c      	and      	r13, r3
 318:	6f45      	xor      	r13, r1
 31a:	60b4      	addu      	r2, r13
 31c:	9889      	ld.w      	r4, (r14, 0x24)
 31e:	c6824902 	rotli      	r2, r2, 20
 322:	ea8d00f7 	lrw      	r13, 0xa9e3e905	// 6fc <MD5Transform+0x6fc>
 326:	60b0      	addu      	r2, r12
 328:	6350      	addu      	r13, r4
 32a:	60f4      	addu      	r3, r13
 32c:	c44c244d 	xor      	r13, r12, r2
 330:	6b44      	and      	r13, r1
 332:	6f71      	xor      	r13, r12
 334:	60f4      	addu      	r3, r13
 336:	008c      	lrw      	r4, 0xfcefa3f8	// 700 <MD5Transform+0x700>
 338:	d9ae2001 	ld.w      	r13, (r14, 0x4)
 33c:	c4a34903 	rotli      	r3, r3, 5
 340:	60c8      	addu      	r3, r2
 342:	6350      	addu      	r13, r4
 344:	6074      	addu      	r1, r13
 346:	c462244d 	xor      	r13, r2, r3
 34a:	6b70      	and      	r13, r12
 34c:	6f49      	xor      	r13, r2
 34e:	6074      	addu      	r1, r13
 350:	c5214901 	rotli      	r1, r1, 9
 354:	ea8d00ec 	lrw      	r13, 0x676f02d9	// 704 <MD5Transform+0x704>
 358:	604c      	addu      	r1, r3
 35a:	6364      	addu      	r13, r9
 35c:	6334      	addu      	r12, r13
 35e:	c423244d 	xor      	r13, r3, r1
 362:	6b48      	and      	r13, r2
 364:	6f4d      	xor      	r13, r3
 366:	6370      	addu      	r13, r12
 368:	c5cd490d 	rotli      	r13, r13, 14
 36c:	6344      	addu      	r13, r1
 36e:	0098      	lrw      	r4, 0x8d2a4c8a	// 708 <MD5Transform+0x708>
 370:	c5a1244c 	xor      	r12, r1, r13
 374:	c487002b 	addu      	r11, r7, r4
 378:	60ac      	addu      	r2, r11
 37a:	c583202b 	and      	r11, r3, r12
 37e:	6ec5      	xor      	r11, r1
 380:	60ac      	addu      	r2, r11
 382:	9884      	ld.w      	r4, (r14, 0x10)
 384:	c6824902 	rotli      	r2, r2, 20
 388:	ea8b00e1 	lrw      	r11, 0xfffa3942	// 70c <MD5Transform+0x70c>
 38c:	60b4      	addu      	r2, r13
 38e:	62d0      	addu      	r11, r4
 390:	6f09      	xor      	r12, r2
 392:	60ec      	addu      	r3, r11
 394:	60f0      	addu      	r3, r12
 396:	0180      	lrw      	r4, 0x8771f681	// 710 <MD5Transform+0x710>
 398:	d98e2006 	ld.w      	r12, (r14, 0x18)
 39c:	6310      	addu      	r12, r4
 39e:	c4834903 	rotli      	r3, r3, 4
 3a2:	60c8      	addu      	r3, r2
 3a4:	6070      	addu      	r1, r12
 3a6:	c44d244c 	xor      	r12, r13, r2
 3aa:	6f0d      	xor      	r12, r3
 3ac:	6070      	addu      	r1, r12
 3ae:	0185      	lrw      	r4, 0x6d9d6122	// 714 <MD5Transform+0x714>
 3b0:	d98e2008 	ld.w      	r12, (r14, 0x20)
 3b4:	6310      	addu      	r12, r4
 3b6:	c5614901 	rotli      	r1, r1, 11
 3ba:	604c      	addu      	r1, r3
 3bc:	6370      	addu      	r13, r12
 3be:	c462244c 	xor      	r12, r2, r3
 3c2:	6f05      	xor      	r12, r1
 3c4:	6370      	addu      	r13, r12
 3c6:	ea8c00d5 	lrw      	r12, 0xfde5380c	// 718 <MD5Transform+0x718>
 3ca:	6320      	addu      	r12, r8
 3cc:	c60d490d 	rotli      	r13, r13, 16
 3d0:	6344      	addu      	r13, r1
 3d2:	60b0      	addu      	r2, r12
 3d4:	c423244c 	xor      	r12, r3, r1
 3d8:	6f35      	xor      	r12, r13
 3da:	60b0      	addu      	r2, r12
 3dc:	018f      	lrw      	r4, 0xa4beea44	// 71c <MD5Transform+0x71c>
 3de:	d98e2000 	ld.w      	r12, (r14, 0x0)
 3e2:	6310      	addu      	r12, r4
 3e4:	c6e24902 	rotli      	r2, r2, 23
 3e8:	60b4      	addu      	r2, r13
 3ea:	60f0      	addu      	r3, r12
 3ec:	c5a1244c 	xor      	r12, r1, r13
 3f0:	6f09      	xor      	r12, r2
 3f2:	60f0      	addu      	r3, r12
 3f4:	0194      	lrw      	r4, 0x4bdecfa9	// 720 <MD5Transform+0x720>
 3f6:	d98e2003 	ld.w      	r12, (r14, 0xc)
 3fa:	6310      	addu      	r12, r4
 3fc:	c4834903 	rotli      	r3, r3, 4
 400:	60c8      	addu      	r3, r2
 402:	6070      	addu      	r1, r12
 404:	c44d244c 	xor      	r12, r13, r2
 408:	6f0d      	xor      	r12, r3
 40a:	6070      	addu      	r1, r12
 40c:	ea8c00c6 	lrw      	r12, 0xf6bb4b60	// 724 <MD5Transform+0x724>
 410:	6324      	addu      	r12, r9
 412:	c5614901 	rotli      	r1, r1, 11
 416:	604c      	addu      	r1, r3
 418:	6370      	addu      	r13, r12
 41a:	c462244c 	xor      	r12, r2, r3
 41e:	6f05      	xor      	r12, r1
 420:	6334      	addu      	r12, r13
 422:	ea8d00c2 	lrw      	r13, 0xbebfbc70	// 728 <MD5Transform+0x728>
 426:	6358      	addu      	r13, r6
 428:	c60c490c 	rotli      	r12, r12, 16
 42c:	6304      	addu      	r12, r1
 42e:	60b4      	addu      	r2, r13
 430:	c423244d 	xor      	r13, r3, r1
 434:	6f71      	xor      	r13, r12
 436:	9889      	ld.w      	r4, (r14, 0x24)
 438:	60b4      	addu      	r2, r13
 43a:	ea8d00bd 	lrw      	r13, 0x289b7ec6	// 72c <MD5Transform+0x72c>
 43e:	6350      	addu      	r13, r4
 440:	c6e24902 	rotli      	r2, r2, 23
 444:	60b0      	addu      	r2, r12
 446:	60f4      	addu      	r3, r13
 448:	c581244d 	xor      	r13, r1, r12
 44c:	6f49      	xor      	r13, r2
 44e:	634c      	addu      	r13, r3
 450:	0267      	lrw      	r3, 0xeaa127fa	// 730 <MD5Transform+0x730>
 452:	60e8      	addu      	r3, r10
 454:	c48d490d 	rotli      	r13, r13, 4
 458:	6348      	addu      	r13, r2
 45a:	604c      	addu      	r1, r3
 45c:	c44c2443 	xor      	r3, r12, r2
 460:	6cf5      	xor      	r3, r13
 462:	604c      	addu      	r1, r3
 464:	028b      	lrw      	r4, 0xd4ef3085	// 734 <MD5Transform+0x734>
 466:	9862      	ld.w      	r3, (r14, 0x8)
 468:	60d0      	addu      	r3, r4
 46a:	c5614901 	rotli      	r1, r1, 11
 46e:	6074      	addu      	r1, r13
 470:	630c      	addu      	r12, r3
 472:	c5a22443 	xor      	r3, r2, r13
 476:	6cc5      	xor      	r3, r1
 478:	630c      	addu      	r12, r3
 47a:	028f      	lrw      	r4, 0x4881d05	// 738 <MD5Transform+0x738>
 47c:	9865      	ld.w      	r3, (r14, 0x14)
 47e:	60d0      	addu      	r3, r4
 480:	c60c490c 	rotli      	r12, r12, 16
 484:	6304      	addu      	r12, r1
 486:	608c      	addu      	r2, r3
 488:	c42d2443 	xor      	r3, r13, r1
 48c:	6cf1      	xor      	r3, r12
 48e:	60c8      	addu      	r3, r2
 490:	0294      	lrw      	r4, 0xd9d4d039	// 73c <MD5Transform+0x73c>
 492:	9847      	ld.w      	r2, (r14, 0x1c)
 494:	6090      	addu      	r2, r4
 496:	c6e34903 	rotli      	r3, r3, 23
 49a:	60f0      	addu      	r3, r12
 49c:	6348      	addu      	r13, r2
 49e:	c5812442 	xor      	r2, r1, r12
 4a2:	6c8d      	xor      	r2, r3
 4a4:	60b4      	addu      	r2, r13
 4a6:	ea8d00a7 	lrw      	r13, 0xe6db99e5	// 740 <MD5Transform+0x740>
 4aa:	635c      	addu      	r13, r7
 4ac:	c4824902 	rotli      	r2, r2, 4
 4b0:	608c      	addu      	r2, r3
 4b2:	6074      	addu      	r1, r13
 4b4:	c46c244d 	xor      	r13, r12, r3
 4b8:	6f49      	xor      	r13, r2
 4ba:	6074      	addu      	r1, r13
 4bc:	ea8d00a2 	lrw      	r13, 0x1fa27cf8	// 744 <MD5Transform+0x744>
 4c0:	6354      	addu      	r13, r5
 4c2:	c5614901 	rotli      	r1, r1, 11
 4c6:	6048      	addu      	r1, r2
 4c8:	6334      	addu      	r12, r13
 4ca:	c443244d 	xor      	r13, r3, r2
 4ce:	6f45      	xor      	r13, r1
 4d0:	6334      	addu      	r12, r13
 4d2:	0381      	lrw      	r4, 0xc4ac5665	// 748 <MD5Transform+0x748>
 4d4:	d9ae2001 	ld.w      	r13, (r14, 0x4)
 4d8:	6350      	addu      	r13, r4
 4da:	c60c490c 	rotli      	r12, r12, 16
 4de:	6304      	addu      	r12, r1
 4e0:	634c      	addu      	r13, r3
 4e2:	c4222443 	xor      	r3, r2, r1
 4e6:	6cf1      	xor      	r3, r12
 4e8:	60f4      	addu      	r3, r13
 4ea:	c6e34903 	rotli      	r3, r3, 23
 4ee:	ea8d0098 	lrw      	r13, 0xf4292244	// 74c <MD5Transform+0x74c>
 4f2:	60f0      	addu      	r3, r12
 4f4:	62b4      	addu      	r10, r13
 4f6:	c421248d 	nor      	r13, r1, r1
 4fa:	6f4c      	or      	r13, r3
 4fc:	6f71      	xor      	r13, r12
 4fe:	60a8      	addu      	r2, r10
 500:	60b4      	addu      	r2, r13
 502:	c4c24902 	rotli      	r2, r2, 6
 506:	ea8d0093 	lrw      	r13, 0x432aff97	// 750 <MD5Transform+0x750>
 50a:	608c      	addu      	r2, r3
 50c:	6274      	addu      	r9, r13
 50e:	c58c248d 	nor      	r13, r12, r12
 512:	6f48      	or      	r13, r2
 514:	6f4d      	xor      	r13, r3
 516:	6064      	addu      	r1, r9
 518:	6074      	addu      	r1, r13
 51a:	c5414901 	rotli      	r1, r1, 10
 51e:	ea8d008e 	lrw      	r13, 0xab9423a7	// 754 <MD5Transform+0x754>
 522:	6048      	addu      	r1, r2
 524:	6234      	addu      	r8, r13
 526:	c463248d 	nor      	r13, r3, r3
 52a:	6f44      	or      	r13, r1
 52c:	6f49      	xor      	r13, r2
 52e:	6320      	addu      	r12, r8
 530:	6334      	addu      	r12, r13
 532:	0395      	lrw      	r4, 0xfc93a039	// 758 <MD5Transform+0x758>
 534:	d9ae2004 	ld.w      	r13, (r14, 0x10)
 538:	c48d0028 	addu      	r8, r13, r4
 53c:	c5ec490c 	rotli      	r12, r12, 15
 540:	6304      	addu      	r12, r1
 542:	60e0      	addu      	r3, r8
 544:	c4422488 	nor      	r8, r2, r2
 548:	6e30      	or      	r8, r12
 54a:	6e05      	xor      	r8, r1
 54c:	620c      	addu      	r8, r3
 54e:	c6a84908 	rotli      	r8, r8, 21
 552:	037c      	lrw      	r3, 0x655b59c3	// 75c <MD5Transform+0x75c>
 554:	6230      	addu      	r8, r12
 556:	61cc      	addu      	r7, r3
 558:	c4212483 	nor      	r3, r1, r1
 55c:	6ce0      	or      	r3, r8
 55e:	6cf1      	xor      	r3, r12
 560:	609c      	addu      	r2, r7
 562:	608c      	addu      	r2, r3
 564:	139f      	lrw      	r4, 0x8f0ccc92	// 760 <MD5Transform+0x760>
 566:	9862      	ld.w      	r3, (r14, 0x8)
 568:	60d0      	addu      	r3, r4
 56a:	c4c24902 	rotli      	r2, r2, 6
 56e:	60a0      	addu      	r2, r8
 570:	604c      	addu      	r1, r3
 572:	c58c2483 	nor      	r3, r12, r12
 576:	6cc8      	or      	r3, r2
 578:	6ce1      	xor      	r3, r8
 57a:	604c      	addu      	r1, r3
 57c:	c5414901 	rotli      	r1, r1, 10
 580:	1379      	lrw      	r3, 0xffeff47d	// 764 <MD5Transform+0x764>
 582:	6048      	addu      	r1, r2
 584:	618c      	addu      	r6, r3
 586:	c5082483 	nor      	r3, r8, r8
 58a:	6cc4      	or      	r3, r1
 58c:	6cc9      	xor      	r3, r2
 58e:	6318      	addu      	r12, r6
 590:	630c      	addu      	r12, r3
 592:	ea8d0076 	lrw      	r13, 0x85845dd1	// 768 <MD5Transform+0x768>
 596:	9860      	ld.w      	r3, (r14, 0x0)
 598:	634c      	addu      	r13, r3
 59a:	c5ec490c 	rotli      	r12, r12, 15
 59e:	6304      	addu      	r12, r1
 5a0:	6234      	addu      	r8, r13
 5a2:	c442248d 	nor      	r13, r2, r2
 5a6:	6f70      	or      	r13, r12
 5a8:	6f45      	xor      	r13, r1
 5aa:	9866      	ld.w      	r3, (r14, 0x18)
 5ac:	6360      	addu      	r13, r8
 5ae:	1390      	lrw      	r4, 0x6fa87e4f	// 76c <MD5Transform+0x76c>
 5b0:	5bd0      	addu      	r6, r3, r4
 5b2:	c6ad490d 	rotli      	r13, r13, 21
 5b6:	6370      	addu      	r13, r12
 5b8:	6098      	addu      	r2, r6
 5ba:	c4212486 	nor      	r6, r1, r1
 5be:	6db4      	or      	r6, r13
 5c0:	6db1      	xor      	r6, r12
 5c2:	6188      	addu      	r6, r2
 5c4:	c4c64906 	rotli      	r6, r6, 6
 5c8:	61b4      	addu      	r6, r13
 5ca:	136a      	lrw      	r3, 0xfe2ce6e0	// 770 <MD5Transform+0x770>
 5cc:	c58c2482 	nor      	r2, r12, r12
 5d0:	614c      	addu      	r5, r3
 5d2:	6c98      	or      	r2, r6
 5d4:	6cb5      	xor      	r2, r13
 5d6:	6054      	addu      	r1, r5
 5d8:	9865      	ld.w      	r3, (r14, 0x14)
 5da:	6048      	addu      	r1, r2
 5dc:	1346      	lrw      	r2, 0xa3014314	// 774 <MD5Transform+0x774>
 5de:	608c      	addu      	r2, r3
 5e0:	c5414901 	rotli      	r1, r1, 10
 5e4:	6058      	addu      	r1, r6
 5e6:	6308      	addu      	r12, r2
 5e8:	c5ad2482 	nor      	r2, r13, r13
 5ec:	6c84      	or      	r2, r1
 5ee:	6c99      	xor      	r2, r6
 5f0:	6308      	addu      	r12, r2
 5f2:	1362      	lrw      	r3, 0x4e0811a1	// 778 <MD5Transform+0x778>
 5f4:	9889      	ld.w      	r4, (r14, 0x24)
 5f6:	610c      	addu      	r4, r3
 5f8:	c5ec490c 	rotli      	r12, r12, 15
 5fc:	6304      	addu      	r12, r1
 5fe:	6134      	addu      	r4, r13
 600:	c4c6248d 	nor      	r13, r6, r6
 604:	6f70      	or      	r13, r12
 606:	6f45      	xor      	r13, r1
 608:	9863      	ld.w      	r3, (r14, 0xc)
 60a:	6350      	addu      	r13, r4
 60c:	125c      	lrw      	r2, 0xf7537e82	// 77c <MD5Transform+0x77c>
 60e:	608c      	addu      	r2, r3
 610:	c6ad490d 	rotli      	r13, r13, 21
 614:	6370      	addu      	r13, r12
 616:	6098      	addu      	r2, r6
 618:	c4212486 	nor      	r6, r1, r1
 61c:	6db4      	or      	r6, r13
 61e:	6db1      	xor      	r6, r12
 620:	9868      	ld.w      	r3, (r14, 0x20)
 622:	6188      	addu      	r6, r2
 624:	1257      	lrw      	r2, 0xbd3af235	// 780 <MD5Transform+0x780>
 626:	608c      	addu      	r2, r3
 628:	c4c64906 	rotli      	r6, r6, 6
 62c:	61b4      	addu      	r6, r13
 62e:	6084      	addu      	r2, r1
 630:	c58c2481 	nor      	r1, r12, r12
 634:	6c58      	or      	r1, r6
 636:	6c75      	xor      	r1, r13
 638:	9861      	ld.w      	r3, (r14, 0x4)
 63a:	6048      	addu      	r1, r2
 63c:	1252      	lrw      	r2, 0x2ad7d2bb	// 784 <MD5Transform+0x784>
 63e:	608c      	addu      	r2, r3
 640:	c5414901 	rotli      	r1, r1, 10
 644:	6058      	addu      	r1, r6
 646:	60b0      	addu      	r2, r12
 648:	c5ad248c 	nor      	r12, r13, r13
 64c:	6f04      	or      	r12, r1
 64e:	6f19      	xor      	r12, r6
 650:	6308      	addu      	r12, r2
 652:	9867      	ld.w      	r3, (r14, 0x1c)
 654:	124d      	lrw      	r2, 0xeb86d391	// 788 <MD5Transform+0x788>
 656:	60c8      	addu      	r3, r2
 658:	c5ec490c 	rotli      	r12, r12, 15
 65c:	6304      	addu      	r12, r1
 65e:	60f4      	addu      	r3, r13
 660:	c4c6248d 	nor      	r13, r6, r6
 664:	6f70      	or      	r13, r12
 666:	6f45      	xor      	r13, r1
 668:	634c      	addu      	r13, r3
 66a:	9060      	ld.w      	r3, (r0, 0x0)
 66c:	618c      	addu      	r6, r3
 66e:	9061      	ld.w      	r3, (r0, 0x4)
 670:	60f0      	addu      	r3, r12
 672:	c6ad490d 	rotli      	r13, r13, 21
 676:	634c      	addu      	r13, r3
 678:	9062      	ld.w      	r3, (r0, 0x8)
 67a:	630c      	addu      	r12, r3
 67c:	9063      	ld.w      	r3, (r0, 0xc)
 67e:	604c      	addu      	r1, r3
 680:	b0c0      	st.w      	r6, (r0, 0x0)
 682:	dda02001 	st.w      	r13, (r0, 0x4)
 686:	dd802002 	st.w      	r12, (r0, 0x8)
 68a:	b023      	st.w      	r1, (r0, 0xc)
 68c:	140a      	addi      	r14, r14, 40
 68e:	1488      	pop      	r4-r11
 690:	d76aa478 	.long	0xd76aa478
 694:	e8c7b756 	.long	0xe8c7b756
 698:	242070db 	.long	0x242070db
 69c:	c1bdceee 	.long	0xc1bdceee
 6a0:	f57c0faf 	.long	0xf57c0faf
 6a4:	4787c62a 	.long	0x4787c62a
 6a8:	a8304613 	.long	0xa8304613
 6ac:	fd469501 	.long	0xfd469501
 6b0:	698098d8 	.long	0x698098d8
 6b4:	8b44f7af 	.long	0x8b44f7af
 6b8:	895cd7be 	.long	0x895cd7be
 6bc:	6b901122 	.long	0x6b901122
 6c0:	fd987193 	.long	0xfd987193
 6c4:	a679438e 	.long	0xa679438e
 6c8:	49b40821 	.long	0x49b40821
 6cc:	f61e2562 	.long	0xf61e2562
 6d0:	c040b340 	.long	0xc040b340
 6d4:	265e5a51 	.long	0x265e5a51
 6d8:	e9b6c7aa 	.long	0xe9b6c7aa
 6dc:	d62f105d 	.long	0xd62f105d
 6e0:	02441453 	.long	0x02441453
 6e4:	d8a1e681 	.long	0xd8a1e681
 6e8:	e7d3fbc8 	.long	0xe7d3fbc8
 6ec:	21e1cde6 	.long	0x21e1cde6
 6f0:	c33707d6 	.long	0xc33707d6
 6f4:	f4d50d87 	.long	0xf4d50d87
 6f8:	455a14ed 	.long	0x455a14ed
 6fc:	a9e3e905 	.long	0xa9e3e905
 700:	fcefa3f8 	.long	0xfcefa3f8
 704:	676f02d9 	.long	0x676f02d9
 708:	8d2a4c8a 	.long	0x8d2a4c8a
 70c:	fffa3942 	.long	0xfffa3942
 710:	8771f681 	.long	0x8771f681
 714:	6d9d6122 	.long	0x6d9d6122
 718:	fde5380c 	.long	0xfde5380c
 71c:	a4beea44 	.long	0xa4beea44
 720:	4bdecfa9 	.long	0x4bdecfa9
 724:	f6bb4b60 	.long	0xf6bb4b60
 728:	bebfbc70 	.long	0xbebfbc70
 72c:	289b7ec6 	.long	0x289b7ec6
 730:	eaa127fa 	.long	0xeaa127fa
 734:	d4ef3085 	.long	0xd4ef3085
 738:	04881d05 	.long	0x04881d05
 73c:	d9d4d039 	.long	0xd9d4d039
 740:	e6db99e5 	.long	0xe6db99e5
 744:	1fa27cf8 	.long	0x1fa27cf8
 748:	c4ac5665 	.long	0xc4ac5665
 74c:	f4292244 	.long	0xf4292244
 750:	432aff97 	.long	0x432aff97
 754:	ab9423a7 	.long	0xab9423a7
 758:	fc93a039 	.long	0xfc93a039
 75c:	655b59c3 	.long	0x655b59c3
 760:	8f0ccc92 	.long	0x8f0ccc92
 764:	ffeff47d 	.long	0xffeff47d
 768:	85845dd1 	.long	0x85845dd1
 76c:	6fa87e4f 	.long	0x6fa87e4f
 770:	fe2ce6e0 	.long	0xfe2ce6e0
 774:	a3014314 	.long	0xa3014314
 778:	4e0811a1 	.long	0x4e0811a1
 77c:	f7537e82 	.long	0xf7537e82
 780:	bd3af235 	.long	0xbd3af235
 784:	2ad7d2bb 	.long	0x2ad7d2bb
 788:	eb86d391 	.long	0xeb86d391

Disassembly of section .text.MD5Init:

00000000 <MD5Init>:
   0:	1066      	lrw      	r3, 0x67452301	// 18 <MD5Init+0x18>
   2:	b060      	st.w      	r3, (r0, 0x0)
   4:	1066      	lrw      	r3, 0xefcdab89	// 1c <MD5Init+0x1c>
   6:	b061      	st.w      	r3, (r0, 0x4)
   8:	1066      	lrw      	r3, 0x98badcfe	// 20 <MD5Init+0x20>
   a:	b062      	st.w      	r3, (r0, 0x8)
   c:	1066      	lrw      	r3, 0x10325476	// 24 <MD5Init+0x24>
   e:	b063      	st.w      	r3, (r0, 0xc)
  10:	3300      	movi      	r3, 0
  12:	b064      	st.w      	r3, (r0, 0x10)
  14:	b065      	st.w      	r3, (r0, 0x14)
  16:	783c      	jmp      	r15
  18:	67452301 	.long	0x67452301
  1c:	efcdab89 	.long	0xefcdab89
  20:	98badcfe 	.long	0x98badcfe
  24:	10325476 	.long	0x10325476

Disassembly of section .text.MD5Update:

00000000 <MD5Update>:
   0:	14d5      	push      	r4-r8, r15
   2:	9064      	ld.w      	r3, (r0, 0x10)
   4:	6d0b      	mov      	r4, r2
   6:	4243      	lsli      	r2, r2, 3
   8:	608c      	addu      	r2, r3
   a:	64c8      	cmphs      	r2, r3
   c:	6d43      	mov      	r5, r0
   e:	6d87      	mov      	r6, r1
  10:	b044      	st.w      	r2, (r0, 0x10)
  12:	0804      	bt      	0x1a	// 1a <MD5Update+0x1a>
  14:	9045      	ld.w      	r2, (r0, 0x14)
  16:	2200      	addi      	r2, 1
  18:	b045      	st.w      	r2, (r0, 0x14)
  1a:	9525      	ld.w      	r1, (r5, 0x14)
  1c:	4c5d      	lsri      	r2, r4, 29
  1e:	c4635503 	zext      	r3, r3, 8, 3
  22:	6084      	addu      	r2, r1
  24:	b545      	st.w      	r2, (r5, 0x14)
  26:	e5050017 	addi      	r8, r5, 24
  2a:	e9030017 	bez      	r3, 0x58	// 58 <MD5Update+0x58>
  2e:	3740      	movi      	r7, 64
  30:	61ce      	subu      	r7, r3
  32:	65d0      	cmphs      	r4, r7
  34:	c4680020 	addu      	r0, r8, r3
  38:	0806      	bt      	0x44	// 44 <MD5Update+0x44>
  3a:	6c93      	mov      	r2, r4
  3c:	6c5b      	mov      	r1, r6
  3e:	e0000000 	bsr      	0x0	// 0 <memcpy>
  42:	1495      	pop      	r4-r8, r15
  44:	6c5b      	mov      	r1, r6
  46:	6c9f      	mov      	r2, r7
  48:	e0000000 	bsr      	0x0	// 0 <memcpy>
  4c:	6c63      	mov      	r1, r8
  4e:	6c17      	mov      	r0, r5
  50:	e0000000 	bsr      	0x0	// 0 <MD5Update>
  54:	619c      	addu      	r6, r7
  56:	611e      	subu      	r4, r7
  58:	6dd3      	mov      	r7, r4
  5a:	eb07003f 	cmphsi      	r7, 64
  5e:	5c3d      	subu      	r1, r4, r7
  60:	6058      	addu      	r1, r6
  62:	080a      	bt      	0x76	// 76 <MD5Update+0x76>
  64:	3300      	movi      	r3, 0
  66:	2b3f      	subi      	r3, 64
  68:	c4642021 	and      	r1, r4, r3
  6c:	e444203f 	andi      	r2, r4, 63
  70:	6058      	addu      	r1, r6
  72:	6c23      	mov      	r0, r8
  74:	07e5      	br      	0x3e	// 3e <MD5Update+0x3e>
  76:	3240      	movi      	r2, 64
  78:	6c23      	mov      	r0, r8
  7a:	e0000000 	bsr      	0x0	// 0 <memcpy>
  7e:	6c63      	mov      	r1, r8
  80:	6c17      	mov      	r0, r5
  82:	e0000000 	bsr      	0x0	// 0 <MD5Update>
  86:	2f3f      	subi      	r7, 64
  88:	07e9      	br      	0x5a	// 5a <MD5Update+0x5a>

Disassembly of section .text.MD5Final:

00000000 <MD5Final>:
   0:	14d3      	push      	r4-r6, r15
   2:	9164      	ld.w      	r3, (r1, 0x10)
   4:	c4635503 	zext      	r3, r3, 8, 3
   8:	e4a10017 	addi      	r5, r1, 24
   c:	5d4c      	addu      	r2, r5, r3
   e:	6d07      	mov      	r4, r1
  10:	3100      	movi      	r1, 0
  12:	297f      	subi      	r1, 128
  14:	6d83      	mov      	r6, r0
  16:	a220      	st.b      	r1, (r2, 0x0)
  18:	5a02      	addi      	r0, r2, 1
  1a:	323f      	movi      	r2, 63
  1c:	608e      	subu      	r2, r3
  1e:	3a07      	cmphsi      	r2, 8
  20:	0820      	bt      	0x60	// 60 <MD5Final+0x60>
  22:	3100      	movi      	r1, 0
  24:	e0000000 	bsr      	0x0	// 0 <memset>
  28:	6c57      	mov      	r1, r5
  2a:	6c13      	mov      	r0, r4
  2c:	e0000000 	bsr      	0x0	// 0 <MD5Final>
  30:	3238      	movi      	r2, 56
  32:	3100      	movi      	r1, 0
  34:	6c17      	mov      	r0, r5
  36:	e0000000 	bsr      	0x0	// 0 <memset>
  3a:	9464      	ld.w      	r3, (r4, 0x10)
  3c:	b474      	st.w      	r3, (r4, 0x50)
  3e:	9465      	ld.w      	r3, (r4, 0x14)
  40:	b475      	st.w      	r3, (r4, 0x54)
  42:	6c57      	mov      	r1, r5
  44:	6c13      	mov      	r0, r4
  46:	e0000000 	bsr      	0x0	// 0 <MD5Final>
  4a:	6c53      	mov      	r1, r4
  4c:	3210      	movi      	r2, 16
  4e:	6c1b      	mov      	r0, r6
  50:	e0000000 	bsr      	0x0	// 0 <memcpy>
  54:	3258      	movi      	r2, 88
  56:	3100      	movi      	r1, 0
  58:	6c13      	mov      	r0, r4
  5a:	e0000000 	bsr      	0x0	// 0 <memset>
  5e:	1493      	pop      	r4-r6, r15
  60:	3237      	movi      	r2, 55
  62:	608e      	subu      	r2, r3
  64:	3100      	movi      	r1, 0
  66:	07e8      	br      	0x36	// 36 <MD5Final+0x36>

Disassembly of section .text.md5_vector:

00000000 <md5_vector>:
   0:	14d5      	push      	r4-r8, r15
   2:	1436      	subi      	r14, r14, 88
   4:	6d83      	mov      	r6, r0
   6:	6c3b      	mov      	r0, r14
   8:	6dc7      	mov      	r7, r1
   a:	6e0b      	mov      	r8, r2
   c:	6d4f      	mov      	r5, r3
   e:	3400      	movi      	r4, 0
  10:	e0000000 	bsr      	0x0	// 0 <md5_vector>
  14:	6592      	cmpne      	r4, r6
  16:	0808      	bt      	0x26	// 26 <md5_vector+0x26>
  18:	6c17      	mov      	r0, r5
  1a:	6c7b      	mov      	r1, r14
  1c:	e0000000 	bsr      	0x0	// 0 <md5_vector>
  20:	3000      	movi      	r0, 0
  22:	1416      	addi      	r14, r14, 88
  24:	1495      	pop      	r4-r8, r15
  26:	d0880882 	ldr.w      	r2, (r8, r4 << 2)
  2a:	d0870881 	ldr.w      	r1, (r7, r4 << 2)
  2e:	6c3b      	mov      	r0, r14
  30:	e0000000 	bsr      	0x0	// 0 <md5_vector>
  34:	2400      	addi      	r4, 1
  36:	07ef      	br      	0x14	// 14 <md5_vector+0x14>
