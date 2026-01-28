
libwifi/o/wnb_sta_mlme.o:     file format elf32-csky-little


Disassembly of section .text.ieee80211_wnbsta_assoc_timeout:

00000000 <ieee80211_wnbsta_assoc_timeout>:
   0:	14d0      	push      	r15
   2:	8072      	ld.b      	r3, (r0, 0x12)
   4:	3b44      	cmpnei      	r3, 4
   6:	0819      	bt      	0x38	// 38 <ieee80211_wnbsta_assoc_timeout+0x38>
   8:	d8402065 	ld.w      	r2, (r0, 0x194)
   c:	5a62      	addi      	r3, r2, 1
   e:	d8202066 	ld.w      	r1, (r0, 0x198)
  12:	644d      	cmplt      	r3, r1
  14:	c423008c 	subu      	r12, r3, r1
  18:	c46c0c20 	incf      	r3, r12, 0
  1c:	d8202064 	ld.w      	r1, (r0, 0x190)
  20:	64c6      	cmpne      	r1, r3
  22:	0c07      	bf      	0x30	// 30 <ieee80211_wnbsta_assoc_timeout+0x30>
  24:	6080      	addu      	r2, r0
  26:	3106      	movi      	r1, 6
  28:	dc22019c 	st.b      	r1, (r2, 0x19c)
  2c:	dc602065 	st.w      	r3, (r0, 0x194)
  30:	d800202a 	ld.w      	r0, (r0, 0xa8)
  34:	e0000000 	bsr      	0x0	// 0 <os_sema_up>
  38:	1490      	pop      	r15

Disassembly of section .text.ieee80211_wnbsta_reset_heartbeat:

00000000 <ieee80211_wnbsta_reset_heartbeat>:
   0:	14d1      	push      	r4, r15
   2:	1421      	subi      	r14, r14, 4
   4:	6d03      	mov      	r4, r0
   6:	b820      	st.w      	r1, (r14, 0x0)
   8:	e961000d 	blsz      	r1, 0x22	// 22 <ieee80211_wnbsta_reset_heartbeat+0x22>
   c:	d8002063 	ld.w      	r0, (r0, 0x18c)
  10:	20cb      	addi      	r0, 204
  12:	e0000000 	bsr      	0x0	// 0 <os_timer_stop>
  16:	d8042063 	ld.w      	r0, (r4, 0x18c)
  1a:	9820      	ld.w      	r1, (r14, 0x0)
  1c:	20cb      	addi      	r0, 204
  1e:	e0000000 	bsr      	0x0	// 0 <os_timer_start>
  22:	1401      	addi      	r14, r14, 4
  24:	1491      	pop      	r4, r15

Disassembly of section .text.ieee80211_wnbsta_send_heartbeat:

00000000 <ieee80211_wnbsta_send_heartbeat>:
   0:	14d2      	push      	r4-r5, r15
   2:	1429      	subi      	r14, r14, 36
   4:	d8602063 	ld.w      	r3, (r0, 0x18c)
   8:	231b      	addi      	r3, 28
   a:	1d04      	addi      	r5, r14, 16
   c:	b860      	st.w      	r3, (r14, 0x0)
   e:	3314      	movi      	r3, 20
  10:	6d03      	mov      	r4, r0
  12:	dc6e1002 	st.h      	r3, (r14, 0x4)
  16:	3100      	movi      	r1, 0
  18:	3300      	movi      	r3, 0
  1a:	3214      	movi      	r2, 20
  1c:	6c17      	mov      	r0, r5
  1e:	dc6e1003 	st.h      	r3, (r14, 0x6)
  22:	b823      	st.w      	r1, (r14, 0xc)
  24:	b8a2      	st.w      	r5, (r14, 0x8)
  26:	e0000000 	bsr      	0x0	// 0 <memset>
  2a:	3307      	movi      	r3, 7
  2c:	a560      	st.b      	r3, (r5, 0x0)
  2e:	d864202b 	ld.w      	r3, (r4, 0xac)
  32:	8433      	ld.b      	r1, (r4, 0x13)
  34:	8340      	ld.b      	r2, (r3, 0x0)
  36:	6c13      	mov      	r0, r4
  38:	e0000000 	bsr      	0x0	// 0 <ieee80211_chan_to_freq>
  3c:	d8242063 	ld.w      	r1, (r4, 0x18c)
  40:	ad01      	st.h      	r0, (r5, 0x2)
  42:	d86100e8 	ld.b      	r3, (r1, 0xe8)
  46:	a564      	st.b      	r3, (r5, 0x4)
  48:	8462      	ld.b      	r3, (r4, 0x2)
  4a:	c48354c3 	zext      	r3, r3, 6, 4
  4e:	2b00      	subi      	r3, 1
  50:	a565      	st.b      	r3, (r5, 0x5)
  52:	d8610125 	ld.b      	r3, (r1, 0x125)
  56:	2300      	addi      	r3, 1
  58:	dc610125 	st.b      	r3, (r1, 0x125)
  5c:	6cbb      	mov      	r2, r14
  5e:	6c13      	mov      	r0, r4
  60:	e0000000 	bsr      	0x0	// 0 <ieee80211_wnb_tx_mgmt>
  64:	1409      	addi      	r14, r14, 36
  66:	1492      	pop      	r4-r5, r15

Disassembly of section .text.ieee80211_wnbsta_rx_heartbeat:

00000000 <ieee80211_wnbsta_rx_heartbeat>:
   0:	14d3      	push      	r4-r6, r15
   2:	9062      	ld.w      	r3, (r0, 0x8)
   4:	9080      	ld.w      	r4, (r0, 0x0)
   6:	93c7      	ld.w      	r6, (r3, 0x1c)
   8:	3206      	movi      	r2, 6
   a:	6d43      	mov      	r5, r0
   c:	5e2e      	addi      	r1, r6, 4
   e:	5c08      	addu      	r0, r4, r2
  10:	e0000000 	bsr      	0x0	// 0 <memcmp>
  14:	e9200022 	bnez      	r0, 0x58	// 58 <ieee80211_wnbsta_rx_heartbeat+0x58>
  18:	d8664018 	ld.bs      	r3, (r6, 0x18)
  1c:	e9a3001e 	bhsz      	r3, 0x58	// 58 <ieee80211_wnbsta_rx_heartbeat+0x58>
  20:	d8842063 	ld.w      	r4, (r4, 0x18c)
  24:	3206      	movi      	r2, 6
  26:	e4260009 	addi      	r1, r6, 10
  2a:	e404001b 	addi      	r0, r4, 28
  2e:	e0000000 	bsr      	0x0	// 0 <memcmp>
  32:	e9200013 	bnez      	r0, 0x58	// 58 <ieee80211_wnbsta_rx_heartbeat+0x58>
  36:	9561      	ld.w      	r3, (r5, 0x4)
  38:	e9030010 	bez      	r3, 0x58	// 58 <ieee80211_wnbsta_rx_heartbeat+0x58>
  3c:	d8630025 	ld.b      	r3, (r3, 0x25)
  40:	e4632008 	andi      	r3, r3, 8
  44:	e903000a 	bez      	r3, 0x58	// 58 <ieee80211_wnbsta_rx_heartbeat+0x58>
  48:	dc040125 	st.b      	r0, (r4, 0x125)
  4c:	e0000000 	bsr      	0x0	// 0 <os_jiffies>
  50:	dc042024 	st.w      	r0, (r4, 0x90)
  54:	dc242025 	st.w      	r1, (r4, 0x94)
  58:	1493      	pop      	r4-r6, r15

Disassembly of section .text.ieee80211_wnbsta_do_assoc:

