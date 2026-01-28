
libwifi/o/sta_stabr.o:     file format elf32-csky-little


Disassembly of section .text.ieee80211_stabr_add:

00000000 <ieee80211_stabr_add>:
   0:	9162      	ld.w      	r3, (r1, 0x8)
   2:	e463200f 	andi      	r3, r3, 15
   6:	2300      	addi      	r3, 1
   8:	4343      	lsli      	r2, r3, 3
   a:	d9a12000 	ld.w      	r13, (r1, 0x0)
   e:	2203      	addi      	r2, 4
  10:	6080      	addu      	r2, r0
  12:	e90d0010 	bez      	r13, 0x32	// 32 <ieee80211_stabr_add+0x32>
  16:	d9812001 	ld.w      	r12, (r1, 0x4)
  1a:	e90c0006 	bez      	r12, 0x26	// 26 <ieee80211_stabr_add+0x26>
  1e:	dd8d2001 	st.w      	r12, (r13, 0x4)
  22:	ddac2000 	st.w      	r13, (r12, 0x0)
  26:	ea0c0000 	movi      	r12, 0
  2a:	dd812000 	st.w      	r12, (r1, 0x0)
  2e:	dd812001 	st.w      	r12, (r1, 0x4)
  32:	4363      	lsli      	r3, r3, 3
  34:	60c0      	addu      	r3, r0
  36:	9301      	ld.w      	r0, (r3, 0x4)
  38:	b021      	st.w      	r1, (r0, 0x4)
  3a:	b100      	st.w      	r0, (r1, 0x0)
  3c:	b141      	st.w      	r2, (r1, 0x4)
  3e:	b321      	st.w      	r1, (r3, 0x4)
  40:	783c      	jmp      	r15

Disassembly of section .text.ieee80211_stabr_get_proto.isra.0:

00000000 <ieee80211_stabr_get_proto.isra.0>:
   0:	8846      	ld.h      	r2, (r0, 0xc)
   2:	4268      	lsli      	r3, r2, 8
   4:	c50255e2 	zext      	r2, r2, 15, 8
   8:	6cc8      	or      	r3, r2
   a:	74cd      	zexth      	r3, r3
   c:	eb438100 	cmpnei      	r3, 33024
  10:	0805      	bt      	0x1a	// 1a <ieee80211_stabr_get_proto.isra.0+0x1a>
  12:	8070      	ld.b      	r3, (r0, 0x10)
  14:	4368      	lsli      	r3, r3, 8
  16:	8051      	ld.b      	r2, (r0, 0x11)
  18:	6cc8      	or      	r3, r2
  1a:	1006      	lrw      	r0, 0x0	// 30 <ieee80211_stabr_get_proto.isra.0+0x30>
  1c:	8840      	ld.h      	r2, (r0, 0x0)
  1e:	648e      	cmpne      	r3, r2
  20:	0c07      	bf      	0x2e	// 2e <ieee80211_stabr_get_proto.isra.0+0x2e>
  22:	1005      	lrw      	r0, 0x0	// 34 <ieee80211_stabr_get_proto.isra.0+0x34>
  24:	8840      	ld.h      	r2, (r0, 0x0)
  26:	648e      	cmpne      	r3, r2
  28:	3300      	movi      	r3, 0
  2a:	c4030c40 	inct      	r0, r3, 0
  2e:	783c      	jmp      	r15
	...

Disassembly of section .text.ieee80211_stabr_handle_rx:

00000000 <ieee80211_stabr_handle_rx>:
   0:	14d1      	push      	r4, r15
   2:	1421      	subi      	r14, r14, 4
   4:	6d03      	mov      	r4, r0
   6:	9107      	ld.w      	r0, (r1, 0x1c)
   8:	b820      	st.w      	r1, (r14, 0x0)
   a:	e0000000 	bsr      	0x0	// 0 <ieee80211_stabr_handle_rx>
   e:	9820      	ld.w      	r1, (r14, 0x0)
  10:	e9000006 	bez      	r0, 0x1c	// 1c <ieee80211_stabr_handle_rx+0x1c>
  14:	9061      	ld.w      	r3, (r0, 0x4)
  16:	6c13      	mov      	r0, r4
  18:	7bcd      	jsr      	r3
  1a:	6c43      	mov      	r1, r0
  1c:	6c07      	mov      	r0, r1
  1e:	1401      	addi      	r14, r14, 4
  20:	1491      	pop      	r4, r15

