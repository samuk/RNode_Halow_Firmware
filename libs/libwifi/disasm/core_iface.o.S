
libwifi/o/core_iface.o:     file format elf32-csky-little


Disassembly of section .text.ieee80211_iface_create:

00000000 <ieee80211_iface_create>:
   0:	14d7      	push      	r4-r10, r15
   2:	6dc3      	mov      	r7, r0
   4:	6e8b      	mov      	r10, r2
   6:	6e4f      	mov      	r9, r3
   8:	e9000098 	bez      	r0, 0x138	// 138 <ieee80211_iface_create+0x138>
   c:	12ce      	lrw      	r6, 0x0	// 144 <ieee80211_iface_create+0x144>
   e:	d8660048 	ld.b      	r3, (r6, 0x48)
  12:	640c      	cmphs      	r3, r0
  14:	0c92      	bf      	0x138	// 138 <ieee80211_iface_create+0x138>
  16:	3904      	cmphsi      	r1, 5
  18:	0890      	bt      	0x138	// 138 <ieee80211_iface_create+0x138>
  1a:	e4a10015 	addi      	r5, r1, 22
  1e:	d0a60883 	ldr.w      	r3, (r6, r5 << 2)
  22:	e903008b 	bez      	r3, 0x138	// 138 <ieee80211_iface_create+0x138>
  26:	e4600018 	addi      	r3, r0, 25
  2a:	d0660883 	ldr.w      	r3, (r6, r3 << 2)
  2e:	e5001000 	subi      	r8, r0, 1
  32:	e9230086 	bnez      	r3, 0x13e	// 13e <ieee80211_iface_create+0x13e>
  36:	3089      	movi      	r0, 137
  38:	4002      	lsli      	r0, r0, 2
  3a:	e0000000 	bsr      	0x0	// 0 <_os_zalloc>
  3e:	6d03      	mov      	r4, r0
  40:	e9200007 	bnez      	r0, 0x4e	// 4e <ieee80211_iface_create+0x4e>
  44:	1241      	lrw      	r2, 0x0	// 148 <ieee80211_iface_create+0x148>
  46:	3174      	movi      	r1, 116
  48:	1201      	lrw      	r0, 0x0	// 14c <ieee80211_iface_create+0x14c>
  4a:	e0000000 	bsr      	0x0	// 0 <assert_internal>
  4e:	3204      	movi      	r2, 4
  50:	3301      	movi      	r3, 1
  52:	8425      	ld.b      	r1, (r4, 0x5)
  54:	3001      	movi      	r0, 1
  56:	dc440024 	st.b      	r2, (r4, 0x24)
  5a:	c4205c05 	ins      	r1, r0, 5, 5
  5e:	a4e4      	st.b      	r7, (r4, 0x4)
  60:	a473      	st.b      	r3, (r4, 0x13)
  62:	d0a60883 	ldr.w      	r3, (r6, r5 << 2)
  66:	a425      	st.b      	r1, (r4, 0x5)
  68:	d824003d 	ld.b      	r1, (r4, 0x3d)
  6c:	c4205c00 	ins      	r1, r0, 0, 0
  70:	dc440025 	st.b      	r2, (r4, 0x25)
  74:	32ff      	movi      	r2, 255
  76:	dd441000 	st.h      	r10, (r4, 0x0)
  7a:	dcc4202a 	st.w      	r6, (r4, 0xa8)
  7e:	dc64202b 	st.w      	r3, (r4, 0xac)
  82:	dc24003d 	st.b      	r1, (r4, 0x3d)
  86:	ac47      	st.h      	r2, (r4, 0xe)
  88:	e923004f 	bnez      	r3, 0x126	// 126 <ieee80211_iface_create+0x126>
  8c:	1151      	lrw      	r2, 0x0	// 150 <ieee80211_iface_create+0x150>
  8e:	3181      	movi      	r1, 129
  90:	110f      	lrw      	r0, 0x0	// 14c <ieee80211_iface_create+0x14c>
  92:	e0000000 	bsr      	0x0	// 0 <assert_internal>
  96:	6c13      	mov      	r0, r4
  98:	7be5      	jsr      	r9
  9a:	6d43      	mov      	r5, r0
  9c:	e9000007 	bez      	r0, 0xaa	// aa <ieee80211_iface_create+0xaa>
  a0:	114c      	lrw      	r2, 0x0	// 150 <ieee80211_iface_create+0x150>
  a2:	3184      	movi      	r1, 132
  a4:	110a      	lrw      	r0, 0x0	// 14c <ieee80211_iface_create+0x14c>
  a6:	e0000000 	bsr      	0x0	// 0 <assert_internal>
  aa:	3310      	movi      	r3, 16
  ac:	dc642066 	st.w      	r3, (r4, 0x198)
  b0:	3300      	movi      	r3, 0
  b2:	dc642064 	st.w      	r3, (r4, 0x190)
  b6:	dc642065 	st.w      	r3, (r4, 0x194)
  ba:	e40401bb 	addi      	r0, r4, 444
  be:	e0000000 	bsr      	0x0	// 0 <skb_list_init>
  c2:	e40401c7 	addi      	r0, r4, 456
  c6:	e0000000 	bsr      	0x0	// 0 <skb_list_init>
  ca:	e4040177 	addi      	r0, r4, 376
  ce:	e0000000 	bsr      	0x0	// 0 <skb_list_init>
  d2:	6c13      	mov      	r0, r4
  d4:	e0000000 	bsr      	0x0	// 0 <ieee80211_scan_init>
  d8:	e40400fb 	addi      	r0, r4, 252
  dc:	e0000000 	bsr      	0x0	// 0 <ieee80211_bss_conf_defaults>
  e0:	e5080019 	addi      	r8, r8, 26
  e4:	d8642029 	ld.w      	r3, (r4, 0xa4)
  e8:	d5060884 	str.w      	r4, (r6, r8 << 2)
  ec:	d846003a 	ld.b      	r2, (r6, 0x3a)
  f0:	8328      	ld.b      	r1, (r3, 0x8)
  f2:	6449      	cmplt      	r2, r1
  f4:	c4410c40 	inct      	r2, r1, 0
  f8:	dc46003a 	st.b      	r2, (r6, 0x3a)
  fc:	8329      	ld.b      	r1, (r3, 0x9)
  fe:	d846003b 	ld.b      	r2, (r6, 0x3b)
 102:	6449      	cmplt      	r2, r1
 104:	c4410c40 	inct      	r2, r1, 0
 108:	dc46003b 	st.b      	r2, (r6, 0x3b)
 10c:	6c1f      	mov      	r0, r7
 10e:	1052      	lrw      	r2, 0x0	// 154 <ieee80211_iface_create+0x154>
 110:	b347      	st.w      	r2, (r3, 0x1c)
 112:	b3c0      	st.w      	r6, (r3, 0x0)
 114:	1051      	lrw      	r2, 0x0	// 158 <ieee80211_iface_create+0x158>
 116:	b349      	st.w      	r2, (r3, 0x24)
 118:	1051      	lrw      	r2, 0x0	// 15c <ieee80211_iface_create+0x15c>
 11a:	b348      	st.w      	r2, (r3, 0x20)
 11c:	e0000000 	bsr      	0x0	// 0 <sys_wifi_register>
 120:	b40c      	st.w      	r0, (r4, 0x30)
 122:	6c17      	mov      	r0, r5
 124:	1497      	pop      	r4-r10, r15
 126:	9378      	ld.w      	r3, (r3, 0x60)
 128:	e903ffb2 	bez      	r3, 0x8c	// 8c <ieee80211_iface_create+0x8c>
 12c:	9361      	ld.w      	r3, (r3, 0x4)
 12e:	6c13      	mov      	r0, r4
 130:	7bcd      	jsr      	r3
 132:	e900ffb2 	bez      	r0, 0x96	// 96 <ieee80211_iface_create+0x96>
 136:	07ab      	br      	0x8c	// 8c <ieee80211_iface_create+0x8c>
 138:	3500      	movi      	r5, 0
 13a:	2d15      	subi      	r5, 22
 13c:	07f3      	br      	0x122	// 122 <ieee80211_iface_create+0x122>
 13e:	3500      	movi      	r5, 0
 140:	2d10      	subi      	r5, 17
 142:	07f0      	br      	0x122	// 122 <ieee80211_iface_create+0x122>
	...

