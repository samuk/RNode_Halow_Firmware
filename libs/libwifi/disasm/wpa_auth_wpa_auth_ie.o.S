
libwifi/o/wpa_auth_wpa_auth_ie.o:     file format elf32-csky-little


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

Disassembly of section .text.wpa_auth_okc_iter:

00000000 <wpa_auth_okc_iter>:
   0:	14d1      	push      	r4, r15
   2:	6d07      	mov      	r4, r1
   4:	9163      	ld.w      	r3, (r1, 0xc)
   6:	9142      	ld.w      	r2, (r1, 0x8)
   8:	d8002029 	ld.w      	r0, (r0, 0xa4)
   c:	9121      	ld.w      	r1, (r1, 0x4)
   e:	e0000000 	bsr      	0x0	// 0 <pmksa_cache_get_okc>
  12:	3840      	cmpnei      	r0, 0
  14:	b400      	st.w      	r0, (r4, 0x0)
  16:	c4000500 	mvc      	r0
  1a:	1491      	pop      	r4, r15

Disassembly of section .text.wpa_write_rsn_ie:

00000000 <wpa_write_rsn_ie>:
   0:	14d7      	push      	r4-r10, r15
   2:	6e0f      	mov      	r8, r3
   4:	ea090000 	movi      	r9, 0
   8:	3330      	movi      	r3, 48
   a:	3401      	movi      	r4, 1
   c:	a160      	st.b      	r3, (r1, 0x0)
   e:	dd210003 	st.b      	r9, (r1, 0x3)
  12:	a182      	st.b      	r4, (r1, 0x2)
  14:	6d83      	mov      	r6, r0
  16:	6d47      	mov      	r5, r1
  18:	9023      	ld.w      	r1, (r0, 0xc)
  1a:	3002      	movi      	r0, 2
  1c:	6dcb      	mov      	r7, r2
  1e:	e0000000 	bsr      	0x0	// 0 <wpa_cipher_to_suite>
  22:	e9200005 	bnez      	r0, 0x2c	// 2c <wpa_write_rsn_ie+0x2c>
  26:	3000      	movi      	r0, 0
  28:	2800      	subi      	r0, 1
  2a:	1497      	pop      	r4-r10, r15
  2c:	4878      	lsri      	r3, r0, 24
  2e:	a564      	st.b      	r3, (r5, 0x4)
  30:	4870      	lsri      	r3, r0, 16
  32:	a565      	st.b      	r3, (r5, 0x5)
  34:	4868      	lsri      	r3, r0, 8
  36:	a566      	st.b      	r3, (r5, 0x6)
  38:	a507      	st.b      	r0, (r5, 0x7)
  3a:	e4650009 	addi      	r3, r5, 10
  3e:	6c0f      	mov      	r0, r3
  40:	962b      	ld.w      	r1, (r6, 0x2c)
  42:	6e8f      	mov      	r10, r3
  44:	e0000000 	bsr      	0x0	// 0 <rsn_cipher_put_suites>
  48:	4062      	lsli      	r3, r0, 2
  4a:	60e8      	addu      	r3, r10
  4c:	e900ffed 	bez      	r0, 0x26	// 26 <wpa_write_rsn_ie+0x26>
  50:	c50055e2 	zext      	r2, r0, 15, 8
  54:	a549      	st.b      	r2, (r5, 0x9)
  56:	a508      	st.b      	r0, (r5, 0x8)
  58:	9641      	ld.w      	r2, (r6, 0x4)
  5a:	e4422001 	andi      	r2, r2, 1
  5e:	e922005a 	bnez      	r2, 0x112	// 112 <wpa_write_rsn_ie+0x112>
  62:	5b86      	addi      	r4, r3, 2
  64:	9621      	ld.w      	r1, (r6, 0x4)
  66:	e4212002 	andi      	r1, r1, 2
  6a:	e901000d 	bez      	r1, 0x84	// 84 <wpa_write_rsn_ie+0x84>
  6e:	3100      	movi      	r1, 0
  70:	a420      	st.b      	r1, (r4, 0x0)
  72:	310f      	movi      	r1, 15
  74:	a421      	st.b      	r1, (r4, 0x1)
  76:	3100      	movi      	r1, 0
  78:	2953      	subi      	r1, 84
  7a:	a422      	st.b      	r1, (r4, 0x2)
  7c:	3102      	movi      	r1, 2
  7e:	a423      	st.b      	r1, (r4, 0x3)
  80:	2200      	addi      	r2, 1
  82:	2403      	addi      	r4, 4
  84:	3080      	movi      	r0, 128
  86:	9621      	ld.w      	r1, (r6, 0x4)
  88:	4009      	lsli      	r0, r0, 9
  8a:	6840      	and      	r1, r0
  8c:	e901000d 	bez      	r1, 0xa6	// a6 <wpa_write_rsn_ie+0xa6>
  90:	3100      	movi      	r1, 0
  92:	a420      	st.b      	r1, (r4, 0x0)
  94:	310f      	movi      	r1, 15
  96:	a421      	st.b      	r1, (r4, 0x1)
  98:	3100      	movi      	r1, 0
  9a:	2953      	subi      	r1, 84
  9c:	a422      	st.b      	r1, (r4, 0x2)
  9e:	310b      	movi      	r1, 11
  a0:	a423      	st.b      	r1, (r4, 0x3)
  a2:	2200      	addi      	r2, 1
  a4:	2403      	addi      	r4, 4
  a6:	3080      	movi      	r0, 128
  a8:	9621      	ld.w      	r1, (r6, 0x4)
  aa:	400a      	lsli      	r0, r0, 10
  ac:	6840      	and      	r1, r0
  ae:	e901003d 	bez      	r1, 0x128	// 128 <wpa_write_rsn_ie+0x128>
  b2:	3100      	movi      	r1, 0
  b4:	a420      	st.b      	r1, (r4, 0x0)
  b6:	310f      	movi      	r1, 15
  b8:	a421      	st.b      	r1, (r4, 0x1)
  ba:	3100      	movi      	r1, 0
  bc:	2953      	subi      	r1, 84
  be:	a422      	st.b      	r1, (r4, 0x2)
  c0:	310c      	movi      	r1, 12
  c2:	a423      	st.b      	r1, (r4, 0x3)
  c4:	2200      	addi      	r2, 1
  c6:	2403      	addi      	r4, 4
  c8:	3100      	movi      	r1, 0
  ca:	a340      	st.b      	r2, (r3, 0x0)
  cc:	a321      	st.b      	r1, (r3, 0x1)
  ce:	966c      	ld.w      	r3, (r6, 0x30)
  d0:	3b40      	cmpnei      	r3, 0
  d2:	960e      	ld.w      	r0, (r6, 0x38)
  d4:	c4000502 	mvc      	r2
  d8:	7489      	zexth      	r2, r2
  da:	6cc7      	mov      	r3, r1
  dc:	e9000004 	bez      	r0, 0xe4	// e4 <wpa_write_rsn_ie+0xe4>
  e0:	ec42000c 	ori      	r2, r2, 12
  e4:	a461      	st.b      	r3, (r4, 0x1)
  e6:	a440      	st.b      	r2, (r4, 0x0)
  e8:	5c06      	addi      	r0, r4, 2
  ea:	e9080010 	bez      	r8, 0x10a	// 10a <wpa_write_rsn_ie+0x10a>
  ee:	61d4      	addu      	r7, r5
  f0:	5f01      	subu      	r0, r7, r0
  f2:	3831      	cmplti      	r0, 18
  f4:	0b99      	bt      	0x26	// 26 <wpa_write_rsn_ie+0x26>
  f6:	a463      	st.b      	r3, (r4, 0x3)
  f8:	3301      	movi      	r3, 1
  fa:	a462      	st.b      	r3, (r4, 0x2)
  fc:	3210      	movi      	r2, 16
  fe:	6c63      	mov      	r1, r8
 100:	5c0e      	addi      	r0, r4, 4
 102:	e0000000 	bsr      	0x0	// 0 <memcpy>
 106:	e4040013 	addi      	r0, r4, 20
 10a:	6016      	subu      	r0, r5
 10c:	5867      	subi      	r3, r0, 2
 10e:	a561      	st.b      	r3, (r5, 0x1)
 110:	078d      	br      	0x2a	// 2a <wpa_write_rsn_ie+0x2a>
 112:	320f      	movi      	r2, 15
 114:	a343      	st.b      	r2, (r3, 0x3)
 116:	3200      	movi      	r2, 0
 118:	2a53      	subi      	r2, 84
 11a:	a344      	st.b      	r2, (r3, 0x4)
 11c:	a385      	st.b      	r4, (r3, 0x5)
 11e:	dd230002 	st.b      	r9, (r3, 0x2)
 122:	5b96      	addi      	r4, r3, 6
 124:	3201      	movi      	r2, 1
 126:	079f      	br      	0x64	// 64 <wpa_write_rsn_ie+0x64>
 128:	e922ffd0 	bnez      	r2, 0xc8	// c8 <wpa_write_rsn_ie+0xc8>
 12c:	077d      	br      	0x26	// 26 <wpa_write_rsn_ie+0x26>

