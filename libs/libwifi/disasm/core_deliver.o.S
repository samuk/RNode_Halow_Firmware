
libwifi/o/core_deliver.o:     file format elf32-csky-little


Disassembly of section .text.ieee80211_deliver_table_expired:

00000000 <ieee80211_deliver_table_expired>:
   0:	14d1      	push      	r4, r15
   2:	1421      	subi      	r14, r14, 4
   4:	6d03      	mov      	r4, r0
   6:	3101      	movi      	r1, 1
   8:	208f      	addi      	r0, 144
   a:	e0000000 	bsr      	0x0	// 0 <ieee80211_mactbl_expired>
   e:	6c13      	mov      	r0, r4
  10:	3100      	movi      	r1, 0
  12:	e0000000 	bsr      	0x0	// 0 <ieee80211_mactbl_expired>
  16:	3000      	movi      	r0, 0
  18:	b800      	st.w      	r0, (r14, 0x0)
  1a:	6cd3      	mov      	r3, r4
  1c:	1045      	lrw      	r2, 0x0	// 30 <ieee80211_deliver_table_expired+0x30>
  1e:	ea01f424 	movi      	r1, 62500
  22:	c4614901 	rotli      	r1, r1, 3
  26:	e0000000 	bsr      	0x0	// 0 <eloop_register_timeout>
  2a:	1401      	addi      	r14, r14, 4
  2c:	1491      	pop      	r4, r15
  2e:	0000      	.short	0x0000
  30:	00000000 	.long	0x00000000

Disassembly of section .text.ieee80211_deliver_release_entry:

00000000 <ieee80211_deliver_release_entry>:
   0:	14d3      	push      	r4-r6, r15
   2:	6d03      	mov      	r4, r0
   4:	d8002078 	ld.w      	r0, (r0, 0x1e0)
   8:	6d47      	mov      	r5, r1
   a:	6d8b      	mov      	r6, r2
   c:	e0000000 	bsr      	0x0	// 0 <ieee80211_mactbl_release>
  10:	d8042078 	ld.w      	r0, (r4, 0x1e0)
  14:	6c9b      	mov      	r2, r6
  16:	6c57      	mov      	r1, r5
  18:	208f      	addi      	r0, 144
  1a:	e0000000 	bsr      	0x0	// 0 <ieee80211_mactbl_release>
  1e:	1493      	pop      	r4-r6, r15

Disassembly of section .text.ieee80211_deliver_check_looptable:

00000000 <ieee80211_deliver_check_looptable>:
   0:	14d0      	push      	r15
   2:	d8002078 	ld.w      	r0, (r0, 0x1e0)
   6:	208f      	addi      	r0, 144
   8:	e0000000 	bsr      	0x0	// 0 <ieee80211_mactbl_find>
   c:	1490      	pop      	r15

Disassembly of section .text.ieee80211_deliver_tx_route:

00000000 <ieee80211_deliver_tx_route>:
   0:	14d3      	push      	r4-r6, r15
   2:	6d03      	mov      	r4, r0
   4:	6d4f      	mov      	r5, r3
   6:	6d87      	mov      	r6, r1
   8:	d8002078 	ld.w      	r0, (r0, 0x1e0)
   c:	6c4b      	mov      	r1, r2
   e:	6c8f      	mov      	r2, r3
  10:	e0000000 	bsr      	0x0	// 0 <ieee80211_mactbl_delete>
  14:	6c97      	mov      	r2, r5
  16:	6c5b      	mov      	r1, r6
  18:	d8042078 	ld.w      	r0, (r4, 0x1e0)
  1c:	e0000000 	bsr      	0x0	// 0 <ieee80211_mactbl_find>
  20:	1493      	pop      	r4-r6, r15

Disassembly of section .text.ieee80211_deliver_rx_forward:

00000000 <ieee80211_deliver_rx_forward>:
   0:	14d5      	push      	r4-r8, r15
   2:	1421      	subi      	r14, r14, 4
   4:	8085      	ld.b      	r4, (r0, 0x5)
   6:	e4842002 	andi      	r4, r4, 2
   a:	6d43      	mov      	r5, r0
   c:	6dc7      	mov      	r7, r1
   e:	6ccb      	mov      	r3, r2
  10:	e9040005 	bez      	r4, 0x1a	// 1a <ieee80211_deliver_rx_forward+0x1a>
  14:	3000      	movi      	r0, 0
  16:	1401      	addi      	r14, r14, 4
  18:	1495      	pop      	r4-r8, r15
  1a:	9127      	ld.w      	r1, (r1, 0x1c)
  1c:	d8c0202a 	ld.w      	r6, (r0, 0xa8)
  20:	d9810000 	ld.b      	r12, (r1, 0x0)
  24:	6f32      	nor      	r12, r12
  26:	e58c2001 	andi      	r12, r12, 1
  2a:	d8062078 	ld.w      	r0, (r6, 0x1e0)
  2e:	6c97      	mov      	r2, r5
  30:	dd8e2000 	st.w      	r12, (r14, 0x0)
  34:	2105      	addi      	r1, 6
  36:	e0000000 	bsr      	0x0	// 0 <ieee80211_mactbl_update>
  3a:	d865202a 	ld.w      	r3, (r5, 0xa8)
  3e:	6c53      	mov      	r1, r4
  40:	d8032078 	ld.w      	r0, (r3, 0x1e0)
  44:	e0000000 	bsr      	0x0	// 0 <ieee80211_mactbl_expired>
  48:	d9072007 	ld.w      	r8, (r7, 0x1c)
  4c:	3206      	movi      	r2, 6
  4e:	5d28      	addu      	r1, r5, r2
  50:	6c23      	mov      	r0, r8
  52:	e0000000 	bsr      	0x0	// 0 <memcmp>
  56:	e900ffdf 	bez      	r0, 0x14	// 14 <ieee80211_deliver_rx_forward+0x14>
  5a:	d8480000 	ld.b      	r2, (r8, 0x0)
  5e:	e4422001 	andi      	r2, r2, 1
  62:	e902002c 	bez      	r2, 0xba	// ba <ieee80211_deliver_rx_forward+0xba>
  66:	e5060067 	addi      	r8, r6, 104
  6a:	d8660048 	ld.b      	r3, (r6, 0x48)
  6e:	64d1      	cmplt      	r4, r3
  70:	0fd2      	bf      	0x14	// 14 <ieee80211_deliver_rx_forward+0x14>
  72:	d8682000 	ld.w      	r3, (r8, 0x0)
  76:	e903001e 	bez      	r3, 0xb2	// b2 <ieee80211_deliver_rx_forward+0xb2>
  7a:	8345      	ld.b      	r2, (r3, 0x5)
  7c:	e4422083 	andi      	r2, r2, 131
  80:	3a41      	cmpnei      	r2, 1
  82:	0818      	bt      	0xb2	// b2 <ieee80211_deliver_rx_forward+0xb2>
  84:	64d6      	cmpne      	r5, r3
  86:	0806      	bt      	0x92	// 92 <ieee80211_deliver_rx_forward+0x92>
  88:	8d60      	ld.h      	r3, (r5, 0x0)
  8a:	e4632002 	andi      	r3, r3, 2
  8e:	e9030012 	bez      	r3, 0xb2	// b2 <ieee80211_deliver_rx_forward+0xb2>
  92:	3100      	movi      	r1, 0
  94:	6c1f      	mov      	r0, r7
  96:	e0000000 	bsr      	0x0	// 0 <skb_copy>
  9a:	6c43      	mov      	r1, r0
  9c:	e900000b 	bez      	r0, 0xb2	// b2 <ieee80211_deliver_rx_forward+0xb2>
  a0:	d8082000 	ld.w      	r0, (r8, 0x0)
  a4:	e40001bb 	addi      	r0, r0, 444
  a8:	e0000000 	bsr      	0x0	// 0 <skb_list_queue>
  ac:	6c1b      	mov      	r0, r6
  ae:	e0000000 	bsr      	0x0	// 0 <os_sema_up>
  b2:	2400      	addi      	r4, 1
  b4:	e5080003 	addi      	r8, r8, 4
  b8:	07d9      	br      	0x6a	// 6a <ieee80211_deliver_rx_forward+0x6a>
  ba:	6c63      	mov      	r1, r8
  bc:	d8062078 	ld.w      	r0, (r6, 0x1e0)
  c0:	e0000000 	bsr      	0x0	// 0 <ieee80211_mactbl_find>
  c4:	e900ffa8 	bez      	r0, 0x14	// 14 <ieee80211_deliver_rx_forward+0x14>
  c8:	9062      	ld.w      	r3, (r0, 0x8)
  ca:	e903ffa5 	bez      	r3, 0x14	// 14 <ieee80211_deliver_rx_forward+0x14>
  ce:	9043      	ld.w      	r2, (r0, 0xc)
  d0:	b74e      	st.w      	r2, (r7, 0x38)
  d2:	6c5f      	mov      	r1, r7
  d4:	e40301bb 	addi      	r0, r3, 444
  d8:	e0000000 	bsr      	0x0	// 0 <skb_list_queue>
  dc:	6c1b      	mov      	r0, r6
  de:	e0000000 	bsr      	0x0	// 0 <os_sema_up>
  e2:	3001      	movi      	r0, 1
  e4:	0799      	br      	0x16	// 16 <ieee80211_deliver_rx_forward+0x16>