Disassembly of section .text.ieee80211_iface_get:

00000000 <ieee80211_iface_get>:
   0:	e900000a 	bez      	r0, 0x14	// 14 <ieee80211_iface_get+0x14>
   4:	1066      	lrw      	r3, 0x0	// 1c <ieee80211_iface_get+0x1c>
   6:	d8430048 	ld.b      	r2, (r3, 0x48)
   a:	6408      	cmphs      	r2, r0
   c:	0c05      	bf      	0x16	// 16 <ieee80211_iface_get+0x16>
   e:	2018      	addi      	r0, 25
  10:	d0030880 	ldr.w      	r0, (r3, r0 << 2)
  14:	783c      	jmp      	r15
  16:	3000      	movi      	r0, 0
  18:	07fe      	br      	0x14	// 14 <ieee80211_iface_get+0x14>
  1a:	0000      	.short	0x0000
  1c:	00000000 	.long	0x00000000

Disassembly of section .text.ieee80211_iface_work:

00000000 <ieee80211_iface_work>:
   0:	14d6      	push      	r4-r9, r15
   2:	1421      	subi      	r14, r14, 4
   4:	3500      	movi      	r5, 0
   6:	6d83      	mov      	r6, r0
   8:	6dd7      	mov      	r7, r5
   a:	d8660048 	ld.b      	r3, (r6, 0x48)
   e:	64d5      	cmplt      	r5, r3
  10:	0803      	bt      	0x16	// 16 <ieee80211_iface_work+0x16>
  12:	1401      	addi      	r14, r14, 4
  14:	1496      	pop      	r4-r9, r15
  16:	4562      	lsli      	r3, r5, 2
  18:	60d8      	addu      	r3, r6
  1a:	939a      	ld.w      	r4, (r3, 0x68)
  1c:	e9240020 	bnez      	r4, 0x5c	// 5c <ieee80211_iface_work+0x5c>
  20:	2500      	addi      	r5, 1
  22:	07f4      	br      	0xa	// a <ieee80211_iface_work+0xa>
  24:	5c4c      	addu      	r2, r4, r3
  26:	2300      	addi      	r3, 1
  28:	d902019c 	ld.b      	r8, (r2, 0x19c)
  2c:	d8442066 	ld.w      	r2, (r4, 0x198)
  30:	5b29      	subu      	r1, r3, r2
  32:	648d      	cmplt      	r3, r2
  34:	c4610c20 	incf      	r3, r1, 0
  38:	7661      	zexth      	r9, r8
  3a:	dc642064 	st.w      	r3, (r4, 0x190)
  3e:	6c67      	mov      	r1, r9
  40:	947c      	ld.w      	r3, (r4, 0x70)
  42:	6c13      	mov      	r0, r4
  44:	7bcd      	jsr      	r3
  46:	e900000b 	bez      	r0, 0x5c	// 5c <ieee80211_iface_work+0x5c>
  4a:	eb080007 	cmphsi      	r8, 8
  4e:	0c07      	bf      	0x5c	// 5c <ieee80211_iface_work+0x5c>
  50:	eb08000a 	cmphsi      	r8, 11
  54:	0c6d      	bf      	0x12e	// 12e <ieee80211_iface_work+0x12e>
  56:	eb08000d 	cmphsi      	r8, 14
  5a:	0c6f      	bf      	0x138	// 138 <ieee80211_iface_work+0x138>
  5c:	d8642064 	ld.w      	r3, (r4, 0x190)
  60:	d8442065 	ld.w      	r2, (r4, 0x194)
  64:	648e      	cmpne      	r3, r2
  66:	0bdf      	bt      	0x24	// 24 <ieee80211_iface_work+0x24>
  68:	8c40      	ld.h      	r2, (r4, 0x0)
  6a:	e4422001 	andi      	r2, r2, 1
  6e:	d86400b0 	ld.b      	r3, (r4, 0xb0)
  72:	e4632001 	andi      	r3, r3, 1
  76:	e902000a 	bez      	r2, 0x8a	// 8a <ieee80211_iface_work+0x8a>
  7a:	e903000a 	bez      	r3, 0x8e	// 8e <ieee80211_iface_work+0x8e>
  7e:	d8642063 	ld.w      	r3, (r4, 0x18c)
  82:	d8630025 	ld.b      	r3, (r3, 0x25)
  86:	e4632008 	andi      	r3, r3, 8
  8a:	e9230016 	bnez      	r3, 0xb6	// b6 <ieee80211_iface_work+0xb6>
  8e:	e40401bb 	addi      	r0, r4, 444
  92:	e0000000 	bsr      	0x0	// 0 <skb_list_dequeue>
  96:	6c43      	mov      	r1, r0
  98:	e900000f 	bez      	r0, 0xb6	// b6 <ieee80211_iface_work+0xb6>
  9c:	d8642075 	ld.w      	r3, (r4, 0x1d4)
  a0:	2300      	addi      	r3, 1
  a2:	dc642075 	st.w      	r3, (r4, 0x1d4)
  a6:	8465      	ld.b      	r3, (r4, 0x5)
  a8:	e4632081 	andi      	r3, r3, 129
  ac:	3b41      	cmpnei      	r3, 1
  ae:	084c      	bt      	0x146	// 146 <ieee80211_iface_work+0x146>
  b0:	6c13      	mov      	r0, r4
  b2:	e0000000 	bsr      	0x0	// 0 <ieee80211_tx_data>
  b6:	8c40      	ld.h      	r2, (r4, 0x0)
  b8:	e4422001 	andi      	r2, r2, 1
  bc:	d86400b0 	ld.b      	r3, (r4, 0xb0)
  c0:	b8e0      	st.w      	r7, (r14, 0x0)
  c2:	e4632001 	andi      	r3, r3, 1
  c6:	e902000a 	bez      	r2, 0xda	// da <ieee80211_iface_work+0xda>
  ca:	e903000a 	bez      	r3, 0xde	// de <ieee80211_iface_work+0xde>
  ce:	d8642063 	ld.w      	r3, (r4, 0x18c)
  d2:	d8630025 	ld.b      	r3, (r3, 0x25)
  d6:	e4632008 	andi      	r3, r3, 8
  da:	e923ffa3 	bnez      	r3, 0x20	// 20 <ieee80211_iface_work+0x20>
  de:	e40401c7 	addi      	r0, r4, 456
  e2:	e0000000 	bsr      	0x0	// 0 <skb_list_dequeue>
  e6:	6e03      	mov      	r8, r0
  e8:	e900ff9c 	bez      	r0, 0x20	// 20 <ieee80211_iface_work+0x20>
  ec:	d8642078 	ld.w      	r3, (r4, 0x1e0)
  f0:	2300      	addi      	r3, 1
  f2:	dc642078 	st.w      	r3, (r4, 0x1e0)
  f6:	8465      	ld.b      	r3, (r4, 0x5)
  f8:	e4632081 	andi      	r3, r3, 129
  fc:	3b41      	cmpnei      	r3, 1
  fe:	083d      	bt      	0x178	// 178 <ieee80211_iface_work+0x178>
 100:	9047      	ld.w      	r2, (r0, 0x1c)
 102:	8a60      	ld.h      	r3, (r2, 0x0)
 104:	e4232100 	andi      	r1, r3, 256
 108:	e9010027 	bez      	r1, 0x156	// 156 <ieee80211_iface_work+0x156>
 10c:	e422000f 	addi      	r1, r2, 16
 110:	e40320fc 	andi      	r0, r3, 252
 114:	385c      	cmpnei      	r0, 28
 116:	0822      	bt      	0x15a	// 15a <ieee80211_iface_work+0x15a>
 118:	2203      	addi      	r2, 4
 11a:	6cfb      	mov      	r3, r14
 11c:	6c13      	mov      	r0, r4
 11e:	e0000000 	bsr      	0x0	// 0 <ieee80211_lookup_ra_sta>
 122:	6ca3      	mov      	r2, r8
 124:	9820      	ld.w      	r1, (r14, 0x0)
 126:	6c13      	mov      	r0, r4
 128:	e0000000 	bsr      	0x0	// 0 <ieee80211_tx_skb>
 12c:	077a      	br      	0x20	// 20 <ieee80211_iface_work+0x20>
 12e:	6c67      	mov      	r1, r9
 130:	6c13      	mov      	r0, r4
 132:	e0000000 	bsr      	0x0	// 0 <ieee80211_scan_do_action>
 136:	0793      	br      	0x5c	// 5c <ieee80211_iface_work+0x5c>
 138:	d864205c 	ld.w      	r3, (r4, 0x170)
 13c:	6c67      	mov      	r1, r9
 13e:	9374      	ld.w      	r3, (r3, 0x50)
 140:	6c13      	mov      	r0, r4
 142:	7bcd      	jsr      	r3
 144:	078c      	br      	0x5c	// 5c <ieee80211_iface_work+0x5c>
 146:	e0000000 	bsr      	0x0	// 0 <kfree_skb>
 14a:	d8642079 	ld.w      	r3, (r4, 0x1e4)
 14e:	2300      	addi      	r3, 1
 150:	dc642079 	st.w      	r3, (r4, 0x1e4)
 154:	07b1      	br      	0xb6	// b6 <ieee80211_iface_work+0xb6>
 156:	5a2e      	addi      	r1, r2, 4
 158:	07dc      	br      	0x110	// 110 <ieee80211_iface_work+0x110>
 15a:	e4032300 	andi      	r0, r3, 768
 15e:	eb400300 	cmpnei      	r0, 768
 162:	0803      	bt      	0x168	// 168 <ieee80211_iface_work+0x168>
 164:	2217      	addi      	r2, 24
 166:	07da      	br      	0x11a	// 11a <ieee80211_iface_work+0x11a>
 168:	e4632200 	andi      	r3, r3, 512
 16c:	e9030004 	bez      	r3, 0x174	// 174 <ieee80211_iface_work+0x174>
 170:	220f      	addi      	r2, 16
 172:	07d4      	br      	0x11a	// 11a <ieee80211_iface_work+0x11a>
 174:	2209      	addi      	r2, 10
 176:	07d2      	br      	0x11a	// 11a <ieee80211_iface_work+0x11a>
 178:	e0000000 	bsr      	0x0	// 0 <kfree_skb>
 17c:	d8642079 	ld.w      	r3, (r4, 0x1e4)
 180:	2300      	addi      	r3, 1
 182:	dc642079 	st.w      	r3, (r4, 0x1e4)
 186:	074d      	br      	0x20	// 20 <ieee80211_iface_work+0x20>

