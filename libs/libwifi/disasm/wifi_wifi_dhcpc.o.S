
libwifi/o/wifi_wifi_dhcpc.o:     file format elf32-csky-little


Disassembly of section .text.__get_unaligned_be32:

00000000 <__get_unaligned_be32>:
   0:	8060      	ld.b      	r3, (r0, 0x0)
   2:	8041      	ld.b      	r2, (r0, 0x1)
   4:	4250      	lsli      	r2, r2, 16
   6:	4378      	lsli      	r3, r3, 24
   8:	6cc8      	or      	r3, r2
   a:	8043      	ld.b      	r2, (r0, 0x3)
   c:	8002      	ld.b      	r0, (r0, 0x2)
   e:	6cc8      	or      	r3, r2
  10:	4008      	lsli      	r0, r0, 8
  12:	6c0c      	or      	r0, r3
  14:	783c      	jmp      	r15

Disassembly of section .text.wifi_dhcpc_timer_cb:

00000000 <wifi_dhcpc_timer_cb>:
   0:	14d0      	push      	r15
   2:	1066      	lrw      	r3, 0x0	// 18 <wifi_dhcpc_timer_cb+0x18>
   4:	836c      	ld.b      	r3, (r3, 0xc)
   6:	2b00      	subi      	r3, 1
   8:	74cc      	zextb      	r3, r3
   a:	3b01      	cmphsi      	r3, 2
   c:	0804      	bt      	0x14	// 14 <wifi_dhcpc_timer_cb+0x14>
   e:	201f      	addi      	r0, 32
  10:	e0000000 	bsr      	0x0	// 0 <os_run_work>
  14:	1490      	pop      	r15
  16:	0000      	.short	0x0000
  18:	00000000 	.long	0x00000000

Disassembly of section .text.wifi_dhcpc_proc_event:

00000000 <wifi_dhcpc_proc_event>:
   0:	14d1      	push      	r4, r15
   2:	ea8c0018 	lrw      	r12, 0x0	// 60 <wifi_dhcpc_proc_event+0x60>
   6:	6d03      	mov      	r4, r0
   8:	d80c000c 	ld.b      	r0, (r12, 0xc)
   c:	5863      	subi      	r3, r0, 1
   e:	74cc      	zextb      	r3, r3
  10:	3b01      	cmphsi      	r3, 2
  12:	0807      	bt      	0x20	// 20 <wifi_dhcpc_proc_event+0x20>
  14:	6442      	cmpne      	r0, r1
  16:	0805      	bt      	0x20	// 20 <wifi_dhcpc_proc_event+0x20>
  18:	3a48      	cmpnei      	r2, 8
  1a:	0c05      	bf      	0x24	// 24 <wifi_dhcpc_proc_event+0x24>
  1c:	3a4a      	cmpnei      	r2, 10
  1e:	0c1c      	bf      	0x56	// 56 <wifi_dhcpc_proc_event+0x56>
  20:	3000      	movi      	r0, 0
  22:	1491      	pop      	r4, r15
  24:	d86c00f9 	ld.b      	r3, (r12, 0xf9)
  28:	e4632004 	andi      	r3, r3, 4
  2c:	e903fffa 	bez      	r3, 0x20	// 20 <wifi_dhcpc_proc_event+0x20>
  30:	3300      	movi      	r3, 0
  32:	dc640068 	st.b      	r3, (r4, 0x68)
  36:	e424005b 	addi      	r1, r4, 92
  3a:	e0000000 	bsr      	0x0	// 0 <ieee80211_conf_get_mac>
  3e:	3164      	movi      	r1, 100
  40:	e404001f 	addi      	r0, r4, 32
  44:	e0000000 	bsr      	0x0	// 0 <os_run_work_delay>
  48:	3100      	movi      	r1, 0
  4a:	ea00ffff 	movi      	r0, 65535
  4e:	2005      	addi      	r0, 6
  50:	e0000000 	bsr      	0x0	// 0 <sys_event_new>
  54:	07e6      	br      	0x20	// 20 <wifi_dhcpc_proc_event+0x20>
  56:	e404003f 	addi      	r0, r4, 64
  5a:	e0000000 	bsr      	0x0	// 0 <os_timer_stop>
  5e:	07e1      	br      	0x20	// 20 <sys_cfgs+0x20>
  60:	00000000 	.long	0x00000000

Disassembly of section .text.wifi_dhcpc_send_request:

00000000 <wifi_dhcpc_send_request>:
   0:	14d6      	push      	r4-r9, r15
   2:	142a      	subi      	r14, r14, 40
   4:	3706      	movi      	r7, 6
   6:	6c9f      	mov      	r2, r7
   8:	6d43      	mov      	r5, r0
   a:	6d87      	mov      	r6, r1
   c:	6c3b      	mov      	r0, r14
   e:	1323      	lrw      	r1, 0x0	// 198 <wifi_dhcpc_send_request+0x198>
  10:	e0000000 	bsr      	0x0	// 0 <memcpy>
  14:	1302      	lrw      	r0, 0x0	// 19c <strlen+0x19c>
  16:	e0000000 	bsr      	0x0	// 0 <strlen>
  1a:	6e03      	mov      	r8, r0
  1c:	7640      	zextb      	r9, r0
  1e:	3080      	movi      	r0, 128
  20:	4002      	lsli      	r0, r0, 2
  22:	e0000000 	bsr      	0x0	// 0 <_os_zalloc>
  26:	6d03      	mov      	r4, r0
  28:	e900008e 	bez      	r0, 0x144	// 144 <wifi_dhcpc_send_request+0x144>
  2c:	3301      	movi      	r3, 1
  2e:	a060      	st.b      	r3, (r0, 0x0)
  30:	a061      	st.b      	r3, (r0, 0x1)
  32:	3300      	movi      	r3, 0
  34:	a0e2      	st.b      	r7, (r0, 0x2)
  36:	a063      	st.b      	r3, (r0, 0x3)
  38:	957b      	ld.w      	r3, (r5, 0x6c)
  3a:	e9230007 	bnez      	r3, 0x48	// 48 <wifi_dhcpc_send_request+0x48>
  3e:	3104      	movi      	r1, 4
  40:	e405006b 	addi      	r0, r5, 108
  44:	e0000000 	bsr      	0x0	// 0 <os_random_bytes>
  48:	957b      	ld.w      	r3, (r5, 0x6c)
  4a:	4b50      	lsri      	r2, r3, 16
  4c:	3e41      	cmpnei      	r6, 1
  4e:	4a28      	lsri      	r1, r2, 8
  50:	a445      	st.b      	r2, (r4, 0x5)
  52:	c50355e2 	zext      	r2, r3, 15, 8
  56:	a424      	st.b      	r1, (r4, 0x4)
  58:	a446      	st.b      	r2, (r4, 0x6)
  5a:	a467      	st.b      	r3, (r4, 0x7)
  5c:	0806      	bt      	0x68	// 68 <wifi_dhcpc_send_request+0x68>
  5e:	3300      	movi      	r3, 0
  60:	2b7f      	subi      	r3, 128
  62:	a46a      	st.b      	r3, (r4, 0xa)
  64:	3300      	movi      	r3, 0
  66:	a46b      	st.b      	r3, (r4, 0xb)
  68:	e4e5005b 	addi      	r7, r5, 92
  6c:	3206      	movi      	r2, 6
  6e:	6c5f      	mov      	r1, r7
  70:	e404001b 	addi      	r0, r4, 28
  74:	e0000000 	bsr      	0x0	// 0 <memcpy>
  78:	3363      	movi      	r3, 99
  7a:	3200      	movi      	r2, 0
  7c:	dc6400ec 	st.b      	r3, (r4, 0xec)
  80:	2a7d      	subi      	r2, 126
  82:	dc6400ef 	st.b      	r3, (r4, 0xef)
  86:	3335      	movi      	r3, 53
  88:	dc4400ed 	st.b      	r2, (r4, 0xed)
  8c:	dc6400f0 	st.b      	r3, (r4, 0xf0)
  90:	3253      	movi      	r2, 83
  92:	3301      	movi      	r3, 1
  94:	dc4400ee 	st.b      	r2, (r4, 0xee)
  98:	dc6400f1 	st.b      	r3, (r4, 0xf1)
  9c:	dcc400f2 	st.b      	r6, (r4, 0xf2)
  a0:	957d      	ld.w      	r3, (r5, 0x74)
  a2:	e9230053 	bnez      	r3, 0x148	// 148 <wifi_dhcpc_send_request+0x148>
  a6:	e4c400f2 	addi      	r6, r4, 243
  aa:	333d      	movi      	r3, 61
  ac:	a660      	st.b      	r3, (r6, 0x0)
  ae:	3307      	movi      	r3, 7
  b0:	a661      	st.b      	r3, (r6, 0x1)
  b2:	3301      	movi      	r3, 1
  b4:	a662      	st.b      	r3, (r6, 0x2)
  b6:	3206      	movi      	r2, 6
  b8:	6c5f      	mov      	r1, r7
  ba:	5e0a      	addi      	r0, r6, 3
  bc:	e0000000 	bsr      	0x0	// 0 <memcpy>
  c0:	e929005a 	bnez      	r9, 0x174	// 174 <wifi_dhcpc_send_request+0x174>
  c4:	e4060008 	addi      	r0, r6, 9
  c8:	3337      	movi      	r3, 55
  ca:	a060      	st.b      	r3, (r0, 0x0)
  cc:	3303      	movi      	r3, 3
  ce:	a061      	st.b      	r3, (r0, 0x1)
  d0:	a063      	st.b      	r3, (r0, 0x3)
  d2:	3306      	movi      	r3, 6
  d4:	a064      	st.b      	r3, (r0, 0x4)
  d6:	3300      	movi      	r3, 0
  d8:	2b00      	subi      	r3, 1
  da:	3201      	movi      	r2, 1
  dc:	a042      	st.b      	r2, (r0, 0x2)
  de:	a065      	st.b      	r3, (r0, 0x5)
  e0:	957f      	ld.w      	r3, (r5, 0x7c)
  e2:	5832      	addi      	r1, r0, 5
  e4:	e9030057 	bez      	r3, 0x192	// 192 <wifi_dhcpc_send_request+0x192>
  e8:	e4450061 	addi      	r2, r5, 98
  ec:	b842      	st.w      	r2, (r14, 0x8)
  ee:	3200      	movi      	r2, 0
  f0:	2a00      	subi      	r2, 1
  f2:	3b40      	cmpnei      	r3, 0
  f4:	c4620c20 	incf      	r3, r2, 0
  f8:	b864      	st.w      	r3, (r14, 0x10)
  fa:	3343      	movi      	r3, 67
  fc:	b865      	st.w      	r3, (r14, 0x14)
  fe:	957d      	ld.w      	r3, (r5, 0x74)
 100:	5911      	subu      	r0, r1, r4
 102:	b866      	st.w      	r3, (r14, 0x18)
 104:	3344      	movi      	r3, 68
 106:	b867      	st.w      	r3, (r14, 0x1c)
 108:	5862      	addi      	r3, r0, 1
 10a:	204a      	addi      	r0, 75
 10c:	b8e3      	st.w      	r7, (r14, 0xc)
 10e:	b888      	st.w      	r4, (r14, 0x20)
 110:	b869      	st.w      	r3, (r14, 0x24)
 112:	e0000000 	bsr      	0x0	// 0 <alloc_skb>
 116:	6d43      	mov      	r5, r0
 118:	e9000013 	bez      	r0, 0x13e	// 13e <wifi_dhcpc_send_request+0x13e>
 11c:	9027      	ld.w      	r1, (r0, 0x1c)
 11e:	1802      	addi      	r0, r14, 8
 120:	e0000000 	bsr      	0x0	// 0 <net_setup_udpdata>
 124:	6c43      	mov      	r1, r0
 126:	6c17      	mov      	r0, r5
 128:	e0000000 	bsr      	0x0	// 0 <skb_put>
 12c:	107d      	lrw      	r3, 0x0	// 1a0 <wifi_dhcpc_send_request+0x1a0>
 12e:	8d54      	ld.h      	r2, (r5, 0x28)
 130:	9527      	ld.w      	r1, (r5, 0x1c)
 132:	830c      	ld.b      	r0, (r3, 0xc)
 134:	e0000000 	bsr      	0x0	// 0 <ieee80211_tx>
 138:	6c17      	mov      	r0, r5
 13a:	e0000000 	bsr      	0x0	// 0 <kfree_skb>
 13e:	6c13      	mov      	r0, r4
 140:	e0000000 	bsr      	0x0	// 0 <_os_free>
 144:	140a      	addi      	r14, r14, 40
 146:	1496      	pop      	r4-r9, r15
 148:	3332      	movi      	r3, 50
 14a:	dc6400f3 	st.b      	r3, (r4, 0xf3)
 14e:	3304      	movi      	r3, 4
 150:	dc6400f4 	st.b      	r3, (r4, 0xf4)
 154:	957d      	ld.w      	r3, (r5, 0x74)
 156:	4b50      	lsri      	r2, r3, 16
 158:	4a28      	lsri      	r1, r2, 8
 15a:	dc4400f6 	st.b      	r2, (r4, 0xf6)
 15e:	c50355e2 	zext      	r2, r3, 15, 8
 162:	dc2400f5 	st.b      	r1, (r4, 0xf5)
 166:	dc4400f7 	st.b      	r2, (r4, 0xf7)
 16a:	dc6400f8 	st.b      	r3, (r4, 0xf8)
 16e:	e4c400f8 	addi      	r6, r4, 249
 172:	079c      	br      	0xaa	// aa <wifi_dhcpc_send_request+0xaa>
 174:	330c      	movi      	r3, 12
 176:	a669      	st.b      	r3, (r6, 0x9)
 178:	e466000a 	addi      	r3, r6, 11
 17c:	6c0f      	mov      	r0, r3
 17e:	dd26000a 	st.b      	r9, (r6, 0xa)
 182:	1027      	lrw      	r1, 0x0	// 19c <strcpy+0x19c>
 184:	e0000000 	bsr      	0x0	// 0 <strcpy>
 188:	6cc3      	mov      	r3, r0
 18a:	e40820ff 	andi      	r0, r8, 255
 18e:	600c      	addu      	r0, r3
 190:	079c      	br      	0xc8	// c8 <wifi_dhcpc_send_request+0xc8>
 192:	6cbb      	mov      	r2, r14
 194:	07ac      	br      	0xec	// ec <wifi_dhcpc_send_request+0xec>
	...