Disassembly of section .text.ieee80211_deliver_update_looptable:

00000000 <ieee80211_deliver_update_looptable>:
   0:	14d2      	push      	r4-r5, r15
   2:	1421      	subi      	r14, r14, 4
   4:	8860      	ld.h      	r3, (r0, 0x0)
   6:	e4632001 	andi      	r3, r3, 1
   a:	6d03      	mov      	r4, r0
   c:	6d47      	mov      	r5, r1
   e:	e9030021 	bez      	r3, 0x50	// 50 <ieee80211_deliver_update_looptable+0x50>
  12:	8065      	ld.b      	r3, (r0, 0x5)
  14:	e4632008 	andi      	r3, r3, 8
  18:	e903001c 	bez      	r3, 0x50	// 50 <ieee80211_deliver_update_looptable+0x50>
  1c:	d860202a 	ld.w      	r3, (r0, 0xa8)
  20:	6c93      	mov      	r2, r4
  22:	d8032078 	ld.w      	r0, (r3, 0x1e0)
  26:	3300      	movi      	r3, 0
  28:	b860      	st.w      	r3, (r14, 0x0)
  2a:	208f      	addi      	r0, 144
  2c:	e0000000 	bsr      	0x0	// 0 <ieee80211_mactbl_update>
  30:	d864202a 	ld.w      	r3, (r4, 0xa8)
  34:	3101      	movi      	r1, 1
  36:	d8032078 	ld.w      	r0, (r3, 0x1e0)
  3a:	208f      	addi      	r0, 144
  3c:	e0000000 	bsr      	0x0	// 0 <ieee80211_mactbl_expired>
  40:	d864202a 	ld.w      	r3, (r4, 0xa8)
  44:	6c93      	mov      	r2, r4
  46:	6c57      	mov      	r1, r5
  48:	d8032078 	ld.w      	r0, (r3, 0x1e0)
  4c:	e0000000 	bsr      	0x0	// 0 <ieee80211_mactbl_delete>
  50:	3000      	movi      	r0, 0
  52:	1401      	addi      	r14, r14, 4
  54:	1492      	pop      	r4-r5, r15

Disassembly of section .text.ieee80211_deliver_dump:

00000000 <ieee80211_deliver_dump>:
   0:	14d0      	push      	r15
   2:	3a0e      	cmphsi      	r2, 15
   4:	0c08      	bf      	0x14	// 14 <ieee80211_deliver_dump+0x14>
   6:	d8002078 	ld.w      	r0, (r0, 0x1e0)
   a:	e9000004 	bez      	r0, 0x12	// 12 <ieee80211_deliver_dump+0x12>
   e:	e0000000 	bsr      	0x0	// 0 <ieee80211_mactbl_dump>
  12:	1490      	pop      	r15
  14:	3000      	movi      	r0, 0
  16:	07fe      	br      	0x12	// 12 <ieee80211_deliver_dump+0x12>

Disassembly of section .text.ieee80211_deliver_status:

00000000 <ieee80211_deliver_status>:
   0:	14d0      	push      	r15
   2:	6c87      	mov      	r2, r1
   4:	6c43      	mov      	r1, r0
   6:	1003      	lrw      	r0, 0x0	// 10 <ieee80211_deliver_status+0x10>
   8:	e0000000 	bsr      	0x0	// 0 <ieee80211_deliver_status>
   c:	1490      	pop      	r15
   e:	0000      	.short	0x0000
  10:	00000000 	.long	0x00000000

