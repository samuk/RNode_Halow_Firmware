
libwifi/o/pair_pair.o:     file format elf32-csky-little


Disassembly of section .text.ieee80211_pair_success_delay:

00000000 <ieee80211_pair_success_delay>:
   0:	14d0      	push      	r15
   2:	d840205c 	ld.w      	r2, (r0, 0x170)
   6:	8264      	ld.b      	r3, (r2, 0x4)
   8:	e4632019 	andi      	r3, r3, 25
   c:	3b59      	cmpnei      	r3, 25
   e:	0806      	bt      	0x1a	// 1a <ieee80211_pair_success_delay+0x1a>
  10:	3300      	movi      	r3, 0
  12:	222b      	addi      	r2, 44
  14:	3102      	movi      	r1, 2
  16:	e0000000 	bsr      	0x0	// 0 <ieee80211_iface_event>
  1a:	1490      	pop      	r15

Disassembly of section .text.ieee80211_pairing_do_actoin:

00000000 <ieee80211_pairing_do_actoin>:
   0:	14d3      	push      	r4-r6, r15
   2:	1421      	subi      	r14, r14, 4
   4:	394c      	cmpnei      	r1, 12
   6:	6d03      	mov      	r4, r0
   8:	0c63      	bf      	0xce	// ce <ieee80211_pairing_do_actoin+0xce>
   a:	394d      	cmpnei      	r1, 13
   c:	0cb0      	bf      	0x16c	// 16c <ieee80211_pairing_do_actoin+0x16c>
   e:	394b      	cmpnei      	r1, 11
  10:	0871      	bt      	0xf2	// f2 <ieee80211_pairing_do_actoin+0xf2>
  12:	d800205c 	ld.w      	r0, (r0, 0x170)
  16:	80a4      	ld.b      	r5, (r0, 0x4)
  18:	e4a52001 	andi      	r5, r5, 1
  1c:	e925006b 	bnez      	r5, 0xf2	// f2 <ieee80211_pairing_do_actoin+0xf2>
  20:	3230      	movi      	r2, 48
  22:	6c57      	mov      	r1, r5
  24:	2003      	addi      	r0, 4
  26:	e0000000 	bsr      	0x0	// 0 <memset>
  2a:	d804205c 	ld.w      	r0, (r4, 0x170)
  2e:	3206      	movi      	r2, 6
  30:	31ff      	movi      	r1, 255
  32:	202b      	addi      	r0, 44
  34:	e0000000 	bsr      	0x0	// 0 <memset>
  38:	d864205c 	ld.w      	r3, (r4, 0x170)
  3c:	3001      	movi      	r0, 1
  3e:	8344      	ld.b      	r2, (r3, 0x4)
  40:	c4405c00 	ins      	r2, r0, 0, 0
  44:	a344      	st.b      	r2, (r3, 0x4)
  46:	d9840013 	ld.b      	r12, (r4, 0x13)
  4a:	3214      	movi      	r2, 20
  4c:	dd830005 	st.b      	r12, (r3, 0x5)
  50:	a347      	st.b      	r2, (r3, 0x7)
  52:	8c40      	ld.h      	r2, (r4, 0x0)
  54:	c4022021 	and      	r1, r2, r0
  58:	e901002c 	bez      	r1, 0xb0	// b0 <ieee80211_pairing_do_actoin+0xb0>
  5c:	a3a5      	st.b      	r5, (r3, 0x5)
  5e:	d864003d 	ld.b      	r3, (r4, 0x3d)
  62:	3202      	movi      	r2, 2
  64:	c4625cc1 	ins      	r3, r2, 7, 1
  68:	c4605c00 	ins      	r3, r0, 0, 0
  6c:	dd84003c 	st.b      	r12, (r4, 0x3c)
  70:	dc64003d 	st.b      	r3, (r4, 0x3d)
  74:	d8442065 	ld.w      	r2, (r4, 0x194)
  78:	5a62      	addi      	r3, r2, 1
  7a:	d8242066 	ld.w      	r1, (r4, 0x198)
  7e:	644d      	cmplt      	r3, r1
  80:	5b05      	subu      	r0, r3, r1
  82:	c4600c20 	incf      	r3, r0, 0
  86:	d8242064 	ld.w      	r1, (r4, 0x190)
  8a:	644e      	cmpne      	r3, r1
  8c:	0c07      	bf      	0x9a	// 9a <ieee80211_pairing_do_actoin+0x9a>
  8e:	6090      	addu      	r2, r4
  90:	310c      	movi      	r1, 12
  92:	dc22019c 	st.b      	r1, (r2, 0x19c)
  96:	dc642065 	st.w      	r3, (r4, 0x194)
  9a:	d804202a 	ld.w      	r0, (r4, 0xa8)
  9e:	e0000000 	bsr      	0x0	// 0 <os_sema_up>
  a2:	3300      	movi      	r3, 0
  a4:	6c8f      	mov      	r2, r3
  a6:	3101      	movi      	r1, 1
  a8:	6c13      	mov      	r0, r4
  aa:	e0000000 	bsr      	0x0	// 0 <ieee80211_iface_event>
  ae:	0422      	br      	0xf2	// f2 <ieee80211_pairing_do_actoin+0xf2>
  b0:	e4422002 	andi      	r2, r2, 2
  b4:	e902ffe0 	bez      	r2, 0x74	// 74 <ieee80211_pairing_do_actoin+0x74>
  b8:	8465      	ld.b      	r3, (r4, 0x5)
  ba:	e4632004 	andi      	r3, r3, 4
  be:	e903ffdb 	bez      	r3, 0x74	// 74 <ieee80211_pairing_do_actoin+0x74>
  c2:	3317      	movi      	r3, 23
  c4:	dc640026 	st.b      	r3, (r4, 0x26)
  c8:	e0000000 	bsr      	0x0	// 0 <system_resume>
  cc:	07d4      	br      	0x74	// 74 <ieee80211_pairing_do_actoin+0x74>
  ce:	d860205c 	ld.w      	r3, (r0, 0x170)
  d2:	8364      	ld.b      	r3, (r3, 0x4)
  d4:	e4632001 	andi      	r3, r3, 1
  d8:	e903000d 	bez      	r3, 0xf2	// f2 <ieee80211_pairing_do_actoin+0xf2>
  dc:	d8602025 	ld.w      	r3, (r0, 0x94)
  e0:	e903000b 	bez      	r3, 0xf6	// f6 <ieee80211_pairing_do_actoin+0xf6>
  e4:	7bcd      	jsr      	r3
  e6:	d804205c 	ld.w      	r0, (r4, 0x170)
  ea:	8027      	ld.b      	r1, (r0, 0x7)
  ec:	2033      	addi      	r0, 52
  ee:	e0000000 	bsr      	0x0	// 0 <os_timer_start>
  f2:	1401      	addi      	r14, r14, 4
  f4:	1493      	pop      	r4-r6, r15
  f6:	304c      	movi      	r0, 76
  f8:	e0000000 	bsr      	0x0	// 0 <_os_zalloc>
  fc:	6d43      	mov      	r5, r0
  fe:	e9000031 	bez      	r0, 0x160	// 160 <ieee80211_pairing_do_actoin+0x160>
 102:	d864205c 	ld.w      	r3, (r4, 0x170)
 106:	8365      	ld.b      	r3, (r3, 0x5)
 108:	e923000a 	bnez      	r3, 0x11c	// 11c <ieee80211_pairing_do_actoin+0x11c>
 10c:	d864202b 	ld.w      	r3, (r4, 0xac)
 110:	3202      	movi      	r2, 2
 112:	9365      	ld.w      	r3, (r3, 0x14)
 114:	3101      	movi      	r1, 1
 116:	6c13      	mov      	r0, r4
 118:	e0000000 	bsr      	0x0	// 0 <ieee80211_switch_chan>
 11c:	d824205c 	ld.w      	r1, (r4, 0x170)
 120:	3201      	movi      	r2, 1
 122:	8960      	ld.h      	r3, (r1, 0x0)
 124:	ad60      	st.h      	r3, (r5, 0x0)
 126:	8473      	ld.b      	r3, (r4, 0x13)
 128:	a564      	st.b      	r3, (r5, 0x4)
 12a:	334c      	movi      	r3, 76
 12c:	ad61      	st.h      	r3, (r5, 0x2)
 12e:	8460      	ld.b      	r3, (r4, 0x0)
 130:	a566      	st.b      	r3, (r5, 0x6)
 132:	334c      	movi      	r3, 76
 134:	b860      	st.w      	r3, (r14, 0x0)
 136:	212b      	addi      	r1, 44
 138:	6cd7      	mov      	r3, r5
 13a:	6c13      	mov      	r0, r4
 13c:	e0000000 	bsr      	0x0	// 0 <ieee80211_gen_vendor_spec_action>
 140:	6d83      	mov      	r6, r0
 142:	e900000b 	bez      	r0, 0x158	// 158 <ieee80211_pairing_do_actoin+0x158>
 146:	6c43      	mov      	r1, r0
 148:	6c13      	mov      	r0, r4
 14a:	e0000000 	bsr      	0x0	// 0 <ieee80211_add_customer_ie>
 14e:	6c9b      	mov      	r2, r6
 150:	3100      	movi      	r1, 0
 152:	6c13      	mov      	r0, r4
 154:	e0000000 	bsr      	0x0	// 0 <ieee80211_tx_skb>
 158:	6c17      	mov      	r0, r5
 15a:	e0000000 	bsr      	0x0	// 0 <_os_free>
 15e:	07c4      	br      	0xe6	// e6 <ieee80211_pairing_do_actoin+0xe6>
 160:	3247      	movi      	r2, 71
 162:	102e      	lrw      	r1, 0x0	// 198 <ieee80211_pairing_do_actoin+0x198>
 164:	100e      	lrw      	r0, 0x0	// 19c <ieee80211_pairing_do_actoin+0x19c>
 166:	e0000000 	bsr      	0x0	// 0 <hgprintf>
 16a:	07be      	br      	0xe6	// e6 <ieee80211_pairing_do_actoin+0xe6>
 16c:	d800205c 	ld.w      	r0, (r0, 0x170)
 170:	8064      	ld.b      	r3, (r0, 0x4)
 172:	e4632001 	andi      	r3, r3, 1
 176:	e903ffbe 	bez      	r3, 0xf2	// f2 <ieee80211_pairing_do_actoin+0xf2>
 17a:	2033      	addi      	r0, 52
 17c:	e0000000 	bsr      	0x0	// 0 <os_timer_stop>
 180:	d844205c 	ld.w      	r2, (r4, 0x170)
 184:	3100      	movi      	r1, 0
 186:	8264      	ld.b      	r3, (r2, 0x4)
 188:	c4615c00 	ins      	r3, r1, 0, 0
 18c:	a264      	st.b      	r3, (r2, 0x4)
 18e:	3104      	movi      	r1, 4
 190:	3306      	movi      	r3, 6
 192:	222b      	addi      	r2, 44
 194:	078a      	br      	0xa8	// a8 <ieee80211_pairing_do_actoin+0xa8>
	...