Disassembly of section .text.ieee80211_iface_suspend:

00000000 <ieee80211_iface_suspend>:
   0:	14d4      	push      	r4-r7, r15
   2:	6d83      	mov      	r6, r0
   4:	e4800067 	addi      	r4, r0, 104
   8:	3500      	movi      	r5, 0
   a:	3701      	movi      	r7, 1
   c:	d8660048 	ld.b      	r3, (r6, 0x48)
  10:	64d5      	cmplt      	r5, r3
  12:	0802      	bt      	0x16	// 16 <ieee80211_iface_suspend+0x16>
  14:	1494      	pop      	r4-r7, r15
  16:	9400      	ld.w      	r0, (r4, 0x0)
  18:	e900000e 	bez      	r0, 0x34	// 34 <ieee80211_iface_suspend+0x34>
  1c:	d8604005 	ld.bs      	r3, (r0, 0x5)
  20:	e983000a 	blz      	r3, 0x34	// 34 <ieee80211_iface_suspend+0x34>
  24:	907c      	ld.w      	r3, (r0, 0x70)
  26:	3110      	movi      	r1, 16
  28:	7bcd      	jsr      	r3
  2a:	9460      	ld.w      	r3, (r4, 0x0)
  2c:	8345      	ld.b      	r2, (r3, 0x5)
  2e:	c4475c07 	ins      	r2, r7, 7, 7
  32:	a345      	st.b      	r2, (r3, 0x5)
  34:	2500      	addi      	r5, 1
  36:	2403      	addi      	r4, 4
  38:	07ea      	br      	0xc	// c <ieee80211_iface_suspend+0xc>

