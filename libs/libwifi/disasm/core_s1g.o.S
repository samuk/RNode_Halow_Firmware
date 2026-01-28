
libwifi/o/core_s1g.o:     file format elf32-csky-little


Disassembly of section .text.ieee80211_add_s1g_capabilities.isra.1:

00000000 <ieee80211_add_s1g_capabilities.isra.1>:
   0:	14d0      	push      	r15
   2:	6c83      	mov      	r2, r0
   4:	6c07      	mov      	r0, r1
   6:	8266      	ld.b      	r3, (r2, 0x6)
   8:	31d9      	movi      	r1, 217
   a:	9242      	ld.w      	r2, (r2, 0x8)
   c:	e0000000 	bsr      	0x0	// 0 <ieee80211_ie_put>
  10:	1490      	pop      	r15

Disassembly of section .text.ieee80211_add_s1g_operation.isra.5:

00000000 <ieee80211_add_s1g_operation.isra.5>:
   0:	14d4      	push      	r4-r7, r15
   2:	1421      	subi      	r14, r14, 4
   4:	6d43      	mov      	r5, r0
   6:	6c07      	mov      	r0, r1
   8:	3108      	movi      	r1, 8
   a:	e0000000 	bsr      	0x0	// 0 <skb_put>
   e:	3300      	movi      	r3, 0
  10:	2b17      	subi      	r3, 24
  12:	a060      	st.b      	r3, (r0, 0x0)
  14:	3306      	movi      	r3, 6
  16:	a061      	st.b      	r3, (r0, 0x1)
  18:	95c0      	ld.w      	r6, (r5, 0x0)
  1a:	6d03      	mov      	r4, r0
  1c:	8661      	ld.b      	r3, (r6, 0x1)
  1e:	2307      	addi      	r3, 8
  20:	4362      	lsli      	r3, r3, 2
  22:	60d8      	addu      	r3, r6
  24:	3203      	movi      	r2, 3
  26:	1027      	lrw      	r1, 0x0	// 40 <ieee80211_add_s1g_operation.isra.5+0x40>
  28:	6c3b      	mov      	r0, r14
  2a:	8ba1      	ld.h      	r5, (r3, 0x2)
  2c:	e0000000 	bsr      	0x0	// 0 <memcpy>
  30:	8663      	ld.b      	r3, (r6, 0x3)
  32:	3b07      	cmphsi      	r3, 8
  34:	087c      	bt      	0x12c	// 12c <ieee80211_add_s1g_operation.isra.5+0x12c>
  36:	1044      	lrw      	r2, 0x0	// 44 <ieee80211_add_s1g_operation.isra.5+0x44>
  38:	d0620883 	ldr.w      	r3, (r2, r3 << 2)
  3c:	780c      	jmp      	r3
	...
  46:	0000      	.short	0x0000
  48:	ea035355 	movi      	r3, 21333
  4c:	dc6e1000 	st.h      	r3, (r14, 0x0)
  50:	3005      	movi      	r0, 5
  52:	1178      	lrw      	r3, 0x0	// 130 <ieee80211_add_s1g_operation.isra.5+0x130>
  54:	d9860002 	ld.b      	r12, (r6, 0x2)
  58:	ea0d0000 	movi      	r13, 0
  5c:	0438      	br      	0xcc	// cc <ieee80211_add_s1g_operation.isra.5+0xcc>
  5e:	ea035545 	movi      	r3, 21829
  62:	dc6e1000 	st.h      	r3, (r14, 0x0)
  66:	3002      	movi      	r0, 2
  68:	1173      	lrw      	r3, 0x0	// 134 <ieee80211_add_s1g_operation.isra.5+0x134>
  6a:	07f5      	br      	0x54	// 54 <ieee80211_add_s1g_operation.isra.5+0x54>
  6c:	ea03504a 	movi      	r3, 20554
  70:	dc6e1000 	st.h      	r3, (r14, 0x0)
  74:	3001      	movi      	r0, 1
  76:	1171      	lrw      	r3, 0x0	// 138 <ieee80211_add_s1g_operation.isra.5+0x138>
  78:	07ee      	br      	0x54	// 54 <ieee80211_add_s1g_operation.isra.5+0x54>
  7a:	ea034e43 	movi      	r3, 20035
  7e:	dc6e1000 	st.h      	r3, (r14, 0x0)
  82:	3005      	movi      	r0, 5
  84:	116e      	lrw      	r3, 0x0	// 13c <ieee80211_add_s1g_operation.isra.5+0x13c>
  86:	07e7      	br      	0x54	// 54 <ieee80211_add_s1g_operation.isra.5+0x54>
  88:	ea03524b 	movi      	r3, 21067
  8c:	dc6e1000 	st.h      	r3, (r14, 0x0)
  90:	3003      	movi      	r0, 3
  92:	116c      	lrw      	r3, 0x0	// 140 <ieee80211_add_s1g_operation.isra.5+0x140>
  94:	07e0      	br      	0x54	// 54 <ieee80211_add_s1g_operation.isra.5+0x54>
  96:	ea034753 	movi      	r3, 18259
  9a:	dc6e1000 	st.h      	r3, (r14, 0x0)
  9e:	3005      	movi      	r0, 5
  a0:	1169      	lrw      	r3, 0x0	// 144 <ieee80211_add_s1g_operation.isra.5+0x144>
  a2:	07d9      	br      	0x54	// 54 <ieee80211_add_s1g_operation.isra.5+0x54>
  a4:	ea035541 	movi      	r3, 21825
  a8:	dc6e1000 	st.h      	r3, (r14, 0x0)
  ac:	3006      	movi      	r0, 6
  ae:	1167      	lrw      	r3, 0x0	// 148 <ieee80211_add_s1g_operation.isra.5+0x148>
  b0:	07d2      	br      	0x54	// 54 <ieee80211_add_s1g_operation.isra.5+0x54>
  b2:	ea035a4e 	movi      	r3, 23118
  b6:	dc6e1000 	st.h      	r3, (r14, 0x0)
  ba:	3006      	movi      	r0, 6
  bc:	1164      	lrw      	r3, 0x0	// 14c <ieee80211_add_s1g_operation.isra.5+0x14c>
  be:	07cb      	br      	0x54	// 54 <ieee80211_add_s1g_operation.isra.5+0x54>
  c0:	e5ad0000 	addi      	r13, r13, 1
  c4:	7774      	zextb      	r13, r13
  c6:	6436      	cmpne      	r13, r0
  c8:	2307      	addi      	r3, 8
  ca:	0c31      	bf      	0x12c	// 12c <ieee80211_add_s1g_operation.isra.5+0x12c>
  cc:	8341      	ld.b      	r2, (r3, 0x1)
  ce:	670a      	cmpne      	r2, r12
  d0:	0bf8      	bt      	0xc0	// c0 <ieee80211_add_s1g_operation.isra.5+0xc0>
  d2:	83c2      	ld.b      	r6, (r3, 0x2)
  d4:	4642      	lsli      	r2, r6, 2
  d6:	9321      	ld.w      	r1, (r3, 0x4)
  d8:	6098      	addu      	r2, r6
  da:	6084      	addu      	r2, r1
  dc:	6494      	cmphs      	r5, r2
  de:	0ff1      	bf      	0xc0	// c0 <ieee80211_add_s1g_operation.isra.5+0xc0>
  e0:	83e3      	ld.b      	r7, (r3, 0x3)
  e2:	47c2      	lsli      	r6, r7, 2
  e4:	619c      	addu      	r6, r7
  e6:	6184      	addu      	r6, r1
  e8:	6558      	cmphs      	r6, r5
  ea:	0feb      	bf      	0xc0	// c0 <ieee80211_add_s1g_operation.isra.5+0xc0>
  ec:	5d49      	subu      	r2, r5, r2
  ee:	c5828020 	divu      	r0, r2, r12
  f2:	7c30      	mult      	r0, r12
  f4:	6082      	subu      	r2, r0
  f6:	e922001b 	bnez      	r2, 0x12c	// 12c <ieee80211_add_s1g_operation.isra.5+0x12c>
  fa:	e44c1000 	subi      	r2, r12, 1
  fe:	eb4c0001 	cmpnei      	r12, 1
 102:	6088      	addu      	r2, r2
 104:	6403      	mvcv      	r0
 106:	6080      	addu      	r2, r0
 108:	d9a30000 	ld.b      	r13, (r3, 0x0)
 10c:	a442      	st.b      	r2, (r4, 0x2)
 10e:	3200      	movi      	r2, 0
 110:	2a3b      	subi      	r2, 60
 112:	5d25      	subu      	r1, r5, r1
 114:	3305      	movi      	r3, 5
 116:	c4618021 	divu      	r1, r1, r3
 11a:	a446      	st.b      	r2, (r4, 0x6)
 11c:	3200      	movi      	r2, 0
 11e:	7444      	zextb      	r1, r1
 120:	2a33      	subi      	r2, 52
 122:	dda40003 	st.b      	r13, (r4, 0x3)
 126:	a424      	st.b      	r1, (r4, 0x4)
 128:	a425      	st.b      	r1, (r4, 0x5)
 12a:	a447      	st.b      	r2, (r4, 0x7)
 12c:	1401      	addi      	r14, r14, 4
 12e:	1494      	pop      	r4-r7, r15
	...