Disassembly of section .text.wifi_dhcpc_pkthook_rx:

00000000 <wifi_dhcpc_pkthook_rx>:
   0:	14d8      	push      	r4-r11, r15
   2:	1438      	subi      	r14, r14, 96
   4:	ea8c0095 	lrw      	r12, 0x0	// 258 <wifi_dhcpc_pkthook_rx+0x258>
   8:	d86c00f9 	ld.b      	r3, (r12, 0xf9)
   c:	e4632004 	andi      	r3, r3, 4
  10:	e9030120 	bez      	r3, 0x250	// 250 <wifi_dhcpc_pkthook_rx+0x250>
  14:	d98c000c 	ld.b      	r12, (r12, 0xc)
  18:	e46c1000 	subi      	r3, r12, 1
  1c:	74cc      	zextb      	r3, r3
  1e:	3b01      	cmphsi      	r3, 2
  20:	0918      	bt      	0x250	// 250 <wifi_dhcpc_pkthook_rx+0x250>
  22:	6472      	cmpne      	r12, r1
  24:	0916      	bt      	0x250	// 250 <wifi_dhcpc_pkthook_rx+0x250>
  26:	92c0      	ld.w      	r6, (r2, 0x0)
  28:	8677      	ld.b      	r3, (r6, 0x17)
  2a:	3b51      	cmpnei      	r3, 17
  2c:	0912      	bt      	0x250	// 250 <wifi_dhcpc_pkthook_rx+0x250>
  2e:	8ae2      	ld.h      	r7, (r2, 0x4)
  30:	eb0700f0 	cmphsi      	r7, 241
  34:	0d0e      	bf      	0x250	// 250 <wifi_dhcpc_pkthook_rx+0x250>
  36:	9061      	ld.w      	r3, (r0, 0x4)
  38:	9381      	ld.w      	r4, (r3, 0x4)
  3a:	d864005d 	ld.b      	r3, (r4, 0x5d)
  3e:	d804005c 	ld.b      	r0, (r4, 0x5c)
  42:	6c0c      	or      	r0, r3
  44:	d864005e 	ld.b      	r3, (r4, 0x5e)
  48:	6c0c      	or      	r0, r3
  4a:	d864005f 	ld.b      	r3, (r4, 0x5f)
  4e:	6c0c      	or      	r0, r3
  50:	d8640060 	ld.b      	r3, (r4, 0x60)
  54:	6c0c      	or      	r0, r3
  56:	d8640061 	ld.b      	r3, (r4, 0x61)
  5a:	6c0c      	or      	r0, r3
  5c:	e90000fb 	bez      	r0, 0x252	// 252 <wifi_dhcpc_pkthook_rx+0x252>
  60:	d8660024 	ld.b      	r3, (r6, 0x24)
  64:	4368      	lsli      	r3, r3, 8
  66:	d8460025 	ld.b      	r2, (r6, 0x25)
  6a:	6cc8      	or      	r3, r2
  6c:	74cf      	sexth      	r3, r3
  6e:	eb430044 	cmpnei      	r3, 68
  72:	08ef      	bt      	0x250	// 250 <wifi_dhcpc_pkthook_rx+0x250>
  74:	d866002a 	ld.b      	r3, (r6, 0x2a)
  78:	3b42      	cmpnei      	r3, 2
  7a:	08eb      	bt      	0x250	// 250 <wifi_dhcpc_pkthook_rx+0x250>
  7c:	3206      	movi      	r2, 6
  7e:	e424005b 	addi      	r1, r4, 92
  82:	e4060045 	addi      	r0, r6, 70
  86:	e0000000 	bsr      	0x0	// 0 <memcmp>
  8a:	e92000e3 	bnez      	r0, 0x250	// 250 <wifi_dhcpc_pkthook_rx+0x250>
  8e:	e406002d 	addi      	r0, r6, 46
  92:	e0000000 	bsr      	0x0	// 0 <wifi_dhcpc_pkthook_rx>
  96:	947b      	ld.w      	r3, (r4, 0x6c)
  98:	640e      	cmpne      	r3, r0
  9a:	08db      	bt      	0x250	// 250 <wifi_dhcpc_pkthook_rx+0x250>
  9c:	3206      	movi      	r2, 6
  9e:	5e28      	addu      	r1, r6, r2
  a0:	e4040061 	addi      	r0, r4, 98
  a4:	e0000000 	bsr      	0x0	// 0 <memcpy>
  a8:	e4060039 	addi      	r0, r6, 58
  ac:	e0000000 	bsr      	0x0	// 0 <wifi_dhcpc_pkthook_rx>
  b0:	136b      	lrw      	r3, 0x0	// 25c <wifi_dhcpc_pkthook_rx+0x25c>
  b2:	e4a60119 	addi      	r5, r6, 282
  b6:	b41d      	st.w      	r0, (r4, 0x74)
  b8:	e5040073 	addi      	r8, r4, 116
  bc:	b877      	st.w      	r3, (r14, 0x5c)
  be:	ea890069 	lrw      	r9, 0x0	// 260 <wifi_dhcpc_pkthook_rx+0x260>
  c2:	5e7c      	addu      	r3, r6, r7
  c4:	64d4      	cmphs      	r5, r3
  c6:	0805      	bt      	0xd0	// d0 <wifi_dhcpc_pkthook_rx+0xd0>
  c8:	8560      	ld.b      	r3, (r5, 0x0)
  ca:	eb4300ff 	cmpnei      	r3, 255
  ce:	0803      	bt      	0xd4	// d4 <wifi_dhcpc_pkthook_rx+0xd4>
  d0:	3001      	movi      	r0, 1
  d2:	04c0      	br      	0x252	// 252 <wifi_dhcpc_pkthook_rx+0x252>
  d4:	3b46      	cmpnei      	r3, 6
  d6:	0c24      	bf      	0x11e	// 11e <wifi_dhcpc_pkthook_rx+0x11e>
  d8:	3b06      	cmphsi      	r3, 7
  da:	0809      	bt      	0xec	// ec <wifi_dhcpc_pkthook_rx+0xec>
  dc:	3b41      	cmpnei      	r3, 1
  de:	0c15      	bf      	0x108	// 108 <wifi_dhcpc_pkthook_rx+0x108>
  e0:	3b43      	cmpnei      	r3, 3
  e2:	0c18      	bf      	0x112	// 112 <wifi_dhcpc_pkthook_rx+0x112>
  e4:	8561      	ld.b      	r3, (r5, 0x1)
  e6:	2301      	addi      	r3, 2
  e8:	614c      	addu      	r5, r3
  ea:	07ec      	br      	0xc2	// c2 <wifi_dhcpc_pkthook_rx+0xc2>
  ec:	eb430035 	cmpnei      	r3, 53
  f0:	0c22      	bf      	0x134	// 134 <wifi_dhcpc_pkthook_rx+0x134>
  f2:	eb430036 	cmpnei      	r3, 54
  f6:	0ca8      	bf      	0x246	// 246 <wifi_dhcpc_pkthook_rx+0x246>
  f8:	eb430033 	cmpnei      	r3, 51
  fc:	0bf4      	bt      	0xe4	// e4 <wifi_dhcpc_pkthook_rx+0xe4>
  fe:	5d06      	addi      	r0, r5, 2
 100:	e0000000 	bsr      	0x0	// 0 <wifi_dhcpc_pkthook_rx>
 104:	b41c      	st.w      	r0, (r4, 0x70)
 106:	07ef      	br      	0xe4	// e4 <wifi_dhcpc_pkthook_rx+0xe4>
 108:	5d06      	addi      	r0, r5, 2
 10a:	e0000000 	bsr      	0x0	// 0 <wifi_dhcpc_pkthook_rx>
 10e:	b41e      	st.w      	r0, (r4, 0x78)
 110:	07ea      	br      	0xe4	// e4 <wifi_dhcpc_pkthook_rx+0xe4>
 112:	5d06      	addi      	r0, r5, 2
 114:	e0000000 	bsr      	0x0	// 0 <wifi_dhcpc_pkthook_rx>
 118:	dc042020 	st.w      	r0, (r4, 0x80)
 11c:	07e4      	br      	0xe4	// e4 <wifi_dhcpc_pkthook_rx+0xe4>
 11e:	5d06      	addi      	r0, r5, 2
 120:	e0000000 	bsr      	0x0	// 0 <wifi_dhcpc_pkthook_rx>
 124:	dc042021 	st.w      	r0, (r4, 0x84)
 128:	5d16      	addi      	r0, r5, 6
 12a:	e0000000 	bsr      	0x0	// 0 <wifi_dhcpc_pkthook_rx>
 12e:	dc042022 	st.w      	r0, (r4, 0x88)
 132:	07d9      	br      	0xe4	// e4 <wifi_dhcpc_pkthook_rx+0xe4>
 134:	8562      	ld.b      	r3, (r5, 0x2)
 136:	3b46      	cmpnei      	r3, 6
 138:	dc640068 	st.b      	r3, (r4, 0x68)
 13c:	0805      	bt      	0x146	// 146 <wifi_dhcpc_pkthook_rx+0x146>
 13e:	3300      	movi      	r3, 0
 140:	b47d      	st.w      	r3, (r4, 0x74)
 142:	b47f      	st.w      	r3, (r4, 0x7c)
 144:	07d0      	br      	0xe4	// e4 <wifi_dhcpc_pkthook_rx+0xe4>
 146:	3b45      	cmpnei      	r3, 5
 148:	0878      	bt      	0x238	// 238 <wifi_dhcpc_pkthook_rx+0x238>
 14a:	3218      	movi      	r2, 24
 14c:	6c63      	mov      	r1, r8
 14e:	9817      	ld.w      	r0, (r14, 0x5c)
 150:	e0000000 	bsr      	0x0	// 0 <memcpy>
 154:	943d      	ld.w      	r1, (r4, 0x74)
 156:	ea00ffff 	movi      	r0, 65535
 15a:	2006      	addi      	r0, 7
 15c:	e0000000 	bsr      	0x0	// 0 <sys_event_new>
 160:	6ca3      	mov      	r2, r8
 162:	3318      	movi      	r3, 24
 164:	3115      	movi      	r1, 21
 166:	9402      	ld.w      	r0, (r4, 0x8)
 168:	e0000000 	bsr      	0x0	// 0 <wifi_mgr_notify_host>
 16c:	d9442022 	ld.w      	r10, (r4, 0x88)
 170:	d964201c 	ld.w      	r11, (r4, 0x70)
 174:	945d      	ld.w      	r2, (r4, 0x74)
 176:	947e      	ld.w      	r3, (r4, 0x78)
 178:	d8042020 	ld.w      	r0, (r4, 0x80)
 17c:	d984201f 	ld.w      	r12, (r4, 0x7c)
 180:	d9a42021 	ld.w      	r13, (r4, 0x84)
 184:	d8240068 	ld.b      	r1, (r4, 0x68)
 188:	dd6e2016 	st.w      	r11, (r14, 0x58)
 18c:	e56a20ff 	andi      	r11, r10, 255
 190:	dd6e2015 	st.w      	r11, (r14, 0x54)
 194:	c50a55eb 	zext      	r11, r10, 15, 8
 198:	dd6e2014 	st.w      	r11, (r14, 0x50)
 19c:	c60a56eb 	zext      	r11, r10, 23, 16
 1a0:	c70a484a 	lsri      	r10, r10, 24
 1a4:	dd4e2012 	st.w      	r10, (r14, 0x48)
 1a8:	e54d20ff 	andi      	r10, r13, 255
 1ac:	dd4e2011 	st.w      	r10, (r14, 0x44)
 1b0:	c50d55ea 	zext      	r10, r13, 15, 8
 1b4:	dd4e2010 	st.w      	r10, (r14, 0x40)
 1b8:	c60d56ea 	zext      	r10, r13, 23, 16
 1bc:	c70d484d 	lsri      	r13, r13, 24
 1c0:	ddae200e 	st.w      	r13, (r14, 0x38)
 1c4:	e5ac20ff 	andi      	r13, r12, 255
 1c8:	ddae200d 	st.w      	r13, (r14, 0x34)
 1cc:	c50c55ed 	zext      	r13, r12, 15, 8
 1d0:	ddae200c 	st.w      	r13, (r14, 0x30)
 1d4:	c60c56ed 	zext      	r13, r12, 23, 16
 1d8:	c70c484c 	lsri      	r12, r12, 24
 1dc:	dd8e200a 	st.w      	r12, (r14, 0x28)
 1e0:	e58020ff 	andi      	r12, r0, 255
 1e4:	dd8e2009 	st.w      	r12, (r14, 0x24)
 1e8:	c50055ec 	zext      	r12, r0, 15, 8
 1ec:	dd8e2008 	st.w      	r12, (r14, 0x20)
 1f0:	c60056ec 	zext      	r12, r0, 23, 16
 1f4:	4818      	lsri      	r0, r0, 24
 1f6:	b806      	st.w      	r0, (r14, 0x18)
 1f8:	e40320ff 	andi      	r0, r3, 255
 1fc:	b805      	st.w      	r0, (r14, 0x14)
 1fe:	c50355e0 	zext      	r0, r3, 15, 8
 202:	b804      	st.w      	r0, (r14, 0x10)
 204:	c60356e0 	zext      	r0, r3, 23, 16
 208:	4b78      	lsri      	r3, r3, 24
 20a:	b862      	st.w      	r3, (r14, 0x8)
 20c:	e46220ff 	andi      	r3, r2, 255
 210:	b861      	st.w      	r3, (r14, 0x4)
 212:	c50255e3 	zext      	r3, r2, 15, 8
 216:	b803      	st.w      	r0, (r14, 0xc)
 218:	b860      	st.w      	r3, (r14, 0x0)
 21a:	6c27      	mov      	r0, r9
 21c:	c60256e3 	zext      	r3, r2, 23, 16
 220:	4a58      	lsri      	r2, r2, 24
 222:	dd6e2013 	st.w      	r11, (r14, 0x4c)
 226:	dd4e200f 	st.w      	r10, (r14, 0x3c)
 22a:	ddae200b 	st.w      	r13, (r14, 0x2c)
 22e:	dd8e2007 	st.w      	r12, (r14, 0x1c)
 232:	e0000000 	bsr      	0x0	// 0 <hgprintf>
 236:	0757      	br      	0xe4	// e4 <wifi_dhcpc_pkthook_rx+0xe4>
 238:	3b42      	cmpnei      	r3, 2
 23a:	0b55      	bt      	0xe4	// e4 <wifi_dhcpc_pkthook_rx+0xe4>
 23c:	3103      	movi      	r1, 3
 23e:	6c13      	mov      	r0, r4
 240:	e0000000 	bsr      	0x0	// 0 <wifi_dhcpc_pkthook_rx>
 244:	0750      	br      	0xe4	// e4 <wifi_dhcpc_pkthook_rx+0xe4>
 246:	5d06      	addi      	r0, r5, 2
 248:	e0000000 	bsr      	0x0	// 0 <wifi_dhcpc_pkthook_rx>
 24c:	b41f      	st.w      	r0, (r4, 0x7c)
 24e:	074b      	br      	0xe4	// e4 <wifi_dhcpc_pkthook_rx+0xe4>
 250:	3000      	movi      	r0, 0
 252:	1418      	addi      	r14, r14, 96
 254:	1498      	pop      	r4-r11, r15
	...