00000000 <ieee80211_wnbsta_do_assoc>:
   0:	14d7      	push      	r4-r10, r15
   2:	1427      	subi      	r14, r14, 28
   4:	8065      	ld.b      	r3, (r0, 0x5)
   6:	e4632081 	andi      	r3, r3, 129
   a:	3b41      	cmpnei      	r3, 1
   c:	6d03      	mov      	r4, r0
   e:	080b      	bt      	0x24	// 24 <ieee80211_wnbsta_do_assoc+0x24>
  10:	e0000000 	bsr      	0x0	// 0 <ieee80211_is_pairing>
  14:	6d83      	mov      	r6, r0
  16:	e900000a 	bez      	r0, 0x2a	// 2a <ieee80211_wnbsta_do_assoc+0x2a>
  1a:	329b      	movi      	r2, 155
  1c:	022c      	lrw      	r1, 0x0	// 2e8 <ieee80211_wnbsta_do_assoc+0x2e8>
  1e:	020b      	lrw      	r0, 0x0	// 2ec <ieee80211_wnbsta_do_assoc+0x2ec>
  20:	e0000000 	bsr      	0x0	// 0 <hgprintf>
  24:	3600      	movi      	r6, 0
  26:	2e00      	subi      	r6, 1
  28:	046e      	br      	0x104	// 104 <ieee80211_wnbsta_do_assoc+0x104>
  2a:	d8640113 	ld.b      	r3, (r4, 0x113)
  2e:	e923001b 	bnez      	r3, 0x64	// 64 <ieee80211_wnbsta_do_assoc+0x64>
  32:	d8442063 	ld.w      	r2, (r4, 0x18c)
  36:	d82200ee 	ld.b      	r1, (r2, 0xee)
  3a:	d86200ed 	ld.b      	r3, (r2, 0xed)
  3e:	6cc4      	or      	r3, r1
  40:	d82200ef 	ld.b      	r1, (r2, 0xef)
  44:	6cc4      	or      	r3, r1
  46:	d82200f0 	ld.b      	r1, (r2, 0xf0)
  4a:	6cc4      	or      	r3, r1
  4c:	d82200f1 	ld.b      	r1, (r2, 0xf1)
  50:	6cc4      	or      	r3, r1
  52:	d84200f2 	ld.b      	r2, (r2, 0xf2)
  56:	6cc8      	or      	r3, r2
  58:	e9230006 	bnez      	r3, 0x64	// 64 <ieee80211_wnbsta_do_assoc+0x64>
  5c:	32a0      	movi      	r2, 160
  5e:	023c      	lrw      	r1, 0x0	// 2e8 <ieee80211_wnbsta_do_assoc+0x2e8>
  60:	021b      	lrw      	r0, 0x0	// 2f0 <ieee80211_wnbsta_do_assoc+0x2f0>
  62:	07df      	br      	0x20	// 20 <ieee80211_wnbsta_do_assoc+0x20>
  64:	8472      	ld.b      	r3, (r4, 0x12)
  66:	3b05      	cmphsi      	r3, 6
  68:	084e      	bt      	0x104	// 104 <ieee80211_wnbsta_do_assoc+0x104>
  6a:	3501      	movi      	r5, 1
  6c:	c4654023 	lsl      	r3, r5, r3
  70:	e4632031 	andi      	r3, r3, 49
  74:	e9030048 	bez      	r3, 0x104	// 104 <ieee80211_wnbsta_do_assoc+0x104>
  78:	1f01      	addi      	r7, r14, 4
  7a:	3206      	movi      	r2, 6
  7c:	0321      	lrw      	r1, 0x0	// 2f4 <ieee80211_wnbsta_do_assoc+0x2f4>
  7e:	6c1f      	mov      	r0, r7
  80:	e0000000 	bsr      	0x0	// 0 <memcpy>
  84:	e0000000 	bsr      	0x0	// 0 <sysctrl_efuse_get_customer_id>
  88:	6e83      	mov      	r10, r0
  8a:	e0000000 	bsr      	0x0	// 0 <ieee80211_wnb_customer_id>
  8e:	6e03      	mov      	r8, r0
  90:	3210      	movi      	r2, 16
  92:	3100      	movi      	r1, 0
  94:	1803      	addi      	r0, r14, 12
  96:	e0000000 	bsr      	0x0	// 0 <memset>
  9a:	3354      	movi      	r3, 84
  9c:	dc6e1008 	st.h      	r3, (r14, 0x10)
  a0:	d864202b 	ld.w      	r3, (r4, 0xac)
  a4:	3202      	movi      	r2, 2
  a6:	9365      	ld.w      	r3, (r3, 0x14)
  a8:	3100      	movi      	r1, 0
  aa:	6c13      	mov      	r0, r4
  ac:	b8e3      	st.w      	r7, (r14, 0xc)
  ae:	e0000000 	bsr      	0x0	// 0 <ieee80211_switch_chan>
  b2:	e9000036 	bez      	r0, 0x11e	// 11e <ieee80211_wnbsta_do_assoc+0x11e>
  b6:	33ff      	movi      	r3, 255
  b8:	d844202b 	ld.w      	r2, (r4, 0xac)
  bc:	ac66      	st.h      	r3, (r4, 0xc)
  be:	d8242063 	ld.w      	r1, (r4, 0x18c)
  c2:	6cd7      	mov      	r3, r5
  c4:	8240      	ld.b      	r2, (r2, 0x0)
  c6:	21ec      	addi      	r1, 237
  c8:	d804202a 	ld.w      	r0, (r4, 0xa8)
  cc:	e0000000 	bsr      	0x0	// 0 <ieee80211_bss_disable>
  d0:	d8442063 	ld.w      	r2, (r4, 0x18c)
  d4:	d8620126 	ld.b      	r3, (r2, 0x126)
  d8:	3b0f      	cmphsi      	r3, 16
  da:	0818      	bt      	0x10a	// 10a <ieee80211_wnbsta_do_assoc+0x10a>
  dc:	60d4      	addu      	r3, r5
  de:	dc620126 	st.b      	r3, (r2, 0x126)
  e2:	d864205d 	ld.w      	r3, (r4, 0x174)
  e6:	e903001c 	bez      	r3, 0x11e	// 11e <ieee80211_wnbsta_do_assoc+0x11e>
  ea:	8340      	ld.b      	r2, (r3, 0x0)
  ec:	e4422001 	andi      	r2, r2, 1
  f0:	e9020017 	bez      	r2, 0x11e	// 11e <ieee80211_wnbsta_do_assoc+0x11e>
  f4:	8361      	ld.b      	r3, (r3, 0x1)
  f6:	2b03      	subi      	r3, 4
  f8:	74cc      	zextb      	r3, r3
  fa:	3b01      	cmphsi      	r3, 2
  fc:	0811      	bt      	0x11e	// 11e <ieee80211_wnbsta_do_assoc+0x11e>
  fe:	6c13      	mov      	r0, r4
 100:	e0000000 	bsr      	0x0	// 0 <ieee80211_wnb_roaming_fail>
 104:	6c1b      	mov      	r0, r6
 106:	1407      	addi      	r14, r14, 28
 108:	1497      	pop      	r4-r10, r15
 10a:	3300      	movi      	r3, 0
 10c:	dc620126 	st.b      	r3, (r2, 0x126)
 110:	8c66      	ld.h      	r3, (r4, 0xc)
 112:	3200      	movi      	r2, 0
 114:	3109      	movi      	r1, 9
 116:	6c13      	mov      	r0, r4
 118:	e0000000 	bsr      	0x0	// 0 <ieee80211_iface_event>
 11c:	07e3      	br      	0xe2	// e2 <ieee80211_wnbsta_do_assoc+0xe2>
 11e:	d864205d 	ld.w      	r3, (r4, 0x174)
 122:	e9030017 	bez      	r3, 0x150	// 150 <ieee80211_wnbsta_do_assoc+0x150>
 126:	8b40      	ld.h      	r2, (r3, 0x0)
 128:	ea01ff01 	movi      	r1, 65281
 12c:	6884      	and      	r2, r1
 12e:	eb420401 	cmpnei      	r2, 1025
 132:	080f      	bt      	0x150	// 150 <ieee80211_wnbsta_do_assoc+0x150>
 134:	230d      	addi      	r3, 14
 136:	b863      	st.w      	r3, (r14, 0xc)
 138:	3054      	movi      	r0, 84
 13a:	e0000000 	bsr      	0x0	// 0 <_os_zalloc>
 13e:	6d43      	mov      	r5, r0
 140:	e920002d 	bnez      	r0, 0x19a	// 19a <ieee80211_wnbsta_do_assoc+0x19a>
 144:	327a      	movi      	r2, 122
 146:	132d      	lrw      	r1, 0x0	// 2f8 <ieee80211_wnbsta_do_assoc+0x2f8>
 148:	130d      	lrw      	r0, 0x0	// 2fc <ieee80211_wnbsta_do_assoc+0x2fc>
 14a:	e0000000 	bsr      	0x0	// 0 <hgprintf>
 14e:	07db      	br      	0x104	// 104 <ieee80211_wnbsta_do_assoc+0x104>
 150:	d8042063 	ld.w      	r0, (r4, 0x18c)
 154:	d86000ea 	ld.b      	r3, (r0, 0xea)
 158:	e4632008 	andi      	r3, r3, 8
 15c:	e903000a 	bez      	r3, 0x170	// 170 <ieee80211_wnbsta_do_assoc+0x170>
 160:	e42000ec 	addi      	r1, r0, 237
 164:	3206      	movi      	r2, 6
 166:	201b      	addi      	r0, 28
 168:	b823      	st.w      	r1, (r14, 0xc)
 16a:	e0000000 	bsr      	0x0	// 0 <memcpy>
 16e:	07e5      	br      	0x138	// 138 <ieee80211_wnbsta_do_assoc+0x138>
 170:	d844202b 	ld.w      	r2, (r4, 0xac)
 174:	e4240112 	addi      	r1, r4, 275
 178:	3301      	movi      	r3, 1
 17a:	8240      	ld.b      	r2, (r2, 0x0)
 17c:	d804202a 	ld.w      	r0, (r4, 0xa8)
 180:	e0000000 	bsr      	0x0	// 0 <ieee80211_bss_get_byssid>
 184:	6c43      	mov      	r1, r0
 186:	e900ffd9 	bez      	r0, 0x138	// 138 <ieee80211_wnbsta_do_assoc+0x138>
 18a:	e460000b 	addi      	r3, r0, 12
 18e:	d804202a 	ld.w      	r0, (r4, 0xa8)
 192:	b863      	st.w      	r3, (r14, 0xc)
 194:	e0000000 	bsr      	0x0	// 0 <ieee80211_bss_put>
 198:	07d0      	br      	0x138	// 138 <ieee80211_wnbsta_do_assoc+0x138>
 19a:	8060      	ld.b      	r3, (r0, 0x0)
 19c:	ea090001 	movi      	r9, 1
 1a0:	c4695cc0 	ins      	r3, r9, 6, 0
 1a4:	a060      	st.b      	r3, (r0, 0x0)
 1a6:	3300      	movi      	r3, 0
 1a8:	a061      	st.b      	r3, (r0, 0x1)
 1aa:	d864202b 	ld.w      	r3, (r4, 0xac)
 1ae:	8433      	ld.b      	r1, (r4, 0x13)
 1b0:	8340      	ld.b      	r2, (r3, 0x0)
 1b2:	6c13      	mov      	r0, r4
 1b4:	e0000000 	bsr      	0x0	// 0 <ieee80211_chan_to_freq>
 1b8:	d865002b 	ld.b      	r3, (r5, 0x2b)
 1bc:	e46320f8 	andi      	r3, r3, 248
 1c0:	3200      	movi      	r2, 0
 1c2:	c4625c04 	ins      	r3, r2, 4, 4
 1c6:	dc65002b 	st.b      	r3, (r5, 0x2b)
 1ca:	c6084843 	lsri      	r3, r8, 16
 1ce:	dd450005 	st.b      	r10, (r5, 0x5)
 1d2:	a569      	st.b      	r3, (r5, 0x9)
 1d4:	dd050007 	st.b      	r8, (r5, 0x7)
 1d8:	c50a484a 	lsri      	r10, r10, 8
 1dc:	4b68      	lsri      	r3, r3, 8
 1de:	c50855e8 	zext      	r8, r8, 15, 8
 1e2:	dd450006 	st.b      	r10, (r5, 0x6)
 1e6:	a56a      	st.b      	r3, (r5, 0xa)
 1e8:	dd050008 	st.b      	r8, (r5, 0x8)
 1ec:	d824205d 	ld.w      	r1, (r4, 0x174)
 1f0:	ad01      	st.h      	r0, (r5, 0x2)
 1f2:	e901001a 	bez      	r1, 0x226	// 226 <ieee80211_wnbsta_do_assoc+0x226>
 1f6:	8161      	ld.b      	r3, (r1, 0x1)
 1f8:	3b44      	cmpnei      	r3, 4
 1fa:	0816      	bt      	0x226	// 226 <ieee80211_wnbsta_do_assoc+0x226>
 1fc:	e5010013 	addi      	r8, r1, 20
 200:	3206      	movi      	r2, 6
 202:	6c63      	mov      	r1, r8
 204:	9803      	ld.w      	r0, (r14, 0xc)
 206:	e0000000 	bsr      	0x0	// 0 <memcmp>
 20a:	e900000e 	bez      	r0, 0x226	// 226 <ieee80211_wnbsta_do_assoc+0x226>
 20e:	3206      	movi      	r2, 6
 210:	6c63      	mov      	r1, r8
 212:	e405002c 	addi      	r0, r5, 45
 216:	e0000000 	bsr      	0x0	// 0 <memcpy>
 21a:	d865002b 	ld.b      	r3, (r5, 0x2b)
 21e:	c4695c03 	ins      	r3, r9, 3, 3
 222:	dc65002b 	st.b      	r3, (r5, 0x2b)
 226:	9843      	ld.w      	r2, (r14, 0xc)
 228:	8221      	ld.b      	r1, (r2, 0x1)
 22a:	8260      	ld.b      	r3, (r2, 0x0)
 22c:	6cc4      	or      	r3, r1
 22e:	8222      	ld.b      	r1, (r2, 0x2)
 230:	6cc4      	or      	r3, r1
 232:	8223      	ld.b      	r1, (r2, 0x3)
 234:	6cc4      	or      	r3, r1
 236:	8224      	ld.b      	r1, (r2, 0x4)
 238:	6cc4      	or      	r3, r1
 23a:	8245      	ld.b      	r2, (r2, 0x5)
 23c:	6cc8      	or      	r3, r2
 23e:	e9230003 	bnez      	r3, 0x244	// 244 <ieee80211_wnbsta_do_assoc+0x244>
 242:	b8e3      	st.w      	r7, (r14, 0xc)
 244:	d8042063 	ld.w      	r0, (r4, 0x18c)
 248:	3206      	movi      	r2, 6
 24a:	9823      	ld.w      	r1, (r14, 0xc)
 24c:	20ec      	addi      	r0, 237
 24e:	e0000000 	bsr      	0x0	// 0 <memcpy>
 252:	d864205d 	ld.w      	r3, (r4, 0x174)
 256:	b8a5      	st.w      	r5, (r14, 0x14)
 258:	e5040112 	addi      	r8, r4, 275
 25c:	e923003d 	bnez      	r3, 0x2d6	// 2d6 <ieee80211_wnbsta_do_assoc+0x2d6>
 260:	d8640113 	ld.b      	r3, (r4, 0x113)
 264:	e9030023 	bez      	r3, 0x2aa	// 2aa <ieee80211_wnbsta_do_assoc+0x2aa>
 268:	d865002c 	ld.b      	r3, (r5, 0x2c)
 26c:	3701      	movi      	r7, 1
 26e:	c4675c00 	ins      	r3, r7, 0, 0
 272:	d944203f 	ld.w      	r10, (r4, 0xfc)
 276:	3220      	movi      	r2, 32
 278:	dc65002c 	st.b      	r3, (r5, 0x2c)
 27c:	6c63      	mov      	r1, r8
 27e:	e4050032 	addi      	r0, r5, 51
 282:	e525000a 	addi      	r9, r5, 11
 286:	e0000000 	bsr      	0x0	// 0 <strncpy>
 28a:	3220      	movi      	r2, 32
 28c:	6c63      	mov      	r1, r8
 28e:	6c27      	mov      	r0, r9
 290:	e0000000 	bsr      	0x0	// 0 <strncpy>
 294:	eb4a0002 	cmpnei      	r10, 2
 298:	0826      	bt      	0x2e4	// 2e4 <ieee80211_wnbsta_do_assoc+0x2e4>
 29a:	e4040133 	addi      	r0, r4, 308
 29e:	b8e0      	st.w      	r7, (r14, 0x0)
 2a0:	3320      	movi      	r3, 32
 2a2:	6ca7      	mov      	r2, r9
 2a4:	6c67      	mov      	r1, r9
 2a6:	e0000000 	bsr      	0x0	// 0 <ieee80211_wnb_encrypt>
 2aa:	1a03      	addi      	r2, r14, 12
 2ac:	3100      	movi      	r1, 0
 2ae:	6c13      	mov      	r0, r4
 2b0:	e0000000 	bsr      	0x0	// 0 <ieee80211_wnb_tx_mgmt>
 2b4:	6c17      	mov      	r0, r5
 2b6:	e0000000 	bsr      	0x0	// 0 <_os_free>
 2ba:	6c53      	mov      	r1, r4
 2bc:	3200      	movi      	r2, 0
 2be:	1011      	lrw      	r0, 0x0	// 300 <ieee80211_wnbsta_do_assoc+0x300>
 2c0:	e0000000 	bsr      	0x0	// 0 <eloop_cancel_timeout>
 2c4:	3000      	movi      	r0, 0
 2c6:	b800      	st.w      	r0, (r14, 0x0)
 2c8:	6cd3      	mov      	r3, r4
 2ca:	104e      	lrw      	r2, 0x0	// 300 <ieee80211_wnbsta_do_assoc+0x300>
 2cc:	ea014e20 	movi      	r1, 20000
 2d0:	e0000000 	bsr      	0x0	// 0 <eloop_register_timeout>
 2d4:	0718      	br      	0x104	// 104 <ieee80211_wnbsta_do_assoc+0x104>
 2d6:	8341      	ld.b      	r2, (r3, 0x1)
 2d8:	3a44      	cmpnei      	r2, 4
 2da:	0bc3      	bt      	0x260	// 260 <ieee80211_wnbsta_do_assoc+0x260>
 2dc:	e5030019 	addi      	r8, r3, 26
 2e0:	837a      	ld.b      	r3, (r3, 0x1a)
 2e2:	07c1      	br      	0x264	// 264 <ieee80211_wnbsta_do_assoc+0x264>
 2e4:	3000      	movi      	r0, 0
 2e6:	07dc      	br      	0x29e	// 29e <ieee80211_wnbsta_do_assoc+0x29e>
	...