Disassembly of section .text.ieee80211_pair_timer_cb:

00000000 <ieee80211_pair_timer_cb>:
   0:	14d0      	push      	r15
   2:	d860205c 	ld.w      	r3, (r0, 0x170)
   6:	8364      	ld.b      	r3, (r3, 0x4)
   8:	e4632001 	andi      	r3, r3, 1
   c:	e903001a 	bez      	r3, 0x40	// 40 <ieee80211_pair_timer_cb+0x40>
  10:	d8402065 	ld.w      	r2, (r0, 0x194)
  14:	5a62      	addi      	r3, r2, 1
  16:	d8202066 	ld.w      	r1, (r0, 0x198)
  1a:	644d      	cmplt      	r3, r1
  1c:	c423008c 	subu      	r12, r3, r1
  20:	c46c0c20 	incf      	r3, r12, 0
  24:	d8202064 	ld.w      	r1, (r0, 0x190)
  28:	64c6      	cmpne      	r1, r3
  2a:	0c07      	bf      	0x38	// 38 <ieee80211_pair_timer_cb+0x38>
  2c:	6080      	addu      	r2, r0
  2e:	310c      	movi      	r1, 12
  30:	dc22019c 	st.b      	r1, (r2, 0x19c)
  34:	dc602065 	st.w      	r3, (r0, 0x194)
  38:	d800202a 	ld.w      	r0, (r0, 0xa8)
  3c:	e0000000 	bsr      	0x0	// 0 <os_sema_up>
  40:	1490      	pop      	r15

