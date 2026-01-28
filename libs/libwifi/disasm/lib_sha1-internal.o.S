
libwifi/o/lib_sha1-internal.o:     file format elf32-csky-little


Disassembly of section .text.SHA1Transform:

00000000 <SHA1Transform>:
   0:	14d8      	push      	r4-r11, r15
   2:	1525      	subi      	r14, r14, 148
   4:	b800      	st.w      	r0, (r14, 0x0)
   6:	3240      	movi      	r2, 64
   8:	1815      	addi      	r0, r14, 84
   a:	e0000000 	bsr      	0x0	// 0 <memcpy>
   e:	9860      	ld.w      	r3, (r14, 0x0)
  10:	ea81039d 	lrw      	r1, 0x5a827999	// e84 <SHA1Transform+0xe84>
  14:	9360      	ld.w      	r3, (r3, 0x0)
  16:	b871      	st.w      	r3, (r14, 0x44)
  18:	9860      	ld.w      	r3, (r14, 0x0)
  1a:	9361      	ld.w      	r3, (r3, 0x4)
  1c:	b873      	st.w      	r3, (r14, 0x4c)
  1e:	9860      	ld.w      	r3, (r14, 0x0)
  20:	9362      	ld.w      	r3, (r3, 0x8)
  22:	b861      	st.w      	r3, (r14, 0x4)
  24:	9860      	ld.w      	r3, (r14, 0x0)
  26:	9363      	ld.w      	r3, (r3, 0xc)
  28:	b872      	st.w      	r3, (r14, 0x48)
  2a:	9860      	ld.w      	r3, (r14, 0x0)
  2c:	9852      	ld.w      	r2, (r14, 0x48)
  2e:	9364      	ld.w      	r3, (r3, 0x10)
  30:	b874      	st.w      	r3, (r14, 0x50)
  32:	9875      	ld.w      	r3, (r14, 0x54)
  34:	78ce      	revb      	r3, r3
  36:	b863      	st.w      	r3, (r14, 0xc)
  38:	9861      	ld.w      	r3, (r14, 0x4)
  3a:	c4432446 	xor      	r6, r3, r2
  3e:	9873      	ld.w      	r3, (r14, 0x4c)
  40:	698c      	and      	r6, r3
  42:	6d89      	xor      	r6, r2
  44:	9871      	ld.w      	r3, (r14, 0x44)
  46:	9854      	ld.w      	r2, (r14, 0x50)
  48:	6084      	addu      	r2, r1
  4a:	c4a34903 	rotli      	r3, r3, 5
  4e:	60c8      	addu      	r3, r2
  50:	618c      	addu      	r6, r3
  52:	9863      	ld.w      	r3, (r14, 0xc)
  54:	618c      	addu      	r6, r3
  56:	9873      	ld.w      	r3, (r14, 0x4c)
  58:	c7c3490c 	rotli      	r12, r3, 30
  5c:	9876      	ld.w      	r3, (r14, 0x58)
  5e:	78ce      	revb      	r3, r3
  60:	b864      	st.w      	r3, (r14, 0x10)
  62:	9861      	ld.w      	r3, (r14, 0x4)
  64:	c5832445 	xor      	r5, r3, r12
  68:	9871      	ld.w      	r3, (r14, 0x44)
  6a:	694c      	and      	r5, r3
  6c:	9861      	ld.w      	r3, (r14, 0x4)
  6e:	6d4d      	xor      	r5, r3
  70:	9872      	ld.w      	r3, (r14, 0x48)
  72:	60c4      	addu      	r3, r1
  74:	614c      	addu      	r5, r3
  76:	9864      	ld.w      	r3, (r14, 0x10)
  78:	614c      	addu      	r5, r3
  7a:	9871      	ld.w      	r3, (r14, 0x44)
  7c:	c7c34907 	rotli      	r7, r3, 30
  80:	c4a64901 	rotli      	r1, r6, 5
  84:	c4ec2444 	xor      	r4, r12, r7
  88:	9877      	ld.w      	r3, (r14, 0x5c)
  8a:	6144      	addu      	r5, r1
  8c:	9841      	ld.w      	r2, (r14, 0x4)
  8e:	ea81037e 	lrw      	r1, 0x5a827999	// e84 <SHA1Transform+0xe84>
  92:	6918      	and      	r4, r6
  94:	7ace      	revb      	r11, r3
  96:	c5842443 	xor      	r3, r4, r12
  9a:	5a84      	addu      	r4, r2, r1
  9c:	612c      	addu      	r4, r11
  9e:	610c      	addu      	r4, r3
  a0:	9878      	ld.w      	r3, (r14, 0x60)
  a2:	c7c64906 	rotli      	r6, r6, 30
  a6:	78ce      	revb      	r3, r3
  a8:	b866      	st.w      	r3, (r14, 0x18)
  aa:	c4a54902 	rotli      	r2, r5, 5
  ae:	c4c72443 	xor      	r3, r7, r6
  b2:	6108      	addu      	r4, r2
  b4:	6304      	addu      	r12, r1
  b6:	9846      	ld.w      	r2, (r14, 0x18)
  b8:	68d4      	and      	r3, r5
  ba:	6cdd      	xor      	r3, r7
  bc:	c44c002d 	addu      	r13, r12, r2
  c0:	c5a3002c 	addu      	r12, r3, r13
  c4:	c4a4490d 	rotli      	r13, r4, 5
  c8:	6370      	addu      	r13, r12
  ca:	d98e2019 	ld.w      	r12, (r14, 0x64)
  ce:	c7c54905 	rotli      	r5, r5, 30
  d2:	78f2      	revb      	r3, r12
  d4:	b86b      	st.w      	r3, (r14, 0x2c)
  d6:	c4a62443 	xor      	r3, r6, r5
  da:	984b      	ld.w      	r2, (r14, 0x2c)
  dc:	61c4      	addu      	r7, r1
  de:	68d0      	and      	r3, r4
  e0:	981a      	ld.w      	r0, (r14, 0x68)
  e2:	6cd9      	xor      	r3, r6
  e4:	c447002c 	addu      	r12, r7, r2
  e8:	c5830027 	addu      	r7, r3, r12
  ec:	78c2      	revb      	r3, r0
  ee:	c7c44904 	rotli      	r4, r4, 30
  f2:	b86c      	st.w      	r3, (r14, 0x30)
  f4:	984c      	ld.w      	r2, (r14, 0x30)
  f6:	c4852443 	xor      	r3, r5, r4
  fa:	5a04      	addu      	r0, r2, r1
  fc:	c4ad490c 	rotli      	r12, r13, 5
 100:	68f4      	and      	r3, r13
 102:	631c      	addu      	r12, r7
 104:	6018      	addu      	r0, r6
 106:	6cd5      	xor      	r3, r5
 108:	983b      	ld.w      	r1, (r14, 0x6c)
 10a:	60c0      	addu      	r3, r0
 10c:	c4ac4900 	rotli      	r0, r12, 5
 110:	600c      	addu      	r0, r3
 112:	78c6      	revb      	r3, r1
 114:	c7cd490d 	rotli      	r13, r13, 30
 118:	b86d      	st.w      	r3, (r14, 0x34)
 11a:	984d      	ld.w      	r2, (r14, 0x34)
 11c:	c5a42443 	xor      	r3, r4, r13
 120:	ea810359 	lrw      	r1, 0x5a827999	// e84 <SHA1Transform+0xe84>
 124:	68f0      	and      	r3, r12
 126:	6048      	addu      	r1, r2
 128:	6054      	addu      	r1, r5
 12a:	6cd1      	xor      	r3, r4
 12c:	985c      	ld.w      	r2, (r14, 0x70)
 12e:	60c4      	addu      	r3, r1
 130:	c4a04901 	rotli      	r1, r0, 5
 134:	604c      	addu      	r1, r3
 136:	78ca      	revb      	r3, r2
 138:	c7cc490c 	rotli      	r12, r12, 30
 13c:	b86e      	st.w      	r3, (r14, 0x38)
 13e:	984e      	ld.w      	r2, (r14, 0x38)
 140:	c58d2443 	xor      	r3, r13, r12
 144:	ea850350 	lrw      	r5, 0x5a827999	// e84 <SHA1Transform+0xe84>
 148:	68c0      	and      	r3, r0
 14a:	6094      	addu      	r2, r5
 14c:	6090      	addu      	r2, r4
 14e:	6cf5      	xor      	r3, r13
 150:	60c8      	addu      	r3, r2
 152:	c4a14902 	rotli      	r2, r1, 5
 156:	c7c04900 	rotli      	r0, r0, 30
 15a:	608c      	addu      	r2, r3
 15c:	987d      	ld.w      	r3, (r14, 0x74)
 15e:	798e      	revb      	r6, r3
 160:	c40c2444 	xor      	r4, r12, r0
 164:	5e74      	addu      	r3, r6, r5
 166:	6904      	and      	r4, r1
 168:	98be      	ld.w      	r5, (r14, 0x78)
 16a:	60f4      	addu      	r3, r13
 16c:	6d31      	xor      	r4, r12
 16e:	7b56      	revb      	r13, r5
 170:	c7c14901 	rotli      	r1, r1, 30
 174:	ddae2007 	st.w      	r13, (r14, 0x1c)
 178:	610c      	addu      	r4, r3
 17a:	c4a24903 	rotli      	r3, r2, 5
 17e:	60d0      	addu      	r3, r4
 180:	c420244d 	xor      	r13, r0, r1
 184:	9887      	ld.w      	r4, (r14, 0x1c)
 186:	ea850340 	lrw      	r5, 0x5a827999	// e84 <SHA1Transform+0xe84>
 18a:	c4a40029 	addu      	r9, r4, r5
 18e:	6b48      	and      	r13, r2
 190:	98bf      	ld.w      	r5, (r14, 0x7c)
 192:	6270      	addu      	r9, r12
 194:	6f41      	xor      	r13, r0
 196:	7b16      	revb      	r12, r5
 198:	dd8e2008 	st.w      	r12, (r14, 0x20)
 19c:	6364      	addu      	r13, r9
 19e:	c4a34909 	rotli      	r9, r3, 5
 1a2:	6274      	addu      	r9, r13
 1a4:	ea840338 	lrw      	r4, 0x5a827999	// e84 <SHA1Transform+0xe84>
 1a8:	d9ae2008 	ld.w      	r13, (r14, 0x20)
 1ac:	99a0      	ld.w      	r5, (r14, 0x80)
 1ae:	c48d0028 	addu      	r8, r13, r4
 1b2:	c7c24902 	rotli      	r2, r2, 30
 1b6:	6200      	addu      	r8, r0
 1b8:	7816      	revb      	r0, r5
 1ba:	b809      	st.w      	r0, (r14, 0x24)
 1bc:	c441244c 	xor      	r12, r1, r2
 1c0:	ea850331 	lrw      	r5, 0x5a827999	// e84 <SHA1Transform+0xe84>
 1c4:	9889      	ld.w      	r4, (r14, 0x24)
 1c6:	6b0c      	and      	r12, r3
 1c8:	c7c34903 	rotli      	r3, r3, 30
 1cc:	c4622440 	xor      	r0, r2, r3
 1d0:	5cf4      	addu      	r7, r4, r5
 1d2:	6f05      	xor      	r12, r1
 1d4:	6320      	addu      	r12, r8
 1d6:	61c4      	addu      	r7, r1
 1d8:	c4a94908 	rotli      	r8, r9, 5
 1dc:	9921      	ld.w      	r1, (r14, 0x84)
 1de:	6824      	and      	r0, r9
 1e0:	6230      	addu      	r8, r12
 1e2:	6c09      	xor      	r0, r2
 1e4:	7846      	revb      	r1, r1
 1e6:	c7c94909 	rotli      	r9, r9, 30
 1ea:	b82a      	st.w      	r1, (r14, 0x28)
 1ec:	601c      	addu      	r0, r7
 1ee:	c4a84907 	rotli      	r7, r8, 5
 1f2:	61c0      	addu      	r7, r0
 1f4:	c5232441 	xor      	r1, r3, r9
 1f8:	980a      	ld.w      	r0, (r14, 0x28)
 1fa:	c4a0002a 	addu      	r10, r0, r5
 1fe:	6860      	and      	r1, r8
 200:	6288      	addu      	r10, r2
 202:	c7c84908 	rotli      	r8, r8, 30
 206:	9982      	ld.w      	r4, (r14, 0x88)
 208:	6c4d      	xor      	r1, r3
 20a:	7912      	revb      	r4, r4
 20c:	6068      	addu      	r1, r10
 20e:	c5092442 	xor      	r2, r9, r8
 212:	c4a7490a 	rotli      	r10, r7, 5
 216:	6284      	addu      	r10, r1
 218:	d9ae2023 	ld.w      	r13, (r14, 0x8c)
 21c:	6c57      	mov      	r1, r5
 21e:	6f17      	mov      	r12, r5
 220:	689c      	and      	r2, r7
 222:	6150      	addu      	r5, r4
 224:	c7c74907 	rotli      	r7, r7, 30
 228:	7b76      	revb      	r13, r13
 22a:	614c      	addu      	r5, r3
 22c:	6ca5      	xor      	r2, r9
 22e:	c4e82443 	xor      	r3, r8, r7
 232:	6094      	addu      	r2, r5
 234:	68e8      	and      	r3, r10
 236:	c4aa4905 	rotli      	r5, r10, 5
 23a:	6334      	addu      	r12, r13
 23c:	6148      	addu      	r5, r2
 23e:	6324      	addu      	r12, r9
 240:	6ce1      	xor      	r3, r8
 242:	60f0      	addu      	r3, r12
 244:	c4a5490c 	rotli      	r12, r5, 5
 248:	630c      	addu      	r12, r3
 24a:	9964      	ld.w      	r3, (r14, 0x90)
 24c:	78ce      	revb      	r3, r3
 24e:	c7ca490a 	rotli      	r10, r10, 30
 252:	b862      	st.w      	r3, (r14, 0x8)
 254:	9842      	ld.w      	r2, (r14, 0x8)
 256:	c5472443 	xor      	r3, r7, r10
 25a:	5a04      	addu      	r0, r2, r1
 25c:	68d4      	and      	r3, r5
 25e:	6020      	addu      	r0, r8
 260:	6cdd      	xor      	r3, r7
 262:	60c0      	addu      	r3, r0
 264:	c4ac4900 	rotli      	r0, r12, 5
 268:	600c      	addu      	r0, r3
 26a:	9863      	ld.w      	r3, (r14, 0xc)
 26c:	6ced      	xor      	r3, r11
 26e:	6cd9      	xor      	r3, r6
 270:	6cd1      	xor      	r3, r4
 272:	c4234903 	rotli      	r3, r3, 1
 276:	c7c54905 	rotli      	r5, r5, 30
 27a:	b863      	st.w      	r3, (r14, 0xc)
 27c:	9843      	ld.w      	r2, (r14, 0xc)
 27e:	c4aa2443 	xor      	r3, r10, r5
 282:	68f0      	and      	r3, r12
 284:	6048      	addu      	r1, r2
 286:	605c      	addu      	r1, r7
 288:	6ce9      	xor      	r3, r10
 28a:	60c4      	addu      	r3, r1
 28c:	c4a04901 	rotli      	r1, r0, 5
 290:	9846      	ld.w      	r2, (r14, 0x18)
 292:	604c      	addu      	r1, r3
 294:	9864      	ld.w      	r3, (r14, 0x10)
 296:	6cc9      	xor      	r3, r2
 298:	9847      	ld.w      	r2, (r14, 0x1c)
 29a:	6cc9      	xor      	r3, r2
 29c:	6cf5      	xor      	r3, r13
 29e:	c4234903 	rotli      	r3, r3, 1
 2a2:	c7cc490c 	rotli      	r12, r12, 30
 2a6:	b864      	st.w      	r3, (r14, 0x10)
 2a8:	9844      	ld.w      	r2, (r14, 0x10)
 2aa:	c5852443 	xor      	r3, r5, r12
 2ae:	ea8702f6 	lrw      	r7, 0x5a827999	// e84 <SHA1Transform+0xe84>
 2b2:	68c0      	and      	r3, r0
 2b4:	609c      	addu      	r2, r7
 2b6:	60a8      	addu      	r2, r10
 2b8:	6cd5      	xor      	r3, r5
 2ba:	60c8      	addu      	r3, r2
 2bc:	c4a14902 	rotli      	r2, r1, 5
 2c0:	608c      	addu      	r2, r3
 2c2:	986b      	ld.w      	r3, (r14, 0x2c)
 2c4:	98e8      	ld.w      	r7, (r14, 0x20)
 2c6:	6ced      	xor      	r3, r11
 2c8:	c7c04900 	rotli      	r0, r0, 30
 2cc:	6cdd      	xor      	r3, r7
 2ce:	98e2      	ld.w      	r7, (r14, 0x8)
 2d0:	6cdd      	xor      	r3, r7
 2d2:	c40c2447 	xor      	r7, r12, r0
 2d6:	69c4      	and      	r7, r1
 2d8:	c5872448 	xor      	r8, r7, r12
 2dc:	c4234903 	rotli      	r3, r3, 1
 2e0:	ea8702e9 	lrw      	r7, 0x5a827999	// e84 <SHA1Transform+0xe84>
 2e4:	b865      	st.w      	r3, (r14, 0x14)
 2e6:	60dc      	addu      	r3, r7
 2e8:	60d4      	addu      	r3, r5
 2ea:	c4680027 	addu      	r7, r8, r3
 2ee:	c4a24903 	rotli      	r3, r2, 5
 2f2:	60dc      	addu      	r3, r7
 2f4:	98a6      	ld.w      	r5, (r14, 0x18)
 2f6:	98ec      	ld.w      	r7, (r14, 0x30)
 2f8:	6d5d      	xor      	r5, r7
 2fa:	98e9      	ld.w      	r7, (r14, 0x24)
 2fc:	6d5d      	xor      	r5, r7
 2fe:	98e3      	ld.w      	r7, (r14, 0xc)
 300:	6d5d      	xor      	r5, r7
 302:	c4254905 	rotli      	r5, r5, 1
 306:	b8a6      	st.w      	r5, (r14, 0x18)
 308:	c7c14901 	rotli      	r1, r1, 30
 30c:	98e6      	ld.w      	r7, (r14, 0x18)
 30e:	c4202445 	xor      	r5, r0, r1
 312:	ea8802dd 	lrw      	r8, 0x5a827999	// e84 <SHA1Transform+0xe84>
 316:	c5070029 	addu      	r9, r7, r8
 31a:	6948      	and      	r5, r2
 31c:	6270      	addu      	r9, r12
 31e:	6d41      	xor      	r5, r0
 320:	6164      	addu      	r5, r9
 322:	c4a34909 	rotli      	r9, r3, 5
 326:	6254      	addu      	r9, r5
 328:	d98e200b 	ld.w      	r12, (r14, 0x2c)
 32c:	98ad      	ld.w      	r5, (r14, 0x34)
 32e:	6f15      	xor      	r12, r5
 330:	98aa      	ld.w      	r5, (r14, 0x28)
 332:	6f15      	xor      	r12, r5
 334:	98a4      	ld.w      	r5, (r14, 0x10)
 336:	6f15      	xor      	r12, r5
 338:	c42c490c 	rotli      	r12, r12, 1
 33c:	c7c24902 	rotli      	r2, r2, 30
 340:	ea8702d2 	lrw      	r7, 0x6ed9eba1	// e88 <SHA1Transform+0xe88>
 344:	c4412445 	xor      	r5, r1, r2
 348:	c4ec0028 	addu      	r8, r12, r7
 34c:	6200      	addu      	r8, r0
 34e:	6d4d      	xor      	r5, r3
 350:	6160      	addu      	r5, r8
 352:	c4a94908 	rotli      	r8, r9, 5
 356:	6214      	addu      	r8, r5
 358:	980c      	ld.w      	r0, (r14, 0x30)
 35a:	98ae      	ld.w      	r5, (r14, 0x38)
 35c:	6c15      	xor      	r0, r5
 35e:	6c11      	xor      	r0, r4
 360:	98a5      	ld.w      	r5, (r14, 0x14)
 362:	6c15      	xor      	r0, r5
 364:	c4204900 	rotli      	r0, r0, 1
 368:	c7c34903 	rotli      	r3, r3, 30
 36c:	c4622445 	xor      	r5, r2, r3
 370:	61c0      	addu      	r7, r0
 372:	61c4      	addu      	r7, r1
 374:	6d65      	xor      	r5, r9
 376:	982d      	ld.w      	r1, (r14, 0x34)
 378:	615c      	addu      	r5, r7
 37a:	6c59      	xor      	r1, r6
 37c:	c4a84907 	rotli      	r7, r8, 5
 380:	61d4      	addu      	r7, r5
 382:	6c75      	xor      	r1, r13
 384:	98a6      	ld.w      	r5, (r14, 0x18)
 386:	6c55      	xor      	r1, r5
 388:	c4214901 	rotli      	r1, r1, 1
 38c:	c7c94909 	rotli      	r9, r9, 30
 390:	ea8a02be 	lrw      	r10, 0x6ed9eba1	// e88 <SHA1Transform+0xe88>
 394:	c5232445 	xor      	r5, r3, r9
 398:	c541002b 	addu      	r11, r1, r10
 39c:	62c8      	addu      	r11, r2
 39e:	6d61      	xor      	r5, r8
 3a0:	616c      	addu      	r5, r11
 3a2:	c4a7490b 	rotli      	r11, r7, 5
 3a6:	62d4      	addu      	r11, r5
 3a8:	984e      	ld.w      	r2, (r14, 0x38)
 3aa:	98a7      	ld.w      	r5, (r14, 0x1c)
 3ac:	6c95      	xor      	r2, r5
 3ae:	98a2      	ld.w      	r5, (r14, 0x8)
 3b0:	6c95      	xor      	r2, r5
 3b2:	6cb1      	xor      	r2, r12
 3b4:	c4224902 	rotli      	r2, r2, 1
 3b8:	c7c84908 	rotli      	r8, r8, 30
 3bc:	c5092445 	xor      	r5, r9, r8
 3c0:	6288      	addu      	r10, r2
 3c2:	628c      	addu      	r10, r3
 3c4:	6d5d      	xor      	r5, r7
 3c6:	9868      	ld.w      	r3, (r14, 0x20)
 3c8:	6168      	addu      	r5, r10
 3ca:	c4ab490a 	rotli      	r10, r11, 5
 3ce:	6294      	addu      	r10, r5
 3d0:	6cd9      	xor      	r3, r6
 3d2:	98a3      	ld.w      	r5, (r14, 0xc)
 3d4:	6cd5      	xor      	r3, r5
 3d6:	6cc1      	xor      	r3, r0
 3d8:	c4234903 	rotli      	r3, r3, 1
 3dc:	c7c74907 	rotli      	r7, r7, 30
 3e0:	ea8502aa 	lrw      	r5, 0x6ed9eba1	// e88 <SHA1Transform+0xe88>
 3e4:	c4e82446 	xor      	r6, r8, r7
 3e8:	614c      	addu      	r5, r3
 3ea:	6254      	addu      	r9, r5
 3ec:	6dad      	xor      	r6, r11
 3ee:	61a4      	addu      	r6, r9
 3f0:	c4aa4909 	rotli      	r9, r10, 5
 3f4:	6258      	addu      	r9, r6
 3f6:	98a7      	ld.w      	r5, (r14, 0x1c)
 3f8:	98c9      	ld.w      	r6, (r14, 0x24)
 3fa:	6d59      	xor      	r5, r6
 3fc:	98c4      	ld.w      	r6, (r14, 0x10)
 3fe:	6d59      	xor      	r5, r6
 400:	c7cb490b 	rotli      	r11, r11, 30
 404:	6d45      	xor      	r5, r1
 406:	c5672446 	xor      	r6, r7, r11
 40a:	c4254905 	rotli      	r5, r5, 1
 40e:	b8a7      	st.w      	r5, (r14, 0x1c)
 410:	c5462445 	xor      	r5, r6, r10
 414:	b8ab      	st.w      	r5, (r14, 0x2c)
 416:	ea86029d 	lrw      	r6, 0x6ed9eba1	// e88 <SHA1Transform+0xe88>
 41a:	98a7      	ld.w      	r5, (r14, 0x1c)
 41c:	6158      	addu      	r5, r6
 41e:	6214      	addu      	r8, r5
 420:	98cb      	ld.w      	r6, (r14, 0x2c)
 422:	61a0      	addu      	r6, r8
 424:	c4a94908 	rotli      	r8, r9, 5
 428:	6218      	addu      	r8, r6
 42a:	98a8      	ld.w      	r5, (r14, 0x20)
 42c:	98ca      	ld.w      	r6, (r14, 0x28)
 42e:	6d59      	xor      	r5, r6
 430:	98c5      	ld.w      	r6, (r14, 0x14)
 432:	6d59      	xor      	r5, r6
 434:	6d49      	xor      	r5, r2
 436:	c7ca490a 	rotli      	r10, r10, 30
 43a:	c4254905 	rotli      	r5, r5, 1
 43e:	b8a8      	st.w      	r5, (r14, 0x20)
 440:	c54b2445 	xor      	r5, r11, r10
 444:	6d65      	xor      	r5, r9
 446:	b8ab      	st.w      	r5, (r14, 0x2c)
 448:	98c8      	ld.w      	r6, (r14, 0x20)
 44a:	ea850290 	lrw      	r5, 0x6ed9eba1	// e88 <SHA1Transform+0xe88>
 44e:	6194      	addu      	r6, r5
 450:	619c      	addu      	r6, r7
 452:	98ab      	ld.w      	r5, (r14, 0x2c)
 454:	6158      	addu      	r5, r6
 456:	c4a84906 	rotli      	r6, r8, 5
 45a:	6194      	addu      	r6, r5
 45c:	98a9      	ld.w      	r5, (r14, 0x24)
 45e:	98e6      	ld.w      	r7, (r14, 0x18)
 460:	6d51      	xor      	r5, r4
 462:	6d5d      	xor      	r5, r7
 464:	c7c94909 	rotli      	r9, r9, 30
 468:	6d4d      	xor      	r5, r3
 46a:	c52a2447 	xor      	r7, r10, r9
 46e:	c4254905 	rotli      	r5, r5, 1
 472:	b8a9      	st.w      	r5, (r14, 0x24)
 474:	c5072445 	xor      	r5, r7, r8
 478:	b8ab      	st.w      	r5, (r14, 0x2c)
 47a:	ea870284 	lrw      	r7, 0x6ed9eba1	// e88 <SHA1Transform+0xe88>
 47e:	98a9      	ld.w      	r5, (r14, 0x24)
 480:	615c      	addu      	r5, r7
 482:	616c      	addu      	r5, r11
 484:	98eb      	ld.w      	r7, (r14, 0x2c)
 486:	61d4      	addu      	r7, r5
 488:	c4a64905 	rotli      	r5, r6, 5
 48c:	615c      	addu      	r5, r7
 48e:	b8ab      	st.w      	r5, (r14, 0x2c)
 490:	98aa      	ld.w      	r5, (r14, 0x28)
 492:	c5a52447 	xor      	r7, r5, r13
 496:	6df1      	xor      	r7, r12
 498:	98a7      	ld.w      	r5, (r14, 0x1c)
 49a:	6dd5      	xor      	r7, r5
 49c:	c4274907 	rotli      	r7, r7, 1
 4a0:	ea85027a 	lrw      	r5, 0x6ed9eba1	// e88 <SHA1Transform+0xe88>
 4a4:	b8ea      	st.w      	r7, (r14, 0x28)
 4a6:	61d4      	addu      	r7, r5
 4a8:	98ab      	ld.w      	r5, (r14, 0x2c)
 4aa:	c7c84908 	rotli      	r8, r8, 30
 4ae:	629c      	addu      	r10, r7
 4b0:	c4a54907 	rotli      	r7, r5, 5
 4b4:	98a2      	ld.w      	r5, (r14, 0x8)
 4b6:	c509244b 	xor      	r11, r9, r8
 4ba:	6d15      	xor      	r4, r5
 4bc:	6ed9      	xor      	r11, r6
 4be:	98a8      	ld.w      	r5, (r14, 0x20)
 4c0:	6d01      	xor      	r4, r0
 4c2:	c7c64906 	rotli      	r6, r6, 30
 4c6:	6d15      	xor      	r4, r5
 4c8:	62e8      	addu      	r11, r10
 4ca:	62dc      	addu      	r11, r7
 4cc:	c424490a 	rotli      	r10, r4, 1
 4d0:	c4c82447 	xor      	r7, r8, r6
 4d4:	988b      	ld.w      	r4, (r14, 0x2c)
 4d6:	6dd1      	xor      	r7, r4
 4d8:	ea84026c 	lrw      	r4, 0x6ed9eba1	// e88 <SHA1Transform+0xe88>
 4dc:	6128      	addu      	r4, r10
 4de:	6250      	addu      	r9, r4
 4e0:	61e4      	addu      	r7, r9
 4e2:	c4ab4904 	rotli      	r4, r11, 5
 4e6:	61d0      	addu      	r7, r4
 4e8:	988b      	ld.w      	r4, (r14, 0x2c)
 4ea:	c7c44905 	rotli      	r5, r4, 30
 4ee:	9883      	ld.w      	r4, (r14, 0xc)
 4f0:	6f51      	xor      	r13, r4
 4f2:	6f45      	xor      	r13, r1
 4f4:	9889      	ld.w      	r4, (r14, 0x24)
 4f6:	6f51      	xor      	r13, r4
 4f8:	ea890264 	lrw      	r9, 0x6ed9eba1	// e88 <SHA1Transform+0xe88>
 4fc:	c42d490d 	rotli      	r13, r13, 1
 500:	ddae200b 	st.w      	r13, (r14, 0x2c)
 504:	c4a62444 	xor      	r4, r6, r5
 508:	6364      	addu      	r13, r9
 50a:	6234      	addu      	r8, r13
 50c:	6d2d      	xor      	r4, r11
 50e:	6120      	addu      	r4, r8
 510:	c4a74908 	rotli      	r8, r7, 5
 514:	6210      	addu      	r8, r4
 516:	d9ae2002 	ld.w      	r13, (r14, 0x8)
 51a:	9884      	ld.w      	r4, (r14, 0x10)
 51c:	6f51      	xor      	r13, r4
 51e:	6f49      	xor      	r13, r2
 520:	988a      	ld.w      	r4, (r14, 0x28)
 522:	6f51      	xor      	r13, r4
 524:	c7cb490b 	rotli      	r11, r11, 30
 528:	c42d490d 	rotli      	r13, r13, 1
 52c:	ddae2002 	st.w      	r13, (r14, 0x8)
 530:	c5652444 	xor      	r4, r5, r11
 534:	6364      	addu      	r13, r9
 536:	61b4      	addu      	r6, r13
 538:	6d1d      	xor      	r4, r7
 53a:	6118      	addu      	r4, r6
 53c:	c4a84906 	rotli      	r6, r8, 5
 540:	6118      	addu      	r4, r6
 542:	d9ae2003 	ld.w      	r13, (r14, 0xc)
 546:	98c5      	ld.w      	r6, (r14, 0x14)
 548:	6f59      	xor      	r13, r6
 54a:	6f4d      	xor      	r13, r3
 54c:	6f69      	xor      	r13, r10
 54e:	c7c74907 	rotli      	r7, r7, 30
 552:	c42d490d 	rotli      	r13, r13, 1
 556:	ddae2003 	st.w      	r13, (r14, 0xc)
 55a:	c4eb2446 	xor      	r6, r11, r7
 55e:	6364      	addu      	r13, r9
 560:	6174      	addu      	r5, r13
 562:	6da1      	xor      	r6, r8
 564:	6194      	addu      	r6, r5
 566:	c4a44905 	rotli      	r5, r4, 5
 56a:	6158      	addu      	r5, r6
 56c:	d9ae2004 	ld.w      	r13, (r14, 0x10)
 570:	98c6      	ld.w      	r6, (r14, 0x18)
 572:	6f59      	xor      	r13, r6
 574:	98c7      	ld.w      	r6, (r14, 0x1c)
 576:	6f59      	xor      	r13, r6
 578:	98cb      	ld.w      	r6, (r14, 0x2c)
 57a:	6f59      	xor      	r13, r6
 57c:	c7c84908 	rotli      	r8, r8, 30
 580:	c42d490d 	rotli      	r13, r13, 1
 584:	ddae2004 	st.w      	r13, (r14, 0x10)
 588:	c5072446 	xor      	r6, r7, r8
 58c:	6364      	addu      	r13, r9
 58e:	62f4      	addu      	r11, r13
 590:	6d91      	xor      	r6, r4
 592:	d9ae2005 	ld.w      	r13, (r14, 0x14)
 596:	61ac      	addu      	r6, r11
 598:	c4a5490b 	rotli      	r11, r5, 5
 59c:	62d8      	addu      	r11, r6
 59e:	6f71      	xor      	r13, r12
 5a0:	98c8      	ld.w      	r6, (r14, 0x20)
 5a2:	6f59      	xor      	r13, r6
 5a4:	98c2      	ld.w      	r6, (r14, 0x8)
 5a6:	6f59      	xor      	r13, r6
 5a8:	c42d490d 	rotli      	r13, r13, 1
 5ac:	ddae2005 	st.w      	r13, (r14, 0x14)
 5b0:	98c5      	ld.w      	r6, (r14, 0x14)
 5b2:	c7c44904 	rotli      	r4, r4, 30
 5b6:	c488244d 	xor      	r13, r8, r4
 5ba:	6258      	addu      	r9, r6
 5bc:	61e4      	addu      	r7, r9
 5be:	6f55      	xor      	r13, r5
 5c0:	635c      	addu      	r13, r7
 5c2:	c4ab4907 	rotli      	r7, r11, 5
 5c6:	61f4      	addu      	r7, r13
 5c8:	d9ae2006 	ld.w      	r13, (r14, 0x18)
 5cc:	98c9      	ld.w      	r6, (r14, 0x24)
 5ce:	6f41      	xor      	r13, r0
 5d0:	6f59      	xor      	r13, r6
 5d2:	98c3      	ld.w      	r6, (r14, 0xc)
 5d4:	6f59      	xor      	r13, r6
 5d6:	c42d490d 	rotli      	r13, r13, 1
 5da:	ddae2006 	st.w      	r13, (r14, 0x18)
 5de:	98c6      	ld.w      	r6, (r14, 0x18)
 5e0:	c7c54905 	rotli      	r5, r5, 30
 5e4:	ea890229 	lrw      	r9, 0x6ed9eba1	// e88 <SHA1Transform+0xe88>
 5e8:	c4a4244d 	xor      	r13, r4, r5
 5ec:	6258      	addu      	r9, r6
 5ee:	6224      	addu      	r8, r9
 5f0:	6f6d      	xor      	r13, r11
 5f2:	6360      	addu      	r13, r8
 5f4:	c4a74908 	rotli      	r8, r7, 5
 5f8:	6234      	addu      	r8, r13
 5fa:	6f05      	xor      	r12, r1
 5fc:	d9ae200a 	ld.w      	r13, (r14, 0x28)
 600:	6f35      	xor      	r12, r13
 602:	d9ae2004 	ld.w      	r13, (r14, 0x10)
 606:	6f35      	xor      	r12, r13
 608:	c42c4909 	rotli      	r9, r12, 1
 60c:	ea8c021f 	lrw      	r12, 0x6ed9eba1	// e88 <SHA1Transform+0xe88>
 610:	6324      	addu      	r12, r9
 612:	6c09      	xor      	r0, r2
 614:	c7cb490b 	rotli      	r11, r11, 30
 618:	6130      	addu      	r4, r12
 61a:	6c29      	xor      	r0, r10
 61c:	d98e2005 	ld.w      	r12, (r14, 0x14)
 620:	c565244d 	xor      	r13, r5, r11
 624:	6c31      	xor      	r0, r12
 626:	6f5d      	xor      	r13, r7
 628:	c4204900 	rotli      	r0, r0, 1
 62c:	c7c74907 	rotli      	r7, r7, 30
 630:	b80c      	st.w      	r0, (r14, 0x30)
 632:	c4eb2440 	xor      	r0, r11, r7
 636:	c500244c 	xor      	r12, r0, r8
 63a:	98cc      	ld.w      	r6, (r14, 0x30)
 63c:	ea800213 	lrw      	r0, 0x6ed9eba1	// e88 <SHA1Transform+0xe88>
 640:	6180      	addu      	r6, r0
 642:	6158      	addu      	r5, r6
 644:	c4ac0020 	addu      	r0, r12, r5
 648:	6c4d      	xor      	r1, r3
 64a:	d98e200b 	ld.w      	r12, (r14, 0x2c)
 64e:	6c71      	xor      	r1, r12
 650:	d98e2006 	ld.w      	r12, (r14, 0x18)
 654:	6c71      	xor      	r1, r12
 656:	c4214901 	rotli      	r1, r1, 1
 65a:	b82d      	st.w      	r1, (r14, 0x34)
 65c:	6350      	addu      	r13, r4
 65e:	d98e2007 	ld.w      	r12, (r14, 0x1c)
 662:	c4a84904 	rotli      	r4, r8, 5
 666:	6134      	addu      	r4, r13
 668:	6cb1      	xor      	r2, r12
 66a:	d98e2002 	ld.w      	r12, (r14, 0x8)
 66e:	c4a44905 	rotli      	r5, r4, 5
 672:	6cb1      	xor      	r2, r12
 674:	6014      	addu      	r0, r5
 676:	6ca5      	xor      	r2, r9
 678:	98ad      	ld.w      	r5, (r14, 0x34)
 67a:	ea860204 	lrw      	r6, 0x6ed9eba1	// e88 <SHA1Transform+0xe88>
 67e:	6194      	addu      	r6, r5
 680:	c4224902 	rotli      	r2, r2, 1
 684:	ea850201 	lrw      	r5, 0x6ed9eba1	// e88 <SHA1Transform+0xe88>
 688:	b84e      	st.w      	r2, (r14, 0x38)
 68a:	c7c84908 	rotli      	r8, r8, 30
 68e:	6094      	addu      	r2, r5
 690:	c5072441 	xor      	r1, r7, r8
 694:	61c8      	addu      	r7, r2
 696:	9848      	ld.w      	r2, (r14, 0x20)
 698:	6cc9      	xor      	r3, r2
 69a:	9843      	ld.w      	r2, (r14, 0xc)
 69c:	62d8      	addu      	r11, r6
 69e:	6c51      	xor      	r1, r4
 6a0:	6cc9      	xor      	r3, r2
 6a2:	c7c44904 	rotli      	r4, r4, 30
 6a6:	984c      	ld.w      	r2, (r14, 0x30)
 6a8:	c488244c 	xor      	r12, r8, r4
 6ac:	606c      	addu      	r1, r11
 6ae:	6cc9      	xor      	r3, r2
 6b0:	c4a0490b 	rotli      	r11, r0, 5
 6b4:	606c      	addu      	r1, r11
 6b6:	6f01      	xor      	r12, r0
 6b8:	c4234903 	rotli      	r3, r3, 1
 6bc:	c7c04900 	rotli      	r0, r0, 30
 6c0:	b86f      	st.w      	r3, (r14, 0x3c)
 6c2:	c4012423 	or      	r3, r1, r0
 6c6:	c483202d 	and      	r13, r3, r4
 6ca:	c4012023 	and      	r3, r1, r0
 6ce:	984f      	ld.w      	r2, (r14, 0x3c)
 6d0:	6cf4      	or      	r3, r13
 6d2:	ea8d01ef 	lrw      	r13, 0x8f1bbcdc	// e8c <SHA1Transform+0xe8c>
 6d6:	6348      	addu      	r13, r2
 6d8:	6234      	addu      	r8, r13
 6da:	9847      	ld.w      	r2, (r14, 0x1c)
 6dc:	d9ae2009 	ld.w      	r13, (r14, 0x24)
 6e0:	c5a22445 	xor      	r5, r2, r13
 6e4:	9844      	ld.w      	r2, (r14, 0x10)
 6e6:	6d49      	xor      	r5, r2
 6e8:	984d      	ld.w      	r2, (r14, 0x34)
 6ea:	631c      	addu      	r12, r7
 6ec:	6d49      	xor      	r5, r2
 6ee:	c4a14907 	rotli      	r7, r1, 5
 6f2:	631c      	addu      	r12, r7
 6f4:	c7c14901 	rotli      	r1, r1, 30
 6f8:	c4254902 	rotli      	r2, r5, 1
 6fc:	b847      	st.w      	r2, (r14, 0x1c)
 6fe:	c42c2422 	or      	r2, r12, r1
 702:	c402202d 	and      	r13, r2, r0
 706:	c42c2022 	and      	r2, r12, r1
 70a:	6cb4      	or      	r2, r13
 70c:	ea8501e0 	lrw      	r5, 0x8f1bbcdc	// e8c <SHA1Transform+0xe8c>
 710:	d9ae2007 	ld.w      	r13, (r14, 0x1c)
 714:	6354      	addu      	r13, r5
 716:	60e0      	addu      	r3, r8
 718:	c4ac4908 	rotli      	r8, r12, 5
 71c:	60e0      	addu      	r3, r8
 71e:	6134      	addu      	r4, r13
 720:	6090      	addu      	r2, r4
 722:	c4a34904 	rotli      	r4, r3, 5
 726:	6090      	addu      	r2, r4
 728:	d9ae2008 	ld.w      	r13, (r14, 0x20)
 72c:	988a      	ld.w      	r4, (r14, 0x28)
 72e:	c48d2445 	xor      	r5, r13, r4
 732:	d9ae2005 	ld.w      	r13, (r14, 0x14)
 736:	6d75      	xor      	r5, r13
 738:	d9ae200e 	ld.w      	r13, (r14, 0x38)
 73c:	6d75      	xor      	r5, r13
 73e:	c7cc490c 	rotli      	r12, r12, 30
 742:	c4254904 	rotli      	r4, r5, 1
 746:	b888      	st.w      	r4, (r14, 0x20)
 748:	c5832424 	or      	r4, r3, r12
 74c:	c424202d 	and      	r13, r4, r1
 750:	c5832024 	and      	r4, r3, r12
 754:	ea8501ce 	lrw      	r5, 0x8f1bbcdc	// e8c <SHA1Transform+0xe8c>
 758:	6d34      	or      	r4, r13
 75a:	d9ae2008 	ld.w      	r13, (r14, 0x20)
 75e:	6354      	addu      	r13, r5
 760:	6034      	addu      	r0, r13
 762:	6100      	addu      	r4, r0
 764:	c4a24900 	rotli      	r0, r2, 5
 768:	6100      	addu      	r4, r0
 76a:	9809      	ld.w      	r0, (r14, 0x24)
 76c:	d9ae2006 	ld.w      	r13, (r14, 0x18)
 770:	6c29      	xor      	r0, r10
 772:	6c35      	xor      	r0, r13
 774:	d9ae200f 	ld.w      	r13, (r14, 0x3c)
 778:	c7c34903 	rotli      	r3, r3, 30
 77c:	6c35      	xor      	r0, r13
 77e:	c4204900 	rotli      	r0, r0, 1
 782:	c462242d 	or      	r13, r2, r3
 786:	b809      	st.w      	r0, (r14, 0x24)
 788:	c58d2020 	and      	r0, r13, r12
 78c:	c462202d 	and      	r13, r2, r3
 790:	6f40      	or      	r13, r0
 792:	9809      	ld.w      	r0, (r14, 0x24)
 794:	6014      	addu      	r0, r5
 796:	6040      	addu      	r1, r0
 798:	6344      	addu      	r13, r1
 79a:	c4a44901 	rotli      	r1, r4, 5
 79e:	6344      	addu      	r13, r1
 7a0:	980b      	ld.w      	r0, (r14, 0x2c)
 7a2:	982a      	ld.w      	r1, (r14, 0x28)
 7a4:	6c41      	xor      	r1, r0
 7a6:	6c65      	xor      	r1, r9
 7a8:	9807      	ld.w      	r0, (r14, 0x1c)
 7aa:	c7c24902 	rotli      	r2, r2, 30
 7ae:	6c41      	xor      	r1, r0
 7b0:	c4214901 	rotli      	r1, r1, 1
 7b4:	c4442420 	or      	r0, r4, r2
 7b8:	b82a      	st.w      	r1, (r14, 0x28)
 7ba:	c4602021 	and      	r1, r0, r3
 7be:	c4442020 	and      	r0, r4, r2
 7c2:	6c04      	or      	r0, r1
 7c4:	982a      	ld.w      	r1, (r14, 0x28)
 7c6:	6054      	addu      	r1, r5
 7c8:	6304      	addu      	r12, r1
 7ca:	9822      	ld.w      	r1, (r14, 0x8)
 7cc:	c7c44908 	rotli      	r8, r4, 30
 7d0:	c42a2444 	xor      	r4, r10, r1
 7d4:	982c      	ld.w      	r1, (r14, 0x30)
 7d6:	6d05      	xor      	r4, r1
 7d8:	9828      	ld.w      	r1, (r14, 0x20)
 7da:	6030      	addu      	r0, r12
 7dc:	6d05      	xor      	r4, r1
 7de:	c4ad490c 	rotli      	r12, r13, 5
 7e2:	6300      	addu      	r12, r0
 7e4:	c4244901 	rotli      	r1, r4, 1
 7e8:	c50d2420 	or      	r0, r13, r8
 7ec:	b830      	st.w      	r1, (r14, 0x40)
 7ee:	c4402024 	and      	r4, r0, r2
 7f2:	6054      	addu      	r1, r5
 7f4:	c50d2020 	and      	r0, r13, r8
 7f8:	60c4      	addu      	r3, r1
 7fa:	6c10      	or      	r0, r4
 7fc:	600c      	addu      	r0, r3
 7fe:	c4ac4904 	rotli      	r4, r12, 5
 802:	6100      	addu      	r4, r0
 804:	986b      	ld.w      	r3, (r14, 0x2c)
 806:	9803      	ld.w      	r0, (r14, 0xc)
 808:	c7cd4901 	rotli      	r1, r13, 30
 80c:	c403244d 	xor      	r13, r3, r0
 810:	986d      	ld.w      	r3, (r14, 0x34)
 812:	6f4d      	xor      	r13, r3
 814:	9869      	ld.w      	r3, (r14, 0x24)
 816:	6f4d      	xor      	r13, r3
 818:	c42c2420 	or      	r0, r12, r1
 81c:	c42d4903 	rotli      	r3, r13, 1
 820:	b86b      	st.w      	r3, (r14, 0x2c)
 822:	c5002023 	and      	r3, r0, r8
 826:	c42c2020 	and      	r0, r12, r1
 82a:	6c0c      	or      	r0, r3
 82c:	986b      	ld.w      	r3, (r14, 0x2c)
 82e:	60d4      	addu      	r3, r5
 830:	608c      	addu      	r2, r3
 832:	6008      	addu      	r0, r2
 834:	c4a44902 	rotli      	r2, r4, 5
 838:	6080      	addu      	r2, r0
 83a:	9862      	ld.w      	r3, (r14, 0x8)
 83c:	9804      	ld.w      	r0, (r14, 0x10)
 83e:	6cc1      	xor      	r3, r0
 840:	980e      	ld.w      	r0, (r14, 0x38)
 842:	6cc1      	xor      	r3, r0
 844:	980a      	ld.w      	r0, (r14, 0x28)
 846:	c7cc490c 	rotli      	r12, r12, 30
 84a:	6cc1      	xor      	r3, r0
 84c:	c4234903 	rotli      	r3, r3, 1
 850:	c5842420 	or      	r0, r4, r12
 854:	b862      	st.w      	r3, (r14, 0x8)
 856:	c4202026 	and      	r6, r0, r1
 85a:	60d4      	addu      	r3, r5
 85c:	c5842020 	and      	r0, r4, r12
 860:	6c18      	or      	r0, r6
 862:	c5030026 	addu      	r6, r3, r8
 866:	6018      	addu      	r0, r6
 868:	c4a24906 	rotli      	r6, r2, 5
 86c:	6180      	addu      	r6, r0
 86e:	9863      	ld.w      	r3, (r14, 0xc)
 870:	9805      	ld.w      	r0, (r14, 0x14)
 872:	6cc1      	xor      	r3, r0
 874:	980f      	ld.w      	r0, (r14, 0x3c)
 876:	6cc1      	xor      	r3, r0
 878:	9810      	ld.w      	r0, (r14, 0x40)
 87a:	6cc1      	xor      	r3, r0
 87c:	c4234903 	rotli      	r3, r3, 1
 880:	c7c44904 	rotli      	r4, r4, 30
 884:	b863      	st.w      	r3, (r14, 0xc)
 886:	9803      	ld.w      	r0, (r14, 0xc)
 888:	c4822423 	or      	r3, r2, r4
 88c:	ea8d0180 	lrw      	r13, 0x8f1bbcdc	// e8c <SHA1Transform+0xe8c>
 890:	c5832025 	and      	r5, r3, r12
 894:	6340      	addu      	r13, r0
 896:	c4822023 	and      	r3, r2, r4
 89a:	6344      	addu      	r13, r1
 89c:	6cd4      	or      	r3, r5
 89e:	60f4      	addu      	r3, r13
 8a0:	c4a64905 	rotli      	r5, r6, 5
 8a4:	614c      	addu      	r5, r3
 8a6:	9826      	ld.w      	r1, (r14, 0x18)
 8a8:	9864      	ld.w      	r3, (r14, 0x10)
 8aa:	6cc5      	xor      	r3, r1
 8ac:	9827      	ld.w      	r1, (r14, 0x1c)
 8ae:	6cc5      	xor      	r3, r1
 8b0:	982b      	ld.w      	r1, (r14, 0x2c)
 8b2:	c7c24902 	rotli      	r2, r2, 30
 8b6:	6cc5      	xor      	r3, r1
 8b8:	ea800175 	lrw      	r0, 0x8f1bbcdc	// e8c <SHA1Transform+0xe8c>
 8bc:	c4462421 	or      	r1, r6, r2
 8c0:	c4234903 	rotli      	r3, r3, 1
 8c4:	c4812027 	and      	r7, r1, r4
 8c8:	b864      	st.w      	r3, (r14, 0x10)
 8ca:	c4462021 	and      	r1, r6, r2
 8ce:	60c0      	addu      	r3, r0
 8d0:	630c      	addu      	r12, r3
 8d2:	6c5c      	or      	r1, r7
 8d4:	9865      	ld.w      	r3, (r14, 0x14)
 8d6:	6070      	addu      	r1, r12
 8d8:	c523244c 	xor      	r12, r3, r9
 8dc:	9868      	ld.w      	r3, (r14, 0x20)
 8de:	c7c64906 	rotli      	r6, r6, 30
 8e2:	c4a54907 	rotli      	r7, r5, 5
 8e6:	6f0d      	xor      	r12, r3
 8e8:	9862      	ld.w      	r3, (r14, 0x8)
 8ea:	61c4      	addu      	r7, r1
 8ec:	6f0d      	xor      	r12, r3
 8ee:	c4c52421 	or      	r1, r5, r6
 8f2:	c42c490a 	rotli      	r10, r12, 1
 8f6:	c4412023 	and      	r3, r1, r2
 8fa:	c4c52021 	and      	r1, r5, r6
 8fe:	6c4c      	or      	r1, r3
 900:	c40a0023 	addu      	r3, r10, r0
 904:	60d0      	addu      	r3, r4
 906:	c4a7490c 	rotli      	r12, r7, 5
 90a:	604c      	addu      	r1, r3
 90c:	c42c0023 	addu      	r3, r12, r1
 910:	980c      	ld.w      	r0, (r14, 0x30)
 912:	9826      	ld.w      	r1, (r14, 0x18)
 914:	6c05      	xor      	r0, r1
 916:	9829      	ld.w      	r1, (r14, 0x24)
 918:	6c05      	xor      	r0, r1
 91a:	9823      	ld.w      	r1, (r14, 0xc)
 91c:	6c05      	xor      	r0, r1
 91e:	c7c54905 	rotli      	r5, r5, 30
 922:	c4204901 	rotli      	r1, r0, 1
 926:	b825      	st.w      	r1, (r14, 0x14)
 928:	c4a72421 	or      	r1, r7, r5
 92c:	c4c12020 	and      	r0, r1, r6
 930:	c4a72021 	and      	r1, r7, r5
 934:	ea840156 	lrw      	r4, 0x8f1bbcdc	// e8c <SHA1Transform+0xe8c>
 938:	6c40      	or      	r1, r0
 93a:	9805      	ld.w      	r0, (r14, 0x14)
 93c:	6010      	addu      	r0, r4
 93e:	6008      	addu      	r0, r2
 940:	6040      	addu      	r1, r0
 942:	984d      	ld.w      	r2, (r14, 0x34)
 944:	c4a34900 	rotli      	r0, r3, 5
 948:	6004      	addu      	r0, r1
 94a:	c4492441 	xor      	r1, r9, r2
 94e:	984a      	ld.w      	r2, (r14, 0x28)
 950:	6c49      	xor      	r1, r2
 952:	9844      	ld.w      	r2, (r14, 0x10)
 954:	c7c74907 	rotli      	r7, r7, 30
 958:	6c49      	xor      	r1, r2
 95a:	c4214909 	rotli      	r9, r1, 1
 95e:	c4e3242c 	or      	r12, r3, r7
 962:	c4ac2021 	and      	r1, r12, r5
 966:	c4890022 	addu      	r2, r9, r4
 96a:	c4e3202c 	and      	r12, r3, r7
 96e:	6f04      	or      	r12, r1
 970:	5a38      	addu      	r1, r2, r6
 972:	6304      	addu      	r12, r1
 974:	c4a04901 	rotli      	r1, r0, 5
 978:	6070      	addu      	r1, r12
 97a:	984e      	ld.w      	r2, (r14, 0x38)
 97c:	c7c3490c 	rotli      	r12, r3, 30
 980:	986c      	ld.w      	r3, (r14, 0x30)
 982:	6c8d      	xor      	r2, r3
 984:	9870      	ld.w      	r3, (r14, 0x40)
 986:	6c8d      	xor      	r2, r3
 988:	6ca9      	xor      	r2, r10
 98a:	c4224903 	rotli      	r3, r2, 1
 98e:	c5802422 	or      	r2, r0, r12
 992:	b866      	st.w      	r3, (r14, 0x18)
 994:	c4e2202b 	and      	r11, r2, r7
 998:	60d0      	addu      	r3, r4
 99a:	c5802022 	and      	r2, r0, r12
 99e:	6cac      	or      	r2, r11
 9a0:	c4a3002b 	addu      	r11, r3, r5
 9a4:	60ac      	addu      	r2, r11
 9a6:	c4a1490b 	rotli      	r11, r1, 5
 9aa:	62c8      	addu      	r11, r2
 9ac:	986d      	ld.w      	r3, (r14, 0x34)
 9ae:	984f      	ld.w      	r2, (r14, 0x3c)
 9b0:	c4432445 	xor      	r5, r3, r2
 9b4:	986b      	ld.w      	r3, (r14, 0x2c)
 9b6:	6d4d      	xor      	r5, r3
 9b8:	9865      	ld.w      	r3, (r14, 0x14)
 9ba:	c7c04900 	rotli      	r0, r0, 30
 9be:	6d4d      	xor      	r5, r3
 9c0:	c4254908 	rotli      	r8, r5, 1
 9c4:	c401242d 	or      	r13, r1, r0
 9c8:	c58d2022 	and      	r2, r13, r12
 9cc:	c4880023 	addu      	r3, r8, r4
 9d0:	c401202d 	and      	r13, r1, r0
 9d4:	6f48      	or      	r13, r2
 9d6:	5b5c      	addu      	r2, r3, r7
 9d8:	6348      	addu      	r13, r2
 9da:	c4ab4902 	rotli      	r2, r11, 5
 9de:	60b4      	addu      	r2, r13
 9e0:	986e      	ld.w      	r3, (r14, 0x38)
 9e2:	d9ae2007 	ld.w      	r13, (r14, 0x1c)
 9e6:	6cf5      	xor      	r3, r13
 9e8:	d9ae2002 	ld.w      	r13, (r14, 0x8)
 9ec:	c7c14901 	rotli      	r1, r1, 30
 9f0:	6cf5      	xor      	r3, r13
 9f2:	6ce5      	xor      	r3, r9
 9f4:	c42b242d 	or      	r13, r11, r1
 9f8:	c4234907 	rotli      	r7, r3, 1
 9fc:	c40d2023 	and      	r3, r13, r0
 a00:	c42b202d 	and      	r13, r11, r1
 a04:	6f4c      	or      	r13, r3
 a06:	5f70      	addu      	r3, r7, r4
 a08:	60f0      	addu      	r3, r12
 a0a:	634c      	addu      	r13, r3
 a0c:	c4a24903 	rotli      	r3, r2, 5
 a10:	60f4      	addu      	r3, r13
 a12:	d98e200f 	ld.w      	r12, (r14, 0x3c)
 a16:	d9ae2008 	ld.w      	r13, (r14, 0x20)
 a1a:	c5ac2444 	xor      	r4, r12, r13
 a1e:	d98e2003 	ld.w      	r12, (r14, 0xc)
 a22:	6d31      	xor      	r4, r12
 a24:	d98e2006 	ld.w      	r12, (r14, 0x18)
 a28:	c7cb490b 	rotli      	r11, r11, 30
 a2c:	6d31      	xor      	r4, r12
 a2e:	c4244904 	rotli      	r4, r4, 1
 a32:	c562242c 	or      	r12, r2, r11
 a36:	b88c      	st.w      	r4, (r14, 0x30)
 a38:	c42c2024 	and      	r4, r12, r1
 a3c:	c562202c 	and      	r12, r2, r11
 a40:	ea850113 	lrw      	r5, 0x8f1bbcdc	// e8c <SHA1Transform+0xe8c>
 a44:	6f10      	or      	r12, r4
 a46:	988c      	ld.w      	r4, (r14, 0x30)
 a48:	6114      	addu      	r4, r5
 a4a:	6100      	addu      	r4, r0
 a4c:	6310      	addu      	r12, r4
 a4e:	c4a34904 	rotli      	r4, r3, 5
 a52:	6130      	addu      	r4, r12
 a54:	9807      	ld.w      	r0, (r14, 0x1c)
 a56:	d98e2009 	ld.w      	r12, (r14, 0x24)
 a5a:	c580244d 	xor      	r13, r0, r12
 a5e:	9804      	ld.w      	r0, (r14, 0x10)
 a60:	6f41      	xor      	r13, r0
 a62:	6f61      	xor      	r13, r8
 a64:	c7c24902 	rotli      	r2, r2, 30
 a68:	c42d4900 	rotli      	r0, r13, 1
 a6c:	b807      	st.w      	r0, (r14, 0x1c)
 a6e:	c4432420 	or      	r0, r3, r2
 a72:	c560202d 	and      	r13, r0, r11
 a76:	d98e2007 	ld.w      	r12, (r14, 0x1c)
 a7a:	c4432020 	and      	r0, r3, r2
 a7e:	6c34      	or      	r0, r13
 a80:	c4ac002d 	addu      	r13, r12, r5
 a84:	6344      	addu      	r13, r1
 a86:	6034      	addu      	r0, r13
 a88:	c4a4490d 	rotli      	r13, r4, 5
 a8c:	6340      	addu      	r13, r0
 a8e:	9828      	ld.w      	r1, (r14, 0x20)
 a90:	980a      	ld.w      	r0, (r14, 0x28)
 a92:	c401244c 	xor      	r12, r1, r0
 a96:	6f29      	xor      	r12, r10
 a98:	6f1d      	xor      	r12, r7
 a9a:	c7c34903 	rotli      	r3, r3, 30
 a9e:	c42c4901 	rotli      	r1, r12, 1
 aa2:	b828      	st.w      	r1, (r14, 0x20)
 aa4:	c4642421 	or      	r1, r4, r3
 aa8:	c4412026 	and      	r6, r1, r2
 aac:	9808      	ld.w      	r0, (r14, 0x20)
 aae:	c4642021 	and      	r1, r4, r3
 ab2:	6c58      	or      	r1, r6
 ab4:	58d4      	addu      	r6, r0, r5
 ab6:	61ac      	addu      	r6, r11
 ab8:	6058      	addu      	r1, r6
 aba:	c4ad4906 	rotli      	r6, r13, 5
 abe:	6184      	addu      	r6, r1
 ac0:	9810      	ld.w      	r0, (r14, 0x40)
 ac2:	9829      	ld.w      	r1, (r14, 0x24)
 ac4:	6c05      	xor      	r0, r1
 ac6:	9825      	ld.w      	r1, (r14, 0x14)
 ac8:	6c05      	xor      	r0, r1
 aca:	982c      	ld.w      	r1, (r14, 0x30)
 acc:	6c05      	xor      	r0, r1
 ace:	c7c44904 	rotli      	r4, r4, 30
 ad2:	c4204901 	rotli      	r1, r0, 1
 ad6:	b829      	st.w      	r1, (r14, 0x24)
 ad8:	c48d2421 	or      	r1, r13, r4
 adc:	c4612025 	and      	r5, r1, r3
 ae0:	c48d2021 	and      	r1, r13, r4
 ae4:	9809      	ld.w      	r0, (r14, 0x24)
 ae6:	6c54      	or      	r1, r5
 ae8:	00b6      	lrw      	r5, 0x8f1bbcdc	// e8c <SHA1Transform+0xe8c>
 aea:	6140      	addu      	r5, r0
 aec:	6148      	addu      	r5, r2
 aee:	6054      	addu      	r1, r5
 af0:	c4a64905 	rotli      	r5, r6, 5
 af4:	984a      	ld.w      	r2, (r14, 0x28)
 af6:	6144      	addu      	r5, r1
 af8:	982b      	ld.w      	r1, (r14, 0x2c)
 afa:	6c49      	xor      	r1, r2
 afc:	6c65      	xor      	r1, r9
 afe:	9847      	ld.w      	r2, (r14, 0x1c)
 b00:	6c49      	xor      	r1, r2
 b02:	c4214902 	rotli      	r2, r1, 1
 b06:	b84a      	st.w      	r2, (r14, 0x28)
 b08:	c7cd490d 	rotli      	r13, r13, 30
 b0c:	982a      	ld.w      	r1, (r14, 0x28)
 b0e:	001e      	lrw      	r0, 0xca62c1d6	// e90 <SHA1Transform+0xe90>
 b10:	c5a42442 	xor      	r2, r4, r13
 b14:	c401002c 	addu      	r12, r1, r0
 b18:	630c      	addu      	r12, r3
 b1a:	6c99      	xor      	r2, r6
 b1c:	60b0      	addu      	r2, r12
 b1e:	c4a5490c 	rotli      	r12, r5, 5
 b22:	6308      	addu      	r12, r2
 b24:	9870      	ld.w      	r3, (r14, 0x40)
 b26:	9842      	ld.w      	r2, (r14, 0x8)
 b28:	6c8d      	xor      	r2, r3
 b2a:	9866      	ld.w      	r3, (r14, 0x18)
 b2c:	6c8d      	xor      	r2, r3
 b2e:	9868      	ld.w      	r3, (r14, 0x20)
 b30:	6c8d      	xor      	r2, r3
 b32:	c4224903 	rotli      	r3, r2, 1
 b36:	b86d      	st.w      	r3, (r14, 0x34)
 b38:	c7c64906 	rotli      	r6, r6, 30
 b3c:	984d      	ld.w      	r2, (r14, 0x34)
 b3e:	c4cd2443 	xor      	r3, r13, r6
 b42:	6c43      	mov      	r1, r0
 b44:	6008      	addu      	r0, r2
 b46:	6010      	addu      	r0, r4
 b48:	6cd5      	xor      	r3, r5
 b4a:	60c0      	addu      	r3, r0
 b4c:	c4ac4900 	rotli      	r0, r12, 5
 b50:	9843      	ld.w      	r2, (r14, 0xc)
 b52:	600c      	addu      	r0, r3
 b54:	986b      	ld.w      	r3, (r14, 0x2c)
 b56:	c4432444 	xor      	r4, r3, r2
 b5a:	6d21      	xor      	r4, r8
 b5c:	9869      	ld.w      	r3, (r14, 0x24)
 b5e:	6d0d      	xor      	r4, r3
 b60:	c4244903 	rotli      	r3, r4, 1
 b64:	b86b      	st.w      	r3, (r14, 0x2c)
 b66:	c7c54905 	rotli      	r5, r5, 30
 b6a:	984b      	ld.w      	r2, (r14, 0x2c)
 b6c:	c4a62443 	xor      	r3, r6, r5
 b70:	6048      	addu      	r1, r2
 b72:	6074      	addu      	r1, r13
 b74:	6cf1      	xor      	r3, r12
 b76:	60c4      	addu      	r3, r1
 b78:	c4a04901 	rotli      	r1, r0, 5
 b7c:	604c      	addu      	r1, r3
 b7e:	9844      	ld.w      	r2, (r14, 0x10)
 b80:	9862      	ld.w      	r3, (r14, 0x8)
 b82:	6cc9      	xor      	r3, r2
 b84:	6cdd      	xor      	r3, r7
 b86:	984a      	ld.w      	r2, (r14, 0x28)
 b88:	6cc9      	xor      	r3, r2
 b8a:	c7cc490c 	rotli      	r12, r12, 30
 b8e:	c4234903 	rotli      	r3, r3, 1
 b92:	015f      	lrw      	r2, 0xca62c1d6	// e90 <SHA1Transform+0xe90>
 b94:	b862      	st.w      	r3, (r14, 0x8)
 b96:	c585244d 	xor      	r13, r5, r12
 b9a:	60c8      	addu      	r3, r2
 b9c:	5b58      	addu      	r2, r3, r6
 b9e:	6f41      	xor      	r13, r0
 ba0:	9863      	ld.w      	r3, (r14, 0xc)
 ba2:	6348      	addu      	r13, r2
 ba4:	c4a14902 	rotli      	r2, r1, 5
 ba8:	60b4      	addu      	r2, r13
 baa:	6ce9      	xor      	r3, r10
 bac:	d9ae200c 	ld.w      	r13, (r14, 0x30)
 bb0:	6cf5      	xor      	r3, r13
 bb2:	d9ae200d 	ld.w      	r13, (r14, 0x34)
 bb6:	6cf5      	xor      	r3, r13
 bb8:	c4234903 	rotli      	r3, r3, 1
 bbc:	b863      	st.w      	r3, (r14, 0xc)
 bbe:	c7c04900 	rotli      	r0, r0, 30
 bc2:	d9ae2003 	ld.w      	r13, (r14, 0xc)
 bc6:	028c      	lrw      	r4, 0xca62c1d6	// e90 <SHA1Transform+0xe90>
 bc8:	c40c2443 	xor      	r3, r12, r0
 bcc:	c48d002b 	addu      	r11, r13, r4
 bd0:	62d4      	addu      	r11, r5
 bd2:	6cc5      	xor      	r3, r1
 bd4:	60ec      	addu      	r3, r11
 bd6:	c4a2490b 	rotli      	r11, r2, 5
 bda:	62cc      	addu      	r11, r3
 bdc:	d9ae2005 	ld.w      	r13, (r14, 0x14)
 be0:	9864      	ld.w      	r3, (r14, 0x10)
 be2:	6cf5      	xor      	r3, r13
 be4:	d9ae2007 	ld.w      	r13, (r14, 0x1c)
 be8:	6cf5      	xor      	r3, r13
 bea:	d9ae200b 	ld.w      	r13, (r14, 0x2c)
 bee:	6cf5      	xor      	r3, r13
 bf0:	c7c14901 	rotli      	r1, r1, 30
 bf4:	c4234903 	rotli      	r3, r3, 1
 bf8:	b864      	st.w      	r3, (r14, 0x10)
 bfa:	c420244d 	xor      	r13, r0, r1
 bfe:	60d0      	addu      	r3, r4
 c00:	60f0      	addu      	r3, r12
 c02:	6f49      	xor      	r13, r2
 c04:	634c      	addu      	r13, r3
 c06:	c4ab4903 	rotli      	r3, r11, 5
 c0a:	60f4      	addu      	r3, r13
 c0c:	c52a244c 	xor      	r12, r10, r9
 c10:	d9ae2008 	ld.w      	r13, (r14, 0x20)
 c14:	6f35      	xor      	r12, r13
 c16:	d9ae2002 	ld.w      	r13, (r14, 0x8)
 c1a:	6f35      	xor      	r12, r13
 c1c:	c7c24902 	rotli      	r2, r2, 30
 c20:	c42c490c 	rotli      	r12, r12, 1
 c24:	c441244d 	xor      	r13, r1, r2
 c28:	6130      	addu      	r4, r12
 c2a:	6100      	addu      	r4, r0
 c2c:	6f6d      	xor      	r13, r11
 c2e:	6350      	addu      	r13, r4
 c30:	c4a34904 	rotli      	r4, r3, 5
 c34:	6134      	addu      	r4, r13
 c36:	9805      	ld.w      	r0, (r14, 0x14)
 c38:	d9ae2006 	ld.w      	r13, (r14, 0x18)
 c3c:	6c35      	xor      	r0, r13
 c3e:	d9ae2009 	ld.w      	r13, (r14, 0x24)
 c42:	6c35      	xor      	r0, r13
 c44:	d9ae2003 	ld.w      	r13, (r14, 0xc)
 c48:	6c35      	xor      	r0, r13
 c4a:	c7cb490b 	rotli      	r11, r11, 30
 c4e:	c4204900 	rotli      	r0, r0, 1
 c52:	ea8d0090 	lrw      	r13, 0xca62c1d6	// e90 <SHA1Transform+0xe90>
 c56:	c5622445 	xor      	r5, r2, r11
 c5a:	6340      	addu      	r13, r0
 c5c:	6344      	addu      	r13, r1
 c5e:	6d4d      	xor      	r5, r3
 c60:	6174      	addu      	r5, r13
 c62:	c4a4490d 	rotli      	r13, r4, 5
 c66:	6354      	addu      	r13, r5
 c68:	c5092441 	xor      	r1, r9, r8
 c6c:	98aa      	ld.w      	r5, (r14, 0x28)
 c6e:	6c55      	xor      	r1, r5
 c70:	98a4      	ld.w      	r5, (r14, 0x10)
 c72:	6c55      	xor      	r1, r5
 c74:	c7c34903 	rotli      	r3, r3, 30
 c78:	c4214901 	rotli      	r1, r1, 1
 c7c:	03da      	lrw      	r6, 0xca62c1d6	// e90 <SHA1Transform+0xe90>
 c7e:	c46b2445 	xor      	r5, r11, r3
 c82:	c4c1002a 	addu      	r10, r1, r6
 c86:	6288      	addu      	r10, r2
 c88:	6d51      	xor      	r5, r4
 c8a:	6168      	addu      	r5, r10
 c8c:	9846      	ld.w      	r2, (r14, 0x18)
 c8e:	c4ad490a 	rotli      	r10, r13, 5
 c92:	6294      	addu      	r10, r5
 c94:	6c9d      	xor      	r2, r7
 c96:	98ad      	ld.w      	r5, (r14, 0x34)
 c98:	6c95      	xor      	r2, r5
 c9a:	6cb1      	xor      	r2, r12
 c9c:	c7c44904 	rotli      	r4, r4, 30
 ca0:	c4224902 	rotli      	r2, r2, 1
 ca4:	c4832445 	xor      	r5, r3, r4
 ca8:	c4c20029 	addu      	r9, r2, r6
 cac:	626c      	addu      	r9, r11
 cae:	6d75      	xor      	r5, r13
 cb0:	6164      	addu      	r5, r9
 cb2:	c4aa4909 	rotli      	r9, r10, 5
 cb6:	6254      	addu      	r9, r5
 cb8:	98ac      	ld.w      	r5, (r14, 0x30)
 cba:	98cb      	ld.w      	r6, (r14, 0x2c)
 cbc:	6d61      	xor      	r5, r8
 cbe:	6d59      	xor      	r5, r6
 cc0:	6d41      	xor      	r5, r0
 cc2:	c4254905 	rotli      	r5, r5, 1
 cc6:	b8a5      	st.w      	r5, (r14, 0x14)
 cc8:	c7cd490d 	rotli      	r13, r13, 30
 ccc:	98c5      	ld.w      	r6, (r14, 0x14)
 cce:	ea880071 	lrw      	r8, 0xca62c1d6	// e90 <SHA1Transform+0xe90>
 cd2:	c5a42445 	xor      	r5, r4, r13
 cd6:	6218      	addu      	r8, r6
 cd8:	620c      	addu      	r8, r3
 cda:	6d69      	xor      	r5, r10
 cdc:	6160      	addu      	r5, r8
 cde:	9867      	ld.w      	r3, (r14, 0x1c)
 ce0:	c4a94908 	rotli      	r8, r9, 5
 ce4:	6214      	addu      	r8, r5
 ce6:	6cdd      	xor      	r3, r7
 ce8:	98a2      	ld.w      	r5, (r14, 0x8)
 cea:	6cd5      	xor      	r3, r5
 cec:	6cc5      	xor      	r3, r1
 cee:	c7ca490a 	rotli      	r10, r10, 30
 cf2:	c4234903 	rotli      	r3, r3, 1
 cf6:	13c7      	lrw      	r6, 0xca62c1d6	// e90 <SHA1Transform+0xe90>
 cf8:	c54d2445 	xor      	r5, r13, r10
 cfc:	5bf8      	addu      	r7, r3, r6
 cfe:	61d0      	addu      	r7, r4
 d00:	6d65      	xor      	r5, r9
 d02:	615c      	addu      	r5, r7
 d04:	c4a84907 	rotli      	r7, r8, 5
 d08:	61d4      	addu      	r7, r5
 d0a:	988c      	ld.w      	r4, (r14, 0x30)
 d0c:	98a8      	ld.w      	r5, (r14, 0x20)
 d0e:	6d15      	xor      	r4, r5
 d10:	98a3      	ld.w      	r5, (r14, 0xc)
 d12:	6d15      	xor      	r4, r5
 d14:	6d09      	xor      	r4, r2
 d16:	c7c94909 	rotli      	r9, r9, 30
 d1a:	c4244904 	rotli      	r4, r4, 1
 d1e:	c52a2445 	xor      	r5, r10, r9
 d22:	6190      	addu      	r6, r4
 d24:	61b4      	addu      	r6, r13
 d26:	6d61      	xor      	r5, r8
 d28:	6158      	addu      	r5, r6
 d2a:	c4a74906 	rotli      	r6, r7, 5
 d2e:	6194      	addu      	r6, r5
 d30:	d9ae2007 	ld.w      	r13, (r14, 0x1c)
 d34:	98a9      	ld.w      	r5, (r14, 0x24)
 d36:	6f55      	xor      	r13, r5
 d38:	98a4      	ld.w      	r5, (r14, 0x10)
 d3a:	6f55      	xor      	r13, r5
 d3c:	98a5      	ld.w      	r5, (r14, 0x14)
 d3e:	6f55      	xor      	r13, r5
 d40:	c7c84908 	rotli      	r8, r8, 30
 d44:	c42d490d 	rotli      	r13, r13, 1
 d48:	12b2      	lrw      	r5, 0xca62c1d6	// e90 <SHA1Transform+0xe90>
 d4a:	c509244b 	xor      	r11, r9, r8
 d4e:	6174      	addu      	r5, r13
 d50:	6168      	addu      	r5, r10
 d52:	6edd      	xor      	r11, r7
 d54:	62d4      	addu      	r11, r5
 d56:	c4a64905 	rotli      	r5, r6, 5
 d5a:	616c      	addu      	r5, r11
 d5c:	d94e2008 	ld.w      	r10, (r14, 0x20)
 d60:	d96e200a 	ld.w      	r11, (r14, 0x28)
 d64:	6ead      	xor      	r10, r11
 d66:	6f29      	xor      	r12, r10
 d68:	6f0d      	xor      	r12, r3
 d6a:	c7c74907 	rotli      	r7, r7, 30
 d6e:	c42c490c 	rotli      	r12, r12, 1
 d72:	ea8a0048 	lrw      	r10, 0xca62c1d6	// e90 <SHA1Transform+0xe90>
 d76:	c4e8244b 	xor      	r11, r8, r7
 d7a:	62b0      	addu      	r10, r12
 d7c:	6268      	addu      	r9, r10
 d7e:	6ed9      	xor      	r11, r6
 d80:	62e4      	addu      	r11, r9
 d82:	c4a54909 	rotli      	r9, r5, 5
 d86:	62e4      	addu      	r11, r9
 d88:	d94e200d 	ld.w      	r10, (r14, 0x34)
 d8c:	d92e2009 	ld.w      	r9, (r14, 0x24)
 d90:	6e69      	xor      	r9, r10
 d92:	6c25      	xor      	r0, r9
 d94:	6d01      	xor      	r4, r0
 d96:	c7c64906 	rotli      	r6, r6, 30
 d9a:	c4244904 	rotli      	r4, r4, 1
 d9e:	111d      	lrw      	r0, 0xca62c1d6	// e90 <SHA1Transform+0xe90>
 da0:	c4c72449 	xor      	r9, r7, r6
 da4:	6010      	addu      	r0, r4
 da6:	6200      	addu      	r8, r0
 da8:	6e55      	xor      	r9, r5
 daa:	c4ab4900 	rotli      	r0, r11, 5
 dae:	6260      	addu      	r9, r8
 db0:	6240      	addu      	r9, r0
 db2:	d90e200b 	ld.w      	r8, (r14, 0x2c)
 db6:	980a      	ld.w      	r0, (r14, 0x28)
 db8:	6c21      	xor      	r0, r8
 dba:	6c41      	xor      	r1, r0
 dbc:	6f45      	xor      	r13, r1
 dbe:	c7c54905 	rotli      	r5, r5, 30
 dc2:	c42d490d 	rotli      	r13, r13, 1
 dc6:	1133      	lrw      	r1, 0xca62c1d6	// e90 <SHA1Transform+0xe90>
 dc8:	c4a62440 	xor      	r0, r6, r5
 dcc:	6074      	addu      	r1, r13
 dce:	61c4      	addu      	r7, r1
 dd0:	6c2d      	xor      	r0, r11
 dd2:	601c      	addu      	r0, r7
 dd4:	c4a94901 	rotli      	r1, r9, 5
 dd8:	6040      	addu      	r1, r0
 dda:	98e2      	ld.w      	r7, (r14, 0x8)
 ddc:	6c2b      	mov      	r0, r10
 dde:	6c1d      	xor      	r0, r7
 de0:	6c81      	xor      	r2, r0
 de2:	6cb1      	xor      	r2, r12
 de4:	110b      	lrw      	r0, 0xca62c1d6	// e90 <SHA1Transform+0xe90>
 de6:	c4224902 	rotli      	r2, r2, 1
 dea:	c7cb490b 	rotli      	r11, r11, 30
 dee:	6080      	addu      	r2, r0
 df0:	6098      	addu      	r2, r6
 df2:	c5652446 	xor      	r6, r5, r11
 df6:	6da5      	xor      	r6, r9
 df8:	6188      	addu      	r6, r2
 dfa:	c4a14902 	rotli      	r2, r1, 5
 dfe:	9803      	ld.w      	r0, (r14, 0xc)
 e00:	6188      	addu      	r6, r2
 e02:	6ca3      	mov      	r2, r8
 e04:	6c81      	xor      	r2, r0
 e06:	9805      	ld.w      	r0, (r14, 0x14)
 e08:	6c81      	xor      	r2, r0
 e0a:	6c91      	xor      	r2, r4
 e0c:	1101      	lrw      	r0, 0xca62c1d6	// e90 <SHA1Transform+0xe90>
 e0e:	c4224902 	rotli      	r2, r2, 1
 e12:	c7c94909 	rotli      	r9, r9, 30
 e16:	6080      	addu      	r2, r0
 e18:	6148      	addu      	r5, r2
 e1a:	c52b2442 	xor      	r2, r11, r9
 e1e:	6c85      	xor      	r2, r1
 e20:	6148      	addu      	r5, r2
 e22:	c4a64902 	rotli      	r2, r6, 5
 e26:	6148      	addu      	r5, r2
 e28:	9804      	ld.w      	r0, (r14, 0x10)
 e2a:	6c9f      	mov      	r2, r7
 e2c:	6c81      	xor      	r2, r0
 e2e:	6cc9      	xor      	r3, r2
 e30:	6f4d      	xor      	r13, r3
 e32:	1058      	lrw      	r2, 0xca62c1d6	// e90 <SHA1Transform+0xe90>
 e34:	9871      	ld.w      	r3, (r14, 0x44)
 e36:	60c8      	addu      	r3, r2
 e38:	c7c14901 	rotli      	r1, r1, 30
 e3c:	c42d490d 	rotli      	r13, r13, 1
 e40:	634c      	addu      	r13, r3
 e42:	c4292443 	xor      	r3, r9, r1
 e46:	6cd9      	xor      	r3, r6
 e48:	62f4      	addu      	r11, r13
 e4a:	62cc      	addu      	r11, r3
 e4c:	c4a54903 	rotli      	r3, r5, 5
 e50:	62cc      	addu      	r11, r3
 e52:	9860      	ld.w      	r3, (r14, 0x0)
 e54:	c7c64906 	rotli      	r6, r6, 30
 e58:	dd632000 	st.w      	r11, (r3, 0x0)
 e5c:	9873      	ld.w      	r3, (r14, 0x4c)
 e5e:	614c      	addu      	r5, r3
 e60:	9860      	ld.w      	r3, (r14, 0x0)
 e62:	b3a1      	st.w      	r5, (r3, 0x4)
 e64:	9861      	ld.w      	r3, (r14, 0x4)
 e66:	618c      	addu      	r6, r3
 e68:	9860      	ld.w      	r3, (r14, 0x0)
 e6a:	b3c2      	st.w      	r6, (r3, 0x8)
 e6c:	9872      	ld.w      	r3, (r14, 0x48)
 e6e:	604c      	addu      	r1, r3
 e70:	9860      	ld.w      	r3, (r14, 0x0)
 e72:	b323      	st.w      	r1, (r3, 0xc)
 e74:	9874      	ld.w      	r3, (r14, 0x50)
 e76:	624c      	addu      	r9, r3
 e78:	9860      	ld.w      	r3, (r14, 0x0)
 e7a:	dd232004 	st.w      	r9, (r3, 0x10)
 e7e:	1505      	addi      	r14, r14, 148
 e80:	1498      	pop      	r4-r11, r15
 e82:	0000      	.short	0x0000
 e84:	5a827999 	.long	0x5a827999
 e88:	6ed9eba1 	.long	0x6ed9eba1
 e8c:	8f1bbcdc 	.long	0x8f1bbcdc
 e90:	ca62c1d6 	.long	0xca62c1d6

