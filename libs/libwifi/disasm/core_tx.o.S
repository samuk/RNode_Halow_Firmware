
libwifi/o/core_tx.o:     file format elf32-csky-little


Disassembly of section .text.__ieee80211_tx:

00000000 <__ieee80211_tx>:
   0:	14d7      	push      	r4-r10, r15
   2:	d9400005 	ld.b      	r10, (r0, 0x5)
   6:	e54a2081 	andi      	r10, r10, 129
   a:	eb4a0001 	cmpnei      	r10, 1
   e:	6e43      	mov      	r9, r0
  10:	6e07      	mov      	r8, r1
  12:	6d8b      	mov      	r6, r2
  14:	6dcf      	mov      	r7, r3
  16:	083b      	bt      	0x8c	// 8c <__ieee80211_tx+0x8c>
  18:	10bf      	lrw      	r5, 0x0	// 94 <__ieee80211_tx+0x94>
  1a:	d865003a 	ld.b      	r3, (r5, 0x3a)
  1e:	d8050038 	ld.b      	r0, (r5, 0x38)
  22:	600c      	addu      	r0, r3
  24:	d845003b 	ld.b      	r2, (r5, 0x3b)
  28:	d8650039 	ld.b      	r3, (r5, 0x39)
  2c:	60c8      	addu      	r3, r2
  2e:	600c      	addu      	r0, r3
  30:	6018      	addu      	r0, r6
  32:	e0000000 	bsr      	0x0	// 0 <alloc_tx_skb>
  36:	6d03      	mov      	r4, r0
  38:	e920000a 	bnez      	r0, 0x4c	// 4c <__ieee80211_tx+0x4c>
  3c:	d869207a 	ld.w      	r3, (r9, 0x1e8)
  40:	2300      	addi      	r3, 1
  42:	3000      	movi      	r0, 0
  44:	dc69207a 	st.w      	r3, (r9, 0x1e8)
  48:	280b      	subi      	r0, 12
  4a:	1497      	pop      	r4-r10, r15
  4c:	d860002b 	ld.b      	r3, (r0, 0x2b)
  50:	c46a5c03 	ins      	r3, r10, 3, 3
  54:	dc60002b 	st.b      	r3, (r0, 0x2b)
  58:	d865003a 	ld.b      	r3, (r5, 0x3a)
  5c:	d8250038 	ld.b      	r1, (r5, 0x38)
  60:	604c      	addu      	r1, r3
  62:	e0000000 	bsr      	0x0	// 0 <skb_reserve>
  66:	6c9b      	mov      	r2, r6
  68:	6c63      	mov      	r1, r8
  6a:	9407      	ld.w      	r0, (r4, 0x1c)
  6c:	e0000000 	bsr      	0x0	// 0 <hw_memcpy>
  70:	6c5b      	mov      	r1, r6
  72:	6c13      	mov      	r0, r4
  74:	e0000000 	bsr      	0x0	// 0 <skb_put>
  78:	6c53      	mov      	r1, r4
  7a:	6c1f      	mov      	r0, r7
  7c:	e0000000 	bsr      	0x0	// 0 <skb_list_queue>
  80:	d809202a 	ld.w      	r0, (r9, 0xa8)
  84:	e0000000 	bsr      	0x0	// 0 <os_sema_up>
  88:	3000      	movi      	r0, 0
  8a:	07e0      	br      	0x4a	// 4a <__ieee80211_tx+0x4a>
  8c:	3000      	movi      	r0, 0
  8e:	2804      	subi      	r0, 5
  90:	07dd      	br      	0x4a	// 4a <__ieee80211_tx+0x4a>
  92:	0000      	.short	0x0000
  94:	00000000 	.long	0x00000000

Disassembly of section .text.ieee80211_tx_unspecified:

00000000 <ieee80211_tx_unspecified>:
   0:	14d6      	push      	r4-r9, r15
   2:	8060      	ld.b      	r3, (r0, 0x0)
   4:	e4632001 	andi      	r3, r3, 1
   8:	6d43      	mov      	r5, r0
   a:	6e07      	mov      	r8, r1
   c:	6e4b      	mov      	r9, r2
   e:	11fe      	lrw      	r7, 0x0	// 104 <ieee80211_tx_unspecified+0x104>
  10:	e9030022 	bez      	r3, 0x54	// 54 <ieee80211_tx_unspecified+0x54>
  14:	3400      	movi      	r4, 0
  16:	d8670048 	ld.b      	r3, (r7, 0x48)
  1a:	64d1      	cmplt      	r4, r3
  1c:	0803      	bt      	0x22	// 22 <ieee80211_tx_unspecified+0x22>
  1e:	3000      	movi      	r0, 0
  20:	1496      	pop      	r4-r9, r15
  22:	e4640019 	addi      	r3, r4, 26
  26:	d0670880 	ldr.w      	r0, (r7, r3 << 2)
  2a:	e900000f 	bez      	r0, 0x48	// 48 <ieee80211_tx_unspecified+0x48>
  2e:	8065      	ld.b      	r3, (r0, 0x5)
  30:	e4632081 	andi      	r3, r3, 129
  34:	3b41      	cmpnei      	r3, 1
  36:	0809      	bt      	0x48	// 48 <ieee80211_tx_unspecified+0x48>
  38:	e909000b 	bez      	r9, 0x4e	// 4e <ieee80211_tx_unspecified+0x4e>
  3c:	e46001c7 	addi      	r3, r0, 456
  40:	6ca3      	mov      	r2, r8
  42:	6c57      	mov      	r1, r5
  44:	e0000000 	bsr      	0x0	// 0 <ieee80211_tx_unspecified>
  48:	2400      	addi      	r4, 1
  4a:	7512      	sextb      	r4, r4
  4c:	07e5      	br      	0x16	// 16 <ieee80211_tx_unspecified+0x16>
  4e:	e46001bb 	addi      	r3, r0, 444
  52:	07f7      	br      	0x40	// 40 <ieee80211_tx_unspecified+0x40>
  54:	d8272078 	ld.w      	r1, (r7, 0x1e0)
  58:	5856      	addi      	r2, r0, 6
  5a:	e921000a 	bnez      	r1, 0x6e	// 6e <ieee80211_tx_unspecified+0x6e>
  5e:	3600      	movi      	r6, 0
  60:	d8670048 	ld.b      	r3, (r7, 0x48)
  64:	64d9      	cmplt      	r6, r3
  66:	081d      	bt      	0xa0	// a0 <ieee80211_tx_unspecified+0xa0>
  68:	3000      	movi      	r0, 0
  6a:	2800      	subi      	r0, 1
  6c:	07da      	br      	0x20	// 20 <ieee80211_tx_unspecified+0x20>
  6e:	d9812049 	ld.w      	r12, (r1, 0x124)
  72:	6c43      	mov      	r1, r0
  74:	6c1f      	mov      	r0, r7
  76:	7bf1      	jsr      	r12
  78:	e900fff3 	bez      	r0, 0x5e	// 5e <ieee80211_tx_unspecified+0x5e>
  7c:	9002      	ld.w      	r0, (r0, 0x8)
  7e:	8065      	ld.b      	r3, (r0, 0x5)
  80:	e4632081 	andi      	r3, r3, 129
  84:	3b41      	cmpnei      	r3, 1
  86:	0bec      	bt      	0x5e	// 5e <ieee80211_tx_unspecified+0x5e>
  88:	e9090009 	bez      	r9, 0x9a	// 9a <ieee80211_tx_unspecified+0x9a>
  8c:	e46001c7 	addi      	r3, r0, 456
  90:	6ca3      	mov      	r2, r8
  92:	6c57      	mov      	r1, r5
  94:	e0000000 	bsr      	0x0	// 0 <ieee80211_tx_unspecified>
  98:	07c4      	br      	0x20	// 20 <ieee80211_tx_unspecified+0x20>
  9a:	e46001bb 	addi      	r3, r0, 444
  9e:	07f9      	br      	0x90	// 90 <ieee80211_tx_unspecified+0x90>
  a0:	e4660019 	addi      	r3, r6, 26
  a4:	d0670884 	ldr.w      	r4, (r7, r3 << 2)
  a8:	e9040028 	bez      	r4, 0xf8	// f8 <ieee80211_tx_unspecified+0xf8>
  ac:	8465      	ld.b      	r3, (r4, 0x5)
  ae:	e4632081 	andi      	r3, r3, 129
  b2:	3b41      	cmpnei      	r3, 1
  b4:	0822      	bt      	0xf8	// f8 <ieee80211_tx_unspecified+0xf8>
  b6:	8c60      	ld.h      	r3, (r4, 0x0)
  b8:	e4632002 	andi      	r3, r3, 2
  bc:	e9030010 	bez      	r3, 0xdc	// dc <ieee80211_tx_unspecified+0xdc>
  c0:	6c57      	mov      	r1, r5
  c2:	6c13      	mov      	r0, r4
  c4:	e0000000 	bsr      	0x0	// 0 <ieee80211_sta_get>
  c8:	e900000a 	bez      	r0, 0xdc	// dc <ieee80211_tx_unspecified+0xdc>
  cc:	e9090019 	bez      	r9, 0xfe	// fe <ieee80211_tx_unspecified+0xfe>
  d0:	e46401c7 	addi      	r3, r4, 456
  d4:	6ca3      	mov      	r2, r8
  d6:	6c57      	mov      	r1, r5
  d8:	6c13      	mov      	r0, r4
  da:	07dd      	br      	0x94	// 94 <ieee80211_tx_unspecified+0x94>
  dc:	8c60      	ld.h      	r3, (r4, 0x0)
  de:	e4632001 	andi      	r3, r3, 1
  e2:	e903000b 	bez      	r3, 0xf8	// f8 <ieee80211_tx_unspecified+0xf8>
  e6:	d8242063 	ld.w      	r1, (r4, 0x18c)
  ea:	3206      	movi      	r2, 6
  ec:	211b      	addi      	r1, 28
  ee:	6c17      	mov      	r0, r5
  f0:	e0000000 	bsr      	0x0	// 0 <memcmp>
  f4:	e900ffec 	bez      	r0, 0xcc	// cc <ieee80211_tx_unspecified+0xcc>
  f8:	2600      	addi      	r6, 1
  fa:	759a      	sextb      	r6, r6
  fc:	07b2      	br      	0x60	// 60 <ieee80211_tx_unspecified+0x60>
  fe:	e46401bb 	addi      	r3, r4, 444
 102:	07e9      	br      	0xd4	// d4 <umac4+0xd4>
 104:	00000000 	.long	0x00000000

Disassembly of section .text.ieee80211_lookup_ra_sta:

00000000 <ieee80211_lookup_ra_sta>:
   0:	14d0      	push      	r15
   2:	d9802022 	ld.w      	r12, (r0, 0x88)
   6:	e90c0004 	bez      	r12, 0xe	// e <ieee80211_lookup_ra_sta+0xe>
   a:	7bf1      	jsr      	r12
   c:	1490      	pop      	r15
   e:	3000      	movi      	r0, 0
  10:	2800      	subi      	r0, 1
  12:	07fd      	br      	0xc	// c <ieee80211_lookup_ra_sta+0xc>

Disassembly of section .text.ieee80211_tx_skb:

00000000 <ieee80211_tx_skb>:
   0:	14d4      	push      	r4-r7, r15
   2:	d860202b 	ld.w      	r3, (r0, 0xac)
   6:	6d0b      	mov      	r4, r2
   8:	8360      	ld.b      	r3, (r3, 0x0)
   a:	a26c      	st.b      	r3, (r2, 0xc)
   c:	8064      	ld.b      	r3, (r0, 0x4)
   e:	a26d      	st.b      	r3, (r2, 0xd)
  10:	9267      	ld.w      	r3, (r2, 0x1c)
  12:	6dc7      	mov      	r7, r1
  14:	8b40      	ld.h      	r2, (r3, 0x0)
  16:	e422208c 	andi      	r1, r2, 140
  1a:	eb410088 	cmpnei      	r1, 136
  1e:	6d43      	mov      	r5, r0
  20:	0817      	bt      	0x4e	// 4e <ieee80211_tx_skb+0x4e>
  22:	e4422300 	andi      	r2, r2, 768
  26:	eb420300 	cmpnei      	r2, 768
  2a:	082d      	bt      	0x84	// 84 <ieee80211_tx_skb+0x84>
  2c:	e443001d 	addi      	r2, r3, 30
  30:	8364      	ld.b      	r3, (r3, 0x4)
  32:	e4632001 	andi      	r3, r3, 1
  36:	3b40      	cmpnei      	r3, 0
  38:	d824002a 	ld.b      	r1, (r4, 0x2a)
  3c:	c4000503 	mvc      	r3
  40:	4365      	lsli      	r3, r3, 5
  42:	e4212007 	andi      	r1, r1, 7
  46:	6cc4      	or      	r3, r1
  48:	a260      	st.b      	r3, (r2, 0x0)
  4a:	3300      	movi      	r3, 0
  4c:	a261      	st.b      	r3, (r2, 0x1)
  4e:	957e      	ld.w      	r3, (r5, 0x78)
  50:	e923001d 	bnez      	r3, 0x8a	// 8a <ieee80211_tx_skb+0x8a>
  54:	94c7      	ld.w      	r6, (r4, 0x1c)
  56:	8e00      	ld.h      	r0, (r6, 0x0)
  58:	e460200c 	andi      	r3, r0, 12
  5c:	3b44      	cmpnei      	r3, 4
  5e:	081d      	bt      	0x98	// 98 <ieee80211_tx_skb+0x98>
  60:	e464000b 	addi      	r3, r4, 12
  64:	9447      	ld.w      	r2, (r4, 0x1c)
  66:	3120      	movi      	r1, 32
  68:	6c17      	mov      	r0, r5
  6a:	e0000000 	bsr      	0x0	// 0 <ieee80211_event_notify>
  6e:	e9000048 	bez      	r0, 0xfe	// fe <ieee80211_tx_skb+0xfe>
  72:	6c13      	mov      	r0, r4
  74:	e0000000 	bsr      	0x0	// 0 <kfree_skb>
  78:	32a0      	movi      	r2, 160
  7a:	1134      	lrw      	r1, 0x0	// 148 <ieee80211_tx_skb+0x148>
  7c:	1114      	lrw      	r0, 0x0	// 14c <ieee80211_tx_skb+0x14c>
  7e:	e0000000 	bsr      	0x0	// 0 <hgprintf>
  82:	040a      	br      	0x96	// 96 <ieee80211_tx_skb+0x96>
  84:	e4430017 	addi      	r2, r3, 24
  88:	07d4      	br      	0x30	// 30 <ieee80211_tx_skb+0x30>
  8a:	6c93      	mov      	r2, r4
  8c:	6c5f      	mov      	r1, r7
  8e:	6c17      	mov      	r0, r5
  90:	7bcd      	jsr      	r3
  92:	e900ffe1 	bez      	r0, 0x54	// 54 <ieee80211_tx_skb+0x54>
  96:	1494      	pop      	r4-r7, r15
  98:	e0000000 	bsr      	0x0	// 0 <ieee80211_hdrlen>
  9c:	3817      	cmphsi      	r0, 24
  9e:	0fe1      	bf      	0x60	// 60 <ieee80211_tx_skb+0x60>
  a0:	8e60      	ld.h      	r3, (r6, 0x0)
  a2:	e44320fc 	andi      	r2, r3, 252
  a6:	eb4200c8 	cmpnei      	r2, 200
  aa:	0fdb      	bf      	0x60	// 60 <ieee80211_tx_skb+0x60>
  ac:	e443208c 	andi      	r2, r3, 140
  b0:	eb420088 	cmpnei      	r2, 136
  b4:	0806      	bt      	0xc0	// c0 <ieee80211_tx_skb+0xc0>
  b6:	8644      	ld.b      	r2, (r6, 0x4)
  b8:	e4422001 	andi      	r2, r2, 1
  bc:	e9020007 	bez      	r2, 0xca	// ca <ieee80211_tx_skb+0xca>
  c0:	8d68      	ld.h      	r3, (r5, 0x10)
  c2:	ae6b      	st.h      	r3, (r6, 0x16)
  c4:	230f      	addi      	r3, 16
  c6:	ad68      	st.h      	r3, (r5, 0x10)
  c8:	07cc      	br      	0x60	// 60 <ieee80211_tx_skb+0x60>
  ca:	e907ffcb 	bez      	r7, 0x60	// 60 <ieee80211_tx_skb+0x60>
  ce:	e4632300 	andi      	r3, r3, 768
  d2:	eb430300 	cmpnei      	r3, 768
  d6:	0811      	bt      	0xf8	// f8 <ieee80211_tx_skb+0xf8>
  d8:	e466001d 	addi      	r3, r6, 30
  dc:	8360      	ld.b      	r3, (r3, 0x0)
  de:	e463200f 	andi      	r3, r3, 15
  e2:	60cc      	addu      	r3, r3
  e4:	60dc      	addu      	r3, r7
  e6:	3000      	movi      	r0, 0
  e8:	8b33      	ld.h      	r1, (r3, 0x26)
  ea:	e441000f 	addi      	r2, r1, 16
  ee:	280f      	subi      	r0, 16
  f0:	6880      	and      	r2, r0
  f2:	ab53      	st.h      	r2, (r3, 0x26)
  f4:	ae2b      	st.h      	r1, (r6, 0x16)
  f6:	07b5      	br      	0x60	// 60 <ieee80211_tx_skb+0x60>
  f8:	e4660017 	addi      	r3, r6, 24
  fc:	07f0      	br      	0xdc	// dc <ieee80211_tx_skb+0xdc>
  fe:	d8052029 	ld.w      	r0, (r5, 0xa4)
 102:	6c53      	mov      	r1, r4
 104:	9065      	ld.w      	r3, (r0, 0x14)
 106:	7bcd      	jsr      	r3
 108:	6d83      	mov      	r6, r0
 10a:	e900000b 	bez      	r0, 0x120	// 120 <ieee80211_tx_skb+0x120>
 10e:	6c13      	mov      	r0, r4
 110:	e0000000 	bsr      	0x0	// 0 <kfree_skb>
 114:	d865207b 	ld.w      	r3, (r5, 0x1ec)
 118:	2300      	addi      	r3, 1
 11a:	dc65207b 	st.w      	r3, (r5, 0x1ec)
 11e:	07bc      	br      	0x96	// 96 <os_jiffies+0x96>
 120:	e0000000 	bsr      	0x0	// 0 <os_jiffies>
 124:	b50a      	st.w      	r0, (r5, 0x28)
 126:	b52b      	st.w      	r1, (r5, 0x2c)
 128:	e907ffb7 	bez      	r7, 0x96	// 96 <ieee80211_tx_skb+0x96>
 12c:	8c14      	ld.h      	r0, (r4, 0x28)
 12e:	d8472026 	ld.w      	r2, (r7, 0x98)
 132:	d8672027 	ld.w      	r3, (r7, 0x9c)
 136:	6c5b      	mov      	r1, r6
 138:	6489      	cmplt      	r2, r2
 13a:	6081      	addc      	r2, r0
 13c:	60c5      	addc      	r3, r1
 13e:	dc472026 	st.w      	r2, (r7, 0x98)
 142:	dc672027 	st.w      	r3, (r7, 0x9c)
 146:	07a8      	br      	0x96	// 96 <ieee80211_tx_skb+0x96>
	...

Disassembly of section .text.ieee80211_handle_tx_status:

00000000 <ieee80211_handle_tx_status>:
   0:	14d3      	push      	r4-r6, r15
   2:	6d07      	mov      	r4, r1
   4:	9127      	ld.w      	r1, (r1, 0x1c)
   6:	6d43      	mov      	r5, r0
   8:	2103      	addi      	r1, 4
   a:	e0000000 	bsr      	0x0	// 0 <ieee80211_sta_get>
   e:	6d83      	mov      	r6, r0
  10:	e9050009 	bez      	r5, 0x22	// 22 <ieee80211_handle_tx_status+0x22>
  14:	9573      	ld.w      	r3, (r5, 0x4c)
  16:	e9030006 	bez      	r3, 0x22	// 22 <ieee80211_handle_tx_status+0x22>
  1a:	6c83      	mov      	r2, r0
  1c:	6c53      	mov      	r1, r4
  1e:	6c17      	mov      	r0, r5
  20:	7bcd      	jsr      	r3
  22:	d864002a 	ld.b      	r3, (r4, 0x2a)
  26:	e4632010 	andi      	r3, r3, 16
  2a:	e9230023 	bnez      	r3, 0x70	// 70 <ieee80211_handle_tx_status+0x70>
  2e:	d865207d 	ld.w      	r3, (r5, 0x1f4)
  32:	2300      	addi      	r3, 1
  34:	dc65207d 	st.w      	r3, (r5, 0x1f4)
  38:	d864002a 	ld.b      	r3, (r4, 0x2a)
  3c:	3125      	movi      	r1, 37
  3e:	c4835483 	zext      	r3, r3, 4, 4
  42:	9447      	ld.w      	r2, (r4, 0x1c)
  44:	6c17      	mov      	r0, r5
  46:	e0000000 	bsr      	0x0	// 0 <ieee80211_iface_event>
  4a:	9424      	ld.w      	r1, (r4, 0x10)
  4c:	e901000e 	bez      	r1, 0x68	// 68 <ieee80211_handle_tx_status+0x68>
  50:	d864002a 	ld.b      	r3, (r4, 0x2a)
  54:	e4632010 	andi      	r3, r3, 16
  58:	3b40      	cmpnei      	r3, 0
  5a:	6403      	mvcv      	r0
  5c:	c6005023 	bmaski      	r3, 17
  60:	230c      	addi      	r3, 13
  62:	600c      	addu      	r0, r3
  64:	e0000000 	bsr      	0x0	// 0 <sys_event_new>
  68:	6c13      	mov      	r0, r4
  6a:	e0000000 	bsr      	0x0	// 0 <kfree_skb>
  6e:	1493      	pop      	r4-r6, r15
  70:	e906ffe4 	bez      	r6, 0x38	// 38 <ieee80211_handle_tx_status+0x38>
  74:	e0000000 	bsr      	0x0	// 0 <os_jiffies>
  78:	dc062024 	st.w      	r0, (r6, 0x90)
  7c:	dc262025 	st.w      	r1, (r6, 0x94)
  80:	07dc      	br      	0x38	// 38 <ieee80211_handle_tx_status+0x38>

Disassembly of section .text.ieee80211_tx_data:

00000000 <ieee80211_tx_data>:
   0:	14d6      	push      	r4-r9, r15
   2:	1429      	subi      	r14, r14, 36
   4:	916e      	ld.w      	r3, (r1, 0x38)
   6:	b860      	st.w      	r3, (r14, 0x0)
   8:	8974      	ld.h      	r3, (r1, 0x28)
   a:	3b0d      	cmphsi      	r3, 14
   c:	6d43      	mov      	r5, r0
   e:	6d07      	mov      	r4, r1
  10:	080a      	bt      	0x24	// 24 <ieee80211_tx_data+0x24>
  12:	d8652079 	ld.w      	r3, (r5, 0x1e4)
  16:	2300      	addi      	r3, 1
  18:	dc652079 	st.w      	r3, (r5, 0x1e4)
  1c:	6c13      	mov      	r0, r4
  1e:	e0000000 	bsr      	0x0	// 0 <kfree_skb>
  22:	041b      	br      	0x58	// 58 <ieee80211_tx_data+0x58>
  24:	320c      	movi      	r2, 12
  26:	3100      	movi      	r1, 0
  28:	5c08      	addu      	r0, r4, r2
  2a:	e0000000 	bsr      	0x0	// 0 <memset>
  2e:	6c13      	mov      	r0, r4
  30:	e0000000 	bsr      	0x0	// 0 <ieee80211_iptos_to_tid>
  34:	d864002a 	ld.b      	r3, (r4, 0x2a)
  38:	c4605c60 	ins      	r3, r0, 3, 0
  3c:	dc64002a 	st.b      	r3, (r4, 0x2a)
  40:	3201      	movi      	r2, 1
  42:	6c53      	mov      	r1, r4
  44:	6c17      	mov      	r0, r5
  46:	e0000000 	bsr      	0x0	// 0 <ieee80211_pkthook_handle_data>
  4a:	e9000009 	bez      	r0, 0x5c	// 5c <ieee80211_tx_data+0x5c>
  4e:	d8652087 	ld.w      	r3, (r5, 0x21c)
  52:	2300      	addi      	r3, 1
  54:	dc652087 	st.w      	r3, (r5, 0x21c)
  58:	1409      	addi      	r14, r14, 36
  5a:	1496      	pop      	r4-r9, r15
  5c:	d8652028 	ld.w      	r3, (r5, 0xa0)
  60:	e923002a 	bnez      	r3, 0xb4	// b4 <ieee80211_tx_data+0xb4>
  64:	9427      	ld.w      	r1, (r4, 0x1c)
  66:	8160      	ld.b      	r3, (r1, 0x0)
  68:	e4632001 	andi      	r3, r3, 1
  6c:	e903000d 	bez      	r3, 0x86	// 86 <ieee80211_tx_data+0x86>
  70:	d865202a 	ld.w      	r3, (r5, 0xa8)
  74:	2105      	addi      	r1, 6
  76:	d8632078 	ld.w      	r3, (r3, 0x1e0)
  7a:	e9030006 	bez      	r3, 0x86	// 86 <ieee80211_tx_data+0x86>
  7e:	d863204b 	ld.w      	r3, (r3, 0x12c)
  82:	6c17      	mov      	r0, r5
  84:	7bcd      	jsr      	r3
  86:	d845205b 	ld.w      	r2, (r5, 0x16c)
  8a:	e902001b 	bez      	r2, 0xc0	// c0 <ieee80211_tx_data+0xc0>
  8e:	8565      	ld.b      	r3, (r5, 0x5)
  90:	e4632008 	andi      	r3, r3, 8
  94:	e9230016 	bnez      	r3, 0xc0	// c0 <ieee80211_tx_data+0xc0>
  98:	6c53      	mov      	r1, r4
  9a:	d8622026 	ld.w      	r3, (r2, 0x98)
  9e:	6c17      	mov      	r0, r5
  a0:	7bcd      	jsr      	r3
  a2:	6d03      	mov      	r4, r0
  a4:	e920000e 	bnez      	r0, 0xc0	// c0 <ieee80211_tx_data+0xc0>
  a8:	d8652079 	ld.w      	r3, (r5, 0x1e4)
  ac:	2300      	addi      	r3, 1
  ae:	dc652079 	st.w      	r3, (r5, 0x1e4)
  b2:	07d3      	br      	0x58	// 58 <ieee80211_tx_data+0x58>
  b4:	6c53      	mov      	r1, r4
  b6:	6c17      	mov      	r0, r5
  b8:	7bcd      	jsr      	r3
  ba:	e920ffcf 	bnez      	r0, 0x58	// 58 <ieee80211_tx_data+0x58>
  be:	07d3      	br      	0x64	// 64 <ieee80211_tx_data+0x64>
  c0:	9860      	ld.w      	r3, (r14, 0x0)
  c2:	e923000a 	bnez      	r3, 0xd6	// d6 <ieee80211_tx_data+0xd6>
  c6:	9427      	ld.w      	r1, (r4, 0x1c)
  c8:	6cfb      	mov      	r3, r14
  ca:	5956      	addi      	r2, r1, 6
  cc:	6c17      	mov      	r0, r5
  ce:	e0000000 	bsr      	0x0	// 0 <ieee80211_tx_data>
  d2:	e920ffa0 	bnez      	r0, 0x12	// 12 <ieee80211_tx_data+0x12>
  d6:	9860      	ld.w      	r3, (r14, 0x0)
  d8:	9447      	ld.w      	r2, (r4, 0x1c)
  da:	e9030013 	bez      	r3, 0x100	// 100 <ieee80211_tx_data+0x100>
  de:	d8230025 	ld.b      	r1, (r3, 0x25)
  e2:	e4212008 	andi      	r1, r1, 8
  e6:	e921000d 	bnez      	r1, 0x100	// 100 <ieee80211_tx_data+0x100>
  ea:	826c      	ld.b      	r3, (r2, 0xc)
  ec:	820d      	ld.b      	r0, (r2, 0xd)
  ee:	4368      	lsli      	r3, r3, 8
  f0:	6cc0      	or      	r3, r0
  f2:	74cf      	sexth      	r3, r3
  f4:	ea007771 	movi      	r0, 30577
  f8:	6c02      	nor      	r0, r0
  fa:	640e      	cmpne      	r3, r0
  fc:	0c02      	bf      	0x100	// 100 <ieee80211_tx_data+0x100>
  fe:	b820      	st.w      	r1, (r14, 0x0)
 100:	d90e2000 	ld.w      	r8, (r14, 0x0)
 104:	e928000c 	bnez      	r8, 0x11c	// 11c <ieee80211_tx_data+0x11c>
 108:	8260      	ld.b      	r3, (r2, 0x0)
 10a:	e4632001 	andi      	r3, r3, 1
 10e:	e9230007 	bnez      	r3, 0x11c	// 11c <ieee80211_tx_data+0x11c>
 112:	8565      	ld.b      	r3, (r5, 0x5)
 114:	e4632008 	andi      	r3, r3, 8
 118:	e903ff7d 	bez      	r3, 0x12	// 12 <ieee80211_tx_data+0x12>
 11c:	dd04200e 	st.w      	r8, (r4, 0x38)
 120:	3308      	movi      	r3, 8
 122:	82cc      	ld.b      	r6, (r2, 0xc)
 124:	d922000d 	ld.b      	r9, (r2, 0xd)
 128:	dc6e1002 	st.h      	r3, (r14, 0x4)
 12c:	d9852012 	ld.w      	r12, (r5, 0x48)
 130:	6ce3      	mov      	r3, r8
 132:	1a01      	addi      	r2, r14, 4
 134:	6c53      	mov      	r1, r4
 136:	6c17      	mov      	r0, r5
 138:	7bf1      	jsr      	r12
 13a:	74c1      	zexth      	r3, r0
 13c:	6dc3      	mov      	r7, r0
 13e:	e903ff6a 	bez      	r3, 0x12	// 12 <ieee80211_tx_data+0x12>
 142:	eb43ffff 	cmpnei      	r3, 65535
 146:	0f89      	bf      	0x58	// 58 <ieee80211_tx_data+0x58>
 148:	d865203f 	ld.w      	r3, (r5, 0xfc)
 14c:	3b44      	cmpnei      	r3, 4
 14e:	0c15      	bf      	0x178	// 178 <ieee80211_tx_data+0x178>
 150:	d86e0008 	ld.b      	r3, (r14, 0x8)
 154:	e4632001 	andi      	r3, r3, 1
 158:	e923000a 	bnez      	r3, 0x16c	// 16c <ieee80211_tx_data+0x16c>
 15c:	e908000e 	bez      	r8, 0x178	// 178 <ieee80211_tx_data+0x178>
 160:	d8680025 	ld.b      	r3, (r8, 0x25)
 164:	e4632008 	andi      	r3, r3, 8
 168:	e9030008 	bez      	r3, 0x178	// 178 <ieee80211_tx_data+0x178>
 16c:	d86e1002 	ld.h      	r3, (r14, 0x4)
 170:	ec634000 	ori      	r3, r3, 16384
 174:	dc6e1002 	st.h      	r3, (r14, 0x4)
 178:	3300      	movi      	r3, 0
 17a:	3106      	movi      	r1, 6
 17c:	6c13      	mov      	r0, r4
 17e:	dc6e1003 	st.h      	r3, (r14, 0x6)
 182:	dc6e100d 	st.h      	r3, (r14, 0x1a)
 186:	e0000000 	bsr      	0x0	// 0 <skb_pull>
 18a:	8562      	ld.b      	r3, (r5, 0x2)
 18c:	e4632070 	andi      	r3, r3, 112
 190:	e923000f 	bnez      	r3, 0x1ae	// 1ae <ieee80211_tx_data+0x1ae>
 194:	4668      	lsli      	r3, r6, 8
 196:	6ce4      	or      	r3, r9
 198:	eb4380f3 	cmpnei      	r3, 33011
 19c:	0c04      	bf      	0x1a4	// 1a4 <ieee80211_tx_data+0x1a4>
 19e:	eb438137 	cmpnei      	r3, 33079
 1a2:	082e      	bt      	0x1fe	// 1fe <ieee80211_tx_data+0x1fe>
 1a4:	3206      	movi      	r2, 6
 1a6:	103c      	lrw      	r1, 0x0	// 214 <ieee80211_tx_data+0x214>
 1a8:	9407      	ld.w      	r0, (r4, 0x1c)
 1aa:	e0000000 	bsr      	0x0	// 0 <memcpy>
 1ae:	d864002a 	ld.b      	r3, (r4, 0x2a)
 1b2:	e463200f 	andi      	r3, r3, 15
 1b6:	e9230007 	bnez      	r3, 0x1c4	// 1c4 <ieee80211_tx_data+0x1c4>
 1ba:	8565      	ld.b      	r3, (r5, 0x5)
 1bc:	e4632020 	andi      	r3, r3, 32
 1c0:	e903000f 	bez      	r3, 0x1de	// 1de <ieee80211_tx_data+0x1de>
 1c4:	d86e1002 	ld.h      	r3, (r14, 0x4)
 1c8:	ec630080 	ori      	r3, r3, 128
 1cc:	3102      	movi      	r1, 2
 1ce:	6c13      	mov      	r0, r4
 1d0:	dc6e1002 	st.h      	r3, (r14, 0x4)
 1d4:	e0000000 	bsr      	0x0	// 0 <skb_push>
 1d8:	3300      	movi      	r3, 0
 1da:	a061      	st.b      	r3, (r0, 0x1)
 1dc:	a060      	st.b      	r3, (r0, 0x0)
 1de:	c40755e7 	zext      	r7, r7, 15, 0
 1e2:	6c5f      	mov      	r1, r7
 1e4:	6c13      	mov      	r0, r4
 1e6:	e0000000 	bsr      	0x0	// 0 <skb_push>
 1ea:	6c9f      	mov      	r2, r7
 1ec:	1901      	addi      	r1, r14, 4
 1ee:	e0000000 	bsr      	0x0	// 0 <memcpy>
 1f2:	6c93      	mov      	r2, r4
 1f4:	9820      	ld.w      	r1, (r14, 0x0)
 1f6:	6c17      	mov      	r0, r5
 1f8:	e0000000 	bsr      	0x0	// 0 <ieee80211_tx_data>
 1fc:	072e      	br      	0x58	// 58 <ieee80211_tx_data+0x58>
 1fe:	eb0305ff 	cmphsi      	r3, 1536
 202:	0c04      	bf      	0x20a	// 20a <ieee80211_tx_data+0x20a>
 204:	3206      	movi      	r2, 6
 206:	1025      	lrw      	r1, 0x0	// 218 <ieee80211_tx_data+0x218>
 208:	07d0      	br      	0x1a8	// 1a8 <ieee80211_tx_data+0x1a8>
 20a:	3108      	movi      	r1, 8
 20c:	6c13      	mov      	r0, r4
 20e:	e0000000 	bsr      	0x0	// 0 <skb_pull>
 212:	07ce      	br      	0x1ae	// 1ae <bridge_tunnel_header+0x1ae>
	...