Disassembly of section .text.ieee80211_stabr_handle_tx:

00000000 <ieee80211_stabr_handle_tx>:
   0:	14d3      	push      	r4-r6, r15
   2:	91a7      	ld.w      	r5, (r1, 0x1c)
   4:	3206      	movi      	r2, 6
   6:	6d83      	mov      	r6, r0
   8:	6d07      	mov      	r4, r1
   a:	6008      	addu      	r0, r2
   c:	5d28      	addu      	r1, r5, r2
   e:	e0000000 	bsr      	0x0	// 0 <memcmp>
  12:	e900000d 	bez      	r0, 0x2c	// 2c <ieee80211_stabr_handle_tx+0x2c>
  16:	6c17      	mov      	r0, r5
  18:	e0000000 	bsr      	0x0	// 0 <ieee80211_stabr_handle_tx>
  1c:	6d43      	mov      	r5, r0
  1e:	e9000009 	bez      	r0, 0x30	// 30 <ieee80211_stabr_handle_tx+0x30>
  22:	9062      	ld.w      	r3, (r0, 0x8)
  24:	6c53      	mov      	r1, r4
  26:	6c1b      	mov      	r0, r6
  28:	7bcd      	jsr      	r3
  2a:	6d03      	mov      	r4, r0
  2c:	6c13      	mov      	r0, r4
  2e:	1493      	pop      	r4-r6, r15
  30:	6c13      	mov      	r0, r4
  32:	e0000000 	bsr      	0x0	// 0 <kfree_skb>
  36:	6d17      	mov      	r4, r5
  38:	07fa      	br      	0x2c	// 2c <ieee80211_stabr_handle_tx+0x2c>

Disassembly of section .text.ieee80211_stabr_release_table:

00000000 <ieee80211_stabr_release_table>:
   0:	14d6      	push      	r4-r9, r15
   2:	6d43      	mov      	r5, r0
   4:	3100      	movi      	r1, 0
   6:	d800205b 	ld.w      	r0, (r0, 0x16c)
   a:	2900      	subi      	r1, 1
   c:	2003      	addi      	r0, 4
   e:	e0000000 	bsr      	0x0	// 0 <os_mutex_lock>
  12:	3300      	movi      	r3, 0
  14:	360c      	movi      	r6, 12
  16:	6e0f      	mov      	r8, r3
  18:	5b82      	addi      	r4, r3, 1
  1a:	d845205b 	ld.w      	r2, (r5, 0x16c)
  1e:	4463      	lsli      	r3, r4, 3
  20:	c4c20029 	addu      	r9, r2, r6
  24:	608c      	addu      	r2, r3
  26:	9201      	ld.w      	r0, (r2, 0x4)
  28:	6426      	cmpne      	r9, r0
  2a:	080b      	bt      	0x40	// 40 <ieee80211_stabr_release_table+0x40>
  2c:	3c50      	cmpnei      	r4, 16
  2e:	6cd3      	mov      	r3, r4
  30:	2607      	addi      	r6, 8
  32:	0bf3      	bt      	0x18	// 18 <ieee80211_stabr_release_table+0x18>
  34:	d805205b 	ld.w      	r0, (r5, 0x16c)
  38:	2003      	addi      	r0, 4
  3a:	e0000000 	bsr      	0x0	// 0 <os_mutex_unlock>
  3e:	1496      	pop      	r4-r9, r15
  40:	90e0      	ld.w      	r7, (r0, 0x0)
  42:	6426      	cmpne      	r9, r0
  44:	0ff4      	bf      	0x2c	// 2c <ieee80211_stabr_release_table+0x2c>
  46:	9061      	ld.w      	r3, (r0, 0x4)
  48:	9040      	ld.w      	r2, (r0, 0x0)
  4a:	e9030006 	bez      	r3, 0x56	// 56 <ieee80211_stabr_release_table+0x56>
  4e:	e9020004 	bez      	r2, 0x56	// 56 <ieee80211_stabr_release_table+0x56>
  52:	b261      	st.w      	r3, (r2, 0x4)
  54:	b340      	st.w      	r2, (r3, 0x0)
  56:	dd002000 	st.w      	r8, (r0, 0x0)
  5a:	dd002001 	st.w      	r8, (r0, 0x4)
  5e:	e0000000 	bsr      	0x0	// 0 <_os_free>
  62:	d845205b 	ld.w      	r2, (r5, 0x16c)
  66:	6c1f      	mov      	r0, r7
  68:	d8621046 	ld.h      	r3, (r2, 0x8c)
  6c:	2b00      	subi      	r3, 1
  6e:	dc621046 	st.h      	r3, (r2, 0x8c)
  72:	97e0      	ld.w      	r7, (r7, 0x0)
  74:	07e7      	br      	0x42	// 42 <ieee80211_stabr_release_table+0x42>

