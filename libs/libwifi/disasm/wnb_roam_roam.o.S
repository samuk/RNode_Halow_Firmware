
libwifi/o/wnb_roam_roam.o:     file format elf32-csky-little


Disassembly of section .text.ieee80211_wnb_roaming_timer_cb:

00000000 <ieee80211_wnb_roaming_timer_cb>:
   0:	14d0      	push      	r15
   2:	d8402065 	ld.w      	r2, (r0, 0x194)
   6:	5a62      	addi      	r3, r2, 1
   8:	d8202066 	ld.w      	r1, (r0, 0x198)
   c:	644d      	cmplt      	r3, r1
   e:	c423008c 	subu      	r12, r3, r1
  12:	c46c0c20 	incf      	r3, r12, 0
  16:	d8202064 	ld.w      	r1, (r0, 0x190)
  1a:	644e      	cmpne      	r3, r1
  1c:	0c07      	bf      	0x2a	// 2a <ieee80211_wnb_roaming_timer_cb+0x2a>
  1e:	6080      	addu      	r2, r0
  20:	3113      	movi      	r1, 19
  22:	dc22019c 	st.b      	r1, (r2, 0x19c)
  26:	dc602065 	st.w      	r3, (r0, 0x194)
  2a:	d800202a 	ld.w      	r0, (r0, 0xa8)
  2e:	e0000000 	bsr      	0x0	// 0 <os_sema_up>
  32:	1490      	pop      	r15

Disassembly of section .text.ieee80211_wnb_roaming_send_notify_to_oldap:

00000000 <ieee80211_wnb_roaming_send_notify_to_oldap>:
   0:	14d4      	push      	r4-r7, r15
   2:	1421      	subi      	r14, r14, 4
   4:	d86100c8 	ld.b      	r3, (r1, 0xc8)
   8:	e46320fc 	andi      	r3, r3, 252
   c:	6dc3      	mov      	r7, r0
   e:	6d47      	mov      	r5, r1
  10:	e903004e 	bez      	r3, 0xac	// ac <ieee80211_wnb_roaming_send_notify_to_oldap+0xac>
  14:	11c7      	lrw      	r6, 0x0	// b0 <ieee80211_wnb_roaming_send_notify_to_oldap+0xb0>
  16:	d806003a 	ld.b      	r0, (r6, 0x3a)
  1a:	d8660038 	ld.b      	r3, (r6, 0x38)
  1e:	60c0      	addu      	r3, r0
  20:	d846003b 	ld.b      	r2, (r6, 0x3b)
  24:	d8060039 	ld.b      	r0, (r6, 0x39)
  28:	233f      	addi      	r3, 64
  2a:	6008      	addu      	r0, r2
  2c:	600c      	addu      	r0, r3
  2e:	e0000000 	bsr      	0x0	// 0 <alloc_skb>
  32:	6d03      	mov      	r4, r0
  34:	e9000034 	bez      	r0, 0x9c	// 9c <ieee80211_wnb_roaming_send_notify_to_oldap+0x9c>
  38:	d866003a 	ld.b      	r3, (r6, 0x3a)
  3c:	d8260038 	ld.b      	r1, (r6, 0x38)
  40:	604c      	addu      	r1, r3
  42:	e0000000 	bsr      	0x0	// 0 <skb_reserve>
  46:	3206      	movi      	r2, 6
  48:	e42500bb 	addi      	r1, r5, 188
  4c:	9407      	ld.w      	r0, (r4, 0x1c)
  4e:	e0000000 	bsr      	0x0	// 0 <memcpy>
  52:	3206      	movi      	r2, 6
  54:	9407      	ld.w      	r0, (r4, 0x1c)
  56:	5f28      	addu      	r1, r7, r2
  58:	6008      	addu      	r0, r2
  5a:	e0000000 	bsr      	0x0	// 0 <memcpy>
  5e:	9467      	ld.w      	r3, (r4, 0x1c)
  60:	3248      	movi      	r2, 72
  62:	a34c      	st.b      	r2, (r3, 0xc)
  64:	3253      	movi      	r2, 83
  66:	a34d      	st.b      	r2, (r3, 0xd)
  68:	9467      	ld.w      	r3, (r4, 0x1c)
  6a:	3200      	movi      	r2, 0
  6c:	a34e      	st.b      	r2, (r3, 0xe)
  6e:	3200      	movi      	r2, 0
  70:	2a5f      	subi      	r2, 96
  72:	a34f      	st.b      	r2, (r3, 0xf)
  74:	9407      	ld.w      	r0, (r4, 0x1c)
  76:	3206      	movi      	r2, 6
  78:	e425001b 	addi      	r1, r5, 28
  7c:	200f      	addi      	r0, 16
  7e:	e0000000 	bsr      	0x0	// 0 <memcpy>
  82:	3116      	movi      	r1, 22
  84:	6c13      	mov      	r0, r4
  86:	e0000000 	bsr      	0x0	// 0 <skb_put>
  8a:	6c53      	mov      	r1, r4
  8c:	6c1f      	mov      	r0, r7
  8e:	e0000000 	bsr      	0x0	// 0 <ieee80211_recv_skb>
  92:	d86500c8 	ld.b      	r3, (r5, 0xc8)
  96:	23fb      	addi      	r3, 252
  98:	dc6500c8 	st.b      	r3, (r5, 0xc8)
  9c:	b8a0      	st.w      	r5, (r14, 0x0)
  9e:	6cdf      	mov      	r3, r7
  a0:	1045      	lrw      	r2, 0x0	// b4 <ieee80211_wnb_roaming_send_notify_to_oldap+0xb4>
  a2:	ea01c350 	movi      	r1, 50000
  a6:	3000      	movi      	r0, 0
  a8:	e0000000 	bsr      	0x0	// 0 <eloop_register_timeout>
  ac:	1401      	addi      	r14, r14, 4
  ae:	1494      	pop      	r4-r7, r15
	...

Disassembly of section .text.ieee80211_wnb_rx_roam_request:

00000000 <ieee80211_wnb_rx_roam_request>:
   0:	14d4      	push      	r4-r7, r15
   2:	1424      	subi      	r14, r14, 16
   4:	9062      	ld.w      	r3, (r0, 0x8)
   6:	90c0      	ld.w      	r6, (r0, 0x0)
   8:	93a7      	ld.w      	r5, (r3, 0x1c)
   a:	3306      	movi      	r3, 6
   c:	dc6e1002 	st.h      	r3, (r14, 0x4)
  10:	3206      	movi      	r2, 6
  12:	3300      	movi      	r3, 0
  14:	e4850009 	addi      	r4, r5, 10
  18:	dc6e1003 	st.h      	r3, (r14, 0x6)
  1c:	e4e50017 	addi      	r7, r5, 24
  20:	3300      	movi      	r3, 0
  22:	5d2e      	addi      	r1, r5, 4
  24:	5e08      	addu      	r0, r6, r2
  26:	b880      	st.w      	r4, (r14, 0x0)
  28:	b8e2      	st.w      	r7, (r14, 0x8)
  2a:	b863      	st.w      	r3, (r14, 0xc)
  2c:	e0000000 	bsr      	0x0	// 0 <memcmp>
  30:	e9200023 	bnez      	r0, 0x76	// 76 <ieee80211_wnb_rx_roam_request+0x76>
  34:	6c53      	mov      	r1, r4
  36:	6c1b      	mov      	r0, r6
  38:	e0000000 	bsr      	0x0	// 0 <ieee80211_sta_get>
  3c:	6d03      	mov      	r4, r0
  3e:	e900001c 	bez      	r0, 0x76	// 76 <ieee80211_wnb_rx_roam_request+0x76>
  42:	857c      	ld.b      	r3, (r5, 0x1c)
  44:	e4632001 	andi      	r3, r3, 1
  48:	e9030019 	bez      	r3, 0x7a	// 7a <ieee80211_wnb_rx_roam_request+0x7a>
  4c:	e0000000 	bsr      	0x0	// 0 <os_jiffies>
  50:	d86400c8 	ld.b      	r3, (r4, 0xc8)
  54:	3201      	movi      	r2, 1
  56:	c4625c20 	ins      	r3, r2, 1, 0
  5a:	dc042031 	st.w      	r0, (r4, 0xc4)
  5e:	dc6400c8 	st.b      	r3, (r4, 0xc8)
  62:	8578      	ld.b      	r3, (r5, 0x18)
  64:	3201      	movi      	r2, 1
  66:	c4625c07 	ins      	r3, r2, 7, 7
  6a:	a578      	st.b      	r3, (r5, 0x18)
  6c:	6cbb      	mov      	r2, r14
  6e:	3100      	movi      	r1, 0
  70:	6c1b      	mov      	r0, r6
  72:	e0000000 	bsr      	0x0	// 0 <ieee80211_wnb_tx_mgmt>
  76:	1404      	addi      	r14, r14, 16
  78:	1494      	pop      	r4-r7, r15
  7a:	d84000c8 	ld.b      	r2, (r0, 0xc8)
  7e:	c4435c20 	ins      	r2, r3, 1, 0
  82:	dc4000c8 	st.b      	r2, (r0, 0xc8)
  86:	3117      	movi      	r1, 23
  88:	e440001b 	addi      	r2, r0, 28
  8c:	d8062029 	ld.w      	r0, (r6, 0xa4)
  90:	e0000000 	bsr      	0x0	// 0 <lmac_ioctl>
  94:	07e7      	br      	0x62	// 62 <ieee80211_wnb_rx_roam_request+0x62>

Disassembly of section .text.ieee80211_wnb_roaming_fail:

00000000 <ieee80211_wnb_roaming_fail>:
   0:	14d2      	push      	r4-r5, r15
   2:	6d03      	mov      	r4, r0
   4:	d800205d 	ld.w      	r0, (r0, 0x174)
   8:	203b      	addi      	r0, 60
   a:	e0000000 	bsr      	0x0	// 0 <os_timer_stop>
   e:	d864205d 	ld.w      	r3, (r4, 0x174)
  12:	83a1      	ld.b      	r5, (r3, 0x1)
  14:	3d44      	cmpnei      	r5, 4
  16:	0c04      	bf      	0x1e	// 1e <ieee80211_wnb_roaming_fail+0x1e>
  18:	3d45      	cmpnei      	r5, 5
  1a:	0c49      	bf      	0xac	// ac <ieee80211_wnb_roaming_fail+0xac>
  1c:	1492      	pop      	r4-r5, r15
  1e:	8368      	ld.b      	r3, (r3, 0x8)
  20:	112d      	lrw      	r1, 0x0	// d4 <ieee80211_wnb_roaming_fail+0xd4>
  22:	3242      	movi      	r2, 66
  24:	110d      	lrw      	r0, 0x0	// d8 <ieee80211_wnb_roaming_fail+0xd8>
  26:	e0000000 	bsr      	0x0	// 0 <hgprintf>
  2a:	d864205d 	ld.w      	r3, (r4, 0x174)
  2e:	8328      	ld.b      	r1, (r3, 0x8)
  30:	8473      	ld.b      	r3, (r4, 0x13)
  32:	644e      	cmpne      	r3, r1
  34:	0c0d      	bf      	0x4e	// 4e <ieee80211_wnb_roaming_fail+0x4e>
  36:	d864003d 	ld.b      	r3, (r4, 0x3d)
  3a:	c4655cc1 	ins      	r3, r5, 7, 1
  3e:	3201      	movi      	r2, 1
  40:	c4625c00 	ins      	r3, r2, 0, 0
  44:	dc64003d 	st.b      	r3, (r4, 0x3d)
  48:	6c13      	mov      	r0, r4
  4a:	e0000000 	bsr      	0x0	// 0 <ieee80211_set_channel>
  4e:	d844205d 	ld.w      	r2, (r4, 0x174)
  52:	3306      	movi      	r3, 6
  54:	220d      	addi      	r2, 14
  56:	3123      	movi      	r1, 35
  58:	6c13      	mov      	r0, r4
  5a:	e0000000 	bsr      	0x0	// 0 <ieee80211_iface_event>
  5e:	d824205d 	ld.w      	r1, (r4, 0x174)
  62:	3305      	movi      	r3, 5
  64:	a161      	st.b      	r3, (r1, 0x1)
  66:	d844202b 	ld.w      	r2, (r4, 0xac)
  6a:	3301      	movi      	r3, 1
  6c:	8240      	ld.b      	r2, (r2, 0x0)
  6e:	210d      	addi      	r1, 14
  70:	d804202a 	ld.w      	r0, (r4, 0xa8)
  74:	e0000000 	bsr      	0x0	// 0 <ieee80211_bss_disable>
  78:	3304      	movi      	r3, 4
  7a:	d8442065 	ld.w      	r2, (r4, 0x194)
  7e:	d8242066 	ld.w      	r1, (r4, 0x198)
  82:	a472      	st.b      	r3, (r4, 0x12)
  84:	5a62      	addi      	r3, r2, 1
  86:	644d      	cmplt      	r3, r1
  88:	5b05      	subu      	r0, r3, r1
  8a:	c4600c20 	incf      	r3, r0, 0
  8e:	d8242064 	ld.w      	r1, (r4, 0x190)
  92:	644e      	cmpne      	r3, r1
  94:	0c07      	bf      	0xa2	// a2 <ieee80211_wnb_roaming_fail+0xa2>
  96:	6090      	addu      	r2, r4
  98:	3106      	movi      	r1, 6
  9a:	dc22019c 	st.b      	r1, (r2, 0x19c)
  9e:	dc642065 	st.w      	r3, (r4, 0x194)
  a2:	d804202a 	ld.w      	r0, (r4, 0xa8)
  a6:	e0000000 	bsr      	0x0	// 0 <os_sema_up>
  aa:	07b9      	br      	0x1c	// 1c <ieee80211_wnb_roaming_fail+0x1c>
  ac:	102a      	lrw      	r1, 0x0	// d4 <ieee80211_wnb_roaming_fail+0xd4>
  ae:	324f      	movi      	r2, 79
  b0:	100b      	lrw      	r0, 0x0	// dc <ieee80211_wnb_roaming_fail+0xdc>
  b2:	e0000000 	bsr      	0x0	// 0 <hgprintf>
  b6:	d864205d 	ld.w      	r3, (r4, 0x174)
  ba:	3201      	movi      	r2, 1
  bc:	a341      	st.b      	r2, (r3, 0x1)
  be:	6c13      	mov      	r0, r4
  c0:	e0000000 	bsr      	0x0	// 0 <ieee80211_sta_disconnect>
  c4:	3301      	movi      	r3, 1
  c6:	3200      	movi      	r2, 0
  c8:	310a      	movi      	r1, 10
  ca:	6c13      	mov      	r0, r4
  cc:	e0000000 	bsr      	0x0	// 0 <ieee80211_iface_event>
  d0:	07a6      	br      	0x1c	// 1c <ieee80211_wnb_roaming_fail+0x1c>
	...