Disassembly of section .text.ieee80211_ether_send:

00000000 <ieee80211_ether_send>:
   0:	14d7      	push      	r4-r10, r15
   2:	1426      	subi      	r14, r14, 24
   4:	6d43      	mov      	r5, r0
   6:	6d07      	mov      	r4, r1
   8:	6e4b      	mov      	r9, r2
   a:	6dcf      	mov      	r7, r3
   c:	98ce      	ld.w      	r6, (r14, 0x38)
   e:	e9000063 	bez      	r0, 0xd4	// d4 <ieee80211_ether_send+0xd4>
  12:	8065      	ld.b      	r3, (r0, 0x5)
  14:	e4632081 	andi      	r3, r3, 129
  18:	3b41      	cmpnei      	r3, 1
  1a:	085d      	bt      	0xd4	// d4 <ieee80211_ether_send+0xd4>
  1c:	ea880030 	lrw      	r8, 0x0	// dc <ieee80211_ether_send+0xdc>
  20:	d868003a 	ld.b      	r3, (r8, 0x3a)
  24:	d8080038 	ld.b      	r0, (r8, 0x38)
  28:	600c      	addu      	r0, r3
  2a:	d848003b 	ld.b      	r2, (r8, 0x3b)
  2e:	d8680039 	ld.b      	r3, (r8, 0x39)
  32:	60c8      	addu      	r3, r2
  34:	600c      	addu      	r0, r3
  36:	200d      	addi      	r0, 14
  38:	6018      	addu      	r0, r6
  3a:	e0000000 	bsr      	0x0	// 0 <alloc_skb>
  3e:	6e83      	mov      	r10, r0
  40:	e9000034 	bez      	r0, 0xa8	// a8 <ieee80211_ether_send+0xa8>
  44:	d868003a 	ld.b      	r3, (r8, 0x3a)
  48:	d8280038 	ld.b      	r1, (r8, 0x38)
  4c:	604c      	addu      	r1, r3
  4e:	e0000000 	bsr      	0x0	// 0 <skb_reserve>
  52:	c5094823 	lsli      	r3, r9, 8
  56:	d90a2007 	ld.w      	r8, (r10, 0x1c)
  5a:	c50955e9 	zext      	r9, r9, 15, 8
  5e:	6e4c      	or      	r9, r3
  60:	3206      	movi      	r2, 6
  62:	6c53      	mov      	r1, r4
  64:	dd281006 	st.h      	r9, (r8, 0xc)
  68:	6c23      	mov      	r0, r8
  6a:	e0000000 	bsr      	0x0	// 0 <memcpy>
  6e:	3206      	movi      	r2, 6
  70:	5d28      	addu      	r1, r5, r2
  72:	c4480020 	addu      	r0, r8, r2
  76:	e0000000 	bsr      	0x0	// 0 <memcpy>
  7a:	6c9b      	mov      	r2, r6
  7c:	6c5f      	mov      	r1, r7
  7e:	e408000d 	addi      	r0, r8, 14
  82:	e0000000 	bsr      	0x0	// 0 <memcpy>
  86:	e426000d 	addi      	r1, r6, 14
  8a:	6c2b      	mov      	r0, r10
  8c:	e0000000 	bsr      	0x0	// 0 <skb_put>
  90:	6c6b      	mov      	r1, r10
  92:	e40501bb 	addi      	r0, r5, 444
  96:	e0000000 	bsr      	0x0	// 0 <skb_list_queue>
  9a:	d805202a 	ld.w      	r0, (r5, 0xa8)
  9e:	e0000000 	bsr      	0x0	// 0 <os_sema_up>
  a2:	3000      	movi      	r0, 0
  a4:	1406      	addi      	r14, r14, 24
  a6:	1497      	pop      	r4-r10, r15
  a8:	8465      	ld.b      	r3, (r4, 0x5)
  aa:	b865      	st.w      	r3, (r14, 0x14)
  ac:	8464      	ld.b      	r3, (r4, 0x4)
  ae:	b864      	st.w      	r3, (r14, 0x10)
  b0:	8463      	ld.b      	r3, (r4, 0x3)
  b2:	b863      	st.w      	r3, (r14, 0xc)
  b4:	8462      	ld.b      	r3, (r4, 0x2)
  b6:	b862      	st.w      	r3, (r14, 0x8)
  b8:	8461      	ld.b      	r3, (r4, 0x1)
  ba:	b861      	st.w      	r3, (r14, 0x4)
  bc:	8460      	ld.b      	r3, (r4, 0x0)
  be:	b860      	st.w      	r3, (r14, 0x0)
  c0:	ea020155 	movi      	r2, 341
  c4:	1007      	lrw      	r0, 0x0	// e0 <ieee80211_ether_send+0xe0>
  c6:	6ce7      	mov      	r3, r9
  c8:	1027      	lrw      	r1, 0x0	// e4 <ieee80211_ether_send+0xe4>
  ca:	e0000000 	bsr      	0x0	// 0 <hgprintf>
  ce:	3000      	movi      	r0, 0
  d0:	280b      	subi      	r0, 12
  d2:	07e9      	br      	0xa4	// a4 <ieee80211_ether_send+0xa4>
  d4:	3000      	movi      	r0, 0
  d6:	2804      	subi      	r0, 5
  d8:	07e6      	br      	0xa4	// a4 <ieee80211_ether_send+0xa4>
	...