Disassembly of section .text.SHA1Init:

00000000 <SHA1Init>:
   0:	1067      	lrw      	r3, 0x67452301	// 1c <SHA1Init+0x1c>
   2:	b060      	st.w      	r3, (r0, 0x0)
   4:	1067      	lrw      	r3, 0xefcdab89	// 20 <SHA1Init+0x20>
   6:	b061      	st.w      	r3, (r0, 0x4)
   8:	1067      	lrw      	r3, 0x98badcfe	// 24 <SHA1Init+0x24>
   a:	b062      	st.w      	r3, (r0, 0x8)
   c:	1067      	lrw      	r3, 0x10325476	// 28 <SHA1Init+0x28>
   e:	b063      	st.w      	r3, (r0, 0xc)
  10:	1067      	lrw      	r3, 0xc3d2e1f0	// 2c <SHA1Init+0x2c>
  12:	b064      	st.w      	r3, (r0, 0x10)
  14:	3300      	movi      	r3, 0
  16:	b066      	st.w      	r3, (r0, 0x18)
  18:	b065      	st.w      	r3, (r0, 0x14)
  1a:	783c      	jmp      	r15
  1c:	67452301 	.long	0x67452301
  20:	efcdab89 	.long	0xefcdab89
  24:	98badcfe 	.long	0x98badcfe
  28:	10325476 	.long	0x10325476
  2c:	c3d2e1f0 	.long	0xc3d2e1f0