Disassembly of section .text.ieee80211_iface_resume:

00000000 <ieee80211_iface_resume>:
   0:	14d4      	push      	r4-r7, r15
   2:	3400      	movi      	r4, 0
   4:	6d83      	mov      	r6, r0
   6:	e4a00067 	addi      	r5, r0, 104
   a:	6dd3      	mov      	r7, r4
   c:	d8660048 	ld.b      	r3, (r6, 0x48)
  10:	64d1      	cmplt      	r4, r3
  12:	0802      	bt      	0x16	// 16 <ieee80211_iface_resume+0x16>
  14:	1494      	pop      	r4-r7, r15
  16:	9500      	ld.w      	r0, (r5, 0x0)
  18:	e900000e 	bez      	r0, 0x34	// 34 <ieee80211_iface_resume+0x34>
  1c:	d8604005 	ld.bs      	r3, (r0, 0x5)
  20:	e9a3000a 	bhsz      	r3, 0x34	// 34 <ieee80211_iface_resume+0x34>
  24:	907c      	ld.w      	r3, (r0, 0x70)
  26:	3111      	movi      	r1, 17
  28:	7bcd      	jsr      	r3
  2a:	9560      	ld.w      	r3, (r5, 0x0)
  2c:	8345      	ld.b      	r2, (r3, 0x5)
  2e:	c4475c07 	ins      	r2, r7, 7, 7
  32:	a345      	st.b      	r2, (r3, 0x5)
  34:	2400      	addi      	r4, 1
  36:	2503      	addi      	r5, 4
  38:	07ea      	br      	0xc	// c <ieee80211_iface_resume+0xc>