Disassembly of section .text.ieee80211_wnb_roaming_receive_from_opposite:

00000000 <ieee80211_wnb_roaming_receive_from_opposite>:
   0:	14d6      	push      	r4-r9, r15
   2:	8062      	ld.b      	r3, (r0, 0x2)
   4:	e4632070 	andi      	r3, r3, 112
   8:	eb430020 	cmpnei      	r3, 32
   c:	6e03      	mov      	r8, r0
   e:	6d87      	mov      	r6, r1
  10:	0c03      	bf      	0x16	// 16 <ieee80211_wnb_roaming_receive_from_opposite+0x16>
  12:	3000      	movi      	r0, 0
  14:	1496      	pop      	r4-r9, r15
  16:	9187      	ld.w      	r4, (r1, 0x1c)
  18:	e5200005 	addi      	r9, r0, 6
  1c:	3206      	movi      	r2, 6
  1e:	6c67      	mov      	r1, r9
  20:	6c13      	mov      	r0, r4
  22:	e0000000 	bsr      	0x0	// 0 <memcmp>
  26:	6d43      	mov      	r5, r0
  28:	e920fff5 	bnez      	r0, 0x12	// 12 <ieee80211_wnb_roaming_receive_from_opposite+0x12>
  2c:	84ee      	ld.b      	r7, (r4, 0xe)
  2e:	846f      	ld.b      	r3, (r4, 0xf)
  30:	47e8      	lsli      	r7, r7, 8
  32:	6dcc      	or      	r7, r3
  34:	e424000f 	addi      	r1, r4, 16
  38:	6c23      	mov      	r0, r8
  3a:	e0000000 	bsr      	0x0	// 0 <ieee80211_sta_get>
  3e:	eb4700a0 	cmpnei      	r7, 160
  42:	6d03      	mov      	r4, r0
  44:	0852      	bt      	0xe8	// e8 <ieee80211_wnb_roaming_receive_from_opposite+0xe8>
  46:	e9200004 	bnez      	r0, 0x4e	// 4e <ieee80211_wnb_roaming_receive_from_opposite+0x4e>
  4a:	3001      	movi      	r0, 1
  4c:	07e4      	br      	0x14	// 14 <ieee80211_wnb_roaming_receive_from_opposite+0x14>
  4e:	d8600025 	ld.b      	r3, (r0, 0x25)
  52:	e4632008 	andi      	r3, r3, 8
  56:	e903fffa 	bez      	r3, 0x4a	// 4a <ieee80211_wnb_roaming_receive_from_opposite+0x4a>
  5a:	d86000c8 	ld.b      	r3, (r0, 0xc8)
  5e:	e4432003 	andi      	r2, r3, 3
  62:	3a41      	cmpnei      	r2, 1
  64:	0bf3      	bt      	0x4a	// 4a <ieee80211_wnb_roaming_receive_from_opposite+0x4a>
  66:	3202      	movi      	r2, 2
  68:	c4625c20 	ins      	r3, r2, 1, 0
  6c:	dc6000c8 	st.b      	r3, (r0, 0xc8)
  70:	3206      	movi      	r2, 6
  72:	9627      	ld.w      	r1, (r6, 0x1c)
  74:	6048      	addu      	r1, r2
  76:	20bb      	addi      	r0, 188
  78:	e0000000 	bsr      	0x0	// 0 <memcpy>
  7c:	3206      	movi      	r2, 6
  7e:	9607      	ld.w      	r0, (r6, 0x1c)
  80:	5828      	addu      	r1, r0, r2
  82:	e0000000 	bsr      	0x0	// 0 <memcpy>
  86:	3206      	movi      	r2, 6
  88:	9607      	ld.w      	r0, (r6, 0x1c)
  8a:	6c67      	mov      	r1, r9
  8c:	6008      	addu      	r0, r2
  8e:	e0000000 	bsr      	0x0	// 0 <memcpy>
  92:	9667      	ld.w      	r3, (r6, 0x1c)
  94:	3248      	movi      	r2, 72
  96:	a34c      	st.b      	r2, (r3, 0xc)
  98:	3253      	movi      	r2, 83
  9a:	a34d      	st.b      	r2, (r3, 0xd)
  9c:	9667      	ld.w      	r3, (r6, 0x1c)
  9e:	3200      	movi      	r2, 0
  a0:	2a5d      	subi      	r2, 94
  a2:	a3ae      	st.b      	r5, (r3, 0xe)
  a4:	a34f      	st.b      	r2, (r3, 0xf)
  a6:	9607      	ld.w      	r0, (r6, 0x1c)
  a8:	e424001b 	addi      	r1, r4, 28
  ac:	3206      	movi      	r2, 6
  ae:	200f      	addi      	r0, 16
  b0:	e0000000 	bsr      	0x0	// 0 <memcpy>
  b4:	6c5b      	mov      	r1, r6
  b6:	6c23      	mov      	r0, r8
  b8:	e0000000 	bsr      	0x0	// 0 <ieee80211_recv_skb>
  bc:	240f      	addi      	r4, 16
  be:	e4a801bb 	addi      	r5, r8, 444
  c2:	6c13      	mov      	r0, r4
  c4:	e0000000 	bsr      	0x0	// 0 <skb_list_count>
  c8:	e900ffc1 	bez      	r0, 0x4a	// 4a <ieee80211_wnb_roaming_receive_from_opposite+0x4a>
  cc:	6c13      	mov      	r0, r4
  ce:	e0000000 	bsr      	0x0	// 0 <skb_list_dequeue>
  d2:	6c43      	mov      	r1, r0
  d4:	e900fff7 	bez      	r0, 0xc2	// c2 <ieee80211_wnb_roaming_receive_from_opposite+0xc2>
  d8:	6c17      	mov      	r0, r5
  da:	e0000000 	bsr      	0x0	// 0 <skb_list_queue>
  de:	d808202a 	ld.w      	r0, (r8, 0xa8)
  e2:	e0000000 	bsr      	0x0	// 0 <os_sema_up>
  e6:	07ee      	br      	0xc2	// c2 <ieee80211_wnb_roaming_receive_from_opposite+0xc2>
  e8:	eb4700a1 	cmpnei      	r7, 161
  ec:	0806      	bt      	0xf8	// f8 <ieee80211_wnb_roaming_receive_from_opposite+0xf8>
  ee:	3110      	movi      	r1, 16
  f0:	6c1b      	mov      	r0, r6
  f2:	e0000000 	bsr      	0x0	// 0 <skb_pull>
  f6:	078e      	br      	0x12	// 12 <ieee80211_wnb_roaming_receive_from_opposite+0x12>
  f8:	eb4700a2 	cmpnei      	r7, 162
  fc:	0b8b      	bt      	0x12	// 12 <ieee80211_wnb_roaming_receive_from_opposite+0x12>
  fe:	e900ffa6 	bez      	r0, 0x4a	// 4a <ieee80211_wnb_roaming_receive_from_opposite+0x4a>
 102:	d86000c8 	ld.b      	r3, (r0, 0xc8)
 106:	c4655ca2 	ins      	r3, r5, 7, 2
 10a:	dc6000c8 	st.b      	r3, (r0, 0xc8)
 10e:	079e      	br      	0x4a	// 4a <ieee80211_wnb_roaming_receive_from_opposite+0x4a>