Disassembly of section .text.SHA1Update:

00000000 <SHA1Update>:
   0:	14d4      	push      	r4-r7, r15
   2:	9065      	ld.w      	r3, (r0, 0x14)
   4:	6d8b      	mov      	r6, r2
   6:	4243      	lsli      	r2, r2, 3
   8:	6d03      	mov      	r4, r0
   a:	c4635500 	zext      	r0, r3, 8, 3
   e:	60c8      	addu      	r3, r2
  10:	648c      	cmphs      	r3, r2
  12:	6dc7      	mov      	r7, r1
  14:	b465      	st.w      	r3, (r4, 0x14)
  16:	0804      	bt      	0x1e	// 1e <SHA1Update+0x1e>
  18:	9466      	ld.w      	r3, (r4, 0x18)
  1a:	2300      	addi      	r3, 1
  1c:	b466      	st.w      	r3, (r4, 0x18)
  1e:	9446      	ld.w      	r2, (r4, 0x18)
  20:	4e7d      	lsri      	r3, r6, 29
  22:	60c8      	addu      	r3, r2
  24:	b466      	st.w      	r3, (r4, 0x18)
  26:	5878      	addu      	r3, r0, r6
  28:	eb03003f 	cmphsi      	r3, 64
  2c:	0c20      	bf      	0x6c	// 6c <SHA1Update+0x6c>
  2e:	3540      	movi      	r5, 64
  30:	6142      	subu      	r5, r0
  32:	201b      	addi      	r0, 28
  34:	6c5f      	mov      	r1, r7
  36:	6c97      	mov      	r2, r5
  38:	6010      	addu      	r0, r4
  3a:	e0000000 	bsr      	0x0	// 0 <memcpy>
  3e:	e424001b 	addi      	r1, r4, 28
  42:	6c13      	mov      	r0, r4
  44:	e0000000 	bsr      	0x0	// 0 <SHA1Update>
  48:	e465003e 	addi      	r3, r5, 63
  4c:	658c      	cmphs      	r3, r6
  4e:	0c09      	bf      	0x60	// 60 <SHA1Update+0x60>
  50:	3000      	movi      	r0, 0
  52:	201b      	addi      	r0, 28
  54:	5e55      	subu      	r2, r6, r5
  56:	5f34      	addu      	r1, r7, r5
  58:	6010      	addu      	r0, r4
  5a:	e0000000 	bsr      	0x0	// 0 <memcpy>
  5e:	1494      	pop      	r4-r7, r15
  60:	5f34      	addu      	r1, r7, r5
  62:	6c13      	mov      	r0, r4
  64:	e0000000 	bsr      	0x0	// 0 <SHA1Update>
  68:	253f      	addi      	r5, 64
  6a:	07ef      	br      	0x48	// 48 <SHA1Update+0x48>
  6c:	3500      	movi      	r5, 0
  6e:	07f2      	br      	0x52	// 52 <SHA1Update+0x52>