Disassembly of section .text.ieee80211_iface_start:

00000000 <ieee80211_iface_start>:
   0:	14d0      	push      	r15
   2:	e0000000 	bsr      	0x0	// 0 <ieee80211_iface_start>
   6:	e9000022 	bez      	r0, 0x4a	// 4a <ieee80211_iface_start+0x4a>
   a:	d840202b 	ld.w      	r2, (r0, 0xac)
   e:	8820      	ld.h      	r1, (r0, 0x0)
  10:	9267      	ld.w      	r3, (r2, 0x1c)
  12:	6cc4      	or      	r3, r1
  14:	b267      	st.w      	r3, (r2, 0x1c)
  16:	d8402065 	ld.w      	r2, (r0, 0x194)
  1a:	5a62      	addi      	r3, r2, 1
  1c:	d8202066 	ld.w      	r1, (r0, 0x198)
  20:	644d      	cmplt      	r3, r1
  22:	c423008c 	subu      	r12, r3, r1
  26:	c46c0c20 	incf      	r3, r12, 0
  2a:	d8202064 	ld.w      	r1, (r0, 0x190)
  2e:	644e      	cmpne      	r3, r1
  30:	0c07      	bf      	0x3e	// 3e <ieee80211_iface_start+0x3e>
  32:	6080      	addu      	r2, r0
  34:	3101      	movi      	r1, 1
  36:	dc22019c 	st.b      	r1, (r2, 0x19c)
  3a:	dc602065 	st.w      	r3, (r0, 0x194)
  3e:	d800202a 	ld.w      	r0, (r0, 0xa8)
  42:	e0000000 	bsr      	0x0	// 0 <os_sema_up>
  46:	3000      	movi      	r0, 0
  48:	1490      	pop      	r15
  4a:	3000      	movi      	r0, 0
  4c:	2812      	subi      	r0, 19
  4e:	07fd      	br      	0x48	// 48 <ieee80211_iface_start+0x48>

