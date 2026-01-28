
libwifi/o/wpa_wpa_ie.o:     file format elf32-csky-little


Disassembly of section .text.WPA_GET_BE32:

00000000 <WPA_GET_BE32>:
   0:	8060      	ld.b      	r3, (r0, 0x0)
   2:	8043      	ld.b      	r2, (r0, 0x3)
   4:	4378      	lsli      	r3, r3, 24
   6:	6cc8      	or      	r3, r2
   8:	8041      	ld.b      	r2, (r0, 0x1)
   a:	4250      	lsli      	r2, r2, 16
   c:	8002      	ld.b      	r0, (r0, 0x2)
   e:	6cc8      	or      	r3, r2
  10:	4008      	lsli      	r0, r0, 8
  12:	6c0c      	or      	r0, r3
  14:	783c      	jmp      	r15

Disassembly of section .text.wpa_parse_wpa_ie:

00000000 <wpa_parse_wpa_ie>:
   0:	14d1      	push      	r4, r15
   2:	1422      	subi      	r14, r14, 8
   4:	6d03      	mov      	r4, r0
   6:	e901001d 	bez      	r1, 0x40	// 40 <wpa_parse_wpa_ie+0x40>
   a:	8060      	ld.b      	r3, (r0, 0x0)
   c:	eb430030 	cmpnei      	r3, 48
  10:	0806      	bt      	0x1c	// 1c <wpa_parse_wpa_ie+0x1c>
  12:	6c13      	mov      	r0, r4
  14:	e0000000 	bsr      	0x0	// 0 <wpa_parse_wpa_ie_rsn>
  18:	1402      	addi      	r14, r14, 8
  1a:	1491      	pop      	r4, r15
  1c:	3905      	cmphsi      	r1, 6
  1e:	0c11      	bf      	0x40	// 40 <wpa_parse_wpa_ie+0x40>
  20:	eb4300dd 	cmpnei      	r3, 221
  24:	080e      	bt      	0x40	// 40 <wpa_parse_wpa_ie+0x40>
  26:	8061      	ld.b      	r3, (r0, 0x1)
  28:	3b03      	cmphsi      	r3, 4
  2a:	0c0b      	bf      	0x40	// 40 <wpa_parse_wpa_ie+0x40>
  2c:	2001      	addi      	r0, 2
  2e:	b841      	st.w      	r2, (r14, 0x4)
  30:	b820      	st.w      	r1, (r14, 0x0)
  32:	e0000000 	bsr      	0x0	// 0 <wpa_parse_wpa_ie>
  36:	1065      	lrw      	r3, 0x506f9a12	// 48 <wpa_parse_wpa_ie+0x48>
  38:	64c2      	cmpne      	r0, r3
  3a:	9820      	ld.w      	r1, (r14, 0x0)
  3c:	9841      	ld.w      	r2, (r14, 0x4)
  3e:	0fea      	bf      	0x12	// 12 <wpa_parse_wpa_ie+0x12>
  40:	6c13      	mov      	r0, r4
  42:	e0000000 	bsr      	0x0	// 0 <wpa_parse_wpa_ie_wpa>
  46:	07e9      	br      	0x18	// 18 <wpa_parse_wpa_ie+0x18>
  48:	506f9a12 	.long	0x506f9a12

Disassembly of section .text.rsn_supp_capab:

00000000 <rsn_supp_capab>:
   0:	d86020f7 	ld.w      	r3, (r0, 0x3dc)
   4:	6c83      	mov      	r2, r0
   6:	e9030014 	bez      	r3, 0x2e	// 2e <rsn_supp_capab+0x2e>
   a:	3b42      	cmpnei      	r3, 2
   c:	30c0      	movi      	r0, 192
   e:	3380      	movi      	r3, 128
  10:	c4030c40 	inct      	r0, r3, 0
  14:	d86220f8 	ld.w      	r3, (r2, 0x3e0)
  18:	e9030004 	bez      	r3, 0x20	// 20 <rsn_supp_capab+0x20>
  1c:	ec004000 	ori      	r0, r0, 16384
  20:	d86220e4 	ld.w      	r3, (r2, 0x390)
  24:	e9030004 	bez      	r3, 0x2c	// 2c <rsn_supp_capab+0x2c>
  28:	ec002000 	ori      	r0, r0, 8192
  2c:	783c      	jmp      	r15
  2e:	6c0f      	mov      	r0, r3
  30:	07f2      	br      	0x14	// 14 <rsn_supp_capab+0x14>

Disassembly of section .text.wpa_gen_wpa_ie:

00000000 <wpa_gen_wpa_ie>:
   0:	14d8      	push      	r4-r11, r15
   2:	1421      	subi      	r14, r14, 4
   4:	d94020f1 	ld.w      	r10, (r0, 0x3c4)
   8:	eb4a0002 	cmpnei      	r10, 2
   c:	6e03      	mov      	r8, r0
   e:	6d07      	mov      	r4, r1
  10:	6dcb      	mov      	r7, r2
  12:	d8c020f2 	ld.w      	r6, (r0, 0x3c8)
  16:	d92020f3 	ld.w      	r9, (r0, 0x3cc)
  1a:	d8a020f4 	ld.w      	r5, (r0, 0x3d0)
  1e:	0895      	bt      	0x148	// 148 <wpa_gen_wpa_ie+0x148>
  20:	d8600040 	ld.b      	r3, (r0, 0x40)
  24:	3b40      	cmpnei      	r3, 0
  26:	3216      	movi      	r2, 22
  28:	3328      	movi      	r3, 40
  2a:	c4620c20 	incf      	r3, r2, 0
  2e:	64dc      	cmphs      	r7, r3
  30:	0c15      	bf      	0x5a	// 5a <wpa_gen_wpa_ie+0x5a>
  32:	3330      	movi      	r3, 48
  34:	a160      	st.b      	r3, (r1, 0x0)
  36:	ea0b0000 	movi      	r11, 0
  3a:	3301      	movi      	r3, 1
  3c:	a162      	st.b      	r3, (r1, 0x2)
  3e:	dd610003 	st.b      	r11, (r1, 0x3)
  42:	6c2b      	mov      	r0, r10
  44:	6c67      	mov      	r1, r9
  46:	b860      	st.w      	r3, (r14, 0x0)
  48:	e0000000 	bsr      	0x0	// 0 <wpa_cipher_to_suite>
  4c:	9860      	ld.w      	r3, (r14, 0x0)
  4e:	e9200009 	bnez      	r0, 0x60	// 60 <wpa_gen_wpa_ie+0x60>
  52:	6c67      	mov      	r1, r9
  54:	1314      	lrw      	r0, 0x0	// 224 <wpa_gen_wpa_ie+0x224>
  56:	e0000000 	bsr      	0x0	// 0 <hgprintf>
  5a:	3500      	movi      	r5, 0
  5c:	2d00      	subi      	r5, 1
  5e:	044d      	br      	0xf8	// f8 <wpa_gen_wpa_ie+0xf8>
  60:	4858      	lsri      	r2, r0, 24
  62:	a444      	st.b      	r2, (r4, 0x4)
  64:	4850      	lsri      	r2, r0, 16
  66:	a445      	st.b      	r2, (r4, 0x5)
  68:	4848      	lsri      	r2, r0, 8
  6a:	a407      	st.b      	r0, (r4, 0x7)
  6c:	a446      	st.b      	r2, (r4, 0x6)
  6e:	a468      	st.b      	r3, (r4, 0x8)
  70:	dd640009 	st.b      	r11, (r4, 0x9)
  74:	6c5b      	mov      	r1, r6
  76:	6c2b      	mov      	r0, r10
  78:	e0000000 	bsr      	0x0	// 0 <wpa_cipher_to_suite>
  7c:	6e43      	mov      	r9, r0
  7e:	e9200005 	bnez      	r0, 0x88	// 88 <wpa_gen_wpa_ie+0x88>
  82:	6c5b      	mov      	r1, r6
  84:	1309      	lrw      	r0, 0x0	// 228 <wpa_gen_wpa_ie+0x228>
  86:	07e8      	br      	0x56	// 56 <wpa_gen_wpa_ie+0x56>
  88:	6c1b      	mov      	r0, r6
  8a:	e0000000 	bsr      	0x0	// 0 <wpa_cipher_valid_pairwise>
  8e:	e9200004 	bnez      	r0, 0x96	// 96 <wpa_gen_wpa_ie+0x96>
  92:	3e41      	cmpnei      	r6, 1
  94:	0bf7      	bt      	0x82	// 82 <wpa_gen_wpa_ie+0x82>
  96:	c7094843 	lsri      	r3, r9, 24
  9a:	a46a      	st.b      	r3, (r4, 0xa)
  9c:	c6094843 	lsri      	r3, r9, 16
  a0:	a46b      	st.b      	r3, (r4, 0xb)
  a2:	c5094843 	lsri      	r3, r9, 8
  a6:	a46c      	st.b      	r3, (r4, 0xc)
  a8:	3d41      	cmpnei      	r5, 1
  aa:	3301      	movi      	r3, 1
  ac:	a46e      	st.b      	r3, (r4, 0xe)
  ae:	3300      	movi      	r3, 0
  b0:	dd24000d 	st.b      	r9, (r4, 0xd)
  b4:	a46f      	st.b      	r3, (r4, 0xf)
  b6:	0824      	bt      	0xfe	// fe <wpa_gen_wpa_ie+0xfe>
  b8:	a470      	st.b      	r3, (r4, 0x10)
  ba:	330f      	movi      	r3, 15
  bc:	a471      	st.b      	r3, (r4, 0x11)
  be:	3300      	movi      	r3, 0
  c0:	2b53      	subi      	r3, 84
  c2:	a472      	st.b      	r3, (r4, 0x12)
  c4:	a4b3      	st.b      	r5, (r4, 0x13)
  c6:	d86820f8 	ld.w      	r3, (r8, 0x3e0)
  ca:	3b40      	cmpnei      	r3, 0
  cc:	c4000503 	mvc      	r3
  d0:	eb450400 	cmpnei      	r5, 1024
  d4:	436e      	lsli      	r3, r3, 14
  d6:	0804      	bt      	0xde	// de <wpa_gen_wpa_ie+0xde>
  d8:	ec6300c0 	ori      	r3, r3, 192
  dc:	74cd      	zexth      	r3, r3
  de:	3516      	movi      	r5, 22
  e0:	655c      	cmphs      	r7, r5
  e2:	4b48      	lsri      	r2, r3, 8
  e4:	a474      	st.b      	r3, (r4, 0x14)
  e6:	3314      	movi      	r3, 20
  e8:	a455      	st.b      	r2, (r4, 0x15)
  ea:	a461      	st.b      	r3, (r4, 0x1)
  ec:	0806      	bt      	0xf8	// f8 <wpa_gen_wpa_ie+0xf8>
  ee:	1250      	lrw      	r2, 0x0	// 22c <wpa_gen_wpa_ie+0x22c>
  f0:	31d6      	movi      	r1, 214
  f2:	1210      	lrw      	r0, 0x0	// 230 <wpa_gen_wpa_ie+0x230>
  f4:	e0000000 	bsr      	0x0	// 0 <assert_internal>
  f8:	6c17      	mov      	r0, r5
  fa:	1401      	addi      	r14, r14, 4
  fc:	1498      	pop      	r4-r11, r15
  fe:	3d42      	cmpnei      	r5, 2
 100:	0fdc      	bf      	0xb8	// b8 <wpa_gen_wpa_ie+0xb8>
 102:	eb454000 	cmpnei      	r5, 16384
 106:	0809      	bt      	0x118	// 118 <wpa_gen_wpa_ie+0x118>
 108:	3240      	movi      	r2, 64
 10a:	a451      	st.b      	r2, (r4, 0x11)
 10c:	3200      	movi      	r2, 0
 10e:	2a69      	subi      	r2, 106
 110:	a470      	st.b      	r3, (r4, 0x10)
 112:	a452      	st.b      	r2, (r4, 0x12)
 114:	a473      	st.b      	r3, (r4, 0x13)
 116:	07d8      	br      	0xc6	// c6 <wpa_gen_wpa_ie+0xc6>
 118:	3280      	movi      	r2, 128
 11a:	424a      	lsli      	r2, r2, 10
 11c:	6496      	cmpne      	r5, r2
 11e:	0809      	bt      	0x130	// 130 <wpa_gen_wpa_ie+0x130>
 120:	a470      	st.b      	r3, (r4, 0x10)
 122:	330f      	movi      	r3, 15
 124:	a471      	st.b      	r3, (r4, 0x11)
 126:	3300      	movi      	r3, 0
 128:	2b53      	subi      	r3, 84
 12a:	a472      	st.b      	r3, (r4, 0x12)
 12c:	330c      	movi      	r3, 12
 12e:	07f3      	br      	0x114	// 114 <wpa_gen_wpa_ie+0x114>
 130:	3280      	movi      	r2, 128
 132:	4249      	lsli      	r2, r2, 9
 134:	6496      	cmpne      	r5, r2
 136:	0874      	bt      	0x21e	// 21e <wpa_gen_wpa_ie+0x21e>
 138:	a470      	st.b      	r3, (r4, 0x10)
 13a:	330f      	movi      	r3, 15
 13c:	a471      	st.b      	r3, (r4, 0x11)
 13e:	3300      	movi      	r3, 0
 140:	2b53      	subi      	r3, 84
 142:	a472      	st.b      	r3, (r4, 0x12)
 144:	330b      	movi      	r3, 11
 146:	07e7      	br      	0x114	// 114 <wpa_gen_wpa_ie+0x114>
 148:	3a17      	cmphsi      	r2, 24
 14a:	0f88      	bf      	0x5a	// 5a <wpa_gen_wpa_ie+0x5a>
 14c:	3300      	movi      	r3, 0
 14e:	2b22      	subi      	r3, 35
 150:	a160      	st.b      	r3, (r1, 0x0)
 152:	3350      	movi      	r3, 80
 154:	a163      	st.b      	r3, (r1, 0x3)
 156:	3300      	movi      	r3, 0
 158:	ea080000 	movi      	r8, 0
 15c:	ea0a0001 	movi      	r10, 1
 160:	2b0d      	subi      	r3, 14
 162:	dd010002 	st.b      	r8, (r1, 0x2)
 166:	a164      	st.b      	r3, (r1, 0x4)
 168:	dd410005 	st.b      	r10, (r1, 0x5)
 16c:	dd010007 	st.b      	r8, (r1, 0x7)
 170:	dd410006 	st.b      	r10, (r1, 0x6)
 174:	3001      	movi      	r0, 1
 176:	6c67      	mov      	r1, r9
 178:	e0000000 	bsr      	0x0	// 0 <wpa_cipher_to_suite>
 17c:	e900ff6b 	bez      	r0, 0x52	// 52 <wpa_gen_wpa_ie+0x52>
 180:	4878      	lsri      	r3, r0, 24
 182:	a468      	st.b      	r3, (r4, 0x8)
 184:	4870      	lsri      	r3, r0, 16
 186:	a469      	st.b      	r3, (r4, 0x9)
 188:	4868      	lsri      	r3, r0, 8
 18a:	a40b      	st.b      	r0, (r4, 0xb)
 18c:	dd04000d 	st.b      	r8, (r4, 0xd)
 190:	a46a      	st.b      	r3, (r4, 0xa)
 192:	dd44000c 	st.b      	r10, (r4, 0xc)
 196:	6c5b      	mov      	r1, r6
 198:	3001      	movi      	r0, 1
 19a:	e0000000 	bsr      	0x0	// 0 <wpa_cipher_to_suite>
 19e:	6e03      	mov      	r8, r0
 1a0:	e900ff71 	bez      	r0, 0x82	// 82 <wpa_gen_wpa_ie+0x82>
 1a4:	6c1b      	mov      	r0, r6
 1a6:	e0000000 	bsr      	0x0	// 0 <wpa_cipher_valid_pairwise>
 1aa:	e9200004 	bnez      	r0, 0x1b2	// 1b2 <wpa_gen_wpa_ie+0x1b2>
 1ae:	3e41      	cmpnei      	r6, 1
 1b0:	0b69      	bt      	0x82	// 82 <wpa_gen_wpa_ie+0x82>
 1b2:	c7084843 	lsri      	r3, r8, 24
 1b6:	a46e      	st.b      	r3, (r4, 0xe)
 1b8:	c6084843 	lsri      	r3, r8, 16
 1bc:	a46f      	st.b      	r3, (r4, 0xf)
 1be:	c5084843 	lsri      	r3, r8, 8
 1c2:	a470      	st.b      	r3, (r4, 0x10)
 1c4:	3d41      	cmpnei      	r5, 1
 1c6:	3301      	movi      	r3, 1
 1c8:	a472      	st.b      	r3, (r4, 0x12)
 1ca:	3300      	movi      	r3, 0
 1cc:	dd040011 	st.b      	r8, (r4, 0x11)
 1d0:	a473      	st.b      	r3, (r4, 0x13)
 1d2:	0811      	bt      	0x1f4	// 1f4 <wpa_gen_wpa_ie+0x1f4>
 1d4:	a474      	st.b      	r3, (r4, 0x14)
 1d6:	3350      	movi      	r3, 80
 1d8:	a475      	st.b      	r3, (r4, 0x15)
 1da:	3300      	movi      	r3, 0
 1dc:	2b0d      	subi      	r3, 14
 1de:	a476      	st.b      	r3, (r4, 0x16)
 1e0:	a4b7      	st.b      	r5, (r4, 0x17)
 1e2:	3518      	movi      	r5, 24
 1e4:	655c      	cmphs      	r7, r5
 1e6:	3316      	movi      	r3, 22
 1e8:	a461      	st.b      	r3, (r4, 0x1)
 1ea:	0b87      	bt      	0xf8	// f8 <wpa_gen_wpa_ie+0xf8>
 1ec:	1052      	lrw      	r2, 0x0	// 234 <wpa_gen_wpa_ie+0x234>
 1ee:	315e      	movi      	r1, 94
 1f0:	1012      	lrw      	r0, 0x0	// 238 <wpa_gen_wpa_ie+0x238>
 1f2:	0781      	br      	0xf4	// f4 <wpa_gen_wpa_ie+0xf4>
 1f4:	3d42      	cmpnei      	r5, 2
 1f6:	0fef      	bf      	0x1d4	// 1d4 <wpa_gen_wpa_ie+0x1d4>
 1f8:	3d50      	cmpnei      	r5, 16
 1fa:	0809      	bt      	0x20c	// 20c <wpa_gen_wpa_ie+0x20c>
 1fc:	3250      	movi      	r2, 80
 1fe:	a455      	st.b      	r2, (r4, 0x15)
 200:	3200      	movi      	r2, 0
 202:	a474      	st.b      	r3, (r4, 0x14)
 204:	2a0d      	subi      	r2, 14
 206:	a456      	st.b      	r2, (r4, 0x16)
 208:	a477      	st.b      	r3, (r4, 0x17)
 20a:	07ec      	br      	0x1e2	// 1e2 <wpa_gen_wpa_ie+0x1e2>
 20c:	eb454000 	cmpnei      	r5, 16384
 210:	0807      	bt      	0x21e	// 21e <wpa_gen_wpa_ie+0x21e>
 212:	3240      	movi      	r2, 64
 214:	a455      	st.b      	r2, (r4, 0x15)
 216:	3200      	movi      	r2, 0
 218:	a474      	st.b      	r3, (r4, 0x14)
 21a:	2a69      	subi      	r2, 106
 21c:	07f5      	br      	0x206	// 206 <wpa_gen_wpa_ie+0x206>
 21e:	6c57      	mov      	r1, r5
 220:	1007      	lrw      	r0, 0x0	// 23c <wpa_gen_wpa_ie+0x23c>
 222:	071a      	br      	0x56	// 56 <wpa_gen_wpa_ie+0x56>
	...