Disassembly of section .text.wpa_auth_gen_wpa_ie:

00000000 <wpa_auth_gen_wpa_ie>:
   0:	14d8      	push      	r4-r11, r15
   2:	1421      	subi      	r14, r14, 4
   4:	6e03      	mov      	r8, r0
   6:	3080      	movi      	r0, 128
   8:	e0000000 	bsr      	0x0	// 0 <malloc>
   c:	6d03      	mov      	r4, r0
   e:	e90000d8 	bez      	r0, 0x1be	// 1be <wpa_auth_gen_wpa_ie+0x1be>
  12:	d868200e 	ld.w      	r3, (r8, 0x38)
  16:	3b48      	cmpnei      	r3, 8
  18:	e4632002 	andi      	r3, r3, 2
  1c:	085d      	bt      	0xd6	// d6 <wpa_auth_gen_wpa_ie+0xd6>
  1e:	3300      	movi      	r3, 0
  20:	2b22      	subi      	r3, 35
  22:	a060      	st.b      	r3, (r0, 0x0)
  24:	3212      	movi      	r2, 18
  26:	3300      	movi      	r3, 0
  28:	3100      	movi      	r1, 0
  2a:	a045      	st.b      	r2, (r0, 0x5)
  2c:	2b65      	subi      	r3, 102
  2e:	3200      	movi      	r2, 0
  30:	2953      	subi      	r1, 84
  32:	ea0d0050 	movi      	r13, 80
  36:	ea0c006f 	movi      	r12, 111
  3a:	350f      	movi      	r5, 15
  3c:	a064      	st.b      	r3, (r0, 0x4)
  3e:	a046      	st.b      	r2, (r0, 0x6)
  40:	a028      	st.b      	r1, (r0, 0x8)
  42:	dda00002 	st.b      	r13, (r0, 0x2)
  46:	dd800003 	st.b      	r12, (r0, 0x3)
  4a:	a0a7      	st.b      	r5, (r0, 0x7)
  4c:	a474      	st.b      	r3, (r4, 0x14)
  4e:	d868201c 	ld.w      	r3, (r8, 0x70)
  52:	3b40      	cmpnei      	r3, 0
  54:	a44b      	st.b      	r2, (r4, 0xb)
  56:	a44c      	st.b      	r2, (r4, 0xc)
  58:	a451      	st.b      	r2, (r4, 0x11)
  5a:	330c      	movi      	r3, 12
  5c:	3200      	movi      	r2, 0
  5e:	3007      	movi      	r0, 7
  60:	c4620c20 	incf      	r3, r2, 0
  64:	a409      	st.b      	r0, (r4, 0x9)
  66:	a42e      	st.b      	r1, (r4, 0xe)
  68:	3001      	movi      	r0, 1
  6a:	3104      	movi      	r1, 4
  6c:	a476      	st.b      	r3, (r4, 0x16)
  6e:	3316      	movi      	r3, 22
  70:	a40a      	st.b      	r0, (r4, 0xa)
  72:	a4ad      	st.b      	r5, (r4, 0xd)
  74:	a42f      	st.b      	r1, (r4, 0xf)
  76:	a410      	st.b      	r0, (r4, 0x10)
  78:	dda40012 	st.b      	r13, (r4, 0x12)
  7c:	dd840013 	st.b      	r12, (r4, 0x13)
  80:	a415      	st.b      	r0, (r4, 0x15)
  82:	a457      	st.b      	r2, (r4, 0x17)
  84:	e4c40017 	addi      	r6, r4, 24
  88:	a461      	st.b      	r3, (r4, 0x1)
  8a:	d868200e 	ld.w      	r3, (r8, 0x38)
  8e:	e4632001 	andi      	r3, r3, 1
  92:	e903008d 	bez      	r3, 0x1ac	// 1ac <wpa_auth_gen_wpa_ie+0x1ac>
  96:	3300      	movi      	r3, 0
  98:	3700      	movi      	r7, 0
  9a:	e5680037 	addi      	r11, r8, 56
  9e:	ea0a0000 	movi      	r10, 0
  a2:	ea090001 	movi      	r9, 1
  a6:	2b22      	subi      	r3, 35
  a8:	3550      	movi      	r5, 80
  aa:	2f0d      	subi      	r7, 14
  ac:	a660      	st.b      	r3, (r6, 0x0)
  ae:	dd460002 	st.b      	r10, (r6, 0x2)
  b2:	a6a3      	st.b      	r5, (r6, 0x3)
  b4:	a6e4      	st.b      	r7, (r6, 0x4)
  b6:	dd260005 	st.b      	r9, (r6, 0x5)
  ba:	dd460007 	st.b      	r10, (r6, 0x7)
  be:	dd260006 	st.b      	r9, (r6, 0x6)
  c2:	d82b2003 	ld.w      	r1, (r11, 0xc)
  c6:	3001      	movi      	r0, 1
  c8:	e0000000 	bsr      	0x0	// 0 <wpa_cipher_to_suite>
  cc:	e920001a 	bnez      	r0, 0x100	// 100 <wpa_auth_gen_wpa_ie+0x100>
  d0:	3500      	movi      	r5, 0
  d2:	2d00      	subi      	r5, 1
  d4:	040e      	br      	0xf0	// f0 <wpa_auth_gen_wpa_ie+0xf0>
  d6:	6d83      	mov      	r6, r0
  d8:	e903ffd9 	bez      	r3, 0x8a	// 8a <wpa_auth_gen_wpa_ie+0x8a>
  dc:	6c43      	mov      	r1, r0
  de:	3300      	movi      	r3, 0
  e0:	3204      	movi      	r2, 4
  e2:	e4080037 	addi      	r0, r8, 56
  e6:	e0000000 	bsr      	0x0	// 0 <wpa_auth_gen_wpa_ie>
  ea:	6d43      	mov      	r5, r0
  ec:	e9a00008 	bhsz      	r0, 0xfc	// fc <wpa_auth_gen_wpa_ie+0xfc>
  f0:	6c13      	mov      	r0, r4
  f2:	e0000000 	bsr      	0x0	// 0 <free>
  f6:	6c17      	mov      	r0, r5
  f8:	1401      	addi      	r14, r14, 4
  fa:	1498      	pop      	r4-r11, r15
  fc:	5cc0      	addu      	r6, r4, r0
  fe:	07c6      	br      	0x8a	// 8a <wpa_auth_gen_wpa_ie+0x8a>
 100:	4878      	lsri      	r3, r0, 24
 102:	a668      	st.b      	r3, (r6, 0x8)
 104:	4870      	lsri      	r3, r0, 16
 106:	a669      	st.b      	r3, (r6, 0x9)
 108:	4868      	lsri      	r3, r0, 8
 10a:	a66a      	st.b      	r3, (r6, 0xa)
 10c:	e466000d 	addi      	r3, r6, 14
 110:	a60b      	st.b      	r0, (r6, 0xb)
 112:	d82b2002 	ld.w      	r1, (r11, 0x8)
 116:	6c0f      	mov      	r0, r3
 118:	b860      	st.w      	r3, (r14, 0x0)
 11a:	e0000000 	bsr      	0x0	// 0 <wpa_cipher_put_suites>
 11e:	e900ffd9 	bez      	r0, 0xd0	// d0 <wpa_auth_gen_wpa_ie+0xd0>
 122:	4042      	lsli      	r2, r0, 2
 124:	9860      	ld.w      	r3, (r14, 0x0)
 126:	60c8      	addu      	r3, r2
 128:	d82b2001 	ld.w      	r1, (r11, 0x4)
 12c:	c50055e2 	zext      	r2, r0, 15, 8
 130:	a64d      	st.b      	r2, (r6, 0xd)
 132:	e4412001 	andi      	r2, r1, 1
 136:	a60c      	st.b      	r0, (r6, 0xc)
 138:	e922002e 	bnez      	r2, 0x194	// 194 <wpa_auth_gen_wpa_ie+0x194>
 13c:	5be6      	addi      	r7, r3, 2
 13e:	e4212002 	andi      	r1, r1, 2
 142:	e9010032 	bez      	r1, 0x1a6	// 1a6 <wpa_auth_gen_wpa_ie+0x1a6>
 146:	3100      	movi      	r1, 0
 148:	a720      	st.b      	r1, (r7, 0x0)
 14a:	3150      	movi      	r1, 80
 14c:	a721      	st.b      	r1, (r7, 0x1)
 14e:	3100      	movi      	r1, 0
 150:	290d      	subi      	r1, 14
 152:	a722      	st.b      	r1, (r7, 0x2)
 154:	3102      	movi      	r1, 2
 156:	a723      	st.b      	r1, (r7, 0x3)
 158:	2200      	addi      	r2, 1
 15a:	2703      	addi      	r7, 4
 15c:	3100      	movi      	r1, 0
 15e:	5fb9      	subu      	r5, r7, r6
 160:	a321      	st.b      	r1, (r3, 0x1)
 162:	a340      	st.b      	r2, (r3, 0x0)
 164:	5d67      	subi      	r3, r5, 2
 166:	a661      	st.b      	r3, (r6, 0x1)
 168:	e985ffc4 	blz      	r5, 0xf0	// f0 <wpa_auth_gen_wpa_ie+0xf0>
 16c:	d8082025 	ld.w      	r0, (r8, 0x94)
 170:	3500      	movi      	r5, 0
 172:	61d2      	subu      	r7, r4
 174:	e0000000 	bsr      	0x0	// 0 <_os_free>
 178:	dca82025 	st.w      	r5, (r8, 0x94)
 17c:	6c1f      	mov      	r0, r7
 17e:	e0000000 	bsr      	0x0	// 0 <_os_malloc>
 182:	dc082025 	st.w      	r0, (r8, 0x94)
 186:	e9200015 	bnez      	r0, 0x1b0	// 1b0 <wpa_auth_gen_wpa_ie+0x1b0>
 18a:	6c13      	mov      	r0, r4
 18c:	e0000000 	bsr      	0x0	// 0 <free>
 190:	2d00      	subi      	r5, 1
 192:	07b2      	br      	0xf6	// f6 <wpa_auth_gen_wpa_ie+0xf6>
 194:	a3e4      	st.b      	r7, (r3, 0x4)
 196:	dd430002 	st.b      	r10, (r3, 0x2)
 19a:	a3a3      	st.b      	r5, (r3, 0x3)
 19c:	dd230005 	st.b      	r9, (r3, 0x5)
 1a0:	5bf6      	addi      	r7, r3, 6
 1a2:	3201      	movi      	r2, 1
 1a4:	07cd      	br      	0x13e	// 13e <wpa_auth_gen_wpa_ie+0x13e>
 1a6:	e922ffdb 	bnez      	r2, 0x15c	// 15c <wpa_auth_gen_wpa_ie+0x15c>
 1aa:	0793      	br      	0xd0	// d0 <wpa_auth_gen_wpa_ie+0xd0>
 1ac:	6ddb      	mov      	r7, r6
 1ae:	07df      	br      	0x16c	// 16c <wpa_auth_gen_wpa_ie+0x16c>
 1b0:	6c9f      	mov      	r2, r7
 1b2:	6c53      	mov      	r1, r4
 1b4:	e0000000 	bsr      	0x0	// 0 <memcpy>
 1b8:	dce82026 	st.w      	r7, (r8, 0x98)
 1bc:	079a      	br      	0xf0	// f0 <wpa_auth_gen_wpa_ie+0xf0>
 1be:	3500      	movi      	r5, 0
 1c0:	07e8      	br      	0x190	// 190 <wpa_auth_gen_wpa_ie+0x190>