Disassembly of section .text.ieee80211_wnbsta_rx_assoc_resp:

00000000 <ieee80211_wnbsta_rx_assoc_resp>:
   0:	14d6      	push      	r4-r9, r15
   2:	142a      	subi      	r14, r14, 40
   4:	9080      	ld.w      	r4, (r0, 0x0)
   6:	9062      	ld.w      	r3, (r0, 0x8)
   8:	d8a42063 	ld.w      	r5, (r4, 0x18c)
   c:	d9032007 	ld.w      	r8, (r3, 0x1c)
  10:	d84500ee 	ld.b      	r2, (r5, 0xee)
  14:	d86500ed 	ld.b      	r3, (r5, 0xed)
  18:	68c8      	and      	r3, r2
  1a:	d84500ef 	ld.b      	r2, (r5, 0xef)
  1e:	68c8      	and      	r3, r2
  20:	d84500f0 	ld.b      	r2, (r5, 0xf0)
  24:	68c8      	and      	r3, r2
  26:	d84500f1 	ld.b      	r2, (r5, 0xf1)
  2a:	68c8      	and      	r3, r2
  2c:	d84500f2 	ld.b      	r2, (r5, 0xf2)
  30:	68c8      	and      	r3, r2
  32:	eb4300ff 	cmpnei      	r3, 255
  36:	6d83      	mov      	r6, r0
  38:	0c0a      	bf      	0x4c	// 4c <ieee80211_wnbsta_rx_assoc_resp+0x4c>
  3a:	3206      	movi      	r2, 6
  3c:	e4280009 	addi      	r1, r8, 10
  40:	e40500ec 	addi      	r0, r5, 237
  44:	e0000000 	bsr      	0x0	// 0 <memcmp>
  48:	e9200059 	bnez      	r0, 0xfa	// fa <ieee80211_wnbsta_rx_assoc_resp+0xfa>
  4c:	96e1      	ld.w      	r7, (r6, 0x4)
  4e:	e9070011 	bez      	r7, 0x70	// 70 <ieee80211_wnbsta_rx_assoc_resp+0x70>
  52:	d8670025 	ld.b      	r3, (r7, 0x25)
  56:	e4632008 	andi      	r3, r3, 8
  5a:	e903000b 	bez      	r3, 0x70	// 70 <ieee80211_wnbsta_rx_assoc_resp+0x70>
  5e:	3206      	movi      	r2, 6
  60:	e4280009 	addi      	r1, r8, 10
  64:	e407001b 	addi      	r0, r7, 28
  68:	e0000000 	bsr      	0x0	// 0 <memcmp>
  6c:	e9000047 	bez      	r0, 0xfa	// fa <ieee80211_wnbsta_rx_assoc_resp+0xfa>
  70:	8472      	ld.b      	r3, (r4, 0x12)
  72:	3b44      	cmpnei      	r3, 4
  74:	0843      	bt      	0xfa	// fa <ieee80211_wnbsta_rx_assoc_resp+0xfa>
  76:	e4c80017 	addi      	r6, r8, 24
  7a:	d926000b 	ld.b      	r9, (r6, 0xb)
  7e:	e9090040 	bez      	r9, 0xfe	// fe <ieee80211_wnbsta_rx_assoc_resp+0xfe>
  82:	d844202b 	ld.w      	r2, (r4, 0xac)
  86:	dd241006 	st.h      	r9, (r4, 0xc)
  8a:	3301      	movi      	r3, 1
  8c:	8240      	ld.b      	r2, (r2, 0x0)
  8e:	e42500ec 	addi      	r1, r5, 237
  92:	d804202a 	ld.w      	r0, (r4, 0xa8)
  96:	e0000000 	bsr      	0x0	// 0 <ieee80211_bss_disable>
  9a:	866b      	ld.b      	r3, (r6, 0xb)
  9c:	3b41      	cmpnei      	r3, 1
  9e:	081d      	bt      	0xd8	// d8 <ieee80211_wnbsta_rx_assoc_resp+0xd8>
  a0:	d8442063 	ld.w      	r2, (r4, 0x18c)
  a4:	d82200ee 	ld.b      	r1, (r2, 0xee)
  a8:	d86200ed 	ld.b      	r3, (r2, 0xed)
  ac:	68c4      	and      	r3, r1
  ae:	d82200ef 	ld.b      	r1, (r2, 0xef)
  b2:	68c4      	and      	r3, r1
  b4:	d82200f0 	ld.b      	r1, (r2, 0xf0)
  b8:	68c4      	and      	r3, r1
  ba:	d82200f1 	ld.b      	r1, (r2, 0xf1)
  be:	68c4      	and      	r3, r1
  c0:	d84200f2 	ld.b      	r2, (r2, 0xf2)
  c4:	68c8      	and      	r3, r2
  c6:	eb4300ff 	cmpnei      	r3, 255
  ca:	0c07      	bf      	0xd8	// d8 <ieee80211_wnbsta_rx_assoc_resp+0xd8>
  cc:	8c66      	ld.h      	r3, (r4, 0xc)
  ce:	6c9f      	mov      	r2, r7
  d0:	3109      	movi      	r1, 9
  d2:	6c13      	mov      	r0, r4
  d4:	e0000000 	bsr      	0x0	// 0 <ieee80211_iface_event>
  d8:	d864205d 	ld.w      	r3, (r4, 0x174)
  dc:	e903000f 	bez      	r3, 0xfa	// fa <ieee80211_wnbsta_rx_assoc_resp+0xfa>
  e0:	8340      	ld.b      	r2, (r3, 0x0)
  e2:	e4422001 	andi      	r2, r2, 1
  e6:	e902000a 	bez      	r2, 0xfa	// fa <ieee80211_wnbsta_rx_assoc_resp+0xfa>
  ea:	8361      	ld.b      	r3, (r3, 0x1)
  ec:	2b03      	subi      	r3, 4
  ee:	74cc      	zextb      	r3, r3
  f0:	3b01      	cmphsi      	r3, 2
  f2:	0804      	bt      	0xfa	// fa <ieee80211_wnbsta_rx_assoc_resp+0xfa>
  f4:	6c13      	mov      	r0, r4
  f6:	e0000000 	bsr      	0x0	// 0 <ieee80211_wnb_roaming_fail>
  fa:	140a      	addi      	r14, r14, 40
  fc:	1496      	pop      	r4-r9, r15
  fe:	d86500ea 	ld.b      	r3, (r5, 0xea)
 102:	e4632008 	andi      	r3, r3, 8
 106:	d8e4203f 	ld.w      	r7, (r4, 0xfc)
 10a:	e5080009 	addi      	r8, r8, 10
 10e:	dd251006 	st.h      	r9, (r5, 0xc)
 112:	d824205d 	ld.w      	r1, (r4, 0x174)
 116:	251b      	addi      	r5, 28
 118:	e9030007 	bez      	r3, 0x126	// 126 <ieee80211_wnbsta_rx_assoc_resp+0x126>
 11c:	e9010096 	bez      	r1, 0x248	// 248 <ieee80211_wnbsta_rx_assoc_resp+0x248>
 120:	8161      	ld.b      	r3, (r1, 0x1)
 122:	3b44      	cmpnei      	r3, 4
 124:	0892      	bt      	0x248	// 248 <ieee80211_wnbsta_rx_assoc_resp+0x248>
 126:	e901000d 	bez      	r1, 0x140	// 140 <ieee80211_wnbsta_rx_assoc_resp+0x140>
 12a:	8161      	ld.b      	r3, (r1, 0x1)
 12c:	3b44      	cmpnei      	r3, 4
 12e:	0809      	bt      	0x140	// 140 <ieee80211_wnbsta_rx_assoc_resp+0x140>
 130:	3220      	movi      	r2, 32
 132:	2119      	addi      	r1, 26
 134:	e4040112 	addi      	r0, r4, 275
 138:	e0000000 	bsr      	0x0	// 0 <strncpy>
 13c:	ea090001 	movi      	r9, 1
 140:	d8042029 	ld.w      	r0, (r4, 0xa4)
 144:	8424      	ld.b      	r1, (r4, 0x4)
 146:	2900      	subi      	r1, 1
 148:	6c97      	mov      	r2, r5
 14a:	7444      	zextb      	r1, r1
 14c:	906f      	ld.w      	r3, (r0, 0x3c)
 14e:	7bcd      	jsr      	r3
 150:	d8042063 	ld.w      	r0, (r4, 0x18c)
 154:	3206      	movi      	r2, 6
 156:	6c63      	mov      	r1, r8
 158:	201b      	addi      	r0, 28
 15a:	e0000000 	bsr      	0x0	// 0 <memcpy>
 15e:	d8242063 	ld.w      	r1, (r4, 0x18c)
 162:	8664      	ld.b      	r3, (r6, 0x4)
 164:	dc611074 	st.h      	r3, (r1, 0xe8)
 168:	8e66      	ld.h      	r3, (r6, 0xc)
 16a:	dc6410ac 	st.h      	r3, (r4, 0x158)
 16e:	6c13      	mov      	r0, r4
 170:	e0000000 	bsr      	0x0	// 0 <ieee80211_sta_add>
 174:	6d43      	mov      	r5, r0
 176:	e9200071 	bnez      	r0, 0x258	// 258 <ieee80211_wnbsta_rx_assoc_resp+0x258>
 17a:	d8442063 	ld.w      	r2, (r4, 0x18c)
 17e:	6cc3      	mov      	r3, r0
 180:	221b      	addi      	r2, 28
 182:	316a      	movi      	r1, 106
 184:	d8042029 	ld.w      	r0, (r4, 0xa4)
 188:	e0000000 	bsr      	0x0	// 0 <lmac_ioctl>
 18c:	3f42      	cmpnei      	r7, 2
 18e:	c4000501 	mvc      	r1
 192:	d8442063 	ld.w      	r2, (r4, 0x18c)
 196:	e4640133 	addi      	r3, r4, 308
 19a:	221b      	addi      	r2, 28
 19c:	7444      	zextb      	r1, r1
 19e:	b8a0      	st.w      	r5, (r14, 0x0)
 1a0:	6c13      	mov      	r0, r4
 1a2:	e0000000 	bsr      	0x0	// 0 <ieee80211_wnb_set_key>
 1a6:	6cd7      	mov      	r3, r5
 1a8:	d84410ac 	ld.h      	r2, (r4, 0x158)
 1ac:	3107      	movi      	r1, 7
 1ae:	d8042029 	ld.w      	r0, (r4, 0xa4)
 1b2:	e0000000 	bsr      	0x0	// 0 <lmac_ioctl>
 1b6:	d8442063 	ld.w      	r2, (r4, 0x18c)
 1ba:	6cd7      	mov      	r3, r5
 1bc:	221b      	addi      	r2, 28
 1be:	312f      	movi      	r1, 47
 1c0:	d8042029 	ld.w      	r0, (r4, 0xa4)
 1c4:	e0000000 	bsr      	0x0	// 0 <lmac_ioctl>
 1c8:	d9042063 	ld.w      	r8, (r4, 0x18c)
 1cc:	dca80125 	st.b      	r5, (r8, 0x125)
 1d0:	e0000000 	bsr      	0x0	// 0 <os_jiffies>
 1d4:	dc082024 	st.w      	r0, (r8, 0x90)
 1d8:	dc282025 	st.w      	r1, (r8, 0x94)
 1dc:	8e28      	ld.h      	r1, (r6, 0x10)
 1de:	6c13      	mov      	r0, r4
 1e0:	e0000000 	bsr      	0x0	// 0 <ieee80211_wnbsta_rx_assoc_resp>
 1e4:	866e      	ld.b      	r3, (r6, 0xe)
 1e6:	dc640026 	st.b      	r3, (r4, 0x26)
 1ea:	e909000a 	bez      	r9, 0x1fe	// 1fe <ieee80211_wnbsta_rx_assoc_resp+0x1fe>
 1ee:	d8442063 	ld.w      	r2, (r4, 0x18c)
 1f2:	6cd7      	mov      	r3, r5
 1f4:	221b      	addi      	r2, 28
 1f6:	3120      	movi      	r1, 32
 1f8:	6c13      	mov      	r0, r4
 1fa:	e0000000 	bsr      	0x0	// 0 <ieee80211_iface_event>
 1fe:	6c13      	mov      	r0, r4
 200:	3109      	movi      	r1, 9
 202:	e0000000 	bsr      	0x0	// 0 <ieee80211_state>
 206:	d8442063 	ld.w      	r2, (r4, 0x18c)
 20a:	8e28      	ld.h      	r1, (r6, 0x10)
 20c:	827c      	ld.b      	r3, (r2, 0x1c)
 20e:	b829      	st.w      	r1, (r14, 0x24)
 210:	862e      	ld.b      	r1, (r6, 0xe)
 212:	b828      	st.w      	r1, (r14, 0x20)
 214:	d8240026 	ld.b      	r1, (r4, 0x26)
 218:	3f42      	cmpnei      	r7, 2
 21a:	b827      	st.w      	r1, (r14, 0x1c)
 21c:	6443      	mvcv      	r1
 21e:	b826      	st.w      	r1, (r14, 0x18)
 220:	8624      	ld.b      	r1, (r6, 0x4)
 222:	b825      	st.w      	r1, (r14, 0x14)
 224:	d8220021 	ld.b      	r1, (r2, 0x21)
 228:	b824      	st.w      	r1, (r14, 0x10)
 22a:	d8220020 	ld.b      	r1, (r2, 0x20)
 22e:	b823      	st.w      	r1, (r14, 0xc)
 230:	823f      	ld.b      	r1, (r2, 0x1f)
 232:	b822      	st.w      	r1, (r14, 0x8)
 234:	823e      	ld.b      	r1, (r2, 0x1e)
 236:	b821      	st.w      	r1, (r14, 0x4)
 238:	825d      	ld.b      	r2, (r2, 0x1d)
 23a:	b840      	st.w      	r2, (r14, 0x0)
 23c:	32fb      	movi      	r2, 251
 23e:	102a      	lrw      	r1, 0x0	// 264 <ieee80211_wnbsta_rx_assoc_resp+0x264>
 240:	100a      	lrw      	r0, 0x0	// 268 <ieee80211_wnbsta_rx_assoc_resp+0x268>
 242:	e0000000 	bsr      	0x0	// 0 <hgprintf>
 246:	075a      	br      	0xfa	// fa <ieee80211_wnbsta_rx_assoc_resp+0xfa>
 248:	3206      	movi      	r2, 6
 24a:	6c63      	mov      	r1, r8
 24c:	6c17      	mov      	r0, r5
 24e:	e0000000 	bsr      	0x0	// 0 <memcmp>
 252:	e900ff86 	bez      	r0, 0x15e	// 15e <ieee80211_wnbsta_rx_assoc_resp+0x15e>
 256:	0752      	br      	0xfa	// fa <ieee80211_wnbsta_rx_assoc_resp+0xfa>
 258:	32fd      	movi      	r2, 253
 25a:	1023      	lrw      	r1, 0x0	// 264 <ieee80211_wnbsta_rx_assoc_resp+0x264>
 25c:	1004      	lrw      	r0, 0x0	// 26c <ieee80211_wnbsta_rx_assoc_resp+0x26c>
 25e:	e0000000 	bsr      	0x0	// 0 <hgprintf>
 262:	074c      	br      	0xfa	// fa <ieee80211_wnbsta_rx_assoc_resp+0xfa>
	...