Disassembly of section .text.ieee80211_s1g_operation_get_freq:

00000000 <ieee80211_s1g_operation_get_freq>:
   0:	14c4      	push      	r4-r7
   2:	5863      	subi      	r3, r0, 1
   4:	74cc      	zextb      	r3, r3
   6:	3b1c      	cmphsi      	r3, 29
   8:	0846      	bt      	0x94	// 94 <ieee80211_s1g_operation_get_freq+0x94>
   a:	1043      	lrw      	r2, 0x0	// 14 <ieee80211_s1g_operation_get_freq+0x14>
   c:	d0620883 	ldr.w      	r3, (r2, r3 << 2)
  10:	780c      	jmp      	r3
  12:	0000      	.short	0x0000
  14:	00000000 	.long	0x00000000
  18:	ea0c0001 	movi      	r12, 1
  1c:	1164      	lrw      	r3, 0x0	// ac <ieee80211_s1g_operation_get_freq+0xac>
  1e:	7447      	sexth      	r1, r1
  20:	41a2      	lsli      	r5, r1, 2
  22:	6144      	addu      	r5, r1
  24:	ea0d0000 	movi      	r13, 0
  28:	8340      	ld.b      	r2, (r3, 0x0)
  2a:	640a      	cmpne      	r2, r0
  2c:	082e      	bt      	0x88	// 88 <ieee80211_s1g_operation_get_freq+0x88>
  2e:	8342      	ld.b      	r2, (r3, 0x2)
  30:	4222      	lsli      	r1, r2, 2
  32:	93c1      	ld.w      	r6, (r3, 0x4)
  34:	6048      	addu      	r1, r2
  36:	6058      	addu      	r1, r6
  38:	5e54      	addu      	r2, r6, r5
  3a:	6448      	cmphs      	r2, r1
  3c:	0c26      	bf      	0x88	// 88 <ieee80211_s1g_operation_get_freq+0x88>
  3e:	83e3      	ld.b      	r7, (r3, 0x3)
  40:	4782      	lsli      	r4, r7, 2
  42:	611c      	addu      	r4, r7
  44:	6118      	addu      	r4, r6
  46:	6490      	cmphs      	r4, r2
  48:	0c20      	bf      	0x88	// 88 <ieee80211_s1g_operation_get_freq+0x88>
  4a:	8301      	ld.b      	r0, (r3, 0x1)
  4c:	5a25      	subu      	r1, r2, r1
  4e:	c4018023 	divu      	r3, r1, r0
  52:	7cc0      	mult      	r3, r0
  54:	3000      	movi      	r0, 0
  56:	2800      	subi      	r0, 1
  58:	64c6      	cmpne      	r1, r3
  5a:	c4020c20 	incf      	r0, r2, 0
  5e:	1484      	pop      	r4-r7
  60:	ea0c0005 	movi      	r12, 5
  64:	1073      	lrw      	r3, 0x0	// b0 <ieee80211_s1g_operation_get_freq+0xb0>
  66:	07dc      	br      	0x1e	// 1e <ieee80211_s1g_operation_get_freq+0x1e>
  68:	ea0c0003 	movi      	r12, 3
  6c:	1072      	lrw      	r3, 0x0	// b4 <ieee80211_s1g_operation_get_freq+0xb4>
  6e:	07d8      	br      	0x1e	// 1e <ieee80211_s1g_operation_get_freq+0x1e>
  70:	ea0c0005 	movi      	r12, 5
  74:	1071      	lrw      	r3, 0x0	// b8 <ieee80211_s1g_operation_get_freq+0xb8>
  76:	07d4      	br      	0x1e	// 1e <ieee80211_s1g_operation_get_freq+0x1e>
  78:	ea0c0006 	movi      	r12, 6
  7c:	1070      	lrw      	r3, 0x0	// bc <ieee80211_s1g_operation_get_freq+0xbc>
  7e:	07d0      	br      	0x1e	// 1e <ieee80211_s1g_operation_get_freq+0x1e>
  80:	ea0c0006 	movi      	r12, 6
  84:	106f      	lrw      	r3, 0x0	// c0 <ieee80211_s1g_operation_get_freq+0xc0>
  86:	07cc      	br      	0x1e	// 1e <ieee80211_s1g_operation_get_freq+0x1e>
  88:	e5ad0000 	addi      	r13, r13, 1
  8c:	7774      	zextb      	r13, r13
  8e:	6736      	cmpne      	r13, r12
  90:	2307      	addi      	r3, 8
  92:	0bcb      	bt      	0x28	// 28 <ieee80211_s1g_operation_get_freq+0x28>
  94:	3000      	movi      	r0, 0
  96:	2800      	subi      	r0, 1
  98:	07e3      	br      	0x5e	// 5e <ieee80211_s1g_operation_get_freq+0x5e>
  9a:	ea0c0005 	movi      	r12, 5
  9e:	106a      	lrw      	r3, 0x0	// c4 <ieee80211_s1g_operation_get_freq+0xc4>
  a0:	07bf      	br      	0x1e	// 1e <ieee80211_s1g_operation_get_freq+0x1e>
  a2:	ea0c0002 	movi      	r12, 2
  a6:	1069      	lrw      	r3, 0x0	// c8 <ieee80211_s1g_operation_get_freq+0xc8>
  a8:	07bb      	br      	0x1e	// 1e <ieee80211_s1g_operation_get_freq+0x1e>
	...