Disassembly of section .text.wifi_dhcpc_do_request:

00000000 <wifi_dhcpc_do_request>:
   0:	14d3      	push      	r4-r6, r15
   2:	105a      	lrw      	r2, 0x0	// 68 <wifi_dhcpc_do_request+0x68>
   4:	6d8b      	mov      	r6, r2
   6:	826c      	ld.b      	r3, (r2, 0xc)
   8:	2b00      	subi      	r3, 1
   a:	74cc      	zextb      	r3, r3
   c:	3b01      	cmphsi      	r3, 2
   e:	0821      	bt      	0x50	// 50 <wifi_dhcpc_do_request+0x50>
  10:	e4a0101f 	subi      	r5, r0, 32
  14:	d8650068 	ld.b      	r3, (r5, 0x68)
  18:	3b42      	cmpnei      	r3, 2
  1a:	0c1d      	bf      	0x54	// 54 <wifi_dhcpc_do_request+0x54>
  1c:	3b45      	cmpnei      	r3, 5
  1e:	0822      	bt      	0x62	// 62 <wifi_dhcpc_do_request+0x62>
  20:	3300      	movi      	r3, 0
  22:	953c      	ld.w      	r1, (r5, 0x70)
  24:	34fa      	movi      	r4, 250
  26:	b57b      	st.w      	r3, (r5, 0x6c)
  28:	3302      	movi      	r3, 2
  2a:	4921      	lsri      	r1, r1, 1
  2c:	4482      	lsli      	r4, r4, 2
  2e:	dc650068 	st.b      	r3, (r5, 0x68)
  32:	7d04      	mult      	r4, r1
  34:	100e      	lrw      	r0, 0x0	// 6c <wifi_dhcpc_do_request+0x6c>
  36:	e0000000 	bsr      	0x0	// 0 <hgprintf>
  3a:	d86600f9 	ld.b      	r3, (r6, 0xf9)
  3e:	e4632004 	andi      	r3, r3, 4
  42:	e9030007 	bez      	r3, 0x50	// 50 <wifi_dhcpc_do_request+0x50>
  46:	6c53      	mov      	r1, r4
  48:	e405003f 	addi      	r0, r5, 64
  4c:	e0000000 	bsr      	0x0	// 0 <os_timer_start>
  50:	3000      	movi      	r0, 0
  52:	1493      	pop      	r4-r6, r15
  54:	3103      	movi      	r1, 3
  56:	6c17      	mov      	r0, r5
  58:	34fa      	movi      	r4, 250
  5a:	e0000000 	bsr      	0x0	// 0 <wifi_dhcpc_do_request>
  5e:	4481      	lsli      	r4, r4, 1
  60:	07ed      	br      	0x3a	// 3a <wifi_dhcpc_do_request+0x3a>
  62:	3101      	movi      	r1, 1
  64:	07f9      	br      	0x56	// 56 <wifi_dhcpc_do_request+0x56>
	...