Disassembly of section .text.ieee80211_deliver_init:

00000000 <ieee80211_deliver_init>:
   0:	14d4      	push      	r4-r7, r15
   2:	1421      	subi      	r14, r14, 4
   4:	11a4      	lrw      	r5, 0x0	// 94 <ieee80211_deliver_init+0x94>
   6:	6dc3      	mov      	r7, r0
   8:	d8852078 	ld.w      	r4, (r5, 0x1e0)
   c:	6d87      	mov      	r6, r1
   e:	e924003d 	bnez      	r4, 0x88	// 88 <ieee80211_deliver_init+0x88>
  12:	309a      	movi      	r0, 154
  14:	4001      	lsli      	r0, r0, 1
  16:	e0000000 	bsr      	0x0	// 0 <_os_zalloc>
  1a:	dc052078 	st.w      	r0, (r5, 0x1e0)
  1e:	e9000038 	bez      	r0, 0x8e	// 8e <ieee80211_deliver_init+0x8e>
  22:	31fa      	movi      	r1, 250
  24:	4122      	lsli      	r1, r1, 2
  26:	7c58      	mult      	r1, r6
  28:	107c      	lrw      	r3, 0x2dc6bf	// 98 <ieee80211_deliver_init+0x98>
  2a:	5943      	subi      	r2, r1, 1
  2c:	648c      	cmphs      	r3, r2
  2e:	ea0293e0 	movi      	r2, 37856
  32:	3ab2      	bseti      	r2, 18
  34:	c4410c40 	inct      	r2, r1, 0
  38:	6c5f      	mov      	r1, r7
  3a:	e0000000 	bsr      	0x0	// 0 <ieee80211_mactbl_init>
  3e:	d8052078 	ld.w      	r0, (r5, 0x1e0)
  42:	32fa      	movi      	r2, 250
  44:	4241      	lsli      	r2, r2, 1
  46:	3180      	movi      	r1, 128
  48:	208f      	addi      	r0, 144
  4a:	e0000000 	bsr      	0x0	// 0 <ieee80211_mactbl_init>
  4e:	d8652078 	ld.w      	r3, (r5, 0x1e0)
  52:	ea01f424 	movi      	r1, 62500
  56:	c4614901 	rotli      	r1, r1, 3
  5a:	1051      	lrw      	r2, 0x0	// 9c <ieee80211_deliver_init+0x9c>
  5c:	6c13      	mov      	r0, r4
  5e:	dc432048 	st.w      	r2, (r3, 0x120)
  62:	1050      	lrw      	r2, 0x0	// a0 <ieee80211_deliver_init+0xa0>
  64:	dc432049 	st.w      	r2, (r3, 0x124)
  68:	104f      	lrw      	r2, 0x0	// a4 <ieee80211_deliver_init+0xa4>
  6a:	dc43204b 	st.w      	r2, (r3, 0x12c)
  6e:	104f      	lrw      	r2, 0x0	// a8 <ieee80211_deliver_init+0xa8>
  70:	dc43204a 	st.w      	r2, (r3, 0x128)
  74:	104e      	lrw      	r2, 0x0	// ac <ieee80211_deliver_init+0xac>
  76:	dc43204c 	st.w      	r2, (r3, 0x130)
  7a:	b880      	st.w      	r4, (r14, 0x0)
  7c:	104d      	lrw      	r2, 0x0	// b0 <ieee80211_deliver_init+0xb0>
  7e:	e0000000 	bsr      	0x0	// 0 <eloop_register_timeout>
  82:	6c13      	mov      	r0, r4
  84:	1401      	addi      	r14, r14, 4
  86:	1494      	pop      	r4-r7, r15
  88:	3000      	movi      	r0, 0
  8a:	2815      	subi      	r0, 22
  8c:	07fc      	br      	0x84	// 84 <ieee80211_deliver_init+0x84>
  8e:	3000      	movi      	r0, 0
  90:	280b      	subi      	r0, 12
  92:	07f9      	br      	0x84	// 84 <ieee80211_deliver_init+0x84>
  94:	00000000 	.long	0x00000000
  98:	002dc6bf 	.long	0x002dc6bf
	...