Disassembly of section .text.ieee80211_pairing_rx:

00000000 <ieee80211_pairing_rx>:
   0:	14d8      	push      	r4-r11, r15
   2:	1423      	subi      	r14, r14, 12
   4:	9062      	ld.w      	r3, (r0, 0x8)
   6:	6d03      	mov      	r4, r0
   8:	93a7      	ld.w      	r5, (r3, 0x1c)
   a:	d8c50023 	ld.b      	r6, (r5, 0x23)
   e:	46c8      	lsli      	r6, r6, 8
  10:	d8650022 	ld.b      	r3, (r5, 0x22)
  14:	6d8c      	or      	r6, r3
  16:	3e42      	cmpnei      	r6, 2
  18:	085e      	bt      	0xd4	// d4 <ieee80211_pairing_rx+0xd4>
  1a:	90e1      	ld.w      	r7, (r0, 0x4)
  1c:	e9070054 	bez      	r7, 0xc4	// c4 <ieee80211_pairing_rx+0xc4>
  20:	3207      	movi      	r2, 7
  22:	013f      	lrw      	r1, 0x0	// 320 <ieee80211_pairing_rx+0x320>
  24:	e4050023 	addi      	r0, r5, 36
  28:	e0000000 	bsr      	0x0	// 0 <strncmp>
  2c:	e9200017 	bnez      	r0, 0x5a	// 5a <ieee80211_pairing_rx+0x5a>
  30:	3306      	movi      	r3, 6
  32:	b860      	st.w      	r3, (r14, 0x0)
  34:	6c9b      	mov      	r2, r6
  36:	0263      	lrw      	r3, 0x0	// 324 <ieee80211_pairing_rx+0x324>
  38:	e427001b 	addi      	r1, r7, 28
  3c:	9400      	ld.w      	r0, (r4, 0x0)
  3e:	e0000000 	bsr      	0x0	// 0 <ieee80211_gen_vendor_spec_action>
  42:	6d43      	mov      	r5, r0
  44:	e900000b 	bez      	r0, 0x5a	// 5a <ieee80211_pairing_rx+0x5a>
  48:	6c43      	mov      	r1, r0
  4a:	9400      	ld.w      	r0, (r4, 0x0)
  4c:	e0000000 	bsr      	0x0	// 0 <ieee80211_add_customer_ie>
  50:	6c97      	mov      	r2, r5
  52:	9421      	ld.w      	r1, (r4, 0x4)
  54:	9400      	ld.w      	r0, (r4, 0x0)
  56:	e0000000 	bsr      	0x0	// 0 <ieee80211_tx_skb>
  5a:	94a1      	ld.w      	r5, (r4, 0x4)
  5c:	3206      	movi      	r2, 6
  5e:	e425001b 	addi      	r1, r5, 28
  62:	1801      	addi      	r0, r14, 4
  64:	e0000000 	bsr      	0x0	// 0 <memcpy>
  68:	9400      	ld.w      	r0, (r4, 0x0)
  6a:	8860      	ld.h      	r3, (r0, 0x0)
  6c:	e4632001 	andi      	r3, r3, 1
  70:	e903002c 	bez      	r3, 0xc8	// c8 <ieee80211_pairing_rx+0xc8>
  74:	d8602063 	ld.w      	r3, (r0, 0x18c)
  78:	3500      	movi      	r5, 0
  7a:	d84300ea 	ld.b      	r2, (r3, 0xea)
  7e:	c4455c03 	ins      	r2, r5, 3, 3
  82:	dc4300ea 	st.b      	r2, (r3, 0xea)
  86:	3201      	movi      	r2, 1
  88:	a847      	st.h      	r2, (r0, 0xe)
  8a:	6c57      	mov      	r1, r5
  8c:	e40300ec 	addi      	r0, r3, 237
  90:	3206      	movi      	r2, 6
  92:	e0000000 	bsr      	0x0	// 0 <memset>
  96:	9400      	ld.w      	r0, (r4, 0x0)
  98:	3220      	movi      	r2, 32
  9a:	6c57      	mov      	r1, r5
  9c:	e4000112 	addi      	r0, r0, 275
  a0:	e0000000 	bsr      	0x0	// 0 <memset>
  a4:	9400      	ld.w      	r0, (r4, 0x0)
  a6:	3220      	movi      	r2, 32
  a8:	6c57      	mov      	r1, r5
  aa:	e4000133 	addi      	r0, r0, 308
  ae:	e0000000 	bsr      	0x0	// 0 <memset>
  b2:	9400      	ld.w      	r0, (r4, 0x0)
  b4:	e0000000 	bsr      	0x0	// 0 <ieee80211_sta_disconnect>
  b8:	3300      	movi      	r3, 0
  ba:	1a01      	addi      	r2, r14, 4
  bc:	311c      	movi      	r1, 28
  be:	9400      	ld.w      	r0, (r4, 0x0)
  c0:	e0000000 	bsr      	0x0	// 0 <ieee80211_iface_event>
  c4:	1403      	addi      	r14, r14, 12
  c6:	1498      	pop      	r4-r11, r15
  c8:	3302      	movi      	r3, 2
  ca:	3201      	movi      	r2, 1
  cc:	6c57      	mov      	r1, r5
  ce:	e0000000 	bsr      	0x0	// 0 <ieee80211_sta_del>
  d2:	07f3      	br      	0xb8	// b8 <ieee80211_pairing_rx+0xb8>
  d4:	3e41      	cmpnei      	r6, 1
  d6:	0bf7      	bt      	0xc4	// c4 <ieee80211_pairing_rx+0xc4>
  d8:	9080      	ld.w      	r4, (r0, 0x0)
  da:	d8c4205c 	ld.w      	r6, (r4, 0x170)
  de:	e906fff3 	bez      	r6, 0xc4	// c4 <ieee80211_pairing_rx+0xc4>
  e2:	8664      	ld.b      	r3, (r6, 0x4)
  e4:	e4632001 	andi      	r3, r3, 1
  e8:	e903ffee 	bez      	r3, 0xc4	// c4 <ieee80211_pairing_rx+0xc4>
  ec:	e4e50023 	addi      	r7, r5, 36
  f0:	8473      	ld.b      	r3, (r4, 0x13)
  f2:	d9270004 	ld.b      	r9, (r7, 0x4)
  f6:	664e      	cmpne      	r3, r9
  f8:	0be6      	bt      	0xc4	// c4 <ieee80211_pairing_rx+0xc4>
  fa:	d9041000 	ld.h      	r8, (r4, 0x0)
  fe:	8766      	ld.b      	r3, (r7, 0x6)
 100:	660e      	cmpne      	r3, r8
 102:	0fe1      	bf      	0xc4	// c4 <ieee80211_pairing_rx+0xc4>
 104:	d8650025 	ld.b      	r3, (r5, 0x25)
 108:	4368      	lsli      	r3, r3, 8
 10a:	d8250024 	ld.b      	r1, (r5, 0x24)
 10e:	8e40      	ld.h      	r2, (r6, 0x0)
 110:	6cc4      	or      	r3, r1
 112:	64ca      	cmpne      	r2, r3
 114:	0bd8      	bt      	0xc4	// c4 <ieee80211_pairing_rx+0xc4>
 116:	8564      	ld.b      	r3, (r5, 0x4)
 118:	e4632001 	andi      	r3, r3, 1
 11c:	e9230009 	bnez      	r3, 0x12e	// 12e <ieee80211_pairing_rx+0x12e>
 120:	3206      	movi      	r2, 6
 122:	5c28      	addu      	r1, r4, r2
 124:	5d0e      	addi      	r0, r5, 4
 126:	e0000000 	bsr      	0x0	// 0 <memcmp>
 12a:	e920ffcd 	bnez      	r0, 0xc4	// c4 <ieee80211_pairing_rx+0xc4>
 12e:	d966002c 	ld.b      	r11, (r6, 0x2c)
 132:	e46b2001 	andi      	r3, r11, 1
 136:	e923000b 	bnez      	r3, 0x14c	// 14c <ieee80211_pairing_rx+0x14c>
 13a:	3206      	movi      	r2, 6
 13c:	e426002b 	addi      	r1, r6, 44
 140:	e4050009 	addi      	r0, r5, 10
 144:	e0000000 	bsr      	0x0	// 0 <memcmp>
 148:	e920ffbe 	bnez      	r0, 0xc4	// c4 <ieee80211_pairing_rx+0xc4>
 14c:	d9470007 	ld.b      	r10, (r7, 0x7)
 150:	e54a2020 	andi      	r10, r10, 32
 154:	e90a0012 	bez      	r10, 0x178	// 178 <ieee80211_pairing_rx+0x178>
 158:	3206      	movi      	r2, 6
 15a:	5c28      	addu      	r1, r4, r2
 15c:	5d0e      	addi      	r0, r5, 4
 15e:	e0000000 	bsr      	0x0	// 0 <memcmp>
 162:	e920ffb1 	bnez      	r0, 0xc4	// c4 <ieee80211_pairing_rx+0xc4>
 166:	3206      	movi      	r2, 6
 168:	e426002b 	addi      	r1, r6, 44
 16c:	e4050009 	addi      	r0, r5, 10
 170:	e0000000 	bsr      	0x0	// 0 <memcmp>
 174:	e920ffa8 	bnez      	r0, 0xc4	// c4 <ieee80211_pairing_rx+0xc4>
 178:	dd260005 	st.b      	r9, (r6, 0x5)
 17c:	e90a0059 	bez      	r10, 0x22e	// 22e <ieee80211_pairing_rx+0x22e>
 180:	8664      	ld.b      	r3, (r6, 0x4)
 182:	3201      	movi      	r2, 1
 184:	c4625c03 	ins      	r3, r2, 3, 3
 188:	a664      	st.b      	r3, (r6, 0x4)
 18a:	e4632018 	andi      	r3, r3, 24
 18e:	3b58      	cmpnei      	r3, 24
 190:	0b9a      	bt      	0xc4	// c4 <ieee80211_pairing_rx+0xc4>
 192:	6a08      	and      	r8, r2
 194:	3364      	movi      	r3, 100
 196:	a667      	st.b      	r3, (r6, 0x7)
 198:	e9080040 	bez      	r8, 0x218	// 218 <ieee80211_pairing_rx+0x218>
 19c:	d8042063 	ld.w      	r0, (r4, 0x18c)
 1a0:	e4250009 	addi      	r1, r5, 10
 1a4:	d86000ea 	ld.b      	r3, (r0, 0xea)
 1a8:	c4625c03 	ins      	r3, r2, 3, 3
 1ac:	dc6000ea 	st.b      	r3, (r0, 0xea)
 1b0:	3206      	movi      	r2, 6
 1b2:	20ec      	addi      	r0, 237
 1b4:	e0000000 	bsr      	0x0	// 0 <memcpy>
 1b8:	3220      	movi      	r2, 32
 1ba:	e425002f 	addi      	r1, r5, 48
 1be:	e4040112 	addi      	r0, r4, 275
 1c2:	e0000000 	bsr      	0x0	// 0 <strncpy>
 1c6:	3220      	movi      	r2, 32
 1c8:	e425004f 	addi      	r1, r5, 80
 1cc:	e4040133 	addi      	r0, r4, 308
 1d0:	e0000000 	bsr      	0x0	// 0 <memcpy>
 1d4:	d845002d 	ld.b      	r2, (r5, 0x2d)
 1d8:	d865002c 	ld.b      	r3, (r5, 0x2c)
 1dc:	4248      	lsli      	r2, r2, 8
 1de:	6c8c      	or      	r2, r3
 1e0:	d865002e 	ld.b      	r3, (r5, 0x2e)
 1e4:	4370      	lsli      	r3, r3, 16
 1e6:	6c8c      	or      	r2, r3
 1e8:	d865002f 	ld.b      	r3, (r5, 0x2f)
 1ec:	8727      	ld.b      	r1, (r7, 0x7)
 1ee:	4378      	lsli      	r3, r3, 24
 1f0:	6cc8      	or      	r3, r2
 1f2:	c4815481 	zext      	r1, r1, 4, 4
 1f6:	d8440110 	ld.b      	r2, (r4, 0x110)
 1fa:	c4415c04 	ins      	r2, r1, 4, 4
 1fe:	8727      	ld.b      	r1, (r7, 0x7)
 200:	c4415c60 	ins      	r2, r1, 3, 0
 204:	3b44      	cmpnei      	r3, 4
 206:	dc64203f 	st.w      	r3, (r4, 0xfc)
 20a:	dc440110 	st.b      	r2, (r4, 0x110)
 20e:	3200      	movi      	r2, 0
 210:	1266      	lrw      	r3, 0x0	// 328 <ieee80211_pairing_rx+0x328>
 212:	c4620c20 	incf      	r3, r2, 0
 216:	b46e      	st.w      	r3, (r4, 0x38)
 218:	3000      	movi      	r0, 0
 21a:	b800      	st.w      	r0, (r14, 0x0)
 21c:	6cd3      	mov      	r3, r4
 21e:	1244      	lrw      	r2, 0x0	// 32c <ieee80211_pairing_rx+0x32c>
 220:	ea01f424 	movi      	r1, 62500
 224:	c4614901 	rotli      	r1, r1, 3
 228:	e0000000 	bsr      	0x0	// 0 <eloop_register_timeout>
 22c:	074c      	br      	0xc4	// c4 <ieee80211_pairing_rx+0xc4>
 22e:	eb4b00ff 	cmpnei      	r11, 255
 232:	081a      	bt      	0x266	// 266 <ieee80211_pairing_rx+0x266>
 234:	d866002d 	ld.b      	r3, (r6, 0x2d)
 238:	eb4300ff 	cmpnei      	r3, 255
 23c:	0815      	bt      	0x266	// 266 <ieee80211_pairing_rx+0x266>
 23e:	d866002e 	ld.b      	r3, (r6, 0x2e)
 242:	eb4300ff 	cmpnei      	r3, 255
 246:	0810      	bt      	0x266	// 266 <ieee80211_pairing_rx+0x266>
 248:	d866002f 	ld.b      	r3, (r6, 0x2f)
 24c:	eb4300ff 	cmpnei      	r3, 255
 250:	080b      	bt      	0x266	// 266 <ieee80211_pairing_rx+0x266>
 252:	d8660030 	ld.b      	r3, (r6, 0x30)
 256:	eb4300ff 	cmpnei      	r3, 255
 25a:	0806      	bt      	0x266	// 266 <ieee80211_pairing_rx+0x266>
 25c:	d8660031 	ld.b      	r3, (r6, 0x31)
 260:	eb4300ff 	cmpnei      	r3, 255
 264:	0c55      	bf      	0x30e	// 30e <ieee80211_pairing_rx+0x30e>
 266:	304c      	movi      	r0, 76
 268:	e0000000 	bsr      	0x0	// 0 <_os_zalloc>
 26c:	6d43      	mov      	r5, r0
 26e:	e900ff2b 	bez      	r0, 0xc4	// c4 <ieee80211_pairing_rx+0xc4>
 272:	8067      	ld.b      	r3, (r0, 0x7)
 274:	3201      	movi      	r2, 1
 276:	c4625c05 	ins      	r3, r2, 5, 5
 27a:	a067      	st.b      	r3, (r0, 0x7)
 27c:	8473      	ld.b      	r3, (r4, 0x13)
 27e:	a064      	st.b      	r3, (r0, 0x4)
 280:	d864205c 	ld.w      	r3, (r4, 0x170)
 284:	8b60      	ld.h      	r3, (r3, 0x0)
 286:	a860      	st.h      	r3, (r0, 0x0)
 288:	334c      	movi      	r3, 76
 28a:	a861      	st.h      	r3, (r0, 0x2)
 28c:	8c60      	ld.h      	r3, (r4, 0x0)
 28e:	a066      	st.b      	r3, (r0, 0x6)
 290:	e4632002 	andi      	r3, r3, 2
 294:	e903001c 	bez      	r3, 0x2cc	// 2cc <ieee80211_pairing_rx+0x2cc>
 298:	d8440110 	ld.b      	r2, (r4, 0x110)
 29c:	8067      	ld.b      	r3, (r0, 0x7)
 29e:	c4625c60 	ins      	r3, r2, 3, 0
 2a2:	c4825482 	zext      	r2, r2, 4, 4
 2a6:	c4625c04 	ins      	r3, r2, 4, 4
 2aa:	a067      	st.b      	r3, (r0, 0x7)
 2ac:	d864203f 	ld.w      	r3, (r4, 0xfc)
 2b0:	b062      	st.w      	r3, (r0, 0x8)
 2b2:	3220      	movi      	r2, 32
 2b4:	e4240112 	addi      	r1, r4, 275
 2b8:	200b      	addi      	r0, 12
 2ba:	e0000000 	bsr      	0x0	// 0 <strncpy>
 2be:	3220      	movi      	r2, 32
 2c0:	e4240133 	addi      	r1, r4, 308
 2c4:	e405002b 	addi      	r0, r5, 44
 2c8:	e0000000 	bsr      	0x0	// 0 <memcpy>
 2cc:	d824205c 	ld.w      	r1, (r4, 0x170)
 2d0:	334c      	movi      	r3, 76
 2d2:	b860      	st.w      	r3, (r14, 0x0)
 2d4:	3201      	movi      	r2, 1
 2d6:	6cd7      	mov      	r3, r5
 2d8:	212b      	addi      	r1, 44
 2da:	6c13      	mov      	r0, r4
 2dc:	e0000000 	bsr      	0x0	// 0 <ieee80211_gen_vendor_spec_action>
 2e0:	6d83      	mov      	r6, r0
 2e2:	e9000012 	bez      	r0, 0x306	// 306 <ieee80211_pairing_rx+0x306>
 2e6:	6c43      	mov      	r1, r0
 2e8:	6c13      	mov      	r0, r4
 2ea:	e0000000 	bsr      	0x0	// 0 <ieee80211_add_customer_ie>
 2ee:	6c9b      	mov      	r2, r6
 2f0:	3100      	movi      	r1, 0
 2f2:	6c13      	mov      	r0, r4
 2f4:	e0000000 	bsr      	0x0	// 0 <ieee80211_tx_skb>
 2f8:	d864205c 	ld.w      	r3, (r4, 0x170)
 2fc:	3101      	movi      	r1, 1
 2fe:	8344      	ld.b      	r2, (r3, 0x4)
 300:	c4415c04 	ins      	r2, r1, 4, 4
 304:	a344      	st.b      	r2, (r3, 0x4)
 306:	6c17      	mov      	r0, r5
 308:	e0000000 	bsr      	0x0	// 0 <_os_free>
 30c:	06dc      	br      	0xc4	// c4 <ieee80211_pairing_rx+0xc4>
 30e:	3206      	movi      	r2, 6
 310:	e4250009 	addi      	r1, r5, 10
 314:	e406002b 	addi      	r0, r6, 44
 318:	e0000000 	bsr      	0x0	// 0 <memcpy>
 31c:	07a5      	br      	0x266	// 266 <ieee80211_pairing_rx+0x266>
	...