Disassembly of section .text.wifi_dhcpc_proc_cmd:

00000000 <wifi_dhcpc_proc_cmd>:
   0:	14d3      	push      	r4-r6, r15
   2:	6d43      	mov      	r5, r0
   4:	9100      	ld.w      	r0, (r1, 0x0)
   6:	6d07      	mov      	r4, r1
   8:	9047      	ld.w      	r2, (r0, 0x1c)
   a:	8262      	ld.b      	r3, (r2, 0x2)
   c:	3b4d      	cmpnei      	r3, 13
   e:	080f      	bt      	0x2c	// 2c <wifi_dhcpc_proc_cmd+0x2c>
  10:	8269      	ld.b      	r3, (r2, 0x9)
  12:	8228      	ld.b      	r1, (r2, 0x8)
  14:	4368      	lsli      	r3, r3, 8
  16:	6cc4      	or      	r3, r1
  18:	eb430062 	cmpnei      	r3, 98
  1c:	0c0a      	bf      	0x30	// 30 <wifi_dhcpc_proc_cmd+0x30>
  1e:	eb430063 	cmpnei      	r3, 99
  22:	0c32      	bf      	0x86	// 86 <wifi_dhcpc_proc_cmd+0x86>
  24:	ea00020b 	movi      	r0, 523
  28:	6c02      	nor      	r0, r0
  2a:	0447      	br      	0xb8	// b8 <wifi_dhcpc_proc_cmd+0xb8>
  2c:	8268      	ld.b      	r3, (r2, 0x8)
  2e:	07f5      	br      	0x18	// 18 <wifi_dhcpc_proc_cmd+0x18>
  30:	1184      	lrw      	r4, 0x0	// c0 <wifi_dhcpc_proc_cmd+0xc0>
  32:	846c      	ld.b      	r3, (r4, 0xc)
  34:	2b00      	subi      	r3, 1
  36:	74cc      	zextb      	r3, r3
  38:	3b01      	cmphsi      	r3, 2
  3a:	0bf5      	bt      	0x24	// 24 <wifi_dhcpc_proc_cmd+0x24>
  3c:	d86400f9 	ld.b      	r3, (r4, 0xf9)
  40:	820c      	ld.b      	r0, (r2, 0xc)
  42:	c4435443 	zext      	r3, r3, 2, 2
  46:	640e      	cmpne      	r3, r0
  48:	0c18      	bf      	0x78	// 78 <wifi_dhcpc_proc_cmd+0x78>
  4a:	e0000000 	bsr      	0x0	// 0 <wificfg_set_dhcpc_en>
  4e:	3300      	movi      	r3, 0
  50:	dc650068 	st.b      	r3, (r5, 0x68)
  54:	d80400f9 	ld.b      	r0, (r4, 0xf9)
  58:	e4802004 	andi      	r4, r0, 4
  5c:	3600      	movi      	r6, 0
  5e:	b5df      	st.w      	r6, (r5, 0x7c)
  60:	e904000e 	bez      	r4, 0x7c	// 7c <wifi_dhcpc_proc_cmd+0x7c>
  64:	e405001f 	addi      	r0, r5, 32
  68:	e0000000 	bsr      	0x0	// 0 <wifi_dhcpc_proc_cmd>
  6c:	6c5b      	mov      	r1, r6
  6e:	ea00ffff 	movi      	r0, 65535
  72:	2005      	addi      	r0, 6
  74:	e0000000 	bsr      	0x0	// 0 <sys_event_new>
  78:	3000      	movi      	r0, 0
  7a:	041f      	br      	0xb8	// b8 <wifi_dhcpc_proc_cmd+0xb8>
  7c:	e405003f 	addi      	r0, r5, 64
  80:	e0000000 	bsr      	0x0	// 0 <os_timer_stop>
  84:	07fa      	br      	0x78	// 78 <wifi_dhcpc_proc_cmd+0x78>
  86:	104f      	lrw      	r2, 0x0	// c0 <wifi_dhcpc_proc_cmd+0xc0>
  88:	826c      	ld.b      	r3, (r2, 0xc)
  8a:	2b00      	subi      	r3, 1
  8c:	74cc      	zextb      	r3, r3
  8e:	3b01      	cmphsi      	r3, 2
  90:	0bca      	bt      	0x24	// 24 <wifi_dhcpc_proc_cmd+0x24>
  92:	d86200f9 	ld.b      	r3, (r2, 0xf9)
  96:	e4632004 	andi      	r3, r3, 4
  9a:	e903ffc5 	bez      	r3, 0x24	// 24 <wifi_dhcpc_proc_cmd+0x24>
  9e:	e4250073 	addi      	r1, r5, 116
  a2:	3218      	movi      	r2, 24
  a4:	e0000000 	bsr      	0x0	// 0 <wifi_mgr_alloc_resp>
  a8:	6d43      	mov      	r5, r0
  aa:	e9000008 	bez      	r0, 0xba	// ba <wifi_dhcpc_proc_cmd+0xba>
  ae:	9400      	ld.w      	r0, (r4, 0x0)
  b0:	e0000000 	bsr      	0x0	// 0 <kfree_skb>
  b4:	b4a0      	st.w      	r5, (r4, 0x0)
  b6:	3018      	movi      	r0, 24
  b8:	1493      	pop      	r4-r6, r15
  ba:	3000      	movi      	r0, 0
  bc:	280b      	subi      	r0, 12
  be:	07fd      	br      	0xb8	// b8 <wifi_dhcpc_proc_cmd+0xb8>
  c0:	00000000 	.long	0x00000000