Disassembly of section .text.ieee80211_wnbsta_rx_disassoc:

00000000 <ieee80211_wnbsta_rx_disassoc>:
   0:	14d4      	push      	r4-r7, r15
   2:	1427      	subi      	r14, r14, 28
   4:	9062      	ld.w      	r3, (r0, 0x8)
   6:	9081      	ld.w      	r4, (r0, 0x4)
   8:	93c7      	ld.w      	r6, (r3, 0x1c)
   a:	90a0      	ld.w      	r5, (r0, 0x0)
   c:	e9040078 	bez      	r4, 0xfc	// fc <ieee80211_wnbsta_rx_disassoc+0xfc>
  10:	d8052063 	ld.w      	r0, (r5, 0x18c)
  14:	3206      	movi      	r2, 6
  16:	e4260009 	addi      	r1, r6, 10
  1a:	201b      	addi      	r0, 28
  1c:	e0000000 	bsr      	0x0	// 0 <memcmp>
  20:	e920006e 	bnez      	r0, 0xfc	// fc <ieee80211_wnbsta_rx_disassoc+0xfc>
  24:	3206      	movi      	r2, 6
  26:	5e2e      	addi      	r1, r6, 4
  28:	5d08      	addu      	r0, r5, r2
  2a:	e0000000 	bsr      	0x0	// 0 <memcmp>
  2e:	6dc3      	mov      	r7, r0
  30:	e9200066 	bnez      	r0, 0xfc	// fc <ieee80211_wnbsta_rx_disassoc+0xfc>
  34:	2617      	addi      	r6, 24
  36:	8e62      	ld.h      	r3, (r6, 0x4)
  38:	e4632001 	andi      	r3, r3, 1
  3c:	e903003a 	bez      	r3, 0xb0	// b0 <ieee80211_wnbsta_rx_disassoc+0xb0>
  40:	3206      	movi      	r2, 6
  42:	e424001b 	addi      	r1, r4, 28
  46:	1805      	addi      	r0, r14, 20
  48:	e0000000 	bsr      	0x0	// 0 <memcpy>
  4c:	d8440021 	ld.b      	r2, (r4, 0x21)
  50:	847c      	ld.b      	r3, (r4, 0x1c)
  52:	b844      	st.w      	r2, (r14, 0x10)
  54:	d8440020 	ld.b      	r2, (r4, 0x20)
  58:	b843      	st.w      	r2, (r14, 0xc)
  5a:	845f      	ld.b      	r2, (r4, 0x1f)
  5c:	b842      	st.w      	r2, (r14, 0x8)
  5e:	845e      	ld.b      	r2, (r4, 0x1e)
  60:	b841      	st.w      	r2, (r14, 0x4)
  62:	845d      	ld.b      	r2, (r4, 0x1d)
  64:	b840      	st.w      	r2, (r14, 0x0)
  66:	ea02010f 	movi      	r2, 271
  6a:	1126      	lrw      	r1, 0x0	// 100 <ieee80211_wnbsta_rx_disassoc+0x100>
  6c:	1106      	lrw      	r0, 0x0	// 104 <ieee80211_wnbsta_rx_disassoc+0x104>
  6e:	e0000000 	bsr      	0x0	// 0 <hgprintf>
  72:	d8052063 	ld.w      	r0, (r5, 0x18c)
  76:	3206      	movi      	r2, 6
  78:	d86000ea 	ld.b      	r3, (r0, 0xea)
  7c:	c4675c03 	ins      	r3, r7, 3, 3
  80:	dc6000ea 	st.b      	r3, (r0, 0xea)
  84:	6c5f      	mov      	r1, r7
  86:	20ec      	addi      	r0, 237
  88:	e0000000 	bsr      	0x0	// 0 <memset>
  8c:	3220      	movi      	r2, 32
  8e:	6c5f      	mov      	r1, r7
  90:	e4050112 	addi      	r0, r5, 275
  94:	e0000000 	bsr      	0x0	// 0 <memset>
  98:	3220      	movi      	r2, 32
  9a:	6c5f      	mov      	r1, r7
  9c:	e4050133 	addi      	r0, r5, 308
  a0:	e0000000 	bsr      	0x0	// 0 <memset>
  a4:	6cdf      	mov      	r3, r7
  a6:	1a05      	addi      	r2, r14, 20
  a8:	311c      	movi      	r1, 28
  aa:	6c17      	mov      	r0, r5
  ac:	e0000000 	bsr      	0x0	// 0 <ieee80211_iface_event>
  b0:	d8652063 	ld.w      	r3, (r5, 0x18c)
  b4:	d8630025 	ld.b      	r3, (r3, 0x25)
  b8:	e4632008 	andi      	r3, r3, 8
  bc:	e9030020 	bez      	r3, 0xfc	// fc <ieee80211_wnbsta_rx_disassoc+0xfc>
  c0:	d8440021 	ld.b      	r2, (r4, 0x21)
  c4:	847c      	ld.b      	r3, (r4, 0x1c)
  c6:	b844      	st.w      	r2, (r14, 0x10)
  c8:	d8440020 	ld.b      	r2, (r4, 0x20)
  cc:	b843      	st.w      	r2, (r14, 0xc)
  ce:	845f      	ld.b      	r2, (r4, 0x1f)
  d0:	b842      	st.w      	r2, (r14, 0x8)
  d2:	845e      	ld.b      	r2, (r4, 0x1e)
  d4:	b841      	st.w      	r2, (r14, 0x4)
  d6:	845d      	ld.b      	r2, (r4, 0x1d)
  d8:	102a      	lrw      	r1, 0x0	// 100 <ieee80211_wnbsta_rx_disassoc+0x100>
  da:	100c      	lrw      	r0, 0x0	// 108 <ieee80211_wnbsta_rx_disassoc+0x108>
  dc:	b840      	st.w      	r2, (r14, 0x0)
  de:	ea020117 	movi      	r2, 279
  e2:	e0000000 	bsr      	0x0	// 0 <hgprintf>
  e6:	8e62      	ld.h      	r3, (r6, 0x4)
  e8:	ad67      	st.h      	r3, (r5, 0xe)
  ea:	6c17      	mov      	r0, r5
  ec:	e0000000 	bsr      	0x0	// 0 <ieee80211_sta_disconnect>
  f0:	8d67      	ld.h      	r3, (r5, 0xe)
  f2:	6c93      	mov      	r2, r4
  f4:	310a      	movi      	r1, 10
  f6:	6c17      	mov      	r0, r5
  f8:	e0000000 	bsr      	0x0	// 0 <ieee80211_iface_event>
  fc:	1407      	addi      	r14, r14, 28
  fe:	1494      	pop      	r4-r7, r15
	...