Disassembly of section .text.ieee80211_pairing:

00000000 <ieee80211_pairing>:
   0:	14d1      	push      	r4, r15
   2:	6d07      	mov      	r4, r1
   4:	e0000000 	bsr      	0x0	// 0 <ieee80211_iface_get>
   8:	e9000040 	bez      	r0, 0x88	// 88 <ieee80211_pairing+0x88>
   c:	d840205c 	ld.w      	r2, (r0, 0x170)
  10:	e902003c 	bez      	r2, 0x88	// 88 <ieee80211_pairing+0x88>
  14:	8264      	ld.b      	r3, (r2, 0x4)
  16:	e9040024 	bez      	r4, 0x5e	// 5e <ieee80211_pairing+0x5e>
  1a:	3c01      	cmphsi      	r4, 2
  1c:	0c02      	bf      	0x20	// 20 <ieee80211_pairing+0x20>
  1e:	aa80      	st.h      	r4, (r2, 0x0)
  20:	e4632001 	andi      	r3, r3, 1
  24:	e9030004 	bez      	r3, 0x2c	// 2c <ieee80211_pairing+0x2c>
  28:	3000      	movi      	r0, 0
  2a:	1491      	pop      	r4, r15
  2c:	d8402065 	ld.w      	r2, (r0, 0x194)
  30:	5a62      	addi      	r3, r2, 1
  32:	d8202066 	ld.w      	r1, (r0, 0x198)
  36:	644d      	cmplt      	r3, r1
  38:	c423008c 	subu      	r12, r3, r1
  3c:	c46c0c20 	incf      	r3, r12, 0
  40:	d8202064 	ld.w      	r1, (r0, 0x190)
  44:	644e      	cmpne      	r3, r1
  46:	0c07      	bf      	0x54	// 54 <ieee80211_pairing+0x54>
  48:	6080      	addu      	r2, r0
  4a:	310b      	movi      	r1, 11
  4c:	dc22019c 	st.b      	r1, (r2, 0x19c)
  50:	dc602065 	st.w      	r3, (r0, 0x194)
  54:	d800202a 	ld.w      	r0, (r0, 0xa8)
  58:	e0000000 	bsr      	0x0	// 0 <os_sema_up>
  5c:	07e6      	br      	0x28	// 28 <ieee80211_pairing+0x28>
  5e:	e4632001 	andi      	r3, r3, 1
  62:	e903ffe3 	bez      	r3, 0x28	// 28 <ieee80211_pairing+0x28>
  66:	d8402065 	ld.w      	r2, (r0, 0x194)
  6a:	5a62      	addi      	r3, r2, 1
  6c:	d8202066 	ld.w      	r1, (r0, 0x198)
  70:	644d      	cmplt      	r3, r1
  72:	c423008c 	subu      	r12, r3, r1
  76:	c46c0c20 	incf      	r3, r12, 0
  7a:	d8202064 	ld.w      	r1, (r0, 0x190)
  7e:	644e      	cmpne      	r3, r1
  80:	0fea      	bf      	0x54	// 54 <ieee80211_pairing+0x54>
  82:	6080      	addu      	r2, r0
  84:	310d      	movi      	r1, 13
  86:	07e3      	br      	0x4c	// 4c <ieee80211_pairing+0x4c>
  88:	3000      	movi      	r0, 0
  8a:	2800      	subi      	r0, 1
  8c:	07cf      	br      	0x2a	// 2a <ieee80211_pairing+0x2a>