Disassembly of section .text.SHA1Final:

00000000 <SHA1Final>:
   0:	14d3      	push      	r4-r6, r15
   2:	1422      	subi      	r14, r14, 8
   4:	6d83      	mov      	r6, r0
   6:	6d07      	mov      	r4, r1
   8:	3300      	movi      	r3, 0
   a:	3b03      	cmphsi      	r3, 4
   c:	6443      	mvcv      	r1
   e:	c4632482 	nor      	r2, r3, r3
  12:	2104      	addi      	r1, 5
  14:	e4422003 	andi      	r2, r2, 3
  18:	4243      	lsli      	r2, r2, 3
  1a:	d0240881 	ldr.w      	r1, (r4, r1 << 2)
  1e:	c4414042 	lsr      	r2, r1, r2
  22:	d5c30022 	str.b      	r2, (r3, r14 << 0)
  26:	2300      	addi      	r3, 1
  28:	3b48      	cmpnei      	r3, 8
  2a:	0bf0      	bt      	0xa	// a <SHA1Final+0xa>
  2c:	3201      	movi      	r2, 1
  2e:	103d      	lrw      	r1, 0x0	// a0 <SHA1Final+0xa0>
  30:	6c13      	mov      	r0, r4
  32:	e0000000 	bsr      	0x0	// 0 <SHA1Final>
  36:	10bc      	lrw      	r5, 0x0	// a4 <SHA1Final+0xa4>
  38:	9465      	ld.w      	r3, (r4, 0x14)
  3a:	e46321f8 	andi      	r3, r3, 504
  3e:	eb4301c0 	cmpnei      	r3, 448
  42:	0829      	bt      	0x94	// 94 <SHA1Final+0x94>
  44:	3208      	movi      	r2, 8
  46:	6c7b      	mov      	r1, r14
  48:	6c13      	mov      	r0, r4
  4a:	e0000000 	bsr      	0x0	// 0 <SHA1Final>
  4e:	3500      	movi      	r5, 0
  50:	c4a52483 	nor      	r3, r5, r5
  54:	4d42      	lsri      	r2, r5, 2
  56:	e4632003 	andi      	r3, r3, 3
  5a:	d0440882 	ldr.w      	r2, (r4, r2 << 2)
  5e:	4363      	lsli      	r3, r3, 3
  60:	c4624043 	lsr      	r3, r2, r3
  64:	d4a60023 	str.b      	r3, (r6, r5 << 0)
  68:	2500      	addi      	r5, 1
  6a:	3d54      	cmpnei      	r5, 20
  6c:	0bf2      	bt      	0x50	// 50 <SHA1Final+0x50>
  6e:	3240      	movi      	r2, 64
  70:	3100      	movi      	r1, 0
  72:	e404001b 	addi      	r0, r4, 28
  76:	e0000000 	bsr      	0x0	// 0 <memset>
  7a:	6c97      	mov      	r2, r5
  7c:	3100      	movi      	r1, 0
  7e:	6c13      	mov      	r0, r4
  80:	e0000000 	bsr      	0x0	// 0 <memset>
  84:	3208      	movi      	r2, 8
  86:	3100      	movi      	r1, 0
  88:	e4040013 	addi      	r0, r4, 20
  8c:	e0000000 	bsr      	0x0	// 0 <memset>
  90:	1402      	addi      	r14, r14, 8
  92:	1493      	pop      	r4-r6, r15
  94:	3201      	movi      	r2, 1
  96:	6c57      	mov      	r1, r5
  98:	6c13      	mov      	r0, r4
  9a:	e0000000 	bsr      	0x0	// 0 <SHA1Final>
  9e:	07cd      	br      	0x38	// 38 <SHA1Final+0x38>
	...