Disassembly of section .text.ieee80211_add_s1g_extra_ie:

00000000 <ieee80211_add_s1g_extra_ie>:
   0:	14d2      	push      	r4-r5, r15
   2:	1422      	subi      	r14, r14, 8
   4:	3942      	cmpnei      	r1, 2
   6:	6d43      	mov      	r5, r0
   8:	6d0b      	mov      	r4, r2
   a:	0c1e      	bf      	0x46	// 46 <ieee80211_add_s1g_extra_ie+0x46>
   c:	3902      	cmphsi      	r1, 3
   e:	0805      	bt      	0x18	// 18 <ieee80211_add_s1g_extra_ie+0x18>
  10:	e9010016 	bez      	r1, 0x3c	// 3c <ieee80211_add_s1g_extra_ie+0x3c>
  14:	1402      	addi      	r14, r14, 8
  16:	1492      	pop      	r4-r5, r15
  18:	3943      	cmpnei      	r1, 3
  1a:	0c25      	bf      	0x64	// 64 <ieee80211_add_s1g_extra_ie+0x64>
  1c:	3944      	cmpnei      	r1, 4
  1e:	0bfb      	bt      	0x14	// 14 <ieee80211_add_s1g_extra_ie+0x14>
  20:	8b56      	ld.h      	r2, (r3, 0x2c)
  22:	3300      	movi      	r3, 0
  24:	b860      	st.w      	r3, (r14, 0x0)
  26:	dc6e0004 	st.b      	r3, (r14, 0x4)
  2a:	dc4e1000 	st.h      	r2, (r14, 0x0)
  2e:	3305      	movi      	r3, 5
  30:	6cbb      	mov      	r2, r14
  32:	31d3      	movi      	r1, 211
  34:	6c13      	mov      	r0, r4
  36:	e0000000 	bsr      	0x0	// 0 <ieee80211_ie_put>
  3a:	040a      	br      	0x4e	// 4e <ieee80211_add_s1g_extra_ie+0x4e>
  3c:	8033      	ld.b      	r1, (r0, 0x13)
  3e:	6c0b      	mov      	r0, r2
  40:	e0000000 	bsr      	0x0	// 0 <ieee80211_ie_add_dsparam>
  44:	07e8      	br      	0x14	// 14 <ieee80211_add_s1g_extra_ie+0x14>
  46:	8033      	ld.b      	r1, (r0, 0x13)
  48:	6c0b      	mov      	r0, r2
  4a:	e0000000 	bsr      	0x0	// 0 <ieee80211_ie_add_dsparam>
  4e:	6c53      	mov      	r1, r4
  50:	d805202b 	ld.w      	r0, (r5, 0xac)
  54:	e0000000 	bsr      	0x0	// 0 <ieee80211_add_s1g_extra_ie>
  58:	6c53      	mov      	r1, r4
  5a:	e40500ab 	addi      	r0, r5, 172
  5e:	e0000000 	bsr      	0x0	// 0 <ieee80211_add_s1g_extra_ie>
  62:	07d9      	br      	0x14	// 14 <ieee80211_add_s1g_extra_ie+0x14>
  64:	6c4b      	mov      	r1, r2
  66:	d800202b 	ld.w      	r0, (r0, 0xac)
  6a:	e0000000 	bsr      	0x0	// 0 <ieee80211_add_s1g_extra_ie>
  6e:	07d3      	br      	0x14	// 14 <ieee80211_add_s1g_extra_ie+0x14>