Disassembly of section .text.ieee80211_iface_stop:

00000000 <ieee80211_iface_stop>:
   0:	14d1      	push      	r4, r15
   2:	e0000000 	bsr      	0x0	// 0 <ieee80211_iface_stop>
   6:	6d03      	mov      	r4, r0
   8:	e9000039 	bez      	r0, 0x7a	// 7a <ieee80211_iface_stop+0x7a>
   c:	d840202b 	ld.w      	r2, (r0, 0xac)
  10:	8860      	ld.h      	r3, (r0, 0x0)
  12:	9227      	ld.w      	r1, (r2, 0x1c)
  14:	c4612043 	andn      	r3, r1, r3
  18:	b267      	st.w      	r3, (r2, 0x1c)
  1a:	d8402065 	ld.w      	r2, (r0, 0x194)
  1e:	5a62      	addi      	r3, r2, 1
  20:	d8202066 	ld.w      	r1, (r0, 0x198)
  24:	644d      	cmplt      	r3, r1
  26:	5b05      	subu      	r0, r3, r1
  28:	c4600c20 	incf      	r3, r0, 0
  2c:	d8242064 	ld.w      	r1, (r4, 0x190)
  30:	644e      	cmpne      	r3, r1
  32:	0c07      	bf      	0x40	// 40 <ieee80211_iface_stop+0x40>
  34:	6090      	addu      	r2, r4
  36:	3102      	movi      	r1, 2
  38:	dc22019c 	st.b      	r1, (r2, 0x19c)
  3c:	dc642065 	st.w      	r3, (r4, 0x194)
  40:	d804202a 	ld.w      	r0, (r4, 0xa8)
  44:	e0000000 	bsr      	0x0	// 0 <os_sema_up>
  48:	d8442065 	ld.w      	r2, (r4, 0x194)
  4c:	5a62      	addi      	r3, r2, 1
  4e:	d8242066 	ld.w      	r1, (r4, 0x198)
  52:	644d      	cmplt      	r3, r1
  54:	5b05      	subu      	r0, r3, r1
  56:	c4600c20 	incf      	r3, r0, 0
  5a:	d8242064 	ld.w      	r1, (r4, 0x190)
  5e:	644e      	cmpne      	r3, r1
  60:	0c07      	bf      	0x6e	// 6e <ieee80211_iface_stop+0x6e>
  62:	6090      	addu      	r2, r4
  64:	310a      	movi      	r1, 10
  66:	dc22019c 	st.b      	r1, (r2, 0x19c)
  6a:	dc642065 	st.w      	r3, (r4, 0x194)
  6e:	d804202a 	ld.w      	r0, (r4, 0xa8)
  72:	e0000000 	bsr      	0x0	// 0 <os_sema_up>
  76:	3000      	movi      	r0, 0
  78:	1491      	pop      	r4, r15
  7a:	3000      	movi      	r0, 0
  7c:	2812      	subi      	r0, 19
  7e:	07fd      	br      	0x78	// 78 <ieee80211_iface_stop+0x78>