Disassembly of section .text.ieee80211_stabr_find:

00000000 <ieee80211_stabr_find>:
   0:	14d5      	push      	r4-r8, r15
   2:	e481200f 	andi      	r4, r1, 15
   6:	2400      	addi      	r4, 1
   8:	4483      	lsli      	r4, r4, 3
   a:	5cee      	addi      	r7, r4, 4
   c:	6d43      	mov      	r5, r0
   e:	6d87      	mov      	r6, r1
  10:	61c0      	addu      	r7, r0
  12:	e901001a 	bez      	r1, 0x46	// 46 <ieee80211_stabr_find+0x46>
  16:	e5000003 	addi      	r8, r0, 4
  1a:	3100      	movi      	r1, 0
  1c:	6114      	addu      	r4, r5
  1e:	2900      	subi      	r1, 1
  20:	6c23      	mov      	r0, r8
  22:	e0000000 	bsr      	0x0	// 0 <os_mutex_lock>
  26:	9481      	ld.w      	r4, (r4, 0x4)
  28:	651e      	cmpne      	r7, r4
  2a:	0c03      	bf      	0x30	// 30 <ieee80211_stabr_find+0x30>
  2c:	651e      	cmpne      	r7, r4
  2e:	0807      	bt      	0x3c	// 3c <ieee80211_stabr_find+0x3c>
  30:	3400      	movi      	r4, 0
  32:	6c23      	mov      	r0, r8
  34:	e0000000 	bsr      	0x0	// 0 <os_mutex_unlock>
  38:	6c13      	mov      	r0, r4
  3a:	1495      	pop      	r4-r8, r15
  3c:	9462      	ld.w      	r3, (r4, 0x8)
  3e:	64da      	cmpne      	r6, r3
  40:	0ff9      	bf      	0x32	// 32 <ieee80211_stabr_find+0x32>
  42:	9480      	ld.w      	r4, (r4, 0x0)
  44:	07f4      	br      	0x2c	// 2c <ieee80211_stabr_find+0x2c>
  46:	6d07      	mov      	r4, r1
  48:	07f8      	br      	0x38	// 38 <ieee80211_stabr_find+0x38>

Disassembly of section .text.ieee80211_stabr_update:

00000000 <ieee80211_stabr_update>:
   0:	14d8      	push      	r4-r11, r15
   2:	1426      	subi      	r14, r14, 24
   4:	6d03      	mov      	r4, r0
   6:	6dc7      	mov      	r7, r1
   8:	6e0b      	mov      	r8, r2
   a:	6e8f      	mov      	r10, r3
   c:	e90100b0 	bez      	r1, 0x16c	// 16c <ieee80211_stabr_update+0x16c>
  10:	d8601046 	ld.h      	r3, (r0, 0x8c)
  14:	d8401047 	ld.h      	r2, (r0, 0x8e)
  18:	648c      	cmphs      	r3, r2
  1a:	90c0      	ld.w      	r6, (r0, 0x0)
  1c:	086c      	bt      	0xf4	// f4 <ieee80211_stabr_update+0xf4>
  1e:	60cc      	addu      	r3, r3
  20:	648d      	cmplt      	r3, r2
  22:	ea031388 	movi      	r3, 5000
  26:	c4c30c20 	incf      	r6, r3, 0
  2a:	5cae      	addi      	r5, r4, 4
  2c:	3100      	movi      	r1, 0
  2e:	2900      	subi      	r1, 1
  30:	6c17      	mov      	r0, r5
  32:	e0000000 	bsr      	0x0	// 0 <os_mutex_lock>
  36:	e464008b 	addi      	r3, r4, 140
  3a:	e564000b 	addi      	r11, r4, 12
  3e:	b862      	st.w      	r3, (r14, 0x8)
  40:	ea090000 	movi      	r9, 0
  44:	d86b2000 	ld.w      	r3, (r11, 0x0)
  48:	66ce      	cmpne      	r3, r11
  4a:	0c2a      	bf      	0x9e	// 9e <ieee80211_stabr_update+0x9e>
  4c:	d86b2001 	ld.w      	r3, (r11, 0x4)
  50:	8b2a      	ld.h      	r1, (r3, 0x14)
  52:	e4212001 	andi      	r1, r1, 1
  56:	e9010052 	bez      	r1, 0xfa	// fa <ieee80211_stabr_update+0xfa>
  5a:	9420      	ld.w      	r1, (r4, 0x0)
  5c:	3200      	movi      	r2, 0
  5e:	b820      	st.w      	r1, (r14, 0x0)
  60:	b841      	st.w      	r2, (r14, 0x4)
  62:	9303      	ld.w      	r0, (r3, 0xc)
  64:	9324      	ld.w      	r1, (r3, 0x10)
  66:	d98e2000 	ld.w      	r12, (r14, 0x0)
  6a:	d9ae2001 	ld.w      	r13, (r14, 0x4)
  6e:	6731      	cmplt      	r12, r12
  70:	6301      	addc      	r12, r0
  72:	6345      	addc      	r13, r1
  74:	b865      	st.w      	r3, (r14, 0x14)
  76:	dd8e2003 	st.w      	r12, (r14, 0xc)
  7a:	ddae2004 	st.w      	r13, (r14, 0x10)
  7e:	e0000000 	bsr      	0x0	// 0 <os_jiffies>
  82:	d98e2003 	ld.w      	r12, (r14, 0xc)
  86:	d9ae2004 	ld.w      	r13, (r14, 0x10)
  8a:	6488      	cmphs      	r2, r2
  8c:	c40c0102 	subc      	r2, r12, r0
  90:	c42d0103 	subc      	r3, r13, r1
  94:	6c4b      	mov      	r1, r2
  96:	6c8f      	mov      	r2, r3
  98:	9865      	ld.w      	r3, (r14, 0x14)
  9a:	e9820032 	blz      	r2, 0xfe	// fe <ieee80211_stabr_update+0xfe>
  9e:	e56b0007 	addi      	r11, r11, 8
  a2:	9862      	ld.w      	r3, (r14, 0x8)
  a4:	66ce      	cmpne      	r3, r11
  a6:	0bcf      	bt      	0x44	// 44 <ieee80211_stabr_update+0x44>
  a8:	6c17      	mov      	r0, r5
  aa:	e0000000 	bsr      	0x0	// 0 <os_mutex_unlock>
  ae:	6c5f      	mov      	r1, r7
  b0:	6c13      	mov      	r0, r4
  b2:	e0000000 	bsr      	0x0	// 0 <ieee80211_stabr_update>
  b6:	6d83      	mov      	r6, r0
  b8:	e9000038 	bez      	r0, 0x128	// 128 <ieee80211_stabr_update+0x128>
  bc:	e0000000 	bsr      	0x0	// 0 <os_jiffies>
  c0:	8e6a      	ld.h      	r3, (r6, 0x14)
  c2:	6ce8      	or      	r3, r10
  c4:	b603      	st.w      	r0, (r6, 0xc)
  c6:	b624      	st.w      	r1, (r6, 0x10)
  c8:	ae6a      	st.h      	r3, (r6, 0x14)
  ca:	3206      	movi      	r2, 6
  cc:	6c63      	mov      	r1, r8
  ce:	e4060015 	addi      	r0, r6, 22
  d2:	e0000000 	bsr      	0x0	// 0 <memcpy>
  d6:	3100      	movi      	r1, 0
  d8:	2900      	subi      	r1, 1
  da:	6c17      	mov      	r0, r5
  dc:	e0000000 	bsr      	0x0	// 0 <os_mutex_lock>
  e0:	6c5b      	mov      	r1, r6
  e2:	6c13      	mov      	r0, r4
  e4:	e0000000 	bsr      	0x0	// 0 <ieee80211_stabr_update>
  e8:	6c17      	mov      	r0, r5
  ea:	e0000000 	bsr      	0x0	// 0 <os_mutex_unlock>
  ee:	6c1b      	mov      	r0, r6
  f0:	1406      	addi      	r14, r14, 24
  f2:	1498      	pop      	r4-r11, r15
  f4:	36fa      	movi      	r6, 250
  f6:	46c1      	lsli      	r6, r6, 1
  f8:	0799      	br      	0x2a	// 2a <ieee80211_stabr_update+0x2a>
  fa:	6c5b      	mov      	r1, r6
  fc:	07b0      	br      	0x5c	// 5c <ieee80211_stabr_update+0x5c>
  fe:	9321      	ld.w      	r1, (r3, 0x4)
 100:	9300      	ld.w      	r0, (r3, 0x0)
 102:	e9010006 	bez      	r1, 0x10e	// 10e <ieee80211_stabr_update+0x10e>
 106:	e9000004 	bez      	r0, 0x10e	// 10e <ieee80211_stabr_update+0x10e>
 10a:	b021      	st.w      	r1, (r0, 0x4)
 10c:	b100      	st.w      	r0, (r1, 0x0)
 10e:	d8241046 	ld.h      	r1, (r4, 0x8c)
 112:	2900      	subi      	r1, 1
 114:	dd232000 	st.w      	r9, (r3, 0x0)
 118:	dd232001 	st.w      	r9, (r3, 0x4)
 11c:	6c0f      	mov      	r0, r3
 11e:	dc241046 	st.h      	r1, (r4, 0x8c)
 122:	e0000000 	bsr      	0x0	// 0 <_os_free>
 126:	078f      	br      	0x44	// 44 <ieee80211_stabr_update+0x44>
 128:	301c      	movi      	r0, 28
 12a:	e0000000 	bsr      	0x0	// 0 <_os_zalloc>
 12e:	6d83      	mov      	r6, r0
 130:	e900ffdf 	bez      	r0, 0xee	// ee <ieee80211_stabr_update+0xee>
 134:	b0e2      	st.w      	r7, (r0, 0x8)
 136:	dd40100a 	st.h      	r10, (r0, 0x14)
 13a:	e0000000 	bsr      	0x0	// 0 <os_jiffies>
 13e:	b603      	st.w      	r0, (r6, 0xc)
 140:	b624      	st.w      	r1, (r6, 0x10)
 142:	3206      	movi      	r2, 6
 144:	6c63      	mov      	r1, r8
 146:	e4060015 	addi      	r0, r6, 22
 14a:	e0000000 	bsr      	0x0	// 0 <memcpy>
 14e:	3100      	movi      	r1, 0
 150:	2900      	subi      	r1, 1
 152:	6c17      	mov      	r0, r5
 154:	e0000000 	bsr      	0x0	// 0 <os_mutex_lock>
 158:	6c5b      	mov      	r1, r6
 15a:	6c13      	mov      	r0, r4
 15c:	e0000000 	bsr      	0x0	// 0 <ieee80211_stabr_update>
 160:	d8641046 	ld.h      	r3, (r4, 0x8c)
 164:	2300      	addi      	r3, 1
 166:	dc641046 	st.h      	r3, (r4, 0x8c)
 16a:	07bf      	br      	0xe8	// e8 <ieee80211_stabr_update+0xe8>
 16c:	6d87      	mov      	r6, r1
 16e:	07c0      	br      	0xee	// ee <ieee80211_stabr_update+0xee>