Disassembly of section .text.wpa_add_kde:

00000000 <wpa_add_kde>:
   0:	14d3      	push      	r4-r6, r15
   2:	6d4f      	mov      	r5, r3
   4:	3300      	movi      	r3, 0
   6:	9885      	ld.w      	r4, (r14, 0x14)
   8:	2b22      	subi      	r3, 35
   a:	a060      	st.b      	r3, (r0, 0x0)
   c:	5c6e      	addi      	r3, r4, 4
   e:	60d4      	addu      	r3, r5
  10:	a061      	st.b      	r3, (r0, 0x1)
  12:	4978      	lsri      	r3, r1, 24
  14:	a062      	st.b      	r3, (r0, 0x2)
  16:	4970      	lsri      	r3, r1, 16
  18:	6f4b      	mov      	r13, r2
  1a:	a063      	st.b      	r3, (r0, 0x3)
  1c:	e5800005 	addi      	r12, r0, 6
  20:	4968      	lsri      	r3, r1, 8
  22:	a025      	st.b      	r1, (r0, 0x5)
  24:	a064      	st.b      	r3, (r0, 0x4)
  26:	6c97      	mov      	r2, r5
  28:	6c33      	mov      	r0, r12
  2a:	6c77      	mov      	r1, r13
  2c:	98c4      	ld.w      	r6, (r14, 0x10)
  2e:	e0000000 	bsr      	0x0	// 0 <memcpy>
  32:	6f03      	mov      	r12, r0
  34:	6314      	addu      	r12, r5
  36:	e9060009 	bez      	r6, 0x48	// 48 <wpa_add_kde+0x48>
  3a:	6c33      	mov      	r0, r12
  3c:	6c93      	mov      	r2, r4
  3e:	6c5b      	mov      	r1, r6
  40:	e0000000 	bsr      	0x0	// 0 <memcpy>
  44:	6f03      	mov      	r12, r0
  46:	6310      	addu      	r12, r4
  48:	6c33      	mov      	r0, r12
  4a:	1493      	pop      	r4-r6, r15