Disassembly of section .text.ieee80211_wnb_roaming_do_notify_roam_in:

00000000 <ieee80211_wnb_roaming_do_notify_roam_in>:
   0:	14d1      	push      	r4, r15
   2:	d9800002 	ld.b      	r12, (r0, 0x2)
   6:	e58c2070 	andi      	r12, r12, 112
   a:	eb4c0020 	cmpnei      	r12, 32
   e:	081d      	bt      	0x48	// 48 <ieee80211_wnb_roaming_do_notify_roam_in+0x48>
  10:	d9814025 	ld.bs      	r12, (r1, 0x25)
  14:	e9ac001a 	bhsz      	r12, 0x48	// 48 <ieee80211_wnb_roaming_do_notify_roam_in+0x48>
  18:	e9020018 	bez      	r2, 0x48	// 48 <ieee80211_wnb_roaming_do_notify_roam_in+0x48>
  1c:	8381      	ld.b      	r4, (r3, 0x1)
  1e:	d9830000 	ld.b      	r12, (r3, 0x0)
  22:	6f10      	or      	r12, r4
  24:	8382      	ld.b      	r4, (r3, 0x2)
  26:	6f10      	or      	r12, r4
  28:	8383      	ld.b      	r4, (r3, 0x3)
  2a:	6f10      	or      	r12, r4
  2c:	8384      	ld.b      	r4, (r3, 0x4)
  2e:	6f10      	or      	r12, r4
  30:	8365      	ld.b      	r3, (r3, 0x5)
  32:	6cf0      	or      	r3, r12
  34:	e903000a 	bez      	r3, 0x48	// 48 <ieee80211_wnb_roaming_do_notify_roam_in+0x48>
  38:	d86100c8 	ld.b      	r3, (r1, 0xc8)
  3c:	c4625ca2 	ins      	r3, r2, 7, 2
  40:	dc6100c8 	st.b      	r3, (r1, 0xc8)
  44:	e0000000 	bsr      	0x0	// 0 <ieee80211_wnb_roaming_do_notify_roam_in>
  48:	1491      	pop      	r4, r15

Disassembly of section .text.ieee80211_wnb_roaming_sta_cache_data:

00000000 <ieee80211_wnb_roaming_sta_cache_data>:
   0:	14d2      	push      	r4-r5, r15
   2:	9167      	ld.w      	r3, (r1, 0x1c)
   4:	6d03      	mov      	r4, r0
   6:	8370      	ld.b      	r3, (r3, 0x10)
   8:	e4632001 	andi      	r3, r3, 1
   c:	6d47      	mov      	r5, r1
   e:	e923001d 	bnez      	r3, 0x48	// 48 <ieee80211_wnb_roaming_sta_cache_data+0x48>
  12:	8042      	ld.b      	r2, (r0, 0x2)
  14:	e4422070 	andi      	r2, r2, 112
  18:	3a50      	cmpnei      	r2, 16
  1a:	0815      	bt      	0x44	// 44 <ieee80211_wnb_roaming_sta_cache_data+0x44>
  1c:	d840205d 	ld.w      	r2, (r0, 0x174)
  20:	8241      	ld.b      	r2, (r2, 0x1)
  22:	3a01      	cmphsi      	r2, 2
  24:	0c10      	bf      	0x44	// 44 <ieee80211_wnb_roaming_sta_cache_data+0x44>
  26:	8052      	ld.b      	r2, (r0, 0x12)
  28:	3a49      	cmpnei      	r2, 9
  2a:	080d      	bt      	0x44	// 44 <ieee80211_wnb_roaming_sta_cache_data+0x44>
  2c:	e0000000 	bsr      	0x0	// 0 <ieee80211_data_to_8023>
  30:	6c57      	mov      	r1, r5
  32:	e40401bb 	addi      	r0, r4, 444
  36:	e0000000 	bsr      	0x0	// 0 <skb_list_queue>
  3a:	d804202a 	ld.w      	r0, (r4, 0xa8)
  3e:	e0000000 	bsr      	0x0	// 0 <os_sema_up>
  42:	3301      	movi      	r3, 1
  44:	6c0f      	mov      	r0, r3
  46:	1492      	pop      	r4-r5, r15
  48:	3300      	movi      	r3, 0
  4a:	07fd      	br      	0x44	// 44 <ieee80211_wnb_roaming_sta_cache_data+0x44>

Disassembly of section .text.ieee80211_wnb_roaming_ap_cache_data:

00000000 <ieee80211_wnb_roaming_ap_cache_data>:
   0:	14d2      	push      	r4-r5, r15
   2:	9167      	ld.w      	r3, (r1, 0x1c)
   4:	6d47      	mov      	r5, r1
   6:	8370      	ld.b      	r3, (r3, 0x10)
   8:	e4632001 	andi      	r3, r3, 1
   c:	6d0b      	mov      	r4, r2
   e:	e923001f 	bnez      	r3, 0x4c	// 4c <ieee80211_wnb_roaming_ap_cache_data+0x4c>
  12:	8042      	ld.b      	r2, (r0, 0x2)
  14:	e4422070 	andi      	r2, r2, 112
  18:	eb420020 	cmpnei      	r2, 32
  1c:	0818      	bt      	0x4c	// 4c <ieee80211_wnb_roaming_ap_cache_data+0x4c>
  1e:	d84400c8 	ld.b      	r2, (r4, 0xc8)
  22:	e4422003 	andi      	r2, r2, 3
  26:	e9020013 	bez      	r2, 0x4c	// 4c <ieee80211_wnb_roaming_ap_cache_data+0x4c>
  2a:	8052      	ld.b      	r2, (r0, 0x12)
  2c:	3a49      	cmpnei      	r2, 9
  2e:	080f      	bt      	0x4c	// 4c <ieee80211_wnb_roaming_ap_cache_data+0x4c>
  30:	240f      	addi      	r4, 16
  32:	e0000000 	bsr      	0x0	// 0 <ieee80211_data_to_8023>
  36:	6c13      	mov      	r0, r4
  38:	e0000000 	bsr      	0x0	// 0 <skb_list_count>
  3c:	3804      	cmphsi      	r0, 5
  3e:	0805      	bt      	0x48	// 48 <ieee80211_wnb_roaming_ap_cache_data+0x48>
  40:	6c57      	mov      	r1, r5
  42:	6c13      	mov      	r0, r4
  44:	e0000000 	bsr      	0x0	// 0 <skb_list_queue_head>
  48:	3001      	movi      	r0, 1
  4a:	0402      	br      	0x4e	// 4e <ieee80211_wnb_roaming_ap_cache_data+0x4e>
  4c:	3000      	movi      	r0, 0
  4e:	1492      	pop      	r4-r5, r15