Disassembly of section .text.ieee80211_scatter_tx:

00000000 <ieee80211_scatter_tx>:
   0:	14d7      	push      	r4-r10, r15
   2:	6dc7      	mov      	r7, r1
   4:	6e0b      	mov      	r8, r2
   6:	e0000000 	bsr      	0x0	// 0 <ieee80211_iface_get>
   a:	6d03      	mov      	r4, r0
   c:	e9000071 	bez      	r0, 0xee	// ee <ieee80211_scatter_tx+0xee>
  10:	8065      	ld.b      	r3, (r0, 0x5)
  12:	e4632081 	andi      	r3, r3, 129
  16:	3b41      	cmpnei      	r3, 1
  18:	0c6f      	bf      	0xf6	// f6 <ieee80211_scatter_tx+0xf6>
  1a:	d8642079 	ld.w      	r3, (r4, 0x1e4)
  1e:	2300      	addi      	r3, 1
  20:	dc642079 	st.w      	r3, (r4, 0x1e4)
  24:	3400      	movi      	r4, 0
  26:	2c04      	subi      	r4, 5
  28:	0446      	br      	0xb4	// b4 <ieee80211_scatter_tx+0xb4>
  2a:	4343      	lsli      	r2, r3, 3
  2c:	609c      	addu      	r2, r7
  2e:	2300      	addi      	r3, 1
  30:	9241      	ld.w      	r2, (r2, 0x4)
  32:	6008      	addu      	r0, r2
  34:	74cc      	zextb      	r3, r3
  36:	660c      	cmphs      	r3, r8
  38:	0ff9      	bf      	0x2a	// 2a <ieee80211_scatter_tx+0x2a>
  3a:	11d2      	lrw      	r6, 0x0	// 100 <ieee80211_scatter_tx+0x100>
  3c:	d846003a 	ld.b      	r2, (r6, 0x3a)
  40:	d8660038 	ld.b      	r3, (r6, 0x38)
  44:	60c8      	addu      	r3, r2
  46:	d826003b 	ld.b      	r1, (r6, 0x3b)
  4a:	d8460039 	ld.b      	r2, (r6, 0x39)
  4e:	6084      	addu      	r2, r1
  50:	60c8      	addu      	r3, r2
  52:	600c      	addu      	r0, r3
  54:	e0000000 	bsr      	0x0	// 0 <alloc_tx_skb>
  58:	6d43      	mov      	r5, r0
  5a:	e920000c 	bnez      	r0, 0x72	// 72 <ieee80211_scatter_tx+0x72>
  5e:	e9040007 	bez      	r4, 0x6c	// 6c <ieee80211_scatter_tx+0x6c>
  62:	d864207a 	ld.w      	r3, (r4, 0x1e8)
  66:	2300      	addi      	r3, 1
  68:	dc64207a 	st.w      	r3, (r4, 0x1e8)
  6c:	3400      	movi      	r4, 0
  6e:	2c0b      	subi      	r4, 12
  70:	0422      	br      	0xb4	// b4 <ieee80211_scatter_tx+0xb4>
  72:	d860002b 	ld.b      	r3, (r0, 0x2b)
  76:	3201      	movi      	r2, 1
  78:	c4625c03 	ins      	r3, r2, 3, 3
  7c:	dc60002b 	st.b      	r3, (r0, 0x2b)
  80:	d8260038 	ld.b      	r1, (r6, 0x38)
  84:	d866003a 	ld.b      	r3, (r6, 0x3a)
  88:	604c      	addu      	r1, r3
  8a:	3600      	movi      	r6, 0
  8c:	e0000000 	bsr      	0x0	// 0 <skb_reserve>
  90:	6e9b      	mov      	r10, r6
  92:	6618      	cmphs      	r6, r8
  94:	0c12      	bf      	0xb8	// b8 <ieee80211_scatter_tx+0xb8>
  96:	6c6b      	mov      	r1, r10
  98:	6c17      	mov      	r0, r5
  9a:	e0000000 	bsr      	0x0	// 0 <skb_put>
  9e:	e904001e 	bez      	r4, 0xda	// da <ieee80211_scatter_tx+0xda>
  a2:	6c57      	mov      	r1, r5
  a4:	e40401bb 	addi      	r0, r4, 444
  a8:	e0000000 	bsr      	0x0	// 0 <skb_list_queue>
  ac:	1015      	lrw      	r0, 0x0	// 100 <os_sema_up+0x100>
  ae:	e0000000 	bsr      	0x0	// 0 <os_sema_up>
  b2:	3400      	movi      	r4, 0
  b4:	6c13      	mov      	r0, r4
  b6:	1497      	pop      	r4-r10, r15
  b8:	c4664829 	lsli      	r9, r6, 3
  bc:	625c      	addu      	r9, r7
  be:	9507      	ld.w      	r0, (r5, 0x1c)
  c0:	6028      	addu      	r0, r10
  c2:	d8492001 	ld.w      	r2, (r9, 0x4)
  c6:	d8292000 	ld.w      	r1, (r9, 0x0)
  ca:	e0000000 	bsr      	0x0	// 0 <hw_memcpy>
  ce:	2600      	addi      	r6, 1
  d0:	d8692001 	ld.w      	r3, (r9, 0x4)
  d4:	628c      	addu      	r10, r3
  d6:	7598      	zextb      	r6, r6
  d8:	07dd      	br      	0x92	// 92 <ieee80211_scatter_tx+0x92>
  da:	6c93      	mov      	r2, r4
  dc:	8d34      	ld.h      	r1, (r5, 0x28)
  de:	9507      	ld.w      	r0, (r5, 0x1c)
  e0:	e0000000 	bsr      	0x0	// 0 <ieee80211_scatter_tx>
  e4:	6d03      	mov      	r4, r0
  e6:	6c17      	mov      	r0, r5
  e8:	e0000000 	bsr      	0x0	// 0 <kfree_skb>
  ec:	07e4      	br      	0xb4	// b4 <ieee80211_scatter_tx+0xb4>
  ee:	e907ff9b 	bez      	r7, 0x24	// 24 <ieee80211_scatter_tx+0x24>
  f2:	6cc3      	mov      	r3, r0
  f4:	07a1      	br      	0x36	// 36 <ieee80211_scatter_tx+0x36>
  f6:	e907ff92 	bez      	r7, 0x1a	// 1a <ieee80211_scatter_tx+0x1a>
  fa:	3300      	movi      	r3, 0
  fc:	6c0f      	mov      	r0, r3
  fe:	079c      	br      	0x36	// 36 <ieee80211_scatter_tx+0x36>
 100:	00000000 	.long	0x00000000