Disassembly of section .text.ieee80211_build_s1gbeacon:

00000000 <ieee80211_build_s1gbeacon>:
   0:	14d8      	push      	r4-r11, r15
   2:	1424      	subi      	r14, r14, 16
   4:	6d47      	mov      	r5, r1
   6:	6d03      	mov      	r4, r0
   8:	310f      	movi      	r1, 15
   a:	6c17      	mov      	r0, r5
   c:	e0000000 	bsr      	0x0	// 0 <skb_put>
  10:	3603      	movi      	r6, 3
  12:	8040      	ld.b      	r2, (r0, 0x0)
  14:	e44220fc 	andi      	r2, r2, 252
  18:	3101      	movi      	r1, 1
  1a:	c4465c22 	ins      	r2, r6, 3, 2
  1e:	c4415c64 	ins      	r2, r1, 7, 4
  22:	a040      	st.b      	r2, (r0, 0x0)
  24:	8041      	ld.b      	r2, (r0, 0x1)
  26:	c4415c00 	ins      	r2, r1, 0, 0
  2a:	3300      	movi      	r3, 0
  2c:	e4422081 	andi      	r2, r2, 129
  30:	c4435c07 	ins      	r2, r3, 7, 7
  34:	a041      	st.b      	r2, (r0, 0x1)
  36:	a062      	st.b      	r3, (r0, 0x2)
  38:	a063      	st.b      	r3, (r0, 0x3)
  3a:	a06a      	st.b      	r3, (r0, 0xa)
  3c:	a06b      	st.b      	r3, (r0, 0xb)
  3e:	a06c      	st.b      	r3, (r0, 0xc)
  40:	a06d      	st.b      	r3, (r0, 0xd)
  42:	d8640111 	ld.b      	r3, (r4, 0x111)
  46:	a06e      	st.b      	r3, (r0, 0xe)
  48:	d8640156 	ld.b      	r3, (r4, 0x156)
  4c:	3206      	movi      	r2, 6
  4e:	5c28      	addu      	r1, r4, r2
  50:	dc640189 	st.b      	r3, (r4, 0x189)
  54:	2003      	addi      	r0, 4
  56:	e0000000 	bsr      	0x0	// 0 <memcpy>
  5a:	6c5b      	mov      	r1, r6
  5c:	6c17      	mov      	r0, r5
  5e:	e0000000 	bsr      	0x0	// 0 <skb_put>
  62:	d8642063 	ld.w      	r3, (r4, 0x18c)
  66:	e4240112 	addi      	r1, r4, 275
  6a:	835c      	ld.b      	r2, (r3, 0x1c)
  6c:	e4422001 	andi      	r2, r2, 1
  70:	6c17      	mov      	r0, r5
  72:	e0000000 	bsr      	0x0	// 0 <ieee80211_ie_add_ssid>
  76:	8462      	ld.b      	r3, (r4, 0x2)
  78:	e4632070 	andi      	r3, r3, 112
  7c:	d924202a 	ld.w      	r9, (r4, 0xa8)
  80:	e903004c 	bez      	r3, 0x118	// 118 <ieee80211_build_s1gbeacon+0x118>
  84:	6c97      	mov      	r2, r5
  86:	e429008f 	addi      	r1, r9, 144
  8a:	6c13      	mov      	r0, r4
  8c:	e0000000 	bsr      	0x0	// 0 <ieee80211_beacon_add_tim>
  90:	6c57      	mov      	r1, r5
  92:	6c13      	mov      	r0, r4
  94:	e0000000 	bsr      	0x0	// 0 <ieee80211_ie_add_wpa>
  98:	310a      	movi      	r1, 10
  9a:	6c17      	mov      	r0, r5
  9c:	e0000000 	bsr      	0x0	// 0 <skb_put>
  a0:	3300      	movi      	r3, 0
  a2:	2b2a      	subi      	r3, 43
  a4:	a060      	st.b      	r3, (r0, 0x0)
  a6:	3308      	movi      	r3, 8
  a8:	3600      	movi      	r6, 0
  aa:	a061      	st.b      	r3, (r0, 0x1)
  ac:	3311      	movi      	r3, 17
  ae:	a0c3      	st.b      	r6, (r0, 0x3)
  b0:	a062      	st.b      	r3, (r0, 0x2)
  b2:	d86410aa 	ld.h      	r3, (r4, 0x154)
  b6:	a064      	st.b      	r3, (r0, 0x4)
  b8:	4b68      	lsri      	r3, r3, 8
  ba:	a065      	st.b      	r3, (r0, 0x5)
  bc:	a0c6      	st.b      	r6, (r0, 0x6)
  be:	a0c7      	st.b      	r6, (r0, 0x7)
  c0:	a0c8      	st.b      	r6, (r0, 0x8)
  c2:	a0c9      	st.b      	r6, (r0, 0x9)
  c4:	6c57      	mov      	r1, r5
  c6:	d804202b 	ld.w      	r0, (r4, 0xac)
  ca:	e0000000 	bsr      	0x0	// 0 <ieee80211_build_s1gbeacon>
  ce:	6c57      	mov      	r1, r5
  d0:	e40400ab 	addi      	r0, r4, 172
  d4:	e0000000 	bsr      	0x0	// 0 <ieee80211_build_s1gbeacon>
  d8:	3104      	movi      	r1, 4
  da:	6c17      	mov      	r0, r5
  dc:	e0000000 	bsr      	0x0	// 0 <skb_put>
  e0:	3300      	movi      	r3, 0
  e2:	2b29      	subi      	r3, 42
  e4:	a060      	st.b      	r3, (r0, 0x0)
  e6:	3302      	movi      	r3, 2
  e8:	a061      	st.b      	r3, (r0, 0x1)
  ea:	d86410aa 	ld.h      	r3, (r4, 0x154)
  ee:	a062      	st.b      	r3, (r0, 0x2)
  f0:	4b68      	lsri      	r3, r3, 8
  f2:	a063      	st.b      	r3, (r0, 0x3)
  f4:	e444015b 	addi      	r2, r4, 348
  f8:	6c57      	mov      	r1, r5
  fa:	6c13      	mov      	r0, r4
  fc:	e0000000 	bsr      	0x0	// 0 <ieee80211_ie_add_wmm>
 100:	6cdb      	mov      	r3, r6
 102:	6c97      	mov      	r2, r5
 104:	6c5b      	mov      	r1, r6
 106:	6c13      	mov      	r0, r4
 108:	e0000000 	bsr      	0x0	// 0 <ieee80211_add_extra_ie>
 10c:	6c57      	mov      	r1, r5
 10e:	6c13      	mov      	r0, r4
 110:	e0000000 	bsr      	0x0	// 0 <ieee80211_add_customer_ie>
 114:	1404      	addi      	r14, r14, 16
 116:	1498      	pop      	r4-r11, r15
 118:	e509008f 	addi      	r8, r9, 144
 11c:	d8e800fc 	ld.b      	r7, (r8, 0xfc)
 120:	e9070008 	bez      	r7, 0x130	// 130 <ieee80211_build_s1gbeacon+0x130>
 124:	31fc      	movi      	r1, 252
 126:	6c23      	mov      	r0, r8
 128:	e0000000 	bsr      	0x0	// 0 <bitmap_empty>
 12c:	3840      	cmpnei      	r0, 0
 12e:	65c3      	mvcv      	r7
 130:	d8642061 	ld.w      	r3, (r4, 0x184)
 134:	e9230004 	bnez      	r3, 0x13c	// 13c <ieee80211_build_s1gbeacon+0x13c>
 138:	d8640189 	ld.b      	r3, (r4, 0x189)
 13c:	2b00      	subi      	r3, 1
 13e:	dc642061 	st.w      	r3, (r4, 0x184)
 142:	3105      	movi      	r1, 5
 144:	6c17      	mov      	r0, r5
 146:	e0000000 	bsr      	0x0	// 0 <skb_put>
 14a:	3305      	movi      	r3, 5
 14c:	a060      	st.b      	r3, (r0, 0x0)
 14e:	3303      	movi      	r3, 3
 150:	a061      	st.b      	r3, (r0, 0x1)
 152:	d8640184 	ld.b      	r3, (r4, 0x184)
 156:	a062      	st.b      	r3, (r0, 0x2)
 158:	d8640189 	ld.b      	r3, (r4, 0x189)
 15c:	a063      	st.b      	r3, (r0, 0x3)
 15e:	d8642061 	ld.w      	r3, (r4, 0x184)
 162:	6d83      	mov      	r6, r0
 164:	e9230039 	bnez      	r3, 0x1d6	// 1d6 <ieee80211_build_s1gbeacon+0x1d6>
 168:	e4040177 	addi      	r0, r4, 376
 16c:	e0000000 	bsr      	0x0	// 0 <skb_list_count>
 170:	3840      	cmpnei      	r0, 0
 172:	c4000503 	mvc      	r3
 176:	dc640188 	st.b      	r3, (r4, 0x188)
 17a:	ec63003e 	ori      	r3, r3, 62
 17e:	a664      	st.b      	r3, (r6, 0x4)
 180:	e907ff88 	bez      	r7, 0x90	// 90 <ieee80211_build_s1gbeacon+0x90>
 184:	5e72      	addi      	r3, r6, 5
 186:	3700      	movi      	r7, 0
 188:	b860      	st.w      	r3, (r14, 0x0)
 18a:	6cdf      	mov      	r3, r7
 18c:	2b8f      	subi      	r3, 144
 18e:	60e6      	subu      	r3, r9
 190:	6ea3      	mov      	r10, r8
 192:	b863      	st.w      	r3, (r14, 0xc)
 194:	eb470100 	cmpnei      	r7, 256
 198:	0f7c      	bf      	0x90	// 90 <ieee80211_build_s1gbeacon+0x90>
 19a:	31fb      	movi      	r1, 251
 19c:	605e      	subu      	r1, r7
 19e:	3308      	movi      	r3, 8
 1a0:	3928      	cmplti      	r1, 9
 1a2:	c4230c20 	incf      	r1, r3, 0
 1a6:	9863      	ld.w      	r3, (r14, 0xc)
 1a8:	6f2b      	mov      	r12, r10
 1aa:	c4e3008d 	subu      	r13, r3, r7
 1ae:	d80c0000 	ld.b      	r0, (r12, 0x0)
 1b2:	c50c0083 	subu      	r3, r12, r8
 1b6:	e9200012 	bnez      	r0, 0x1da	// 1da <ieee80211_build_s1gbeacon+0x1da>
 1ba:	e58c0000 	addi      	r12, r12, 1
 1be:	c58d0023 	addu      	r3, r13, r12
 1c2:	644d      	cmplt      	r3, r1
 1c4:	0bf5      	bt      	0x1ae	// 1ae <ieee80211_build_s1gbeacon+0x1ae>
 1c6:	6cdf      	mov      	r3, r7
 1c8:	2900      	subi      	r1, 1
 1ca:	644d      	cmplt      	r3, r1
 1cc:	0809      	bt      	0x1de	// 1de <ieee80211_build_s1gbeacon+0x1de>
 1ce:	e900002e 	bez      	r0, 0x22a	// 22a <ieee80211_build_s1gbeacon+0x22a>
 1d2:	b861      	st.w      	r3, (r14, 0x4)
 1d4:	040b      	br      	0x1ea	// 1ea <ieee80211_build_s1gbeacon+0x1ea>
 1d6:	3300      	movi      	r3, 0
 1d8:	07cf      	br      	0x176	// 176 <ieee80211_build_s1gbeacon+0x176>
 1da:	3001      	movi      	r0, 1
 1dc:	07f6      	br      	0x1c8	// 1c8 <ieee80211_build_s1gbeacon+0x1c8>
 1de:	d02a002c 	ldr.b      	r12, (r10, r1 << 0)
 1e2:	595c      	addu      	r2, r1, r7
 1e4:	b841      	st.w      	r2, (r14, 0x4)
 1e6:	e90cfff1 	bez      	r12, 0x1c8	// 1c8 <ieee80211_build_s1gbeacon+0x1c8>
 1ea:	9840      	ld.w      	r2, (r14, 0x0)
 1ec:	e46320f8 	andi      	r3, r3, 248
 1f0:	9820      	ld.w      	r1, (r14, 0x0)
 1f2:	a260      	st.b      	r3, (r2, 0x0)
 1f4:	e5620001 	addi      	r11, r2, 2
 1f8:	3200      	movi      	r2, 0
 1fa:	a141      	st.b      	r2, (r1, 0x1)
 1fc:	5b5a      	addi      	r2, r3, 7
 1fe:	6c4f      	mov      	r1, r3
 200:	ea0d0000 	movi      	r13, 0
 204:	b842      	st.w      	r2, (r14, 0x8)
 206:	9841      	ld.w      	r2, (r14, 0x4)
 208:	6449      	cmplt      	r2, r1
 20a:	0c14      	bf      	0x232	// 232 <ieee80211_build_s1gbeacon+0x232>
 20c:	e42d0001 	addi      	r1, r13, 2
 210:	6c17      	mov      	r0, r5
 212:	ddae2000 	st.w      	r13, (r14, 0x0)
 216:	e0000000 	bsr      	0x0	// 0 <skb_put>
 21a:	8661      	ld.b      	r3, (r6, 0x1)
 21c:	d9ae2000 	ld.w      	r13, (r14, 0x0)
 220:	2301      	addi      	r3, 2
 222:	60f4      	addu      	r3, r13
 224:	a661      	st.b      	r3, (r6, 0x1)
 226:	dd6e2000 	st.w      	r11, (r14, 0x0)
 22a:	2707      	addi      	r7, 8
 22c:	e54a0007 	addi      	r10, r10, 8
 230:	07b2      	br      	0x194	// 194 <ieee80211_build_s1gbeacon+0x194>
 232:	9842      	ld.w      	r2, (r14, 0x8)
 234:	6449      	cmplt      	r2, r1
 236:	0beb      	bt      	0x20c	// 20c <ieee80211_build_s1gbeacon+0x20c>
 238:	c429002c 	addu      	r12, r9, r1
 23c:	d80c0090 	ld.b      	r0, (r12, 0x90)
 240:	e9000013 	bez      	r0, 0x266	// 266 <ieee80211_build_s1gbeacon+0x266>
 244:	3201      	movi      	r2, 1
 246:	590d      	subu      	r0, r1, r3
 248:	c4024020 	lsl      	r0, r2, r0
 24c:	9840      	ld.w      	r2, (r14, 0x0)
 24e:	e5ad0000 	addi      	r13, r13, 1
 252:	8241      	ld.b      	r2, (r2, 0x1)
 254:	6c08      	or      	r0, r2
 256:	9840      	ld.w      	r2, (r14, 0x0)
 258:	a201      	st.b      	r0, (r2, 0x1)
 25a:	d84c0090 	ld.b      	r2, (r12, 0x90)
 25e:	dc4b0000 	st.b      	r2, (r11, 0x0)
 262:	e56b0000 	addi      	r11, r11, 1
 266:	2100      	addi      	r1, 1
 268:	07cf      	br      	0x206	// 206 <ieee80211_build_s1gbeacon+0x206>