Disassembly of section .text.ieee80211_unpair:

00000000 <ieee80211_unpair>:
   0:	14d2      	push      	r4-r5, r15
   2:	1422      	subi      	r14, r14, 8
   4:	b821      	st.w      	r1, (r14, 0x4)
   6:	e0000000 	bsr      	0x0	// 0 <ieee80211_iface_get>
   a:	6d03      	mov      	r4, r0
   c:	e900002e 	bez      	r0, 0x68	// 68 <ieee80211_unpair+0x68>
  10:	d860205c 	ld.w      	r3, (r0, 0x170)
  14:	8364      	ld.b      	r3, (r3, 0x4)
  16:	e4632001 	andi      	r3, r3, 1
  1a:	e9230027 	bnez      	r3, 0x68	// 68 <ieee80211_unpair+0x68>
  1e:	d8602026 	ld.w      	r3, (r0, 0x98)
  22:	9821      	ld.w      	r1, (r14, 0x4)
  24:	e903000a 	bez      	r3, 0x38	// 38 <ieee80211_unpair+0x38>
  28:	7bcd      	jsr      	r3
  2a:	6d43      	mov      	r5, r0
  2c:	e9200013 	bnez      	r0, 0x52	// 52 <ieee80211_unpair+0x52>
  30:	3000      	movi      	r0, 0
  32:	280b      	subi      	r0, 12
  34:	1402      	addi      	r14, r14, 8
  36:	1492      	pop      	r4-r5, r15
  38:	3307      	movi      	r3, 7
  3a:	b860      	st.w      	r3, (r14, 0x0)
  3c:	3202      	movi      	r2, 2
  3e:	106d      	lrw      	r3, 0x0	// 70 <ieee80211_unpair+0x70>
  40:	e0000000 	bsr      	0x0	// 0 <ieee80211_gen_vendor_spec_action>
  44:	6d43      	mov      	r5, r0
  46:	e900fff5 	bez      	r0, 0x30	// 30 <ieee80211_unpair+0x30>
  4a:	6c43      	mov      	r1, r0
  4c:	6c13      	mov      	r0, r4
  4e:	e0000000 	bsr      	0x0	// 0 <ieee80211_add_customer_ie>
  52:	6c57      	mov      	r1, r5
  54:	e40401c7 	addi      	r0, r4, 456
  58:	e0000000 	bsr      	0x0	// 0 <skb_list_queue>
  5c:	d804202a 	ld.w      	r0, (r4, 0xa8)
  60:	e0000000 	bsr      	0x0	// 0 <os_sema_up>
  64:	3000      	movi      	r0, 0
  66:	07e7      	br      	0x34	// 34 <ieee80211_unpair+0x34>
  68:	3000      	movi      	r0, 0
  6a:	280a      	subi      	r0, 11
  6c:	07e4      	br      	0x34	// 34 <ieee80211_unpair+0x34>
  6e:	0000      	.short	0x0000
  70:	00000000 	.long	0x00000000