Disassembly of section .text.wpa_supplicant_parse_ies:

00000000 <wpa_supplicant_parse_ies>:
   0:	14d8      	push      	r4-r11, r15
   2:	1422      	subi      	r14, r14, 8
   4:	6d03      	mov      	r4, r0
   6:	6d87      	mov      	r6, r1
   8:	6d4b      	mov      	r5, r2
   a:	3100      	movi      	r1, 0
   c:	3280      	movi      	r2, 128
   e:	6c17      	mov      	r0, r5
  10:	5cf8      	addu      	r7, r4, r6
  12:	2e00      	subi      	r6, 1
  14:	e0000000 	bsr      	0x0	// 0 <memset>
  18:	6190      	addu      	r6, r4
  1a:	ea880081 	lrw      	r8, 0xfac01	// 21c <wpa_supplicant_parse_ies+0x21c>
  1e:	ea890081 	lrw      	r9, 0xfac03	// 220 <wpa_supplicant_parse_ies+0x220>
  22:	ea8a0081 	lrw      	r10, 0xfac04	// 224 <wpa_supplicant_parse_ies+0x224>
  26:	ea8b0081 	lrw      	r11, 0x50f201	// 228 <wpa_supplicant_parse_ies+0x228>
  2a:	5f31      	subu      	r1, r7, r4
  2c:	3921      	cmplti      	r1, 2
  2e:	0807      	bt      	0x3c	// 3c <wpa_supplicant_parse_ies+0x3c>
  30:	8440      	ld.b      	r2, (r4, 0x0)
  32:	eb4200dd 	cmpnei      	r2, 221
  36:	0809      	bt      	0x48	// 48 <wpa_supplicant_parse_ies+0x48>
  38:	6592      	cmpne      	r4, r6
  3a:	0804      	bt      	0x42	// 42 <wpa_supplicant_parse_ies+0x42>
  3c:	3000      	movi      	r0, 0
  3e:	1402      	addi      	r14, r14, 8
  40:	1498      	pop      	r4-r11, r15
  42:	8461      	ld.b      	r3, (r4, 0x1)
  44:	e903fffc 	bez      	r3, 0x3c	// 3c <wpa_supplicant_parse_ies+0x3c>
  48:	8461      	ld.b      	r3, (r4, 0x1)
  4a:	5b02      	addi      	r0, r3, 1
  4c:	6441      	cmplt      	r0, r1
  4e:	0ce4      	bf      	0x216	// 216 <wpa_supplicant_parse_ies+0x216>
  50:	eb420030 	cmpnei      	r2, 48
  54:	0809      	bt      	0x66	// 66 <wpa_supplicant_parse_ies+0x66>
  56:	b582      	st.w      	r4, (r5, 0x8)
  58:	8461      	ld.b      	r3, (r4, 0x1)
  5a:	2301      	addi      	r3, 2
  5c:	b563      	st.w      	r3, (r5, 0xc)
  5e:	8461      	ld.b      	r3, (r4, 0x1)
  60:	2301      	addi      	r3, 2
  62:	610c      	addu      	r4, r3
  64:	07e3      	br      	0x2a	// 2a <wpa_supplicant_parse_ies+0x2a>
  66:	eb420036 	cmpnei      	r2, 54
  6a:	0808      	bt      	0x7a	// 7a <wpa_supplicant_parse_ies+0x7a>
  6c:	3b02      	cmphsi      	r3, 3
  6e:	0ff8      	bf      	0x5e	// 5e <wpa_supplicant_parse_ies+0x5e>
  70:	b589      	st.w      	r4, (r5, 0x24)
  72:	8461      	ld.b      	r3, (r4, 0x1)
  74:	2301      	addi      	r3, 2
  76:	b56a      	st.w      	r3, (r5, 0x28)
  78:	07f3      	br      	0x5e	// 5e <wpa_supplicant_parse_ies+0x5e>
  7a:	eb420037 	cmpnei      	r2, 55
  7e:	0809      	bt      	0x90	// 90 <wpa_supplicant_parse_ies+0x90>
  80:	eb030051 	cmphsi      	r3, 82
  84:	0fed      	bf      	0x5e	// 5e <wpa_supplicant_parse_ies+0x5e>
  86:	b58b      	st.w      	r4, (r5, 0x2c)
  88:	8461      	ld.b      	r3, (r4, 0x1)
  8a:	2301      	addi      	r3, 2
  8c:	b56c      	st.w      	r3, (r5, 0x30)
  8e:	07e8      	br      	0x5e	// 5e <wpa_supplicant_parse_ies+0x5e>
  90:	eb420038 	cmpnei      	r2, 56
  94:	080c      	bt      	0xac	// ac <wpa_supplicant_parse_ies+0xac>
  96:	3b04      	cmphsi      	r3, 5
  98:	0fe3      	bf      	0x5e	// 5e <wpa_supplicant_parse_ies+0x5e>
  9a:	8462      	ld.b      	r3, (r4, 0x2)
  9c:	3b41      	cmpnei      	r3, 1
  9e:	0803      	bt      	0xa4	// a4 <wpa_supplicant_parse_ies+0xa4>
  a0:	b58d      	st.w      	r4, (r5, 0x34)
  a2:	07de      	br      	0x5e	// 5e <wpa_supplicant_parse_ies+0x5e>
  a4:	3b42      	cmpnei      	r3, 2
  a6:	0bdc      	bt      	0x5e	// 5e <wpa_supplicant_parse_ies+0x5e>
  a8:	b58e      	st.w      	r4, (r5, 0x38)
  aa:	07da      	br      	0x5e	// 5e <wpa_supplicant_parse_ies+0x5e>
  ac:	eb420065 	cmpnei      	r2, 101
  b0:	0808      	bt      	0xc0	// c0 <wpa_supplicant_parse_ies+0xc0>
  b2:	3b11      	cmphsi      	r3, 18
  b4:	0fd5      	bf      	0x5e	// 5e <wpa_supplicant_parse_ies+0x5e>
  b6:	b58f      	st.w      	r4, (r5, 0x3c)
  b8:	8461      	ld.b      	r3, (r4, 0x1)
  ba:	2301      	addi      	r3, 2
  bc:	b570      	st.w      	r3, (r5, 0x40)
  be:	07d0      	br      	0x5e	// 5e <wpa_supplicant_parse_ies+0x5e>
  c0:	eb42007f 	cmpnei      	r2, 127
  c4:	0806      	bt      	0xd0	// d0 <wpa_supplicant_parse_ies+0xd0>
  c6:	b591      	st.w      	r4, (r5, 0x44)
  c8:	8461      	ld.b      	r3, (r4, 0x1)
  ca:	2301      	addi      	r3, 2
  cc:	b572      	st.w      	r3, (r5, 0x48)
  ce:	07c8      	br      	0x5e	// 5e <wpa_supplicant_parse_ies+0x5e>
  d0:	3a41      	cmpnei      	r2, 1
  d2:	0806      	bt      	0xde	// de <wpa_supplicant_parse_ies+0xde>
  d4:	b593      	st.w      	r4, (r5, 0x4c)
  d6:	8461      	ld.b      	r3, (r4, 0x1)
  d8:	2301      	addi      	r3, 2
  da:	b574      	st.w      	r3, (r5, 0x50)
  dc:	07c1      	br      	0x5e	// 5e <wpa_supplicant_parse_ies+0x5e>
  de:	eb420032 	cmpnei      	r2, 50
  e2:	0806      	bt      	0xee	// ee <wpa_supplicant_parse_ies+0xee>
  e4:	b595      	st.w      	r4, (r5, 0x54)
  e6:	8461      	ld.b      	r3, (r4, 0x1)
  e8:	2301      	addi      	r3, 2
  ea:	b576      	st.w      	r3, (r5, 0x58)
  ec:	07b9      	br      	0x5e	// 5e <wpa_supplicant_parse_ies+0x5e>
  ee:	eb42002d 	cmpnei      	r2, 45
  f2:	0806      	bt      	0xfe	// fe <wpa_supplicant_parse_ies+0xfe>
  f4:	3b19      	cmphsi      	r3, 26
  f6:	0fb4      	bf      	0x5e	// 5e <wpa_supplicant_parse_ies+0x5e>
  f8:	5c66      	addi      	r3, r4, 2
  fa:	b577      	st.w      	r3, (r5, 0x5c)
  fc:	07b1      	br      	0x5e	// 5e <wpa_supplicant_parse_ies+0x5e>
  fe:	eb4200c5 	cmpnei      	r2, 197
 102:	080c      	bt      	0x11a	// 11a <wpa_supplicant_parse_ies+0x11a>
 104:	3b01      	cmphsi      	r3, 2
 106:	0fac      	bf      	0x5e	// 5e <wpa_supplicant_parse_ies+0x5e>
 108:	8463      	ld.b      	r3, (r4, 0x3)
 10a:	8442      	ld.b      	r2, (r4, 0x2)
 10c:	4368      	lsli      	r3, r3, 8
 10e:	6cc8      	or      	r3, r2
 110:	c40355a3 	zext      	r3, r3, 13, 0
 114:	dc65103b 	st.h      	r3, (r5, 0x76)
 118:	07a3      	br      	0x5e	// 5e <wpa_supplicant_parse_ies+0x5e>
 11a:	eb4200bf 	cmpnei      	r2, 191
 11e:	0806      	bt      	0x12a	// 12a <wpa_supplicant_parse_ies+0x12a>
 120:	3b0b      	cmphsi      	r3, 12
 122:	0f9e      	bf      	0x5e	// 5e <wpa_supplicant_parse_ies+0x5e>
 124:	5c66      	addi      	r3, r4, 2
 126:	b578      	st.w      	r3, (r5, 0x60)
 128:	079b      	br      	0x5e	// 5e <wpa_supplicant_parse_ies+0x5e>
 12a:	eb42002e 	cmpnei      	r2, 46
 12e:	0807      	bt      	0x13c	// 13c <wpa_supplicant_parse_ies+0x13c>
 130:	e903ff97 	bez      	r3, 0x5e	// 5e <wpa_supplicant_parse_ies+0x5e>
 134:	8462      	ld.b      	r3, (r4, 0x2)
 136:	dc650074 	st.b      	r3, (r5, 0x74)
 13a:	0792      	br      	0x5e	// 5e <wpa_supplicant_parse_ies+0x5e>
 13c:	eb420024 	cmpnei      	r2, 36
 140:	0806      	bt      	0x14c	// 14c <wpa_supplicant_parse_ies+0x14c>
 142:	5c66      	addi      	r3, r4, 2
 144:	b579      	st.w      	r3, (r5, 0x64)
 146:	8461      	ld.b      	r3, (r4, 0x1)
 148:	b57a      	st.w      	r3, (r5, 0x68)
 14a:	078a      	br      	0x5e	// 5e <wpa_supplicant_parse_ies+0x5e>
 14c:	eb42003b 	cmpnei      	r2, 59
 150:	080b      	bt      	0x166	// 166 <wpa_supplicant_parse_ies+0x166>
 152:	2b01      	subi      	r3, 2
 154:	74cc      	zextb      	r3, r3
 156:	eb0300fb 	cmphsi      	r3, 252
 15a:	0b82      	bt      	0x5e	// 5e <wpa_supplicant_parse_ies+0x5e>
 15c:	5c66      	addi      	r3, r4, 2
 15e:	b57b      	st.w      	r3, (r5, 0x6c)
 160:	8461      	ld.b      	r3, (r4, 0x1)
 162:	b57c      	st.w      	r3, (r5, 0x70)
 164:	077d      	br      	0x5e	// 5e <wpa_supplicant_parse_ies+0x5e>
 166:	eb4200dd 	cmpnei      	r2, 221
 16a:	0b7a      	bt      	0x5e	// 5e <wpa_supplicant_parse_ies+0x5e>
 16c:	e903ff68 	bez      	r3, 0x3c	// 3c <wpa_supplicant_parse_ies+0x3c>
 170:	3b05      	cmphsi      	r3, 6
 172:	0c2e      	bf      	0x1ce	// 1ce <wpa_supplicant_parse_ies+0x1ce>
 174:	5c06      	addi      	r0, r4, 2
 176:	b861      	st.w      	r3, (r14, 0x4)
 178:	b820      	st.w      	r1, (r14, 0x0)
 17a:	e0000000 	bsr      	0x0	// 0 <wpa_supplicant_parse_ies>
 17e:	66c2      	cmpne      	r0, r11
 180:	9820      	ld.w      	r1, (r14, 0x0)
 182:	9861      	ld.w      	r3, (r14, 0x4)
 184:	0825      	bt      	0x1ce	// 1ce <wpa_supplicant_parse_ies+0x1ce>
 186:	8446      	ld.b      	r2, (r4, 0x6)
 188:	3a41      	cmpnei      	r2, 1
 18a:	0822      	bt      	0x1ce	// 1ce <wpa_supplicant_parse_ies+0x1ce>
 18c:	8447      	ld.b      	r2, (r4, 0x7)
 18e:	e9220020 	bnez      	r2, 0x1ce	// 1ce <wpa_supplicant_parse_ies+0x1ce>
 192:	b580      	st.w      	r4, (r5, 0x0)
 194:	8461      	ld.b      	r3, (r4, 0x1)
 196:	2301      	addi      	r3, 2
 198:	b561      	st.w      	r3, (r5, 0x4)
 19a:	8421      	ld.b      	r1, (r4, 0x1)
 19c:	3903      	cmphsi      	r1, 4
 19e:	0f4f      	bf      	0x3c	// 3c <wpa_supplicant_parse_ies+0x3c>
 1a0:	8462      	ld.b      	r3, (r4, 0x2)
 1a2:	8443      	ld.b      	r2, (r4, 0x3)
 1a4:	4248      	lsli      	r2, r2, 8
 1a6:	4370      	lsli      	r3, r3, 16
 1a8:	6cc8      	or      	r3, r2
 1aa:	8444      	ld.b      	r2, (r4, 0x4)
 1ac:	6cc8      	or      	r3, r2
 1ae:	eb4350f2 	cmpnei      	r3, 20722
 1b2:	0b56      	bt      	0x5e	// 5e <wpa_supplicant_parse_ies+0x5e>
 1b4:	8465      	ld.b      	r3, (r4, 0x5)
 1b6:	3b42      	cmpnei      	r3, 2
 1b8:	0b53      	bt      	0x5e	// 5e <wpa_supplicant_parse_ies+0x5e>
 1ba:	3944      	cmpnei      	r1, 4
 1bc:	0f51      	bf      	0x5e	// 5e <wpa_supplicant_parse_ies+0x5e>
 1be:	8446      	ld.b      	r2, (r4, 0x6)
 1c0:	5c66      	addi      	r3, r4, 2
 1c2:	e9220027 	bnez      	r2, 0x210	// 210 <wpa_supplicant_parse_ies+0x210>
 1c6:	b57e      	st.w      	r3, (r5, 0x78)
 1c8:	8461      	ld.b      	r3, (r4, 0x1)
 1ca:	b57f      	st.w      	r3, (r5, 0x7c)
 1cc:	0749      	br      	0x5e	// 5e <wpa_supplicant_parse_ies+0x5e>
 1ce:	3925      	cmplti      	r1, 6
 1d0:	080b      	bt      	0x1e6	// 1e6 <wpa_supplicant_parse_ies+0x1e6>
 1d2:	3b13      	cmphsi      	r3, 20
 1d4:	0c09      	bf      	0x1e6	// 1e6 <wpa_supplicant_parse_ies+0x1e6>
 1d6:	5c06      	addi      	r0, r4, 2
 1d8:	e0000000 	bsr      	0x0	// 0 <wpa_supplicant_parse_ies>
 1dc:	6682      	cmpne      	r0, r10
 1de:	0806      	bt      	0x1ea	// 1ea <wpa_supplicant_parse_ies+0x1ea>
 1e0:	5c76      	addi      	r3, r4, 6
 1e2:	b564      	st.w      	r3, (r5, 0x10)
 1e4:	07db      	br      	0x19a	// 19a <wpa_supplicant_parse_ies+0x19a>
 1e6:	3b06      	cmphsi      	r3, 7
 1e8:	0fd9      	bf      	0x19a	// 19a <wpa_supplicant_parse_ies+0x19a>
 1ea:	5c06      	addi      	r0, r4, 2
 1ec:	e0000000 	bsr      	0x0	// 0 <wpa_supplicant_parse_ies>
 1f0:	6602      	cmpne      	r0, r8
 1f2:	0807      	bt      	0x200	// 200 <wpa_supplicant_parse_ies+0x200>
 1f4:	5c76      	addi      	r3, r4, 6
 1f6:	b565      	st.w      	r3, (r5, 0x14)
 1f8:	8461      	ld.b      	r3, (r4, 0x1)
 1fa:	2b03      	subi      	r3, 4
 1fc:	b566      	st.w      	r3, (r5, 0x18)
 1fe:	07ce      	br      	0x19a	// 19a <wpa_supplicant_parse_ies+0x19a>
 200:	6642      	cmpne      	r0, r9
 202:	0bcc      	bt      	0x19a	// 19a <wpa_supplicant_parse_ies+0x19a>
 204:	5c76      	addi      	r3, r4, 6
 206:	b567      	st.w      	r3, (r5, 0x1c)
 208:	8461      	ld.b      	r3, (r4, 0x1)
 20a:	2b03      	subi      	r3, 4
 20c:	b568      	st.w      	r3, (r5, 0x20)
 20e:	07c6      	br      	0x19a	// 19a <wpa_supplicant_parse_ies+0x19a>
 210:	3a41      	cmpnei      	r2, 1
 212:	0b26      	bt      	0x5e	// 5e <wpa_supplicant_parse_ies+0x5e>
 214:	07d9      	br      	0x1c6	// 1c6 <wpa_supplicant_parse_ies+0x1c6>
 216:	3000      	movi      	r0, 0
 218:	2800      	subi      	r0, 1
 21a:	0712      	br      	0x3e	// 3e <wpa_supplicant_parse_ies+0x3e>
 21c:	000fac01 	.long	0x000fac01
 220:	000fac03 	.long	0x000fac03
 224:	000fac04 	.long	0x000fac04
 228:	0050f201 	.long	0x0050f201

