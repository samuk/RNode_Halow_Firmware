
libwifi/o/lib_aes-internal.o:     file format elf32-csky-little


Disassembly of section .text.rijndaelKeySetupEnc:

00000000 <rijndaelKeySetupEnc>:
   0:	14c4      	push      	r4-r7
   2:	6cc3      	mov      	r3, r0
   4:	d9810001 	ld.b      	r12, (r1, 0x1)
   8:	8100      	ld.b      	r0, (r1, 0x0)
   a:	c60c482c 	lsli      	r12, r12, 16
   e:	4018      	lsli      	r0, r0, 24
  10:	6c31      	xor      	r0, r12
  12:	d9810003 	ld.b      	r12, (r1, 0x3)
  16:	6c31      	xor      	r0, r12
  18:	d9810002 	ld.b      	r12, (r1, 0x2)
  1c:	c50c482c 	lsli      	r12, r12, 8
  20:	6c31      	xor      	r0, r12
  22:	b300      	st.w      	r0, (r3, 0x0)
  24:	8104      	ld.b      	r0, (r1, 0x4)
  26:	d9810005 	ld.b      	r12, (r1, 0x5)
  2a:	c60c482c 	lsli      	r12, r12, 16
  2e:	4018      	lsli      	r0, r0, 24
  30:	6c31      	xor      	r0, r12
  32:	d9810007 	ld.b      	r12, (r1, 0x7)
  36:	6c31      	xor      	r0, r12
  38:	d9810006 	ld.b      	r12, (r1, 0x6)
  3c:	c50c482c 	lsli      	r12, r12, 8
  40:	6c31      	xor      	r0, r12
  42:	b301      	st.w      	r0, (r3, 0x4)
  44:	8108      	ld.b      	r0, (r1, 0x8)
  46:	d9810009 	ld.b      	r12, (r1, 0x9)
  4a:	c60c482c 	lsli      	r12, r12, 16
  4e:	4018      	lsli      	r0, r0, 24
  50:	6c31      	xor      	r0, r12
  52:	d981000b 	ld.b      	r12, (r1, 0xb)
  56:	6c31      	xor      	r0, r12
  58:	d981000a 	ld.b      	r12, (r1, 0xa)
  5c:	c50c482c 	lsli      	r12, r12, 8
  60:	6c31      	xor      	r0, r12
  62:	b302      	st.w      	r0, (r3, 0x8)
  64:	810c      	ld.b      	r0, (r1, 0xc)
  66:	d981000d 	ld.b      	r12, (r1, 0xd)
  6a:	c60c482c 	lsli      	r12, r12, 16
  6e:	4018      	lsli      	r0, r0, 24
  70:	6c31      	xor      	r0, r12
  72:	d981000f 	ld.b      	r12, (r1, 0xf)
  76:	6c31      	xor      	r0, r12
  78:	d981000e 	ld.b      	r12, (r1, 0xe)
  7c:	c50c482c 	lsli      	r12, r12, 8
  80:	eb420080 	cmpnei      	r2, 128
  84:	6c31      	xor      	r0, r12
  86:	b303      	st.w      	r0, (r3, 0xc)
  88:	0839      	bt      	0xfa	// fa <rijndaelKeySetupEnc+0xfa>
  8a:	34ff      	movi      	r4, 255
  8c:	ea0d00ff 	movi      	r13, 255
  90:	3000      	movi      	r0, 0
  92:	ea8c008f 	lrw      	r12, 0x0	// 2cc <rijndaelKeySetupEnc+0x2cc>
  96:	4488      	lsli      	r4, r4, 8
  98:	03b1      	lrw      	r5, 0x0	// 2d0 <rijndaelKeySetupEnc+0x2d0>
  9a:	c60d482d 	lsli      	r13, r13, 16
  9e:	9323      	ld.w      	r1, (r3, 0xc)
  a0:	e44120ff 	andi      	r2, r1, 255
  a4:	d0050026 	ldr.b      	r6, (r5, r0 << 0)
  a8:	d04c0882 	ldr.w      	r2, (r12, r2 << 2)
  ac:	46d8      	lsli      	r6, r6, 24
  ae:	6890      	and      	r2, r4
  b0:	6c99      	xor      	r2, r6
  b2:	93c0      	ld.w      	r6, (r3, 0x0)
  b4:	6c99      	xor      	r2, r6
  b6:	c50155e6 	zext      	r6, r1, 15, 8
  ba:	d0cc0886 	ldr.w      	r6, (r12, r6 << 2)
  be:	69b4      	and      	r6, r13
  c0:	6c99      	xor      	r2, r6
  c2:	49d8      	lsri      	r6, r1, 24
  c4:	d0cc0886 	ldr.w      	r6, (r12, r6 << 2)
  c8:	c50655e6 	zext      	r6, r6, 15, 8
  cc:	6c99      	xor      	r2, r6
  ce:	c60156e6 	zext      	r6, r1, 23, 16
  d2:	d0cc0886 	ldr.w      	r6, (r12, r6 << 2)
  d6:	c60656e6 	zext      	r6, r6, 23, 16
  da:	46d8      	lsli      	r6, r6, 24
  dc:	6c99      	xor      	r2, r6
  de:	93c1      	ld.w      	r6, (r3, 0x4)
  e0:	b344      	st.w      	r2, (r3, 0x10)
  e2:	2000      	addi      	r0, 1
  e4:	6c99      	xor      	r2, r6
  e6:	93c2      	ld.w      	r6, (r3, 0x8)
  e8:	b345      	st.w      	r2, (r3, 0x14)
  ea:	384a      	cmpnei      	r0, 10
  ec:	6c99      	xor      	r2, r6
  ee:	b346      	st.w      	r2, (r3, 0x18)
  f0:	6c85      	xor      	r2, r1
  f2:	b347      	st.w      	r2, (r3, 0x1c)
  f4:	230f      	addi      	r3, 16
  f6:	0bd4      	bt      	0x9e	// 9e <rijndaelKeySetupEnc+0x9e>
  f8:	1484      	pop      	r4-r7
  fa:	8110      	ld.b      	r0, (r1, 0x10)
  fc:	d9810011 	ld.b      	r12, (r1, 0x11)
 100:	c60c482c 	lsli      	r12, r12, 16
 104:	4018      	lsli      	r0, r0, 24
 106:	6c31      	xor      	r0, r12
 108:	d9810013 	ld.b      	r12, (r1, 0x13)
 10c:	6c31      	xor      	r0, r12
 10e:	d9810012 	ld.b      	r12, (r1, 0x12)
 112:	c50c482c 	lsli      	r12, r12, 8
 116:	6c31      	xor      	r0, r12
 118:	b304      	st.w      	r0, (r3, 0x10)
 11a:	8114      	ld.b      	r0, (r1, 0x14)
 11c:	d9810015 	ld.b      	r12, (r1, 0x15)
 120:	c60c482c 	lsli      	r12, r12, 16
 124:	4018      	lsli      	r0, r0, 24
 126:	6c31      	xor      	r0, r12
 128:	d9810017 	ld.b      	r12, (r1, 0x17)
 12c:	6c31      	xor      	r0, r12
 12e:	d9810016 	ld.b      	r12, (r1, 0x16)
 132:	c50c482c 	lsli      	r12, r12, 8
 136:	eb4200c0 	cmpnei      	r2, 192
 13a:	6c31      	xor      	r0, r12
 13c:	b305      	st.w      	r0, (r3, 0x14)
 13e:	0841      	bt      	0x1c0	// 1c0 <rijndaelKeySetupEnc+0x1c0>
 140:	34ff      	movi      	r4, 255
 142:	ea0d00ff 	movi      	r13, 255
 146:	3000      	movi      	r0, 0
 148:	ea8c0061 	lrw      	r12, 0x0	// 2cc <rijndaelKeySetupEnc+0x2cc>
 14c:	4488      	lsli      	r4, r4, 8
 14e:	13a1      	lrw      	r5, 0x0	// 2d0 <rijndaelKeySetupEnc+0x2d0>
 150:	c60d482d 	lsli      	r13, r13, 16
 154:	9325      	ld.w      	r1, (r3, 0x14)
 156:	e44120ff 	andi      	r2, r1, 255
 15a:	d04c0882 	ldr.w      	r2, (r12, r2 << 2)
 15e:	d0050026 	ldr.b      	r6, (r5, r0 << 0)
 162:	46d8      	lsli      	r6, r6, 24
 164:	6890      	and      	r2, r4
 166:	6c99      	xor      	r2, r6
 168:	93c0      	ld.w      	r6, (r3, 0x0)
 16a:	6c99      	xor      	r2, r6
 16c:	c50155e6 	zext      	r6, r1, 15, 8
 170:	d0cc0886 	ldr.w      	r6, (r12, r6 << 2)
 174:	69b4      	and      	r6, r13
 176:	6c99      	xor      	r2, r6
 178:	49d8      	lsri      	r6, r1, 24
 17a:	d0cc0886 	ldr.w      	r6, (r12, r6 << 2)
 17e:	c50655e6 	zext      	r6, r6, 15, 8
 182:	6c99      	xor      	r2, r6
 184:	c60156e6 	zext      	r6, r1, 23, 16
 188:	d0cc0886 	ldr.w      	r6, (r12, r6 << 2)
 18c:	c60656e6 	zext      	r6, r6, 23, 16
 190:	46d8      	lsli      	r6, r6, 24
 192:	6c99      	xor      	r2, r6
 194:	93c1      	ld.w      	r6, (r3, 0x4)
 196:	b346      	st.w      	r2, (r3, 0x18)
 198:	6c99      	xor      	r2, r6
 19a:	93c2      	ld.w      	r6, (r3, 0x8)
 19c:	b347      	st.w      	r2, (r3, 0x1c)
 19e:	3847      	cmpnei      	r0, 7
 1a0:	6c99      	xor      	r2, r6
 1a2:	93c3      	ld.w      	r6, (r3, 0xc)
 1a4:	b348      	st.w      	r2, (r3, 0x20)
 1a6:	6c99      	xor      	r2, r6
 1a8:	b349      	st.w      	r2, (r3, 0x24)
 1aa:	0803      	bt      	0x1b0	// 1b0 <rijndaelKeySetupEnc+0x1b0>
 1ac:	300c      	movi      	r0, 12
 1ae:	07a5      	br      	0xf8	// f8 <rijndaelKeySetupEnc+0xf8>
 1b0:	93c4      	ld.w      	r6, (r3, 0x10)
 1b2:	6c99      	xor      	r2, r6
 1b4:	b34a      	st.w      	r2, (r3, 0x28)
 1b6:	6c85      	xor      	r2, r1
 1b8:	b34b      	st.w      	r2, (r3, 0x2c)
 1ba:	2000      	addi      	r0, 1
 1bc:	2317      	addi      	r3, 24
 1be:	07cb      	br      	0x154	// 154 <rijndaelKeySetupEnc+0x154>
 1c0:	8118      	ld.b      	r0, (r1, 0x18)
 1c2:	d9810019 	ld.b      	r12, (r1, 0x19)
 1c6:	c60c482c 	lsli      	r12, r12, 16
 1ca:	4018      	lsli      	r0, r0, 24
 1cc:	6c31      	xor      	r0, r12
 1ce:	d981001b 	ld.b      	r12, (r1, 0x1b)
 1d2:	6c31      	xor      	r0, r12
 1d4:	d981001a 	ld.b      	r12, (r1, 0x1a)
 1d8:	c50c482c 	lsli      	r12, r12, 8
 1dc:	6c31      	xor      	r0, r12
 1de:	b306      	st.w      	r0, (r3, 0x18)
 1e0:	811c      	ld.b      	r0, (r1, 0x1c)
 1e2:	d981001d 	ld.b      	r12, (r1, 0x1d)
 1e6:	c60c482c 	lsli      	r12, r12, 16
 1ea:	4018      	lsli      	r0, r0, 24
 1ec:	6c31      	xor      	r0, r12
 1ee:	d981001f 	ld.b      	r12, (r1, 0x1f)
 1f2:	813e      	ld.b      	r1, (r1, 0x1e)
 1f4:	6c31      	xor      	r0, r12
 1f6:	4128      	lsli      	r1, r1, 8
 1f8:	eb420100 	cmpnei      	r2, 256
 1fc:	6c41      	xor      	r1, r0
 1fe:	b327      	st.w      	r1, (r3, 0x1c)
 200:	0862      	bt      	0x2c4	// 2c4 <rijndaelKeySetupEnc+0x2c4>
 202:	34ff      	movi      	r4, 255
 204:	ea0d00ff 	movi      	r13, 255
 208:	ea0c0000 	movi      	r12, 0
 20c:	1130      	lrw      	r1, 0x0	// 2cc <rijndaelKeySetupEnc+0x2cc>
 20e:	4488      	lsli      	r4, r4, 8
 210:	11b0      	lrw      	r5, 0x0	// 2d0 <rijndaelKeySetupEnc+0x2d0>
 212:	c60d482d 	lsli      	r13, r13, 16
 216:	9307      	ld.w      	r0, (r3, 0x1c)
 218:	e44020ff 	andi      	r2, r0, 255
 21c:	d0410882 	ldr.w      	r2, (r1, r2 << 2)
 220:	d1850026 	ldr.b      	r6, (r5, r12 << 0)
 224:	46d8      	lsli      	r6, r6, 24
 226:	6890      	and      	r2, r4
 228:	6c99      	xor      	r2, r6
 22a:	93c0      	ld.w      	r6, (r3, 0x0)
 22c:	6c99      	xor      	r2, r6
 22e:	c50055e6 	zext      	r6, r0, 15, 8
 232:	d0c10886 	ldr.w      	r6, (r1, r6 << 2)
 236:	69b4      	and      	r6, r13
 238:	6c99      	xor      	r2, r6
 23a:	48d8      	lsri      	r6, r0, 24
 23c:	d0c10886 	ldr.w      	r6, (r1, r6 << 2)
 240:	c50655e6 	zext      	r6, r6, 15, 8
 244:	6c99      	xor      	r2, r6
 246:	c60056e6 	zext      	r6, r0, 23, 16
 24a:	d0c10886 	ldr.w      	r6, (r1, r6 << 2)
 24e:	c60656e6 	zext      	r6, r6, 23, 16
 252:	46d8      	lsli      	r6, r6, 24
 254:	6c99      	xor      	r2, r6
 256:	93c1      	ld.w      	r6, (r3, 0x4)
 258:	b348      	st.w      	r2, (r3, 0x20)
 25a:	6c99      	xor      	r2, r6
 25c:	93c2      	ld.w      	r6, (r3, 0x8)
 25e:	b349      	st.w      	r2, (r3, 0x24)
 260:	eb4c0006 	cmpnei      	r12, 6
 264:	6c99      	xor      	r2, r6
 266:	93c3      	ld.w      	r6, (r3, 0xc)
 268:	b34a      	st.w      	r2, (r3, 0x28)
 26a:	6c99      	xor      	r2, r6
 26c:	b34b      	st.w      	r2, (r3, 0x2c)
 26e:	0803      	bt      	0x274	// 274 <rijndaelKeySetupEnc+0x274>
 270:	300e      	movi      	r0, 14
 272:	0743      	br      	0xf8	// f8 <rijndaelKeySetupEnc+0xf8>
 274:	c50255e6 	zext      	r6, r2, 15, 8
 278:	e4e220ff 	andi      	r7, r2, 255
 27c:	d0c10886 	ldr.w      	r6, (r1, r6 << 2)
 280:	d0e10887 	ldr.w      	r7, (r1, r7 << 2)
 284:	c50755e7 	zext      	r7, r7, 15, 8
 288:	6990      	and      	r6, r4
 28a:	6d9c      	or      	r6, r7
 28c:	93e4      	ld.w      	r7, (r3, 0x10)
 28e:	6d9d      	xor      	r6, r7
 290:	4af8      	lsri      	r7, r2, 24
 292:	d0e10887 	ldr.w      	r7, (r1, r7 << 2)
 296:	c60256e2 	zext      	r2, r2, 23, 16
 29a:	c60756e7 	zext      	r7, r7, 23, 16
 29e:	d0410882 	ldr.w      	r2, (r1, r2 << 2)
 2a2:	47f8      	lsli      	r7, r7, 24
 2a4:	68b4      	and      	r2, r13
 2a6:	6c9c      	or      	r2, r7
 2a8:	6c99      	xor      	r2, r6
 2aa:	93c5      	ld.w      	r6, (r3, 0x14)
 2ac:	b34c      	st.w      	r2, (r3, 0x30)
 2ae:	6c99      	xor      	r2, r6
 2b0:	93c6      	ld.w      	r6, (r3, 0x18)
 2b2:	b34d      	st.w      	r2, (r3, 0x34)
 2b4:	6c99      	xor      	r2, r6
 2b6:	6c09      	xor      	r0, r2
 2b8:	b34e      	st.w      	r2, (r3, 0x38)
 2ba:	b30f      	st.w      	r0, (r3, 0x3c)
 2bc:	e58c0000 	addi      	r12, r12, 1
 2c0:	231f      	addi      	r3, 32
 2c2:	07aa      	br      	0x216	// 216 <rijndaelKeySetupEnc+0x216>
 2c4:	3000      	movi      	r0, 0
 2c6:	2800      	subi      	r0, 1
 2c8:	0718      	br      	0xf8	// f8 <rijndaelKeySetupEnc+0xf8>
	...