Disassembly of section .text.wpa_validate_wpa_ie:

00000000 <wpa_validate_wpa_ie>:
   0:	14d8      	push      	r4-r11, r15
   2:	1430      	subi      	r14, r14, 64
   4:	6d03      	mov      	r4, r0
   6:	6d47      	mov      	r5, r1
   8:	6ecb      	mov      	r11, r2
   a:	6e4f      	mov      	r9, r3
   c:	d90e2019 	ld.w      	r8, (r14, 0x64)
  10:	d94e201a 	ld.w      	r10, (r14, 0x68)
  14:	e9000148 	bez      	r0, 0x2a4	// 2a4 <wpa_validate_wpa_ie+0x2a4>
  18:	e9010146 	bez      	r1, 0x2a4	// 2a4 <wpa_validate_wpa_ie+0x2a4>
  1c:	e9230006 	bnez      	r3, 0x28	// 28 <wpa_validate_wpa_ie+0x28>
  20:	3601      	movi      	r6, 1
  22:	6c1b      	mov      	r0, r6
  24:	1410      	addi      	r14, r14, 64
  26:	1498      	pop      	r4-r11, r15
  28:	e908fffc 	bez      	r8, 0x20	// 20 <wpa_validate_wpa_ie+0x20>
  2c:	8360      	ld.b      	r3, (r3, 0x0)
  2e:	eb430030 	cmpnei      	r3, 48
  32:	65c3      	mvcv      	r7
  34:	2700      	addi      	r7, 1
  36:	906e      	ld.w      	r3, (r0, 0x38)
  38:	68dc      	and      	r3, r7
  3a:	e9030137 	bez      	r3, 0x2a8	// 2a8 <wpa_validate_wpa_ie+0x2a8>
  3e:	3f42      	cmpnei      	r7, 2
  40:	1a06      	addi      	r2, r14, 24
  42:	6c63      	mov      	r1, r8
  44:	6c27      	mov      	r0, r9
  46:	0868      	bt      	0x116	// 116 <wpa_validate_wpa_ie+0x116>
  48:	e0000000 	bsr      	0x0	// 0 <wpa_parse_wpa_ie_rsn>
  4c:	9868      	ld.w      	r3, (r14, 0x20)
  4e:	6d83      	mov      	r6, r0
  50:	e9230006 	bnez      	r3, 0x5c	// 5c <wpa_validate_wpa_ie+0x5c>
  54:	6c2f      	mov      	r0, r11
  56:	e0000000 	bsr      	0x0	// 0 <wpa_default_rsn_cipher>
  5a:	b807      	st.w      	r0, (r14, 0x1c)
  5c:	986a      	ld.w      	r3, (r14, 0x28)
  5e:	e9230006 	bnez      	r3, 0x6a	// 6a <wpa_validate_wpa_ie+0x6a>
  62:	6c2f      	mov      	r0, r11
  64:	e0000000 	bsr      	0x0	// 0 <wpa_default_rsn_cipher>
  68:	b809      	st.w      	r0, (r14, 0x24)
  6a:	986b      	ld.w      	r3, (r14, 0x2c)
  6c:	034c      	lrw      	r2, 0x1300860	// 2b8 <wpa_validate_wpa_ie+0x2b8>
  6e:	688c      	and      	r2, r3
  70:	e9020008 	bez      	r2, 0x80	// 80 <wpa_validate_wpa_ie+0x80>
  74:	e92a0006 	bnez      	r10, 0x80	// 80 <wpa_validate_wpa_ie+0x80>
  78:	034e      	lrw      	r2, 0xfecff79f	// 2bc <wpa_validate_wpa_ie+0x2bc>
  7a:	68c8      	and      	r3, r2
  7c:	e923011c 	bnez      	r3, 0x2b4	// 2b4 <wpa_validate_wpa_ie+0x2b4>
  80:	3280      	movi      	r2, 128
  82:	986b      	ld.w      	r3, (r14, 0x2c)
  84:	424a      	lsli      	r2, r2, 10
  86:	688c      	and      	r2, r3
  88:	e9220041 	bnez      	r2, 0x10a	// 10a <wpa_validate_wpa_ie+0x10a>
  8c:	3280      	movi      	r2, 128
  8e:	4249      	lsli      	r2, r2, 9
  90:	688c      	and      	r2, r3
  92:	e922003e 	bnez      	r2, 0x10e	// 10e <wpa_validate_wpa_ie+0x10e>
  96:	e4432001 	andi      	r2, r3, 1
  9a:	e922003c 	bnez      	r2, 0x112	// 112 <wpa_validate_wpa_ie+0x112>
  9e:	e4632002 	andi      	r3, r3, 2
  a2:	3b40      	cmpnei      	r3, 0
  a4:	c4000503 	mvc      	r3
  a8:	0359      	lrw      	r2, 0xfac01	// 2c0 <wpa_validate_wpa_ie+0x2c0>
  aa:	60c8      	addu      	r3, r2
  ac:	b462      	st.w      	r3, (r4, 0x8)
  ae:	9827      	ld.w      	r1, (r14, 0x1c)
  b0:	3002      	movi      	r0, 2
  b2:	e0000000 	bsr      	0x0	// 0 <wpa_cipher_to_suite>
  b6:	3840      	cmpnei      	r0, 0
  b8:	ea8a0083 	lrw      	r10, 0xfac04	// 2c4 <wpa_validate_wpa_ie+0x2c4>
  bc:	c40a0c20 	incf      	r0, r10, 0
  c0:	b403      	st.w      	r0, (r4, 0xc)
  c2:	9829      	ld.w      	r1, (r14, 0x24)
  c4:	3002      	movi      	r0, 2
  c6:	e0000000 	bsr      	0x0	// 0 <wpa_cipher_to_suite>
  ca:	3840      	cmpnei      	r0, 0
  cc:	c40a0c20 	incf      	r0, r10, 0
  d0:	b404      	st.w      	r0, (r4, 0x10)
  d2:	e926ffa7 	bnez      	r6, 0x20	// 20 <wpa_validate_wpa_ie+0x20>
  d6:	9849      	ld.w      	r2, (r14, 0x24)
  d8:	9471      	ld.w      	r3, (r4, 0x44)
  da:	64ca      	cmpne      	r2, r3
  dc:	08e8      	bt      	0x2ac	// 2ac <wpa_validate_wpa_ie+0x2ac>
  de:	986b      	ld.w      	r3, (r14, 0x2c)
  e0:	944f      	ld.w      	r2, (r4, 0x3c)
  e2:	68c8      	and      	r3, r2
  e4:	e90300e6 	bez      	r3, 0x2b0	// 2b0 <wpa_validate_wpa_ie+0x2b0>
  e8:	3280      	movi      	r2, 128
  ea:	424a      	lsli      	r2, r2, 10
  ec:	c4432021 	and      	r1, r3, r2
  f0:	e9010037 	bez      	r1, 0x15e	// 15e <wpa_validate_wpa_ie+0x15e>
  f4:	dc4520b7 	st.w      	r2, (r5, 0x2dc)
  f8:	3f42      	cmpnei      	r7, 2
  fa:	9807      	ld.w      	r0, (r14, 0x1c)
  fc:	083f      	bt      	0x17a	// 17a <wpa_validate_wpa_ie+0x17a>
  fe:	9479      	ld.w      	r3, (r4, 0x64)
 100:	680c      	and      	r0, r3
 102:	e920003e 	bnez      	r0, 0x17e	// 17e <wpa_validate_wpa_ie+0x17e>
 106:	3603      	movi      	r6, 3
 108:	078d      	br      	0x22	// 22 <wpa_validate_wpa_ie+0x22>
 10a:	1370      	lrw      	r3, 0xfac0c	// 2c8 <wpa_validate_wpa_ie+0x2c8>
 10c:	07d0      	br      	0xac	// ac <wpa_validate_wpa_ie+0xac>
 10e:	1370      	lrw      	r3, 0xfac0b	// 2cc <wpa_validate_wpa_ie+0x2cc>
 110:	07ce      	br      	0xac	// ac <wpa_validate_wpa_ie+0xac>
 112:	136c      	lrw      	r3, 0xfac01	// 2c0 <wpa_validate_wpa_ie+0x2c0>
 114:	07cc      	br      	0xac	// ac <wpa_validate_wpa_ie+0xac>
 116:	e0000000 	bsr      	0x0	// 0 <wpa_parse_wpa_ie_wpa>
 11a:	986b      	ld.w      	r3, (r14, 0x2c)
 11c:	e4432001 	andi      	r2, r3, 1
 120:	6d83      	mov      	r6, r0
 122:	e922001c 	bnez      	r2, 0x15a	// 15a <wpa_validate_wpa_ie+0x15a>
 126:	e4632002 	andi      	r3, r3, 2
 12a:	3b40      	cmpnei      	r3, 0
 12c:	c4000503 	mvc      	r3
 130:	1348      	lrw      	r2, 0x50f201	// 2d0 <wpa_validate_wpa_ie+0x2d0>
 132:	60c8      	addu      	r3, r2
 134:	b462      	st.w      	r3, (r4, 0x8)
 136:	9827      	ld.w      	r1, (r14, 0x1c)
 138:	3001      	movi      	r0, 1
 13a:	e0000000 	bsr      	0x0	// 0 <wpa_cipher_to_suite>
 13e:	3840      	cmpnei      	r0, 0
 140:	1365      	lrw      	r3, 0xfac02	// 2d4 <wpa_validate_wpa_ie+0x2d4>
 142:	c4030c20 	incf      	r0, r3, 0
 146:	b403      	st.w      	r0, (r4, 0xc)
 148:	9829      	ld.w      	r1, (r14, 0x24)
 14a:	3001      	movi      	r0, 1
 14c:	e0000000 	bsr      	0x0	// 0 <wpa_cipher_to_suite>
 150:	3840      	cmpnei      	r0, 0
 152:	1362      	lrw      	r3, 0x50f202	// 2d8 <wpa_validate_wpa_ie+0x2d8>
 154:	c4030c20 	incf      	r0, r3, 0
 158:	07bc      	br      	0xd0	// d0 <wpa_validate_wpa_ie+0xd0>
 15a:	127e      	lrw      	r3, 0x50f201	// 2d0 <wpa_validate_wpa_ie+0x2d0>
 15c:	07ec      	br      	0x134	// 134 <wpa_validate_wpa_ie+0x134>
 15e:	3280      	movi      	r2, 128
 160:	4249      	lsli      	r2, r2, 9
 162:	c4432021 	and      	r1, r3, r2
 166:	e921ffc7 	bnez      	r1, 0xf4	// f4 <wpa_validate_wpa_ie+0xf4>
 16a:	e4632001 	andi      	r3, r3, 1
 16e:	3b40      	cmpnei      	r3, 0
 170:	64c3      	mvcv      	r3
 172:	2300      	addi      	r3, 1
 174:	dc6520b7 	st.w      	r3, (r5, 0x2dc)
 178:	07c0      	br      	0xf8	// f8 <wpa_validate_wpa_ie+0xf8>
 17a:	9470      	ld.w      	r3, (r4, 0x40)
 17c:	07c2      	br      	0x100	// 100 <wpa_validate_wpa_ie+0x100>
 17e:	3100      	movi      	r1, 0
 180:	e0000000 	bsr      	0x0	// 0 <wpa_pick_pairwise_cipher>
 184:	dc0520b6 	st.w      	r0, (r5, 0x2d8)
 188:	e980ffbf 	blz      	r0, 0x106	// 106 <wpa_validate_wpa_ie+0x106>
 18c:	d8690000 	ld.b      	r3, (r9, 0x0)
 190:	eb430030 	cmpnei      	r3, 48
 194:	64c3      	mvcv      	r3
 196:	2300      	addi      	r3, 1
 198:	ea0a0000 	movi      	r10, 0
 19c:	dc6520b5 	st.w      	r3, (r5, 0x2d4)
 1a0:	dd4520b8 	st.w      	r10, (r5, 0x2e0)
 1a4:	5dfe      	addi      	r7, r5, 8
 1a6:	986d      	ld.w      	r3, (r14, 0x34)
 1a8:	64e8      	cmphs      	r10, r3
 1aa:	0c03      	bf      	0x1b0	// 1b0 <wpa_validate_wpa_ie+0x1b0>
 1ac:	3700      	movi      	r7, 0
 1ae:	040f      	br      	0x1cc	// 1cc <wpa_validate_wpa_ie+0x1cc>
 1b0:	986e      	ld.w      	r3, (r14, 0x38)
 1b2:	c48a4822 	lsli      	r2, r10, 4
 1b6:	608c      	addu      	r2, r3
 1b8:	6c5f      	mov      	r1, r7
 1ba:	d8042029 	ld.w      	r0, (r4, 0xa4)
 1be:	e0000000 	bsr      	0x0	// 0 <pmksa_cache_auth_get>
 1c2:	dc0520b8 	st.w      	r0, (r5, 0x2e0)
 1c6:	e900005b 	bez      	r0, 0x27c	// 27c <wpa_validate_wpa_ie+0x27c>
 1ca:	58fe      	addi      	r7, r0, 8
 1cc:	ea0a0000 	movi      	r10, 0
 1d0:	e564009b 	addi      	r11, r4, 156
 1d4:	e5a50007 	addi      	r13, r5, 8
 1d8:	d98520b8 	ld.w      	r12, (r5, 0x2e0)
 1dc:	e92c0033 	bnez      	r12, 0x242	// 242 <wpa_validate_wpa_ie+0x242>
 1e0:	947f      	ld.w      	r3, (r4, 0x7c)
 1e2:	e9030030 	bez      	r3, 0x242	// 242 <wpa_validate_wpa_ie+0x242>
 1e6:	986d      	ld.w      	r3, (r14, 0x34)
 1e8:	64e8      	cmphs      	r10, r3
 1ea:	082c      	bt      	0x242	// 242 <wpa_validate_wpa_ie+0x242>
 1ec:	984e      	ld.w      	r2, (r14, 0x38)
 1ee:	c48a4823 	lsli      	r3, r10, 4
 1f2:	60c8      	addu      	r3, r2
 1f4:	113a      	lrw      	r1, 0x0	// 2dc <wpa_validate_wpa_ie+0x2dc>
 1f6:	1a02      	addi      	r2, r14, 8
 1f8:	6c13      	mov      	r0, r4
 1fa:	dd8e2002 	st.w      	r12, (r14, 0x8)
 1fe:	dd8e2001 	st.w      	r12, (r14, 0x4)
 202:	ddae2004 	st.w      	r13, (r14, 0x10)
 206:	ddae2000 	st.w      	r13, (r14, 0x0)
 20a:	b865      	st.w      	r3, (r14, 0x14)
 20c:	dd6e2003 	st.w      	r11, (r14, 0xc)
 210:	e0000000 	bsr      	0x0	// 0 <wpa_auth_for_each_auth>
 214:	9862      	ld.w      	r3, (r14, 0x8)
 216:	d9ae2000 	ld.w      	r13, (r14, 0x0)
 21a:	d98e2001 	ld.w      	r12, (r14, 0x4)
 21e:	e9030032 	bez      	r3, 0x282	// 282 <wpa_validate_wpa_ie+0x282>
 222:	6cb3      	mov      	r2, r12
 224:	6c77      	mov      	r1, r13
 226:	116f      	lrw      	r3, 0x0	// 2e0 <wpa_validate_wpa_ie+0x2e0>
 228:	6c13      	mov      	r0, r4
 22a:	e0000000 	bsr      	0x0	// 0 <wpa_auth_vlogger>
 22e:	9865      	ld.w      	r3, (r14, 0x14)
 230:	6caf      	mov      	r2, r11
 232:	9822      	ld.w      	r1, (r14, 0x8)
 234:	d8042029 	ld.w      	r0, (r4, 0xa4)
 238:	e0000000 	bsr      	0x0	// 0 <pmksa_cache_add_okc>
 23c:	dc0520b8 	st.w      	r0, (r5, 0x2e0)
 240:	98e5      	ld.w      	r7, (r14, 0x14)
 242:	d86520b8 	ld.w      	r3, (r5, 0x2e0)
 246:	e903000a 	bez      	r3, 0x25a	// 25a <wpa_validate_wpa_ie+0x25a>
 24a:	e9070008 	bez      	r7, 0x25a	// 25a <wpa_validate_wpa_ie+0x25a>
 24e:	3210      	movi      	r2, 16
 250:	6c5f      	mov      	r1, r7
 252:	e4040013 	addi      	r0, r4, 20
 256:	e0000000 	bsr      	0x0	// 0 <memcpy>
 25a:	d80520b3 	ld.w      	r0, (r5, 0x2cc)
 25e:	e9000015 	bez      	r0, 0x288	// 288 <wpa_validate_wpa_ie+0x288>
 262:	d86520b4 	ld.w      	r3, (r5, 0x2d0)
 266:	660c      	cmphs      	r3, r8
 268:	0c10      	bf      	0x288	// 288 <wpa_validate_wpa_ie+0x288>
 26a:	6ca3      	mov      	r2, r8
 26c:	6c67      	mov      	r1, r9
 26e:	d80520b3 	ld.w      	r0, (r5, 0x2cc)
 272:	e0000000 	bsr      	0x0	// 0 <memcpy>
 276:	dd0520b4 	st.w      	r8, (r5, 0x2d0)
 27a:	06d4      	br      	0x22	// 22 <wpa_validate_wpa_ie+0x22>
 27c:	e54a0000 	addi      	r10, r10, 1
 280:	0793      	br      	0x1a6	// 1a6 <wpa_validate_wpa_ie+0x1a6>
 282:	e54a0000 	addi      	r10, r10, 1
 286:	07a9      	br      	0x1d8	// 1d8 <_os_free+0x1d8>
 288:	e0000000 	bsr      	0x0	// 0 <_os_free>
 28c:	3300      	movi      	r3, 0
 28e:	dc6520b3 	st.w      	r3, (r5, 0x2cc)
 292:	6c23      	mov      	r0, r8
 294:	e0000000 	bsr      	0x0	// 0 <_os_malloc>
 298:	dc0520b3 	st.w      	r0, (r5, 0x2cc)
 29c:	e920ffe7 	bnez      	r0, 0x26a	// 26a <wpa_validate_wpa_ie+0x26a>
 2a0:	3606      	movi      	r6, 6
 2a2:	06c0      	br      	0x22	// 22 <wpa_validate_wpa_ie+0x22>
 2a4:	3605      	movi      	r6, 5
 2a6:	06be      	br      	0x22	// 22 <wpa_validate_wpa_ie+0x22>
 2a8:	360a      	movi      	r6, 10
 2aa:	06bc      	br      	0x22	// 22 <wpa_validate_wpa_ie+0x22>
 2ac:	3602      	movi      	r6, 2
 2ae:	06ba      	br      	0x22	// 22 <wpa_validate_wpa_ie+0x22>
 2b0:	3604      	movi      	r6, 4
 2b2:	06b8      	br      	0x22	// 22 <wpa_validate_wpa_ie+0x22>
 2b4:	b86b      	st.w      	r3, (r14, 0x2c)
 2b6:	06e5      	br      	0x80	// 80 <wpa_validate_wpa_ie+0x80>
 2b8:	01300860 	.long	0x01300860
 2bc:	fecff79f 	.long	0xfecff79f
 2c0:	000fac01 	.long	0x000fac01
 2c4:	000fac04 	.long	0x000fac04
 2c8:	000fac0c 	.long	0x000fac0c
 2cc:	000fac0b 	.long	0x000fac0b
 2d0:	0050f201 	.long	0x0050f201
 2d4:	000fac02 	.long	0x000fac02
 2d8:	0050f202 	.long	0x0050f202
	...