Disassembly of section .text.wpa_gen_rsnxe:

00000000 <wpa_gen_rsnxe>:
   0:	d86020f4 	ld.w      	r3, (r0, 0x3d0)
   4:	e4632c00 	andi      	r3, r3, 3072
   8:	d98003e8 	ld.b      	r12, (r0, 0x3e8)
   c:	e9030040 	bez      	r3, 0x8c	// 8c <wpa_gen_rsnxe+0x8c>
  10:	d86020f9 	ld.w      	r3, (r0, 0x3e4)
  14:	2b00      	subi      	r3, 1
  16:	3b01      	cmphsi      	r3, 2
  18:	0c3c      	bf      	0x90	// 90 <wpa_gen_rsnxe+0x90>
  1a:	e46c2001 	andi      	r3, r12, 1
  1e:	3b40      	cmpnei      	r3, 0
  20:	c4000500 	mvc      	r0
  24:	4005      	lsli      	r0, r0, 5
  26:	74f0      	zextb      	r3, r12
  28:	e5832002 	andi      	r12, r3, 2
  2c:	e90c0005 	bez      	r12, 0x36	// 36 <wpa_gen_rsnxe+0x36>
  30:	ec000100 	ori      	r0, r0, 256
  34:	7401      	zexth      	r0, r0
  36:	e5832004 	andi      	r12, r3, 4
  3a:	e90c0005 	bez      	r12, 0x44	// 44 <wpa_gen_rsnxe+0x44>
  3e:	ec000200 	ori      	r0, r0, 512
  42:	7401      	zexth      	r0, r0
  44:	e4632008 	andi      	r3, r3, 8
  48:	e9030005 	bez      	r3, 0x52	// 52 <wpa_gen_rsnxe+0x52>
  4c:	ec000400 	ori      	r0, r0, 1024
  50:	7401      	zexth      	r0, r0
  52:	33ff      	movi      	r3, 255
  54:	4368      	lsli      	r3, r3, 8
  56:	68c0      	and      	r3, r0
  58:	e923001e 	bnez      	r3, 0x94	// 94 <wpa_gen_rsnxe+0x94>
  5c:	e9000017 	bez      	r0, 0x8a	// 8a <wpa_gen_rsnxe+0x8a>
  60:	ea0c0001 	movi      	r12, 1
  64:	e46c0001 	addi      	r3, r12, 2
  68:	64c8      	cmphs      	r2, r3
  6a:	0c1b      	bf      	0xa0	// a0 <wpa_gen_rsnxe+0xa0>
  6c:	e46c1000 	subi      	r3, r12, 1
  70:	6cc0      	or      	r3, r0
  72:	74cd      	zexth      	r3, r3
  74:	3200      	movi      	r2, 0
  76:	a162      	st.b      	r3, (r1, 0x2)
  78:	4b68      	lsri      	r3, r3, 8
  7a:	2a0b      	subi      	r2, 12
  7c:	a140      	st.b      	r2, (r1, 0x0)
  7e:	dd810001 	st.b      	r12, (r1, 0x1)
  82:	e923000c 	bnez      	r3, 0x9a	// 9a <wpa_gen_rsnxe+0x9a>
  86:	590a      	addi      	r0, r1, 3
  88:	6006      	subu      	r0, r1
  8a:	783c      	jmp      	r15
  8c:	6c0f      	mov      	r0, r3
  8e:	07cc      	br      	0x26	// 26 <wpa_gen_rsnxe+0x26>
  90:	3020      	movi      	r0, 32
  92:	07ca      	br      	0x26	// 26 <wpa_gen_rsnxe+0x26>
  94:	ea0c0002 	movi      	r12, 2
  98:	07e6      	br      	0x64	// 64 <wpa_gen_rsnxe+0x64>
  9a:	590e      	addi      	r0, r1, 4
  9c:	a163      	st.b      	r3, (r1, 0x3)
  9e:	07f5      	br      	0x88	// 88 <wpa_gen_rsnxe+0x88>
  a0:	3000      	movi      	r0, 0
  a2:	2800      	subi      	r0, 1
  a4:	07f3      	br      	0x8a	// 8a <wpa_gen_rsnxe+0x8a>