Disassembly of section .text.ieee80211_stabr_dump:

00000000 <ieee80211_stabr_dump>:
   0:	14d7      	push      	r4-r10, r15
   2:	3a0b      	cmphsi      	r2, 12
   4:	6e43      	mov      	r9, r0
   6:	6e07      	mov      	r8, r1
   8:	6e8b      	mov      	r10, r2
   a:	0c45      	bf      	0x94	// 94 <ieee80211_stabr_dump+0x94>
   c:	d880205b 	ld.w      	r4, (r0, 0x16c)
  10:	e9040024 	bez      	r4, 0x58	// 58 <ieee80211_stabr_dump+0x58>
  14:	3100      	movi      	r1, 0
  16:	5c0e      	addi      	r0, r4, 4
  18:	2900      	subi      	r1, 1
  1a:	3400      	movi      	r4, 0
  1c:	e0000000 	bsr      	0x0	// 0 <os_mutex_lock>
  20:	6cd3      	mov      	r3, r4
  22:	e444000b 	addi      	r2, r4, 12
  26:	64a8      	cmphs      	r10, r2
  28:	0c13      	bf      	0x4e	// 4e <ieee80211_stabr_dump+0x4e>
  2a:	43e3      	lsli      	r7, r3, 3
  2c:	5bc2      	addi      	r6, r3, 1
  2e:	d849205b 	ld.w      	r2, (r9, 0x16c)
  32:	270b      	addi      	r7, 12
  34:	4663      	lsli      	r3, r6, 3
  36:	61c8      	addu      	r7, r2
  38:	608c      	addu      	r2, r3
  3a:	92a1      	ld.w      	r5, (r2, 0x4)
  3c:	655e      	cmpne      	r7, r5
  3e:	0c05      	bf      	0x48	// 48 <ieee80211_stabr_dump+0x48>
  40:	c4880023 	addu      	r3, r8, r4
  44:	655e      	cmpne      	r7, r5
  46:	080b      	bt      	0x5c	// 5c <ieee80211_stabr_dump+0x5c>
  48:	3e50      	cmpnei      	r6, 16
  4a:	6cdb      	mov      	r3, r6
  4c:	0beb      	bt      	0x22	// 22 <ieee80211_stabr_dump+0x22>
  4e:	d809205b 	ld.w      	r0, (r9, 0x16c)
  52:	2003      	addi      	r0, 4
  54:	e0000000 	bsr      	0x0	// 0 <os_mutex_unlock>
  58:	6c13      	mov      	r0, r4
  5a:	1497      	pop      	r4-r10, r15
  5c:	3206      	movi      	r2, 6
  5e:	e4250015 	addi      	r1, r5, 22
  62:	6c0f      	mov      	r0, r3
  64:	e0000000 	bsr      	0x0	// 0 <memcpy>
  68:	6cc3      	mov      	r3, r0
  6a:	9542      	ld.w      	r2, (r5, 0x8)
  6c:	4a30      	lsri      	r1, r2, 16
  6e:	a327      	st.b      	r1, (r3, 0x7)
  70:	4908      	lsri      	r0, r1, 8
  72:	c50255e1 	zext      	r1, r2, 15, 8
  76:	a306      	st.b      	r0, (r3, 0x6)
  78:	a328      	st.b      	r1, (r3, 0x8)
  7a:	a349      	st.b      	r2, (r3, 0x9)
  7c:	8d4a      	ld.h      	r2, (r5, 0x14)
  7e:	a34a      	st.b      	r2, (r3, 0xa)
  80:	240b      	addi      	r4, 12
  82:	4a48      	lsri      	r2, r2, 8
  84:	a34b      	st.b      	r2, (r3, 0xb)
  86:	e444000b 	addi      	r2, r4, 12
  8a:	64a8      	cmphs      	r10, r2
  8c:	230b      	addi      	r3, 12
  8e:	0fdd      	bf      	0x48	// 48 <ieee80211_stabr_dump+0x48>
  90:	95a0      	ld.w      	r5, (r5, 0x0)
  92:	07d9      	br      	0x44	// 44 <ieee80211_stabr_dump+0x44>
  94:	3400      	movi      	r4, 0
  96:	07e1      	br      	0x58	// 58 <ieee80211_stabr_dump+0x58>