Disassembly of section .text.ieee80211_wnb_roaming_do_forward:

00000000 <ieee80211_wnb_roaming_do_forward>:
   0:	1426      	subi      	r14, r14, 24
   2:	b880      	st.w      	r4, (r14, 0x0)
   4:	b8a1      	st.w      	r5, (r14, 0x4)
   6:	b8c2      	st.w      	r6, (r14, 0x8)
   8:	dd0e2003 	st.w      	r8, (r14, 0xc)
   c:	dd2e2004 	st.w      	r9, (r14, 0x10)
  10:	ddee2005 	st.w      	r15, (r14, 0x14)
  14:	8062      	ld.b      	r3, (r0, 0x2)
  16:	e4632070 	andi      	r3, r3, 112
  1a:	eb430020 	cmpnei      	r3, 32
  1e:	6e03      	mov      	r8, r0
  20:	6d47      	mov      	r5, r1
  22:	6d8b      	mov      	r6, r2
  24:	085c      	bt      	0xdc	// dc <ieee80211_wnb_roaming_do_forward+0xdc>
  26:	e901005b 	bez      	r1, 0xdc	// dc <ieee80211_wnb_roaming_do_forward+0xdc>
  2a:	d86100c8 	ld.b      	r3, (r1, 0xc8)
  2e:	e4632003 	andi      	r3, r3, 3
  32:	e9030057 	bez      	r3, 0xe0	// e0 <ieee80211_wnb_roaming_do_forward+0xe0>
  36:	6c4b      	mov      	r1, r2
  38:	e0000000 	bsr      	0x0	// 0 <ieee80211_data_to_8023>
  3c:	d80500c8 	ld.b      	r0, (r5, 0xc8)
  40:	e4802003 	andi      	r4, r0, 3
  44:	3c41      	cmpnei      	r4, 1
  46:	082a      	bt      	0x9a	// 9a <ieee80211_wnb_roaming_do_forward+0x9a>
  48:	d8652031 	ld.w      	r3, (r5, 0xc4)
  4c:	e50301f3 	addi      	r8, r3, 500
  50:	ea090000 	movi      	r9, 0
  54:	e0000000 	bsr      	0x0	// 0 <os_jiffies>
  58:	6400      	cmphs      	r0, r0
  5a:	c4080100 	subc      	r0, r8, r0
  5e:	c4290101 	subc      	r1, r9, r1
  62:	e9a10011 	bhsz      	r1, 0x84	// 84 <ieee80211_wnb_roaming_do_forward+0x84>
  66:	6c1b      	mov      	r0, r6
  68:	e0000000 	bsr      	0x0	// 0 <kfree_skb>
  6c:	3001      	movi      	r0, 1
  6e:	d9ee2005 	ld.w      	r15, (r14, 0x14)
  72:	d92e2004 	ld.w      	r9, (r14, 0x10)
  76:	d90e2003 	ld.w      	r8, (r14, 0xc)
  7a:	98c2      	ld.w      	r6, (r14, 0x8)
  7c:	98a1      	ld.w      	r5, (r14, 0x4)
  7e:	9880      	ld.w      	r4, (r14, 0x0)
  80:	1406      	addi      	r14, r14, 24
  82:	783c      	jmp      	r15
  84:	250f      	addi      	r5, 16
  86:	6c17      	mov      	r0, r5
  88:	e0000000 	bsr      	0x0	// 0 <skb_list_count>
  8c:	3804      	cmphsi      	r0, 5
  8e:	0bec      	bt      	0x66	// 66 <ieee80211_wnb_roaming_do_forward+0x66>
  90:	6c5b      	mov      	r1, r6
  92:	6c17      	mov      	r0, r5
  94:	e0000000 	bsr      	0x0	// 0 <skb_list_queue>
  98:	07ea      	br      	0x6c	// 6c <ieee80211_wnb_roaming_do_forward+0x6c>
  9a:	3110      	movi      	r1, 16
  9c:	6c1b      	mov      	r0, r6
  9e:	e0000000 	bsr      	0x0	// 0 <skb_push>
  a2:	e42500bb 	addi      	r1, r5, 188
  a6:	3206      	movi      	r2, 6
  a8:	9607      	ld.w      	r0, (r6, 0x1c)
  aa:	e0000000 	bsr      	0x0	// 0 <memcpy>
  ae:	3206      	movi      	r2, 6
  b0:	9607      	ld.w      	r0, (r6, 0x1c)
  b2:	c4480021 	addu      	r1, r8, r2
  b6:	6008      	addu      	r0, r2
  b8:	e0000000 	bsr      	0x0	// 0 <memcpy>
  bc:	9667      	ld.w      	r3, (r6, 0x1c)
  be:	3248      	movi      	r2, 72
  c0:	a34c      	st.b      	r2, (r3, 0xc)
  c2:	3253      	movi      	r2, 83
  c4:	a34d      	st.b      	r2, (r3, 0xd)
  c6:	9667      	ld.w      	r3, (r6, 0x1c)
  c8:	3200      	movi      	r2, 0
  ca:	a34e      	st.b      	r2, (r3, 0xe)
  cc:	3200      	movi      	r2, 0
  ce:	2a5e      	subi      	r2, 95
  d0:	a34f      	st.b      	r2, (r3, 0xf)
  d2:	6c5b      	mov      	r1, r6
  d4:	6c23      	mov      	r0, r8
  d6:	e0000000 	bsr      	0x0	// 0 <ieee80211_recv_skb>
  da:	07c9      	br      	0x6c	// 6c <ieee80211_wnb_roaming_do_forward+0x6c>
  dc:	3000      	movi      	r0, 0
  de:	07c8      	br      	0x6e	// 6e <ieee80211_wnb_roaming_do_forward+0x6e>
  e0:	6c0f      	mov      	r0, r3
  e2:	07c6      	br      	0x6e	// 6e <ieee80211_wnb_roaming_do_forward+0x6e>

Disassembly of section .text.ieee80211_wnb_roaming_switch_ap:

00000000 <ieee80211_wnb_roaming_switch_ap>:
   0:	14d2      	push      	r4-r5, r15
   2:	6d03      	mov      	r4, r0
   4:	6d47      	mov      	r5, r1
   6:	e9010055 	bez      	r1, 0xb0	// b0 <ieee80211_wnb_roaming_switch_ap+0xb0>
   a:	d800205d 	ld.w      	r0, (r0, 0x174)
   e:	203b      	addi      	r0, 60
  10:	e0000000 	bsr      	0x0	// 0 <os_timer_stop>
  14:	d804205d 	ld.w      	r0, (r4, 0x174)
  18:	3304      	movi      	r3, 4
  1a:	a061      	st.b      	r3, (r0, 0x1)
  1c:	3220      	movi      	r2, 32
  1e:	e4250011 	addi      	r1, r5, 18
  22:	2019      	addi      	r0, 26
  24:	e0000000 	bsr      	0x0	// 0 <strncpy>
  28:	d804205d 	ld.w      	r0, (r4, 0x174)
  2c:	d8242063 	ld.w      	r1, (r4, 0x18c)
  30:	3206      	movi      	r2, 6
  32:	211b      	addi      	r1, 28
  34:	2013      	addi      	r0, 20
  36:	e0000000 	bsr      	0x0	// 0 <memcpy>
  3a:	d804205d 	ld.w      	r0, (r4, 0x174)
  3e:	3206      	movi      	r2, 6
  40:	e425000b 	addi      	r1, r5, 12
  44:	200d      	addi      	r0, 14
  46:	e0000000 	bsr      	0x0	// 0 <memcpy>
  4a:	d864205d 	ld.w      	r3, (r4, 0x174)
  4e:	8453      	ld.b      	r2, (r4, 0x13)
  50:	a348      	st.b      	r2, (r3, 0x8)
  52:	d864003d 	ld.b      	r3, (r4, 0x3d)
  56:	3104      	movi      	r1, 4
  58:	c4615cc1 	ins      	r3, r1, 7, 1
  5c:	3101      	movi      	r1, 1
  5e:	c4615c00 	ins      	r3, r1, 0, 0
  62:	dc64003d 	st.b      	r3, (r4, 0x3d)
  66:	d8250033 	ld.b      	r1, (r5, 0x33)
  6a:	644a      	cmpne      	r2, r1
  6c:	0c04      	bf      	0x74	// 74 <ieee80211_wnb_roaming_switch_ap+0x74>
  6e:	6c13      	mov      	r0, r4
  70:	e0000000 	bsr      	0x0	// 0 <ieee80211_set_channel>
  74:	6c57      	mov      	r1, r5
  76:	d804202a 	ld.w      	r0, (r4, 0xa8)
  7a:	e0000000 	bsr      	0x0	// 0 <ieee80211_bss_put>
  7e:	3304      	movi      	r3, 4
  80:	d8442065 	ld.w      	r2, (r4, 0x194)
  84:	d8242066 	ld.w      	r1, (r4, 0x198)
  88:	a472      	st.b      	r3, (r4, 0x12)
  8a:	5a62      	addi      	r3, r2, 1
  8c:	644d      	cmplt      	r3, r1
  8e:	5b05      	subu      	r0, r3, r1
  90:	c4600c20 	incf      	r3, r0, 0
  94:	d8242064 	ld.w      	r1, (r4, 0x190)
  98:	644e      	cmpne      	r3, r1
  9a:	0c07      	bf      	0xa8	// a8 <ieee80211_wnb_roaming_switch_ap+0xa8>
  9c:	6090      	addu      	r2, r4
  9e:	3106      	movi      	r1, 6
  a0:	dc22019c 	st.b      	r1, (r2, 0x19c)
  a4:	dc642065 	st.w      	r3, (r4, 0x194)
  a8:	d804202a 	ld.w      	r0, (r4, 0xa8)
  ac:	e0000000 	bsr      	0x0	// 0 <os_sema_up>
  b0:	1492      	pop      	r4-r5, r15

Disassembly of section .text.ieee80211_wnb_rx_roam_response:

00000000 <ieee80211_wnb_rx_roam_response>:
   0:	14d4      	push      	r4-r7, r15
   2:	90a0      	ld.w      	r5, (r0, 0x0)
   4:	9062      	ld.w      	r3, (r0, 0x8)
   6:	d885205d 	ld.w      	r4, (r5, 0x174)
   a:	93e7      	ld.w      	r7, (r3, 0x1c)
   c:	e9040027 	bez      	r4, 0x5a	// 5a <ieee80211_wnb_rx_roam_response+0x5a>
  10:	3206      	movi      	r2, 6
  12:	5f2e      	addi      	r1, r7, 4
  14:	5d08      	addu      	r0, r5, r2
  16:	e0000000 	bsr      	0x0	// 0 <memcmp>
  1a:	e9200020 	bnez      	r0, 0x5a	// 5a <ieee80211_wnb_rx_roam_response+0x5a>
  1e:	d8052063 	ld.w      	r0, (r5, 0x18c)
  22:	3206      	movi      	r2, 6
  24:	e4270009 	addi      	r1, r7, 10
  28:	201b      	addi      	r0, 28
  2a:	e0000000 	bsr      	0x0	// 0 <memcmp>
  2e:	6d83      	mov      	r6, r0
  30:	e9200015 	bnez      	r0, 0x5a	// 5a <ieee80211_wnb_rx_roam_response+0x5a>
  34:	8460      	ld.b      	r3, (r4, 0x0)
  36:	c4605c22 	ins      	r3, r0, 3, 2
  3a:	a460      	st.b      	r3, (r4, 0x0)
  3c:	877c      	ld.b      	r3, (r7, 0x1c)
  3e:	e4632001 	andi      	r3, r3, 1
  42:	e903000d 	bez      	r3, 0x5c	// 5c <ieee80211_wnb_rx_roam_response+0x5c>
  46:	8461      	ld.b      	r3, (r4, 0x1)
  48:	3b42      	cmpnei      	r3, 2
  4a:	0808      	bt      	0x5a	// 5a <ieee80211_wnb_rx_roam_response+0x5a>
  4c:	9436      	ld.w      	r1, (r4, 0x58)
  4e:	6c17      	mov      	r0, r5
  50:	e0000000 	bsr      	0x0	// 0 <ieee80211_wnb_rx_roam_response>
  54:	d865205d 	ld.w      	r3, (r5, 0x174)
  58:	b3d6      	st.w      	r6, (r3, 0x58)
  5a:	1494      	pop      	r4-r7, r15
  5c:	3301      	movi      	r3, 1
  5e:	a461      	st.b      	r3, (r4, 0x1)
  60:	07fd      	br      	0x5a	// 5a <ieee80211_wnb_rx_roam_response+0x5a>

Disassembly of section .text.ieee80211_wnb_send_roam_request:

00000000 <ieee80211_wnb_send_roam_request>:
   0:	14d3      	push      	r4-r6, r15
   2:	1426      	subi      	r14, r14, 24
   4:	d8602063 	ld.w      	r3, (r0, 0x18c)
   8:	e443001b 	addi      	r2, r3, 28
   c:	d8630025 	ld.b      	r3, (r3, 0x25)
  10:	b842      	st.w      	r2, (r14, 0x8)
  12:	e4632008 	andi      	r3, r3, 8
  16:	3206      	movi      	r2, 6
  18:	dc4e1006 	st.h      	r2, (r14, 0xc)
  1c:	3500      	movi      	r5, 0
  1e:	3200      	movi      	r2, 0
  20:	6d03      	mov      	r4, r0
  22:	6d87      	mov      	r6, r1
  24:	dc4e1007 	st.h      	r2, (r14, 0xe)
  28:	ddce2004 	st.w      	r14, (r14, 0x10)
  2c:	b8a5      	st.w      	r5, (r14, 0x14)
  2e:	e9030027 	bez      	r3, 0x7c	// 7c <ieee80211_wnb_send_roam_request+0x7c>
  32:	3308      	movi      	r3, 8
  34:	b8a0      	st.w      	r5, (r14, 0x0)
  36:	dc6e0000 	st.b      	r3, (r14, 0x0)
  3a:	d860202b 	ld.w      	r3, (r0, 0xac)
  3e:	dcae1002 	st.h      	r5, (r14, 0x4)
  42:	8340      	ld.b      	r2, (r3, 0x0)
  44:	8033      	ld.b      	r1, (r0, 0x13)
  46:	e0000000 	bsr      	0x0	// 0 <ieee80211_chan_to_freq>
  4a:	3e40      	cmpnei      	r6, 0
  4c:	c4000502 	mvc      	r2
  50:	d86e0004 	ld.b      	r3, (r14, 0x4)
  54:	c4625c00 	ins      	r3, r2, 0, 0
  58:	dc0e1001 	st.h      	r0, (r14, 0x2)
  5c:	1a02      	addi      	r2, r14, 8
  5e:	6c57      	mov      	r1, r5
  60:	6c13      	mov      	r0, r4
  62:	dc6e0004 	st.b      	r3, (r14, 0x4)
  66:	e0000000 	bsr      	0x0	// 0 <ieee80211_wnb_tx_mgmt>
  6a:	d824205d 	ld.w      	r1, (r4, 0x174)
  6e:	8160      	ld.b      	r3, (r1, 0x0)
  70:	c4435462 	zext      	r2, r3, 3, 2
  74:	2200      	addi      	r2, 1
  76:	c4625c22 	ins      	r3, r2, 3, 2
  7a:	a160      	st.b      	r3, (r1, 0x0)
  7c:	1406      	addi      	r14, r14, 24
  7e:	1493      	pop      	r4-r6, r15

Disassembly of section .text.ieee80211_wnb_roaming_do_check_rssi:

00000000 <ieee80211_wnb_roaming_do_check_rssi>:
   0:	14d5      	push      	r4-r8, r15
   2:	1432      	subi      	r14, r14, 72
   4:	d880205d 	ld.w      	r4, (r0, 0x174)
   8:	6d43      	mov      	r5, r0
   a:	6d87      	mov      	r6, r1
   c:	e9040093 	bez      	r4, 0x132	// 132 <ieee80211_wnb_roaming_do_check_rssi+0x132>
  10:	8460      	ld.b      	r3, (r4, 0x0)
  12:	e4632001 	andi      	r3, r3, 1
  16:	e903008e 	bez      	r3, 0x132	// 132 <ieee80211_wnb_roaming_do_check_rssi+0x132>
  1a:	d8202063 	ld.w      	r1, (r0, 0x18c)
  1e:	3206      	movi      	r2, 6
  20:	211b      	addi      	r1, 28
  22:	e406000b 	addi      	r0, r6, 12
  26:	e0000000 	bsr      	0x0	// 0 <memcmp>
  2a:	e9200084 	bnez      	r0, 0x132	// 132 <ieee80211_wnb_roaming_do_check_rssi+0x132>
  2e:	8461      	ld.b      	r3, (r4, 0x1)
  30:	3b41      	cmpnei      	r3, 1
  32:	0880      	bt      	0x132	// 132 <ieee80211_wnb_roaming_do_check_rssi+0x132>
  34:	8464      	ld.b      	r3, (r4, 0x4)
  36:	2300      	addi      	r3, 1
  38:	748e      	sextb      	r2, r3
  3a:	a444      	st.b      	r2, (r4, 0x4)
  3c:	d8264039 	ld.bs      	r1, (r6, 0x39)
  40:	8c66      	ld.h      	r3, (r4, 0xc)
  42:	60c4      	addu      	r3, r1
  44:	8427      	ld.b      	r1, (r4, 0x7)
  46:	6449      	cmplt      	r2, r1
  48:	74cf      	sexth      	r3, r3
  4a:	ac66      	st.h      	r3, (r4, 0xc)
  4c:	0873      	bt      	0x132	// 132 <ieee80211_wnb_roaming_do_check_rssi+0x132>
  4e:	c4438043 	divs      	r3, r3, r2
  52:	e5050112 	addi      	r8, r5, 275
  56:	ac06      	st.h      	r0, (r4, 0xc)
  58:	a404      	st.b      	r0, (r4, 0x4)
  5a:	a463      	st.b      	r3, (r4, 0x3)
  5c:	6c23      	mov      	r0, r8
  5e:	e0000000 	bsr      	0x0	// 0 <strlen>
  62:	7580      	zextb      	r6, r0
  64:	3e08      	cmphsi      	r6, 9
  66:	8486      	ld.b      	r4, (r4, 0x6)
  68:	0c06      	bf      	0x74	// 74 <ieee80211_wnb_roaming_do_check_rssi+0x74>
  6a:	eb060020 	cmphsi      	r6, 33
  6e:	0864      	bt      	0x136	// 136 <ieee80211_wnb_roaming_do_check_rssi+0x136>
  70:	2e02      	subi      	r6, 3
  72:	7598      	zextb      	r6, r6
  74:	1f09      	addi      	r7, r14, 36
  76:	6c9b      	mov      	r2, r6
  78:	6c63      	mov      	r1, r8
  7a:	6c1f      	mov      	r0, r7
  7c:	e0000000 	bsr      	0x0	// 0 <strncpy>
  80:	3300      	movi      	r3, 0
  82:	d845202b 	ld.w      	r2, (r5, 0xac)
  86:	d4c70023 	str.b      	r3, (r7, r6 << 0)
  8a:	8240      	ld.b      	r2, (r2, 0x0)
  8c:	3301      	movi      	r3, 1
  8e:	6c5f      	mov      	r1, r7
  90:	d805202a 	ld.w      	r0, (r5, 0xa8)
  94:	e0000000 	bsr      	0x0	// 0 <ieee80211_bss_get_byssid>
  98:	6d83      	mov      	r6, r0
  9a:	e900004c 	bez      	r0, 0x132	// 132 <ieee80211_wnb_roaming_do_check_rssi+0x132>
  9e:	d8252063 	ld.w      	r1, (r5, 0x18c)
  a2:	3206      	movi      	r2, 6
  a4:	211b      	addi      	r1, 28
  a6:	200b      	addi      	r0, 12
  a8:	e0000000 	bsr      	0x0	// 0 <memcmp>
  ac:	e9000043 	bez      	r0, 0x132	// 132 <ieee80211_wnb_roaming_do_check_rssi+0x132>
  b0:	d825205d 	ld.w      	r1, (r5, 0x174)
  b4:	3200      	movi      	r2, 0
  b6:	d8614003 	ld.bs      	r3, (r1, 0x3)
  ba:	2a4e      	subi      	r2, 79
  bc:	648d      	cmplt      	r3, r2
  be:	0c3e      	bf      	0x13a	// 13a <ieee80211_wnb_roaming_do_check_rssi+0x13a>
  c0:	3203      	movi      	r2, 3
  c2:	c4448024 	divu      	r4, r4, r2
  c6:	d8414005 	ld.bs      	r2, (r1, 0x5)
  ca:	648d      	cmplt      	r3, r2
  cc:	0c33      	bf      	0x132	// 132 <ieee80211_wnb_roaming_do_check_rssi+0x132>
  ce:	d8464039 	ld.bs      	r2, (r6, 0x39)
  d2:	610c      	addu      	r4, r3
  d4:	6491      	cmplt      	r4, r2
  d6:	0c2e      	bf      	0x132	// 132 <ieee80211_wnb_roaming_do_check_rssi+0x132>
  d8:	b847      	st.w      	r2, (r14, 0x1c)
  da:	b868      	st.w      	r3, (r14, 0x20)
  dc:	d8660033 	ld.b      	r3, (r6, 0x33)
  e0:	b866      	st.w      	r3, (r14, 0x18)
  e2:	8671      	ld.b      	r3, (r6, 0x11)
  e4:	b865      	st.w      	r3, (r14, 0x14)
  e6:	8670      	ld.b      	r3, (r6, 0x10)
  e8:	b864      	st.w      	r3, (r14, 0x10)
  ea:	866f      	ld.b      	r3, (r6, 0xf)
  ec:	b863      	st.w      	r3, (r14, 0xc)
  ee:	866e      	ld.b      	r3, (r6, 0xe)
  f0:	b862      	st.w      	r3, (r14, 0x8)
  f2:	866d      	ld.b      	r3, (r6, 0xd)
  f4:	b861      	st.w      	r3, (r14, 0x4)
  f6:	866c      	ld.b      	r3, (r6, 0xc)
  f8:	b860      	st.w      	r3, (r14, 0x0)
  fa:	ea020149 	movi      	r2, 329
  fe:	e4660011 	addi      	r3, r6, 18
 102:	1038      	lrw      	r1, 0x0	// 160 <ieee80211_wnb_roaming_do_check_rssi+0x160>
 104:	1018      	lrw      	r0, 0x0	// 164 <ieee80211_wnb_roaming_do_check_rssi+0x164>
 106:	e0000000 	bsr      	0x0	// 0 <hgprintf>
 10a:	d865205d 	ld.w      	r3, (r5, 0x174)
 10e:	3100      	movi      	r1, 0
 110:	8340      	ld.b      	r2, (r3, 0x0)
 112:	c4415c22 	ins      	r2, r1, 3, 2
 116:	a340      	st.b      	r2, (r3, 0x0)
 118:	3202      	movi      	r2, 2
 11a:	3101      	movi      	r1, 1
 11c:	6c17      	mov      	r0, r5
 11e:	b3d6      	st.w      	r6, (r3, 0x58)
 120:	a341      	st.b      	r2, (r3, 0x1)
 122:	e0000000 	bsr      	0x0	// 0 <ieee80211_wnb_roaming_do_check_rssi>
 126:	d805205d 	ld.w      	r0, (r5, 0x174)
 12a:	3114      	movi      	r1, 20
 12c:	203b      	addi      	r0, 60
 12e:	e0000000 	bsr      	0x0	// 0 <os_timer_start>
 132:	1412      	addi      	r14, r14, 72
 134:	1495      	pop      	r4-r8, r15
 136:	3620      	movi      	r6, 32
 138:	079e      	br      	0x74	// 74 <ieee80211_wnb_roaming_do_check_rssi+0x74>
 13a:	3200      	movi      	r2, 0
 13c:	2a49      	subi      	r2, 74
 13e:	648d      	cmplt      	r3, r2
 140:	0c04      	bf      	0x148	// 148 <ieee80211_wnb_roaming_do_check_rssi+0x148>
 142:	c4245504 	zext      	r4, r4, 8, 1
 146:	07c0      	br      	0xc6	// c6 <ieee80211_wnb_roaming_do_check_rssi+0xc6>
 148:	3200      	movi      	r2, 0
 14a:	2a44      	subi      	r2, 69
 14c:	648d      	cmplt      	r3, r2
 14e:	0fbc      	bf      	0xc6	// c6 <ieee80211_wnb_roaming_do_check_rssi+0xc6>
 150:	7513      	sexth      	r4, r4
 152:	6110      	addu      	r4, r4
 154:	3203      	movi      	r2, 3
 156:	c4448044 	divs      	r4, r4, r2
 15a:	7510      	zextb      	r4, r4
 15c:	07b5      	br      	0xc6	// c6 <ieee80211_wnb_roaming_do_check_rssi+0xc6>
	...

Disassembly of section .text.ieee80211_wnb_roam_enable:

00000000 <ieee80211_wnb_roam_enable>:
   0:	14d1      	push      	r4, r15
   2:	e0000000 	bsr      	0x0	// 0 <ieee80211_iface_get>
   6:	6d03      	mov      	r4, r0
   8:	e900001f 	bez      	r0, 0x46	// 46 <ieee80211_wnb_roam_enable+0x46>
   c:	305c      	movi      	r0, 92
   e:	e0000000 	bsr      	0x0	// 0 <_os_zalloc>
  12:	dc04205d 	st.w      	r0, (r4, 0x174)
  16:	e900001b 	bez      	r0, 0x4c	// 4c <ieee80211_wnb_roam_enable+0x4c>
  1a:	6cd3      	mov      	r3, r4
  1c:	3200      	movi      	r2, 0
  1e:	102e      	lrw      	r1, 0x0	// 54 <ieee80211_wnb_roam_enable+0x54>
  20:	203b      	addi      	r0, 60
  22:	e0000000 	bsr      	0x0	// 0 <os_timer_init>
  26:	d864205d 	ld.w      	r3, (r4, 0x174)
  2a:	3200      	movi      	r2, 0
  2c:	2a7f      	subi      	r2, 128
  2e:	a343      	st.b      	r2, (r3, 0x3)
  30:	d864202a 	ld.w      	r3, (r4, 0xa8)
  34:	3101      	movi      	r1, 1
  36:	d8430052 	ld.b      	r2, (r3, 0x52)
  3a:	c4415c01 	ins      	r2, r1, 1, 1
  3e:	dc430052 	st.b      	r2, (r3, 0x52)
  42:	3000      	movi      	r0, 0
  44:	1491      	pop      	r4, r15
  46:	3000      	movi      	r0, 0
  48:	2800      	subi      	r0, 1
  4a:	07fd      	br      	0x44	// 44 <ieee80211_wnb_roam_enable+0x44>
  4c:	3000      	movi      	r0, 0
  4e:	280b      	subi      	r0, 12
  50:	07fa      	br      	0x44	// 44 <ieee80211_wnb_roam_enable+0x44>
  52:	0000      	.short	0x0000
  54:	00000000 	.long	0x00000000