Disassembly of section .text.wifi_mgr_enable_dhcpc:

00000000 <wifi_mgr_enable_dhcpc>:
   0:	14d2      	push      	r4-r5, r15
   2:	108d      	lrw      	r4, 0x0	// 34 <wifi_mgr_enable_dhcpc+0x34>
   4:	106d      	lrw      	r3, 0x0	// 38 <wifi_mgr_enable_dhcpc+0x38>
   6:	3500      	movi      	r5, 0
   8:	b46f      	st.w      	r3, (r4, 0x3c)
   a:	d864002c 	ld.b      	r3, (r4, 0x2c)
   e:	c4655c83 	ins      	r3, r5, 7, 3
  12:	6c13      	mov      	r0, r4
  14:	dc64002c 	st.b      	r3, (r4, 0x2c)
  18:	e0000000 	bsr      	0x0	// 0 <wifi_mgr_add_submod>
  1c:	6cd3      	mov      	r3, r4
  1e:	6c97      	mov      	r2, r5
  20:	1027      	lrw      	r1, 0x0	// 3c <wifi_mgr_enable_dhcpc+0x3c>
  22:	e404003f 	addi      	r0, r4, 64
  26:	e0000000 	bsr      	0x0	// 0 <os_timer_init>
  2a:	1006      	lrw      	r0, 0x0	// 40 <ieee80211_register_pkthook+0x40>
  2c:	e0000000 	bsr      	0x0	// 0 <ieee80211_register_pkthook>
  30:	1492      	pop      	r4-r5, r15
	...