Disassembly of section .text.wpa_parse_kde_ies:

00000000 <wpa_parse_kde_ies>:
   0:	14d8      	push      	r4-r11, r15
   2:	1421      	subi      	r14, r14, 4
   4:	6e0b      	mov      	r8, r2
   6:	6d03      	mov      	r4, r0
   8:	6d47      	mov      	r5, r1
   a:	322c      	movi      	r2, 44
   c:	3100      	movi      	r1, 0
   e:	6c23      	mov      	r0, r8
  10:	e0000000 	bsr      	0x0	// 0 <memset>
  14:	5c74      	addu      	r3, r4, r5
  16:	2d00      	subi      	r5, 1
  18:	b860      	st.w      	r3, (r14, 0x0)
  1a:	6150      	addu      	r5, r4
  1c:	ea89003e 	lrw      	r9, 0xfac04	// 114 <wpa_parse_kde_ies+0x114>
  20:	ea8a003e 	lrw      	r10, 0x506f9a12	// 118 <wpa_parse_kde_ies+0x118>
  24:	ea8b003e 	lrw      	r11, 0x50f201	// 11c <wpa_parse_kde_ies+0x11c>
  28:	9860      	ld.w      	r3, (r14, 0x0)
  2a:	5bf1      	subu      	r7, r3, r4
  2c:	3f21      	cmplti      	r7, 2
  2e:	0c04      	bf      	0x36	// 36 <wpa_parse_kde_ies+0x36>
  30:	3000      	movi      	r0, 0
  32:	1401      	addi      	r14, r14, 4
  34:	1498      	pop      	r4-r11, r15
  36:	8420      	ld.b      	r1, (r4, 0x0)
  38:	eb4100dd 	cmpnei      	r1, 221
  3c:	0806      	bt      	0x48	// 48 <wpa_parse_kde_ies+0x48>
  3e:	6552      	cmpne      	r4, r5
  40:	0ff8      	bf      	0x30	// 30 <wpa_parse_kde_ies+0x30>
  42:	8401      	ld.b      	r0, (r4, 0x1)
  44:	e900fff7 	bez      	r0, 0x32	// 32 <wpa_parse_kde_ies+0x32>
  48:	84c1      	ld.b      	r6, (r4, 0x1)
  4a:	5e02      	addi      	r0, r6, 1
  4c:	65c1      	cmplt      	r0, r7
  4e:	0c5d      	bf      	0x108	// 108 <wpa_parse_kde_ies+0x108>
  50:	eb410030 	cmpnei      	r1, 48
  54:	080b      	bt      	0x6a	// 6a <wpa_parse_kde_ies+0x6a>
  56:	dc882002 	st.w      	r4, (r8, 0x8)
  5a:	8461      	ld.b      	r3, (r4, 0x1)
  5c:	2301      	addi      	r3, 2
  5e:	dc682003 	st.w      	r3, (r8, 0xc)
  62:	8461      	ld.b      	r3, (r4, 0x1)
  64:	2301      	addi      	r3, 2
  66:	610c      	addu      	r4, r3
  68:	07e0      	br      	0x28	// 28 <wpa_parse_kde_ies+0x28>
  6a:	eb4100dd 	cmpnei      	r1, 221
  6e:	0bfa      	bt      	0x62	// 62 <wpa_parse_kde_ies+0x62>
  70:	e906004f 	bez      	r6, 0x10e	// 10e <wpa_parse_kde_ies+0x10e>
  74:	3e05      	cmphsi      	r6, 6
  76:	0c13      	bf      	0x9c	// 9c <wpa_parse_kde_ies+0x9c>
  78:	5c06      	addi      	r0, r4, 2
  7a:	e0000000 	bsr      	0x0	// 0 <wpa_parse_kde_ies>
  7e:	66c2      	cmpne      	r0, r11
  80:	0810      	bt      	0xa0	// a0 <wpa_parse_kde_ies+0xa0>
  82:	8426      	ld.b      	r1, (r4, 0x6)
  84:	3941      	cmpnei      	r1, 1
  86:	080d      	bt      	0xa0	// a0 <wpa_parse_kde_ies+0xa0>
  88:	8427      	ld.b      	r1, (r4, 0x7)
  8a:	e921000b 	bnez      	r1, 0xa0	// a0 <wpa_parse_kde_ies+0xa0>
  8e:	dc882000 	st.w      	r4, (r8, 0x0)
  92:	8461      	ld.b      	r3, (r4, 0x1)
  94:	2301      	addi      	r3, 2
  96:	dc682001 	st.w      	r3, (r8, 0x4)
  9a:	07e4      	br      	0x62	// 62 <wpa_parse_kde_ies+0x62>
  9c:	3e03      	cmphsi      	r6, 4
  9e:	0c0d      	bf      	0xb8	// b8 <wpa_parse_kde_ies+0xb8>
  a0:	5c06      	addi      	r0, r4, 2
  a2:	e0000000 	bsr      	0x0	// 0 <wpa_parse_kde_ies>
  a6:	6682      	cmpne      	r0, r10
  a8:	0808      	bt      	0xb8	// b8 <wpa_parse_kde_ies+0xb8>
  aa:	dc882009 	st.w      	r4, (r8, 0x24)
  ae:	8461      	ld.b      	r3, (r4, 0x1)
  b0:	2301      	addi      	r3, 2
  b2:	dc68200a 	st.w      	r3, (r8, 0x28)
  b6:	07d6      	br      	0x62	// 62 <wpa_parse_kde_ies+0x62>
  b8:	3f25      	cmplti      	r7, 6
  ba:	080c      	bt      	0xd2	// d2 <wpa_parse_kde_ies+0xd2>
  bc:	3e13      	cmphsi      	r6, 20
  be:	0c0a      	bf      	0xd2	// d2 <wpa_parse_kde_ies+0xd2>
  c0:	5c06      	addi      	r0, r4, 2
  c2:	e0000000 	bsr      	0x0	// 0 <wpa_parse_kde_ies>
  c6:	6642      	cmpne      	r0, r9
  c8:	0807      	bt      	0xd6	// d6 <wpa_parse_kde_ies+0xd6>
  ca:	5c76      	addi      	r3, r4, 6
  cc:	dc682004 	st.w      	r3, (r8, 0x10)
  d0:	07c9      	br      	0x62	// 62 <wpa_parse_kde_ies+0x62>
  d2:	3e06      	cmphsi      	r6, 7
  d4:	0fc7      	bf      	0x62	// 62 <wpa_parse_kde_ies+0x62>
  d6:	5c06      	addi      	r0, r4, 2
  d8:	e0000000 	bsr      	0x0	// 0 <wpa_parse_kde_ies>
  dc:	1071      	lrw      	r3, 0xfac01	// 120 <wpa_parse_kde_ies+0x120>
  de:	64c2      	cmpne      	r0, r3
  e0:	0809      	bt      	0xf2	// f2 <wpa_parse_kde_ies+0xf2>
  e2:	5c76      	addi      	r3, r4, 6
  e4:	dc682005 	st.w      	r3, (r8, 0x14)
  e8:	8461      	ld.b      	r3, (r4, 0x1)
  ea:	2b03      	subi      	r3, 4
  ec:	dc682006 	st.w      	r3, (r8, 0x18)
  f0:	07b9      	br      	0x62	// 62 <wpa_parse_kde_ies+0x62>
  f2:	106d      	lrw      	r3, 0xfac03	// 124 <wpa_parse_kde_ies+0x124>
  f4:	64c2      	cmpne      	r0, r3
  f6:	0bb6      	bt      	0x62	// 62 <wpa_parse_kde_ies+0x62>
  f8:	5c76      	addi      	r3, r4, 6
  fa:	dc682007 	st.w      	r3, (r8, 0x1c)
  fe:	8461      	ld.b      	r3, (r4, 0x1)
 100:	2b03      	subi      	r3, 4
 102:	dc682008 	st.w      	r3, (r8, 0x20)
 106:	07ae      	br      	0x62	// 62 <wpa_parse_kde_ies+0x62>
 108:	3000      	movi      	r0, 0
 10a:	2800      	subi      	r0, 1
 10c:	0793      	br      	0x32	// 32 <wpa_parse_kde_ies+0x32>
 10e:	6c1b      	mov      	r0, r6
 110:	0791      	br      	0x32	// 32 <wpa_parse_kde_ies+0x32>
 112:	0000      	.short	0x0000
 114:	000fac04 	.long	0x000fac04
 118:	506f9a12 	.long	0x506f9a12
 11c:	0050f201 	.long	0x0050f201
 120:	000fac01 	.long	0x000fac01
 124:	000fac03 	.long	0x000fac03

Disassembly of section .text.wpa_auth_uses_mfp:

00000000 <wpa_auth_uses_mfp>:
   0:	e9000006 	bez      	r0, 0xc	// c <wpa_auth_uses_mfp+0xc>
   4:	d80002bc 	ld.b      	r0, (r0, 0x2bc)
   8:	c4805480 	zext      	r0, r0, 4, 4
   c:	783c      	jmp      	r15