Disassembly of section .text.ieee80211_sta_rx_s1g_beacon:

00000000 <ieee80211_sta_rx_s1g_beacon>:
   0:	14d4      	push      	r4-r7, r15
   2:	d8a02063 	ld.w      	r5, (r0, 0x18c)
   6:	6d83      	mov      	r6, r0
   8:	d8650025 	ld.b      	r3, (r5, 0x25)
   c:	e4632008 	andi      	r3, r3, 8
  10:	6dc7      	mov      	r7, r1
  12:	e9030027 	bez      	r3, 0x60	// 60 <ieee80211_sta_rx_s1g_beacon+0x60>
  16:	9187      	ld.w      	r4, (r1, 0x1c)
  18:	3206      	movi      	r2, 6
  1a:	e425001b 	addi      	r1, r5, 28
  1e:	5c0e      	addi      	r0, r4, 4
  20:	e0000000 	bsr      	0x0	// 0 <memcmp>
  24:	e920001e 	bnez      	r0, 0x60	// 60 <ieee80211_sta_rx_s1g_beacon+0x60>
  28:	e0000000 	bsr      	0x0	// 0 <os_jiffies>
  2c:	dc052024 	st.w      	r0, (r5, 0x90)
  30:	dc252025 	st.w      	r1, (r5, 0x94)
  34:	8461      	ld.b      	r3, (r4, 0x1)
  36:	e4432001 	andi      	r2, r3, 1
  3a:	e9220014 	bnez      	r2, 0x62	// 62 <ieee80211_sta_rx_s1g_beacon+0x62>
  3e:	e424000e 	addi      	r1, r4, 15
  42:	e4432002 	andi      	r2, r3, 2
  46:	3a40      	cmpnei      	r2, 0
  48:	e4632004 	andi      	r3, r3, 4
  4c:	c4210c44 	inct      	r1, r1, 4
  50:	3b40      	cmpnei      	r3, 0
  52:	c4210c41 	inct      	r1, r1, 1
  56:	9746      	ld.w      	r2, (r7, 0x18)
  58:	6086      	subu      	r2, r1
  5a:	6c1b      	mov      	r0, r6
  5c:	e0000000 	bsr      	0x0	// 0 <ieee80211_sta_parse_element>
  60:	1494      	pop      	r4-r7, r15
  62:	e4240011 	addi      	r1, r4, 18
  66:	07ee      	br      	0x42	// 42 <ieee80211_sta_rx_s1g_beacon+0x42>