Disassembly of section .text.ieee80211_stabr_status:

00000000 <ieee80211_stabr_status>:
   0:	14d0      	push      	r15
   2:	1422      	subi      	r14, r14, 8
   4:	b821      	st.w      	r1, (r14, 0x4)
   6:	b840      	st.w      	r2, (r14, 0x0)
   8:	e0000000 	bsr      	0x0	// 0 <ieee80211_iface_get>
   c:	e9000008 	bez      	r0, 0x1c	// 1c <ieee80211_stabr_status+0x1c>
  10:	9840      	ld.w      	r2, (r14, 0x0)
  12:	9821      	ld.w      	r1, (r14, 0x4)
  14:	e0000000 	bsr      	0x0	// 0 <ieee80211_stabr_status>
  18:	1402      	addi      	r14, r14, 8
  1a:	1490      	pop      	r15
  1c:	3000      	movi      	r0, 0
  1e:	2815      	subi      	r0, 22
  20:	07fc      	br      	0x18	// 18 <ieee80211_stabr_status+0x18>

Disassembly of section .text.ieee80211_stabr_init:

00000000 <ieee80211_stabr_init>:
   0:	14d3      	push      	r4-r6, r15
   2:	8860      	ld.h      	r3, (r0, 0x0)
   4:	e4632001 	andi      	r3, r3, 1
   8:	6d83      	mov      	r6, r0
   a:	6d47      	mov      	r5, r1
   c:	6d0b      	mov      	r4, r2
   e:	e9030037 	bez      	r3, 0x7c	// 7c <ieee80211_stabr_init+0x7c>
  12:	d860205b 	ld.w      	r3, (r0, 0x16c)
  16:	e923002c 	bnez      	r3, 0x6e	// 6e <ieee80211_stabr_init+0x6e>
  1a:	309c      	movi      	r0, 156
  1c:	e0000000 	bsr      	0x0	// 0 <_os_zalloc>
  20:	dc06205b 	st.w      	r0, (r6, 0x16c)
  24:	e900002f 	bez      	r0, 0x82	// 82 <ieee80211_stabr_init+0x82>
  28:	e9040025 	bez      	r4, 0x72	// 72 <ieee80211_stabr_init+0x72>
  2c:	32fa      	movi      	r2, 250
  2e:	4242      	lsli      	r2, r2, 2
  30:	7d08      	mult      	r4, r2
  32:	1076      	lrw      	r3, 0x0	// 88 <ieee80211_stabr_init+0x88>
  34:	e440008b 	addi      	r2, r0, 140
  38:	dc602024 	st.w      	r3, (r0, 0x90)
  3c:	b080      	st.w      	r4, (r0, 0x0)
  3e:	1074      	lrw      	r3, 0x0	// 8c <ieee80211_stabr_init+0x8c>
  40:	dc602026 	st.w      	r3, (r0, 0x98)
  44:	1073      	lrw      	r3, 0x0	// 90 <ieee80211_stabr_init+0x90>
  46:	dc602025 	st.w      	r3, (r0, 0x94)
  4a:	e460000b 	addi      	r3, r0, 12
  4e:	b360      	st.w      	r3, (r3, 0x0)
  50:	b361      	st.w      	r3, (r3, 0x4)
  52:	2307      	addi      	r3, 8
  54:	648e      	cmpne      	r3, r2
  56:	0bfc      	bt      	0x4e	// 4e <ieee80211_stabr_init+0x4e>
  58:	2003      	addi      	r0, 4
  5a:	e0000000 	bsr      	0x0	// 0 <os_mutex_init>
  5e:	d866205b 	ld.w      	r3, (r6, 0x16c)
  62:	3d20      	cmplti      	r5, 1
  64:	3220      	movi      	r2, 32
  66:	c4a20c40 	inct      	r5, r2, 0
  6a:	dca31047 	st.h      	r5, (r3, 0x8e)
  6e:	3000      	movi      	r0, 0
  70:	0408      	br      	0x80	// 80 <ieee80211_stabr_init+0x80>
  72:	ea04927c 	movi      	r4, 37500
  76:	c4844904 	rotli      	r4, r4, 4
  7a:	07dc      	br      	0x32	// 32 <ieee80211_stabr_init+0x32>
  7c:	3000      	movi      	r0, 0
  7e:	2815      	subi      	r0, 22
  80:	1493      	pop      	r4-r6, r15
  82:	3000      	movi      	r0, 0
  84:	280b      	subi      	r0, 12
  86:	07fd      	br      	0x80	// 80 <ieee80211_stabr_init+0x80>
	...