Disassembly of section .text.ieee80211_iface_sleep:

00000000 <ieee80211_iface_sleep>:
   0:	14d1      	push      	r4, r15
   2:	6d07      	mov      	r4, r1
   4:	e0000000 	bsr      	0x0	// 0 <ieee80211_iface_sleep>
   8:	e9000008 	bez      	r0, 0x18	// 18 <ieee80211_iface_sleep+0x18>
   c:	8065      	ld.b      	r3, (r0, 0x5)
   e:	c4645c02 	ins      	r3, r4, 2, 2
  12:	a065      	st.b      	r3, (r0, 0x5)
  14:	3000      	movi      	r0, 0
  16:	1491      	pop      	r4, r15
  18:	3000      	movi      	r0, 0
  1a:	2812      	subi      	r0, 19
  1c:	07fd      	br      	0x16	// 16 <ieee80211_iface_sleep+0x16>

Disassembly of section .text.ieee80211_iface_find:

00000000 <ieee80211_iface_find>:
   0:	14d7      	push      	r4-r10, r15
   2:	6d83      	mov      	r6, r0
   4:	6e47      	mov      	r9, r1
   6:	6dcf      	mov      	r7, r3
   8:	d9000048 	ld.b      	r8, (r0, 0x48)
   c:	3500      	movi      	r5, 0
   e:	6e8b      	mov      	r10, r2
  10:	6615      	cmplt      	r5, r8
  12:	0804      	bt      	0x1a	// 1a <ieee80211_iface_find+0x1a>
  14:	3400      	movi      	r4, 0
  16:	6c13      	mov      	r0, r4
  18:	1497      	pop      	r4-r10, r15
  1a:	e4650019 	addi      	r3, r5, 26
  1e:	d0660884 	ldr.w      	r4, (r6, r3 << 2)
  22:	e9040013 	bez      	r4, 0x48	// 48 <ieee80211_iface_find+0x48>
  26:	d864202b 	ld.w      	r3, (r4, 0xac)
  2a:	8360      	ld.b      	r3, (r3, 0x0)
  2c:	664e      	cmpne      	r3, r9
  2e:	080d      	bt      	0x48	// 48 <ieee80211_iface_find+0x48>
  30:	8c60      	ld.h      	r3, (r4, 0x0)
  32:	668e      	cmpne      	r3, r10
  34:	080a      	bt      	0x48	// 48 <ieee80211_iface_find+0x48>
  36:	e907fff0 	bez      	r7, 0x16	// 16 <ieee80211_iface_find+0x16>
  3a:	3206      	movi      	r2, 6
  3c:	5c28      	addu      	r1, r4, r2
  3e:	6c1f      	mov      	r0, r7
  40:	e0000000 	bsr      	0x0	// 0 <memcmp>
  44:	e900ffe9 	bez      	r0, 0x16	// 16 <ieee80211_iface_find+0x16>
  48:	2500      	addi      	r5, 1
  4a:	7556      	sextb      	r5, r5
  4c:	07e2      	br      	0x10	// 10 <ieee80211_iface_find+0x10>