Disassembly of section .text.ieee80211_wnbsta_rx_probe_resp:

00000000 <ieee80211_wnbsta_rx_probe_resp>:
   0:	14d1      	push      	r4, r15
   2:	9060      	ld.w      	r3, (r0, 0x0)
   4:	d8832063 	ld.w      	r4, (r3, 0x18c)
   8:	d8640025 	ld.b      	r3, (r4, 0x25)
   c:	e4632008 	andi      	r3, r3, 8
  10:	e9030014 	bez      	r3, 0x38	// 38 <ieee80211_wnbsta_rx_probe_resp+0x38>
  14:	9062      	ld.w      	r3, (r0, 0x8)
  16:	3206      	movi      	r2, 6
  18:	9307      	ld.w      	r0, (r3, 0x1c)
  1a:	e424001b 	addi      	r1, r4, 28
  1e:	2009      	addi      	r0, 10
  20:	e0000000 	bsr      	0x0	// 0 <memcmp>
  24:	e920000a 	bnez      	r0, 0x38	// 38 <ieee80211_wnbsta_rx_probe_resp+0x38>
  28:	dc0400ec 	st.b      	r0, (r4, 0xec)
  2c:	e0000000 	bsr      	0x0	// 0 <os_jiffies>
  30:	dc042024 	st.w      	r0, (r4, 0x90)
  34:	dc242025 	st.w      	r1, (r4, 0x94)
  38:	1491      	pop      	r4, r15