Disassembly of section .text.sha1_vector:

00000000 <sha1_vector>:
   0:	14d5      	push      	r4-r8, r15
   2:	1437      	subi      	r14, r14, 92
   4:	6d83      	mov      	r6, r0
   6:	6c3b      	mov      	r0, r14
   8:	6dc7      	mov      	r7, r1
   a:	6e0b      	mov      	r8, r2
   c:	6d4f      	mov      	r5, r3
   e:	3400      	movi      	r4, 0
  10:	e0000000 	bsr      	0x0	// 0 <sha1_vector>
  14:	6592      	cmpne      	r4, r6
  16:	0808      	bt      	0x26	// 26 <sha1_vector+0x26>
  18:	6c17      	mov      	r0, r5
  1a:	6c7b      	mov      	r1, r14
  1c:	e0000000 	bsr      	0x0	// 0 <sha1_vector>
  20:	3000      	movi      	r0, 0
  22:	1417      	addi      	r14, r14, 92
  24:	1495      	pop      	r4-r8, r15
  26:	d0880882 	ldr.w      	r2, (r8, r4 << 2)
  2a:	d0870881 	ldr.w      	r1, (r7, r4 << 2)
  2e:	6c3b      	mov      	r0, r14
  30:	e0000000 	bsr      	0x0	// 0 <sha1_vector>
  34:	2400      	addi      	r4, 1
  36:	07ef      	br      	0x14	// 14 <sha1_vector+0x14>