Disassembly of section .text.ieee80211_iface_addr_match:

00000000 <ieee80211_iface_addr_match>:
   0:	14d5      	push      	r4-r8, r15
   2:	6d83      	mov      	r6, r0
   4:	6e07      	mov      	r8, r1
   6:	d8e00048 	ld.b      	r7, (r0, 0x48)
   a:	3500      	movi      	r5, 0
   c:	65d5      	cmplt      	r5, r7
   e:	0803      	bt      	0x14	// 14 <ieee80211_iface_addr_match+0x14>
  10:	3000      	movi      	r0, 0
  12:	1495      	pop      	r4-r8, r15
  14:	4562      	lsli      	r3, r5, 2
  16:	60d8      	addu      	r3, r6
  18:	931a      	ld.w      	r0, (r3, 0x68)
  1a:	e900000e 	bez      	r0, 0x36	// 36 <ieee80211_iface_addr_match+0x36>
  1e:	8085      	ld.b      	r4, (r0, 0x5)
  20:	e4842083 	andi      	r4, r4, 131
  24:	3c41      	cmpnei      	r4, 1
  26:	0808      	bt      	0x36	// 36 <ieee80211_iface_addr_match+0x36>
  28:	3206      	movi      	r2, 6
  2a:	6c63      	mov      	r1, r8
  2c:	6008      	addu      	r0, r2
  2e:	e0000000 	bsr      	0x0	// 0 <memcmp>
  32:	e9000004 	bez      	r0, 0x3a	// 3a <ieee80211_iface_addr_match+0x3a>
  36:	2500      	addi      	r5, 1
  38:	07ea      	br      	0xc	// c <ieee80211_iface_addr_match+0xc>
  3a:	6c13      	mov      	r0, r4
  3c:	07eb      	br      	0x12	// 12 <ieee80211_iface_addr_match+0x12>

Disassembly of section .text.ieee80211_iface_event:

00000000 <ieee80211_iface_event>:
   0:	14d0      	push      	r15
   2:	d980201d 	ld.w      	r12, (r0, 0x74)
   6:	e90c0004 	bez      	r12, 0xe	// e <ieee80211_iface_event+0xe>
   a:	7bf1      	jsr      	r12
   c:	1490      	pop      	r15
   e:	6c33      	mov      	r0, r12
  10:	07fe      	br      	0xc	// c <ieee80211_iface_event+0xc>

Disassembly of section .text.ieee80211_iface_create_ap:

00000000 <ieee80211_iface_create_ap>:
   0:	14d0      	push      	r15
   2:	1063      	lrw      	r3, 0x0	// c <ieee80211_iface_create_ap+0xc>
   4:	3202      	movi      	r2, 2
   6:	e0000000 	bsr      	0x0	// 0 <ieee80211_iface_create_ap>
   a:	1490      	pop      	r15
   c:	00000000 	.long	0x00000000

Disassembly of section .text.ieee80211_iface_create_sta:

00000000 <ieee80211_iface_create_sta>:
   0:	14d0      	push      	r15
   2:	1063      	lrw      	r3, 0x0	// c <ieee80211_iface_create_sta+0xc>
   4:	3201      	movi      	r2, 1
   6:	e0000000 	bsr      	0x0	// 0 <ieee80211_iface_create_sta>
   a:	1490      	pop      	r15
   c:	00000000 	.long	0x00000000

Disassembly of section .text.ieee80211_iface_create_wnbsta:

00000000 <ieee80211_iface_create_wnbsta>:
   0:	14d0      	push      	r15
   2:	1063      	lrw      	r3, 0x0	// c <ieee80211_iface_create_wnbsta+0xc>
   4:	3205      	movi      	r2, 5
   6:	e0000000 	bsr      	0x0	// 0 <ieee80211_iface_create_wnbsta>
   a:	1490      	pop      	r15
   c:	00000000 	.long	0x00000000

Disassembly of section .text.ieee80211_iface_create_wnbap:

00000000 <ieee80211_iface_create_wnbap>:
   0:	14d0      	push      	r15
   2:	1063      	lrw      	r3, 0x0	// c <ieee80211_iface_create_wnbap+0xc>
   4:	3206      	movi      	r2, 6
   6:	e0000000 	bsr      	0x0	// 0 <ieee80211_iface_create_wnbap>
   a:	1490      	pop      	r15
   c:	00000000 	.long	0x00000000