Disassembly of section .text.ieee80211_tx:

00000000 <ieee80211_tx>:
   0:	14d2      	push      	r4-r5, r15
   2:	6d4b      	mov      	r5, r2
   4:	6d07      	mov      	r4, r1
   6:	e0000000 	bsr      	0x0	// 0 <ieee80211_iface_get>
   a:	6c83      	mov      	r2, r0
   c:	e9000009 	bez      	r0, 0x1e	// 1e <ieee80211_tx+0x1e>
  10:	e46001bb 	addi      	r3, r0, 444
  14:	6c97      	mov      	r2, r5
  16:	6c53      	mov      	r1, r4
  18:	e0000000 	bsr      	0x0	// 0 <ieee80211_tx>
  1c:	1492      	pop      	r4-r5, r15
  1e:	6c57      	mov      	r1, r5
  20:	6c13      	mov      	r0, r4
  22:	e0000000 	bsr      	0x0	// 0 <ieee80211_tx>
  26:	07fb      	br      	0x1c	// 1c <ieee80211_tx+0x1c>

Disassembly of section .text.ieee80211_tx_ether:

00000000 <ieee80211_tx_ether>:
   0:	14d1      	push      	r4, r15
   2:	1424      	subi      	r14, r14, 16
   4:	b861      	st.w      	r3, (r14, 0x4)
   6:	9866      	ld.w      	r3, (r14, 0x18)
   8:	b823      	st.w      	r1, (r14, 0xc)
   a:	b842      	st.w      	r2, (r14, 0x8)
   c:	6d0f      	mov      	r4, r3
   e:	e0000000 	bsr      	0x0	// 0 <ieee80211_iface_get>
  12:	e900000a 	bez      	r0, 0x26	// 26 <ieee80211_tx_ether+0x26>
  16:	b880      	st.w      	r4, (r14, 0x0)
  18:	9861      	ld.w      	r3, (r14, 0x4)
  1a:	9842      	ld.w      	r2, (r14, 0x8)
  1c:	9823      	ld.w      	r1, (r14, 0xc)
  1e:	e0000000 	bsr      	0x0	// 0 <ieee80211_tx_ether>
  22:	1404      	addi      	r14, r14, 16
  24:	1491      	pop      	r4, r15
  26:	3000      	movi      	r0, 0
  28:	2800      	subi      	r0, 1
  2a:	07fc      	br      	0x22	// 22 <ieee80211_tx_ether+0x22>

Disassembly of section .text.ieee80211_tx_custmgmt:

00000000 <ieee80211_tx_custmgmt>:
   0:	14d3      	push      	r4-r6, r15
   2:	1422      	subi      	r14, r14, 8
   4:	b821      	st.w      	r1, (r14, 0x4)
   6:	6d8b      	mov      	r6, r2
   8:	6d4f      	mov      	r5, r3
   a:	e0000000 	bsr      	0x0	// 0 <ieee80211_iface_get>
   e:	6d03      	mov      	r4, r0
  10:	e9000017 	bez      	r0, 0x3e	// 3e <ieee80211_tx_custmgmt+0x3e>
  14:	74d4      	zextb      	r3, r5
  16:	b860      	st.w      	r3, (r14, 0x0)
  18:	9821      	ld.w      	r1, (r14, 0x4)
  1a:	6cdb      	mov      	r3, r6
  1c:	3203      	movi      	r2, 3
  1e:	e0000000 	bsr      	0x0	// 0 <ieee80211_gen_vendor_spec_action>
  22:	6c43      	mov      	r1, r0
  24:	e9000010 	bez      	r0, 0x44	// 44 <ieee80211_tx_custmgmt+0x44>
  28:	e40401c7 	addi      	r0, r4, 456
  2c:	e0000000 	bsr      	0x0	// 0 <skb_list_queue>
  30:	d804202a 	ld.w      	r0, (r4, 0xa8)
  34:	e0000000 	bsr      	0x0	// 0 <os_sema_up>
  38:	3000      	movi      	r0, 0
  3a:	1402      	addi      	r14, r14, 8
  3c:	1493      	pop      	r4-r6, r15
  3e:	3000      	movi      	r0, 0
  40:	2812      	subi      	r0, 19
  42:	07fc      	br      	0x3a	// 3a <ieee80211_tx_custmgmt+0x3a>
  44:	3000      	movi      	r0, 0
  46:	280b      	subi      	r0, 12
  48:	07f9      	br      	0x3a	// 3a <ieee80211_tx_custmgmt+0x3a>

Disassembly of section .text.ieee80211_tx_mgmt:

00000000 <ieee80211_tx_mgmt>:
   0:	14d2      	push      	r4-r5, r15
   2:	6d07      	mov      	r4, r1
   4:	6d4b      	mov      	r5, r2
   6:	e0000000 	bsr      	0x0	// 0 <ieee80211_iface_get>
   a:	e9000009 	bez      	r0, 0x1c	// 1c <ieee80211_tx_mgmt+0x1c>
   e:	e46001c7 	addi      	r3, r0, 456
  12:	6c97      	mov      	r2, r5
  14:	6c53      	mov      	r1, r4
  16:	e0000000 	bsr      	0x0	// 0 <ieee80211_tx_mgmt>
  1a:	1492      	pop      	r4-r5, r15
  1c:	3201      	movi      	r2, 1
  1e:	6c57      	mov      	r1, r5
  20:	6c13      	mov      	r0, r4
  22:	e0000000 	bsr      	0x0	// 0 <ieee80211_tx_mgmt>
  26:	07fa      	br      	0x1a	// 1a <ieee80211_tx_mgmt+0x1a>

Disassembly of section .text.ieee80211_tx_status:

00000000 <ieee80211_tx_status>:
   0:	14d1      	push      	r4, r15
   2:	8955      	ld.h      	r2, (r1, 0x2a)
   4:	3002      	movi      	r0, 2
   6:	c4405c47 	ins      	r2, r0, 9, 7
   a:	1086      	lrw      	r4, 0x0	// 20 <ieee80211_tx_status+0x20>
   c:	a955      	st.h      	r2, (r1, 0x2a)
   e:	6c13      	mov      	r0, r4
  10:	e0000000 	bsr      	0x0	// 0 <skb_list_queue>
  14:	e40411b3 	subi      	r0, r4, 436
  18:	e0000000 	bsr      	0x0	// 0 <os_sema_up>
  1c:	3000      	movi      	r0, 0
  1e:	1491      	pop      	r4, r15
  20:	00000000 	.long	0x00000000