Disassembly of section .text.ieee80211_pair_enable:

00000000 <ieee80211_pair_enable>:
   0:	14d2      	push      	r4-r5, r15
   2:	6d47      	mov      	r5, r1
   4:	e0000000 	bsr      	0x0	// 0 <ieee80211_iface_get>
   8:	6d03      	mov      	r4, r0
   a:	e9000016 	bez      	r0, 0x36	// 36 <ieee80211_pair_enable+0x36>
   e:	3058      	movi      	r0, 88
  10:	e0000000 	bsr      	0x0	// 0 <_os_zalloc>
  14:	dc04205c 	st.w      	r0, (r4, 0x170)
  18:	e9000012 	bez      	r0, 0x3c	// 3c <ieee80211_pair_enable+0x3c>
  1c:	106a      	lrw      	r3, 0x0	// 44 <ieee80211_pair_enable+0x44>
  1e:	3200      	movi      	r2, 0
  20:	b075      	st.w      	r3, (r0, 0x54)
  22:	a8a0      	st.h      	r5, (r0, 0x0)
  24:	2033      	addi      	r0, 52
  26:	1069      	lrw      	r3, 0x0	// 48 <ieee80211_pair_enable+0x48>
  28:	1029      	lrw      	r1, 0x0	// 4c <ieee80211_pair_enable+0x4c>
  2a:	b067      	st.w      	r3, (r0, 0x1c)
  2c:	6cd3      	mov      	r3, r4
  2e:	e0000000 	bsr      	0x0	// 0 <os_timer_init>
  32:	3000      	movi      	r0, 0
  34:	1492      	pop      	r4-r5, r15
  36:	3000      	movi      	r0, 0
  38:	2800      	subi      	r0, 1
  3a:	07fd      	br      	0x34	// 34 <ieee80211_pair_enable+0x34>
  3c:	3000      	movi      	r0, 0
  3e:	280b      	subi      	r0, 12
  40:	07fa      	br      	0x34	// 34 <ieee80211_pair_enable+0x34>
	...
