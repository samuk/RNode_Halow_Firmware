
libwifi/o/sta_mlme.o:     file format elf32-csky-little


Disassembly of section .text.ether_addr_equal:

00000000 <ether_addr_equal>:
   0:	14d0      	push      	r15
   2:	3206      	movi      	r2, 6
   4:	e0000000 	bsr      	0x0	// 0 <memcmp>
   8:	3840      	cmpnei      	r0, 0
   a:	6403      	mvcv      	r0
   c:	7400      	zextb      	r0, r0
   e:	1490      	pop      	r15

Disassembly of section .text.ieee80211_sta_send_auth:

00000000 <ieee80211_sta_send_auth>:
   0:	14d2      	push      	r4-r5, r15
   2:	1426      	subi      	r14, r14, 24
   4:	6d03      	mov      	r4, r0
   6:	3214      	movi      	r2, 20
   8:	3100      	movi      	r1, 0
   a:	1801      	addi      	r0, r14, 4
   c:	e0000000 	bsr      	0x0	// 0 <memset>
  10:	d8442063 	ld.w      	r2, (r4, 0x18c)
  14:	e462001b 	addi      	r3, r2, 28
  18:	b861      	st.w      	r3, (r14, 0x4)
  1a:	b862      	st.w      	r3, (r14, 0x8)
  1c:	3301      	movi      	r3, 1
  1e:	dc6e1009 	st.h      	r3, (r14, 0x12)
  22:	d8620025 	ld.b      	r3, (r2, 0x25)
  26:	3500      	movi      	r5, 0
  28:	e46320fd 	andi      	r3, r3, 253
  2c:	c4655c02 	ins      	r3, r5, 2, 2
  30:	dc620025 	st.b      	r3, (r2, 0x25)
  34:	d844202b 	ld.w      	r2, (r4, 0xac)
  38:	3301      	movi      	r3, 1
  3a:	8240      	ld.b      	r2, (r2, 0x0)
  3c:	e4240112 	addi      	r1, r4, 275
  40:	d804202a 	ld.w      	r0, (r4, 0xa8)
  44:	e0000000 	bsr      	0x0	// 0 <ieee80211_bss_get_byssid>
  48:	1901      	addi      	r1, r14, 4
  4a:	6c13      	mov      	r0, r4
  4c:	e0000000 	bsr      	0x0	// 0 <ieee80211_send_auth>
  50:	31fa      	movi      	r1, 250
  52:	8c0b      	ld.h      	r0, (r4, 0x16)
  54:	3301      	movi      	r3, 1
  56:	4122      	lsli      	r1, r1, 2
  58:	b860      	st.w      	r3, (r14, 0x0)
  5a:	7c40      	mult      	r1, r0
  5c:	6cd3      	mov      	r3, r4
  5e:	1044      	lrw      	r2, 0x0	// 6c <ieee80211_sta_send_auth+0x6c>
  60:	6c17      	mov      	r0, r5
  62:	e0000000 	bsr      	0x0	// 0 <eloop_register_timeout>
  66:	1406      	addi      	r14, r14, 24
  68:	1492      	pop      	r4-r5, r15
  6a:	0000      	.short	0x0000
  6c:	00000000 	.long	0x00000000

Disassembly of section .text.ieee80211_sta_assoc_retry_timeout:

00000000 <ieee80211_sta_assoc_retry_timeout>:
   0:	14d0      	push      	r15
   2:	8072      	ld.b      	r3, (r0, 0x12)
   4:	2b03      	subi      	r3, 4
   6:	74cc      	zextb      	r3, r3
   8:	3b01      	cmphsi      	r3, 2
   a:	0819      	bt      	0x3c	// 3c <ieee80211_sta_assoc_retry_timeout+0x3c>
   c:	d8402065 	ld.w      	r2, (r0, 0x194)
  10:	5a62      	addi      	r3, r2, 1
  12:	d8202066 	ld.w      	r1, (r0, 0x198)
  16:	644d      	cmplt      	r3, r1
  18:	c423008c 	subu      	r12, r3, r1
  1c:	c46c0c20 	incf      	r3, r12, 0
  20:	d8202064 	ld.w      	r1, (r0, 0x190)
  24:	64c6      	cmpne      	r1, r3
  26:	0c07      	bf      	0x34	// 34 <ieee80211_sta_assoc_retry_timeout+0x34>
  28:	6080      	addu      	r2, r0
  2a:	3106      	movi      	r1, 6
  2c:	dc22019c 	st.b      	r1, (r2, 0x19c)
  30:	dc602065 	st.w      	r3, (r0, 0x194)
  34:	d800202a 	ld.w      	r0, (r0, 0xa8)
  38:	e0000000 	bsr      	0x0	// 0 <os_sema_up>
  3c:	1490      	pop      	r15

Disassembly of section .text.ieee80211_sta_disable_bss:

00000000 <ieee80211_sta_disable_bss>:
   0:	14d2      	push      	r4-r5, r15
   2:	3a4b      	cmpnei      	r2, 11
   4:	6d03      	mov      	r4, r0
   6:	6d47      	mov      	r5, r1
   8:	0c0e      	bf      	0x24	// 24 <ieee80211_sta_disable_bss+0x24>
   a:	3a50      	cmpnei      	r2, 16
   c:	0c0c      	bf      	0x24	// 24 <ieee80211_sta_disable_bss+0x24>
   e:	d840202b 	ld.w      	r2, (r0, 0xac)
  12:	d8202063 	ld.w      	r1, (r0, 0x18c)
  16:	3301      	movi      	r3, 1
  18:	8240      	ld.b      	r2, (r2, 0x0)
  1a:	211b      	addi      	r1, 28
  1c:	d800202a 	ld.w      	r0, (r0, 0xa8)
  20:	e0000000 	bsr      	0x0	// 0 <ieee80211_bss_disable>
  24:	5d67      	subi      	r3, r5, 2
  26:	74cd      	zexth      	r3, r3
  28:	3b01      	cmphsi      	r3, 2
  2a:	0c0e      	bf      	0x46	// 46 <ieee80211_sta_disable_bss+0x46>
  2c:	3d4f      	cmpnei      	r5, 15
  2e:	0c0c      	bf      	0x46	// 46 <ieee80211_sta_disable_bss+0x46>
  30:	d844202b 	ld.w      	r2, (r4, 0xac)
  34:	d8242063 	ld.w      	r1, (r4, 0x18c)
  38:	3301      	movi      	r3, 1
  3a:	8240      	ld.b      	r2, (r2, 0x0)
  3c:	211b      	addi      	r1, 28
  3e:	d804202a 	ld.w      	r0, (r4, 0xa8)
  42:	e0000000 	bsr      	0x0	// 0 <ieee80211_bss_disable>
  46:	1492      	pop      	r4-r5, r15

Disassembly of section .text.ieee80211_sta_assoc_timeout:

00000000 <ieee80211_sta_assoc_timeout>:
   0:	14d2      	push      	r4-r5, r15
   2:	1425      	subi      	r14, r14, 20
   4:	6d03      	mov      	r4, r0
   6:	3310      	movi      	r3, 16
   8:	3109      	movi      	r1, 9
   a:	d8402063 	ld.w      	r2, (r0, 0x18c)
   e:	e0000000 	bsr      	0x0	// 0 <ieee80211_iface_event>
  12:	8472      	ld.b      	r3, (r4, 0x12)
  14:	3b05      	cmphsi      	r3, 6
  16:	d8242063 	ld.w      	r1, (r4, 0x18c)
  1a:	0c23      	bf      	0x60	// 60 <ieee80211_sta_assoc_timeout+0x60>
  1c:	d8a10025 	ld.b      	r5, (r1, 0x25)
  20:	e4a52008 	andi      	r5, r5, 8
  24:	e925001e 	bnez      	r5, 0x60	// 60 <ieee80211_sta_assoc_timeout+0x60>
  28:	d8410021 	ld.b      	r2, (r1, 0x21)
  2c:	817c      	ld.b      	r3, (r1, 0x1c)
  2e:	b844      	st.w      	r2, (r14, 0x10)
  30:	d8410020 	ld.b      	r2, (r1, 0x20)
  34:	b843      	st.w      	r2, (r14, 0xc)
  36:	815f      	ld.b      	r2, (r1, 0x1f)
  38:	b842      	st.w      	r2, (r14, 0x8)
  3a:	815e      	ld.b      	r2, (r1, 0x1e)
  3c:	b841      	st.w      	r2, (r14, 0x4)
  3e:	815d      	ld.b      	r2, (r1, 0x1d)
  40:	b840      	st.w      	r2, (r14, 0x0)
  42:	3230      	movi      	r2, 48
  44:	103f      	lrw      	r1, 0x0	// c0 <ieee80211_sta_assoc_timeout+0xc0>
  46:	1100      	lrw      	r0, 0x0	// c4 <ieee80211_sta_assoc_timeout+0xc4>
  48:	e0000000 	bsr      	0x0	// 0 <hgprintf>
  4c:	3200      	movi      	r2, 0
  4e:	6c13      	mov      	r0, r4
  50:	6c4b      	mov      	r1, r2
  52:	e0000000 	bsr      	0x0	// 0 <ieee80211_sta_assoc_timeout>
  56:	6c13      	mov      	r0, r4
  58:	e0000000 	bsr      	0x0	// 0 <ieee80211_sta_disconnect>
  5c:	1405      	addi      	r14, r14, 20
  5e:	1492      	pop      	r4-r5, r15
  60:	d86100eb 	ld.b      	r3, (r1, 0xeb)
  64:	3b07      	cmphsi      	r3, 8
  66:	5b42      	addi      	r2, r3, 1
  68:	dc4100eb 	st.b      	r2, (r1, 0xeb)
  6c:	0c12      	bf      	0x90	// 90 <ieee80211_sta_assoc_timeout+0x90>
  6e:	d8410021 	ld.b      	r2, (r1, 0x21)
  72:	817c      	ld.b      	r3, (r1, 0x1c)
  74:	b844      	st.w      	r2, (r14, 0x10)
  76:	d8410020 	ld.b      	r2, (r1, 0x20)
  7a:	b843      	st.w      	r2, (r14, 0xc)
  7c:	815f      	ld.b      	r2, (r1, 0x1f)
  7e:	b842      	st.w      	r2, (r14, 0x8)
  80:	815e      	ld.b      	r2, (r1, 0x1e)
  82:	b841      	st.w      	r2, (r14, 0x4)
  84:	815d      	ld.b      	r2, (r1, 0x1d)
  86:	b840      	st.w      	r2, (r14, 0x0)
  88:	3235      	movi      	r2, 53
  8a:	102e      	lrw      	r1, 0x0	// c0 <ieee80211_sta_assoc_timeout+0xc0>
  8c:	100f      	lrw      	r0, 0x0	// c8 <ieee80211_sta_assoc_timeout+0xc8>
  8e:	07dd      	br      	0x48	// 48 <ieee80211_sta_assoc_timeout+0x48>
  90:	d8442065 	ld.w      	r2, (r4, 0x194)
  94:	5a62      	addi      	r3, r2, 1
  96:	d8242066 	ld.w      	r1, (r4, 0x198)
  9a:	644d      	cmplt      	r3, r1
  9c:	5b05      	subu      	r0, r3, r1
  9e:	c4600c20 	incf      	r3, r0, 0
  a2:	d8242064 	ld.w      	r1, (r4, 0x190)
  a6:	644e      	cmpne      	r3, r1
  a8:	0c07      	bf      	0xb6	// b6 <ieee80211_sta_assoc_timeout+0xb6>
  aa:	6090      	addu      	r2, r4
  ac:	3106      	movi      	r1, 6
  ae:	dc22019c 	st.b      	r1, (r2, 0x19c)
  b2:	dc642065 	st.w      	r3, (r4, 0x194)
  b6:	d804202a 	ld.w      	r0, (r4, 0xa8)
  ba:	e0000000 	bsr      	0x0	// 0 <os_sema_up>
  be:	07cf      	br      	0x5c	// 5c <ieee80211_sta_assoc_timeout+0x5c>
	...

Disassembly of section .text.ieee80211_sta_send_disassoc:

00000000 <ieee80211_sta_send_disassoc>:
   0:	14d1      	push      	r4, r15
   2:	d8202063 	ld.w      	r1, (r0, 0x18c)
   6:	6d03      	mov      	r4, r0
   8:	d8610025 	ld.b      	r3, (r1, 0x25)
   c:	e4632008 	andi      	r3, r3, 8
  10:	e903000e 	bez      	r3, 0x2c	// 2c <ieee80211_sta_send_disassoc+0x2c>
  14:	8072      	ld.b      	r3, (r0, 0x12)
  16:	3b49      	cmpnei      	r3, 9
  18:	080a      	bt      	0x2c	// 2c <ieee80211_sta_send_disassoc+0x2c>
  1a:	3301      	movi      	r3, 1
  1c:	a867      	st.h      	r3, (r0, 0xe)
  1e:	3200      	movi      	r2, 0
  20:	211b      	addi      	r1, 28
  22:	e0000000 	bsr      	0x0	// 0 <ieee80211_send_disassoc>
  26:	6c13      	mov      	r0, r4
  28:	e0000000 	bsr      	0x0	// 0 <ieee80211_sta_disconnect>
  2c:	3000      	movi      	r0, 0
  2e:	1491      	pop      	r4, r15

Disassembly of section .text.ieee80211_sta_parse_element:

00000000 <ieee80211_sta_parse_element>:
   0:	14d7      	push      	r4-r10, r15
   2:	6d43      	mov      	r5, r0
   4:	6d87      	mov      	r6, r1
   6:	6e0b      	mov      	r8, r2
   8:	6d07      	mov      	r4, r1
   a:	e4e0015b 	addi      	r7, r0, 348
   e:	ea890052 	lrw      	r9, 0x0	// 154 <ieee80211_sta_parse_element+0x154>
  12:	ea8a0052 	lrw      	r10, 0x0	// 158 <ieee80211_sta_parse_element+0x158>
  16:	c5060023 	addu      	r3, r6, r8
  1a:	60d2      	subu      	r3, r4
  1c:	3b21      	cmplti      	r3, 2
  1e:	0805      	bt      	0x28	// 28 <ieee80211_sta_parse_element+0x28>
  20:	8441      	ld.b      	r2, (r4, 0x1)
  22:	5a22      	addi      	r1, r2, 1
  24:	64c5      	cmplt      	r1, r3
  26:	0802      	bt      	0x2a	// 2a <ieee80211_sta_parse_element+0x2a>
  28:	1497      	pop      	r4-r10, r15
  2a:	8460      	ld.b      	r3, (r4, 0x0)
  2c:	eb43005a 	cmpnei      	r3, 90
  30:	0c38      	bf      	0xa0	// a0 <ieee80211_sta_parse_element+0xa0>
  32:	eb03005a 	cmphsi      	r3, 91
  36:	080b      	bt      	0x4c	// 4c <ieee80211_sta_parse_element+0x4c>
  38:	eb430030 	cmpnei      	r3, 48
  3c:	0c70      	bf      	0x11c	// 11c <ieee80211_sta_parse_element+0x11c>
  3e:	eb430038 	cmpnei      	r3, 56
  42:	0c75      	bf      	0x12c	// 12c <ieee80211_sta_parse_element+0x12c>
  44:	5c66      	addi      	r3, r4, 2
  46:	8481      	ld.b      	r4, (r4, 0x1)
  48:	610c      	addu      	r4, r3
  4a:	07e6      	br      	0x16	// 16 <ieee80211_sta_parse_element+0x16>
  4c:	eb4300d3 	cmpnei      	r3, 211
  50:	0c31      	bf      	0xb2	// b2 <ieee80211_sta_parse_element+0xb2>
  52:	eb4300dd 	cmpnei      	r3, 221
  56:	0bf7      	bt      	0x44	// 44 <ieee80211_sta_parse_element+0x44>
  58:	8462      	ld.b      	r3, (r4, 0x2)
  5a:	8403      	ld.b      	r0, (r4, 0x3)
  5c:	4010      	lsli      	r0, r0, 16
  5e:	4378      	lsli      	r3, r3, 24
  60:	6cc0      	or      	r3, r0
  62:	8404      	ld.b      	r0, (r4, 0x4)
  64:	4008      	lsli      	r0, r0, 8
  66:	6cc0      	or      	r3, r0
  68:	4b68      	lsri      	r3, r3, 8
  6a:	eb4350f2 	cmpnei      	r3, 20722
  6e:	8425      	ld.b      	r1, (r4, 0x5)
  70:	0c2b      	bf      	0xc6	// c6 <ieee80211_sta_parse_element+0xc6>
  72:	111b      	lrw      	r0, 0xd88332	// 15c <ieee80211_sta_parse_element+0x15c>
  74:	640e      	cmpne      	r3, r0
  76:	0be7      	bt      	0x44	// 44 <ieee80211_sta_parse_element+0x44>
  78:	3a06      	cmphsi      	r2, 7
  7a:	0fe5      	bf      	0x44	// 44 <ieee80211_sta_parse_element+0x44>
  7c:	3941      	cmpnei      	r1, 1
  7e:	0be3      	bt      	0x44	// 44 <ieee80211_sta_parse_element+0x44>
  80:	8466      	ld.b      	r3, (r4, 0x6)
  82:	4368      	lsli      	r3, r3, 8
  84:	8447      	ld.b      	r2, (r4, 0x7)
  86:	6cc8      	or      	r3, r2
  88:	74cf      	sexth      	r3, r3
  8a:	e923ffdd 	bnez      	r3, 0x44	// 44 <ieee80211_sta_parse_element+0x44>
  8e:	8468      	ld.b      	r3, (r4, 0x8)
  90:	dc650026 	st.b      	r3, (r5, 0x26)
  94:	32a3      	movi      	r2, 163
  96:	6c67      	mov      	r1, r9
  98:	6c2b      	mov      	r0, r10
  9a:	e0000000 	bsr      	0x0	// 0 <hgprintf>
  9e:	07d3      	br      	0x44	// 44 <ieee80211_sta_parse_element+0x44>
  a0:	3a43      	cmpnei      	r2, 3
  a2:	0bd1      	bt      	0x44	// 44 <ieee80211_sta_parse_element+0x44>
  a4:	8463      	ld.b      	r3, (r4, 0x3)
  a6:	8442      	ld.b      	r2, (r4, 0x2)
  a8:	4368      	lsli      	r3, r3, 8
  aa:	6cc8      	or      	r3, r2
  ac:	dc6510ac 	st.h      	r3, (r5, 0x158)
  b0:	07ca      	br      	0x44	// 44 <ieee80211_sta_parse_element+0x44>
  b2:	3a45      	cmpnei      	r2, 5
  b4:	0bc8      	bt      	0x44	// 44 <ieee80211_sta_parse_element+0x44>
  b6:	8462      	ld.b      	r3, (r4, 0x2)
  b8:	d8452063 	ld.w      	r2, (r5, 0x18c)
  bc:	e463201f 	andi      	r3, r3, 31
  c0:	dc621074 	st.h      	r3, (r2, 0xe8)
  c4:	07c0      	br      	0x44	// 44 <ieee80211_sta_parse_element+0x44>
  c6:	3a06      	cmphsi      	r2, 7
  c8:	0c08      	bf      	0xd8	// d8 <ieee80211_sta_parse_element+0xd8>
  ca:	3941      	cmpnei      	r1, 1
  cc:	0806      	bt      	0xd8	// d8 <ieee80211_sta_parse_element+0xd8>
  ce:	2201      	addi      	r2, 2
  d0:	6c53      	mov      	r1, r4
  d2:	950d      	ld.w      	r0, (r5, 0x34)
  d4:	e0000000 	bsr      	0x0	// 0 <wpa_sm_set_ap_wpa_ie>
  d8:	8461      	ld.b      	r3, (r4, 0x1)
  da:	3b58      	cmpnei      	r3, 24
  dc:	0bb4      	bt      	0x44	// 44 <ieee80211_sta_parse_element+0x44>
  de:	8465      	ld.b      	r3, (r4, 0x5)
  e0:	3b42      	cmpnei      	r3, 2
  e2:	0bb1      	bt      	0x44	// 44 <ieee80211_sta_parse_element+0x44>
  e4:	8466      	ld.b      	r3, (r4, 0x6)
  e6:	3b41      	cmpnei      	r3, 1
  e8:	0bae      	bt      	0x44	// 44 <ieee80211_sta_parse_element+0x44>
  ea:	8468      	ld.b      	r3, (r4, 0x8)
  ec:	e463200f 	andi      	r3, r3, 15
  f0:	d8450112 	ld.b      	r2, (r5, 0x112)
  f4:	64ca      	cmpne      	r2, r3
  f6:	0fa7      	bf      	0x44	// 44 <ieee80211_sta_parse_element+0x44>
  f8:	8545      	ld.b      	r2, (r5, 0x5)
  fa:	e4422040 	andi      	r2, r2, 64
  fe:	e922ffa3 	bnez      	r2, 0x44	// 44 <ieee80211_sta_parse_element+0x44>
 102:	e4240009 	addi      	r1, r4, 10
 106:	dc650112 	st.b      	r3, (r5, 0x112)
 10a:	3210      	movi      	r2, 16
 10c:	6c1f      	mov      	r0, r7
 10e:	e0000000 	bsr      	0x0	// 0 <memcpy>
 112:	6c5f      	mov      	r1, r7
 114:	6c17      	mov      	r0, r5
 116:	e0000000 	bsr      	0x0	// 0 <ieee80211_setup_wmm_param>
 11a:	0795      	br      	0x44	// 44 <ieee80211_sta_parse_element+0x44>
 11c:	3a01      	cmphsi      	r2, 2
 11e:	0f93      	bf      	0x44	// 44 <ieee80211_sta_parse_element+0x44>
 120:	2201      	addi      	r2, 2
 122:	6c53      	mov      	r1, r4
 124:	950d      	ld.w      	r0, (r5, 0x34)
 126:	e0000000 	bsr      	0x0	// 0 <wpa_sm_set_ap_rsn_ie>
 12a:	078d      	br      	0x44	// 44 <ieee80211_sta_parse_element+0x44>
 12c:	3a45      	cmpnei      	r2, 5
 12e:	0b8b      	bt      	0x44	// 44 <ieee80211_sta_parse_element+0x44>
 130:	8444      	ld.b      	r2, (r4, 0x4)
 132:	8463      	ld.b      	r3, (r4, 0x3)
 134:	4248      	lsli      	r2, r2, 8
 136:	6c8c      	or      	r2, r3
 138:	8465      	ld.b      	r3, (r4, 0x5)
 13a:	4370      	lsli      	r3, r3, 16
 13c:	6c8c      	or      	r2, r3
 13e:	8466      	ld.b      	r3, (r4, 0x6)
 140:	4378      	lsli      	r3, r3, 24
 142:	6cc8      	or      	r3, r2
 144:	8442      	ld.b      	r2, (r4, 0x2)
 146:	3a43      	cmpnei      	r2, 3
 148:	0b7e      	bt      	0x44	// 44 <ieee80211_sta_parse_element+0x44>
 14a:	e903ff7d 	bez      	r3, 0x44	// 44 <ieee80211_sta_parse_element+0x44>
 14e:	b567      	st.w      	r3, (r5, 0x1c)
 150:	077a      	br      	0x44	// 44 <ieee80211_sta_parse_element+0x44>
	...
 15a:	0000      	.short	0x0000
 15c:	00d88332 	.long	0x00d88332

Disassembly of section .text.ieee80211_sta_rx_assoc_resp:

00000000 <ieee80211_sta_rx_assoc_resp>:
   0:	14d4      	push      	r4-r7, r15
   2:	1421      	subi      	r14, r14, 4
   4:	90a0      	ld.w      	r5, (r0, 0x0)
   6:	6d03      	mov      	r4, r0
   8:	8572      	ld.b      	r3, (r5, 0x12)
   a:	3b45      	cmpnei      	r3, 5
   c:	085c      	bt      	0xc4	// c4 <ieee80211_sta_rx_assoc_resp+0xc4>
   e:	9062      	ld.w      	r3, (r0, 0x8)
  10:	5d36      	addi      	r1, r5, 6
  12:	93c7      	ld.w      	r6, (r3, 0x1c)
  14:	5e0e      	addi      	r0, r6, 4
  16:	e0000000 	bsr      	0x0	// 0 <ieee80211_sta_rx_assoc_resp>
  1a:	e9000055 	bez      	r0, 0xc4	// c4 <ieee80211_sta_rx_assoc_resp+0xc4>
  1e:	d8e52063 	ld.w      	r7, (r5, 0x18c)
  22:	e427001b 	addi      	r1, r7, 28
  26:	e406000f 	addi      	r0, r6, 16
  2a:	e0000000 	bsr      	0x0	// 0 <ieee80211_sta_rx_assoc_resp>
  2e:	e900004b 	bez      	r0, 0xc4	// c4 <ieee80211_sta_rx_assoc_resp+0xc4>
  32:	d865202b 	ld.w      	r3, (r5, 0xac)
  36:	8360      	ld.b      	r3, (r3, 0x0)
  38:	3b43      	cmpnei      	r3, 3
  3a:	8e6d      	ld.h      	r3, (r6, 0x1a)
  3c:	ad66      	st.h      	r3, (r5, 0xc)
  3e:	0836      	bt      	0xaa	// aa <ieee80211_sta_rx_assoc_resp+0xaa>
  40:	261b      	addi      	r6, 28
  42:	3300      	movi      	r3, 0
  44:	dc6700eb 	st.b      	r3, (r7, 0xeb)
  48:	8d66      	ld.h      	r3, (r5, 0xc)
  4a:	e903004c 	bez      	r3, 0xe2	// e2 <ieee80211_sta_rx_assoc_resp+0xe2>
  4e:	32f5      	movi      	r2, 245
  50:	122e      	lrw      	r1, 0x0	// 188 <ieee80211_sta_rx_assoc_resp+0x188>
  52:	120f      	lrw      	r0, 0x0	// 18c <ieee80211_sta_rx_assoc_resp+0x18c>
  54:	e0000000 	bsr      	0x0	// 0 <hgprintf>
  58:	3202      	movi      	r2, 2
  5a:	9420      	ld.w      	r1, (r4, 0x0)
  5c:	120d      	lrw      	r0, 0x0	// 190 <ieee80211_sta_rx_assoc_resp+0x190>
  5e:	e0000000 	bsr      	0x0	// 0 <eloop_cancel_timeout>
  62:	9400      	ld.w      	r0, (r4, 0x0)
  64:	8866      	ld.h      	r3, (r0, 0xc)
  66:	3b5e      	cmpnei      	r3, 30
  68:	0830      	bt      	0xc8	// c8 <ieee80211_sta_rx_assoc_resp+0xc8>
  6a:	9462      	ld.w      	r3, (r4, 0x8)
  6c:	3500      	movi      	r5, 0
  6e:	9346      	ld.w      	r2, (r3, 0x18)
  70:	6c5b      	mov      	r1, r6
  72:	b0a7      	st.w      	r5, (r0, 0x1c)
  74:	609a      	subu      	r2, r6
  76:	e0000000 	bsr      	0x0	// 0 <ieee80211_sta_rx_assoc_resp>
  7a:	9420      	ld.w      	r1, (r4, 0x0)
  7c:	9167      	ld.w      	r3, (r1, 0x1c)
  7e:	e903001d 	bez      	r3, 0xb8	// b8 <ieee80211_sta_rx_assoc_resp+0xb8>
  82:	3202      	movi      	r2, 2
  84:	1204      	lrw      	r0, 0x0	// 194 <ieee80211_sta_rx_assoc_resp+0x194>
  86:	e0000000 	bsr      	0x0	// 0 <eloop_cancel_timeout>
  8a:	9460      	ld.w      	r3, (r4, 0x0)
  8c:	3211      	movi      	r2, 17
  8e:	9307      	ld.w      	r0, (r3, 0x1c)
  90:	7c08      	mult      	r0, r2
  92:	32fa      	movi      	r2, 250
  94:	4246      	lsli      	r2, r2, 6
  96:	c4408020 	divu      	r0, r0, r2
  9a:	3202      	movi      	r2, 2
  9c:	b840      	st.w      	r2, (r14, 0x0)
  9e:	6c57      	mov      	r1, r5
  a0:	115d      	lrw      	r2, 0x0	// 194 <ieee80211_sta_rx_assoc_resp+0x194>
  a2:	2000      	addi      	r0, 1
  a4:	e0000000 	bsr      	0x0	// 0 <eloop_register_timeout>
  a8:	040e      	br      	0xc4	// c4 <ieee80211_sta_rx_assoc_resp+0xc4>
  aa:	8e6e      	ld.h      	r3, (r6, 0x1c)
  ac:	c40355a3 	zext      	r3, r3, 13, 0
  b0:	dc671074 	st.h      	r3, (r7, 0xe8)
  b4:	261d      	addi      	r6, 30
  b6:	07c6      	br      	0x42	// 42 <ieee80211_sta_rx_assoc_resp+0x42>
  b8:	3280      	movi      	r2, 128
  ba:	4241      	lsli      	r2, r2, 1
  bc:	1133      	lrw      	r1, 0x0	// 188 <ieee80211_sta_rx_assoc_resp+0x188>
  be:	1117      	lrw      	r0, 0x0	// 198 <ieee80211_sta_rx_assoc_resp+0x198>
  c0:	e0000000 	bsr      	0x0	// 0 <hgprintf>
  c4:	1401      	addi      	r14, r14, 4
  c6:	1494      	pop      	r4-r7, r15
  c8:	9441      	ld.w      	r2, (r4, 0x4)
  ca:	3109      	movi      	r1, 9
  cc:	e0000000 	bsr      	0x0	// 0 <ieee80211_iface_event>
  d0:	9400      	ld.w      	r0, (r4, 0x0)
  d2:	3100      	movi      	r1, 0
  d4:	8846      	ld.h      	r2, (r0, 0xc)
  d6:	e0000000 	bsr      	0x0	// 0 <ieee80211_sta_rx_assoc_resp>
  da:	9400      	ld.w      	r0, (r4, 0x0)
  dc:	e0000000 	bsr      	0x0	// 0 <ieee80211_sta_disconnect>
  e0:	07f2      	br      	0xc4	// c4 <ieee80211_sta_rx_assoc_resp+0xc4>
  e2:	d8670025 	ld.b      	r3, (r7, 0x25)
  e6:	e4432004 	andi      	r2, r3, 4
  ea:	e922ffed 	bnez      	r2, 0xc4	// c4 <ieee80211_sta_rx_assoc_resp+0xc4>
  ee:	3201      	movi      	r2, 1
  f0:	c4625c02 	ins      	r3, r2, 2, 2
  f4:	dc670025 	st.b      	r3, (r7, 0x25)
  f8:	3202      	movi      	r2, 2
  fa:	6c57      	mov      	r1, r5
  fc:	1105      	lrw      	r0, 0x0	// 190 <ieee80211_sta_rx_assoc_resp+0x190>
  fe:	e0000000 	bsr      	0x0	// 0 <eloop_cancel_timeout>
 102:	9462      	ld.w      	r3, (r4, 0x8)
 104:	6c5b      	mov      	r1, r6
 106:	9346      	ld.w      	r2, (r3, 0x18)
 108:	609a      	subu      	r2, r6
 10a:	9400      	ld.w      	r0, (r4, 0x0)
 10c:	e0000000 	bsr      	0x0	// 0 <ieee80211_sta_rx_assoc_resp>
 110:	3106      	movi      	r1, 6
 112:	9400      	ld.w      	r0, (r4, 0x0)
 114:	e0000000 	bsr      	0x0	// 0 <ieee80211_state>
 118:	9460      	ld.w      	r3, (r4, 0x0)
 11a:	d8232065 	ld.w      	r1, (r3, 0x194)
 11e:	5942      	addi      	r2, r1, 1
 120:	d8032066 	ld.w      	r0, (r3, 0x198)
 124:	6409      	cmplt      	r2, r0
 126:	c402008c 	subu      	r12, r2, r0
 12a:	c44c0c20 	incf      	r2, r12, 0
 12e:	d8032064 	ld.w      	r0, (r3, 0x190)
 132:	640a      	cmpne      	r2, r0
 134:	0c07      	bf      	0x142	// 142 <ieee80211_sta_rx_assoc_resp+0x142>
 136:	604c      	addu      	r1, r3
 138:	3006      	movi      	r0, 6
 13a:	dc01019c 	st.b      	r0, (r1, 0x19c)
 13e:	dc432065 	st.w      	r2, (r3, 0x194)
 142:	d803202a 	ld.w      	r0, (r3, 0xa8)
 146:	e0000000 	bsr      	0x0	// 0 <os_sema_up>
 14a:	9421      	ld.w      	r1, (r4, 0x4)
 14c:	9400      	ld.w      	r0, (r4, 0x0)
 14e:	e0000000 	bsr      	0x0	// 0 <ieee80211_sta_add>
 152:	9460      	ld.w      	r3, (r4, 0x0)
 154:	d843203f 	ld.w      	r2, (r3, 0xfc)
 158:	3a44      	cmpnei      	r2, 4
 15a:	0806      	bt      	0x166	// 166 <ieee80211_sta_rx_assoc_resp+0x166>
 15c:	3109      	movi      	r1, 9
 15e:	6c0f      	mov      	r0, r3
 160:	e0000000 	bsr      	0x0	// 0 <ieee80211_state>
 164:	07b0      	br      	0xc4	// c4 <ieee80211_sta_rx_assoc_resp+0xc4>
 166:	ea0c00fa 	movi      	r12, 250
 16a:	8b4c      	ld.h      	r2, (r3, 0x18)
 16c:	c44c482c 	lsli      	r12, r12, 2
 170:	c5828020 	divu      	r0, r2, r12
 174:	c5808421 	mult      	r1, r0, r12
 178:	6086      	subu      	r2, r1
 17a:	7449      	zexth      	r1, r2
 17c:	3202      	movi      	r2, 2
 17e:	b840      	st.w      	r2, (r14, 0x0)
 180:	7c70      	mult      	r1, r12
 182:	1044      	lrw      	r2, 0x0	// 190 <ieee80211_sta_rx_assoc_resp+0x190>
 184:	7401      	zexth      	r0, r0
 186:	078f      	br      	0xa4	// a4 <ieee80211_sta_rx_assoc_resp+0xa4>
	...

Disassembly of section .text.ieee80211_sta_rx_probe_resp:

00000000 <ieee80211_sta_rx_probe_resp>:
   0:	14d1      	push      	r4, r15
   2:	9060      	ld.w      	r3, (r0, 0x0)
   4:	d8832063 	ld.w      	r4, (r3, 0x18c)
   8:	d8640025 	ld.b      	r3, (r4, 0x25)
   c:	e4632008 	andi      	r3, r3, 8
  10:	e9030014 	bez      	r3, 0x38	// 38 <ieee80211_sta_rx_probe_resp+0x38>
  14:	9062      	ld.w      	r3, (r0, 0x8)
  16:	e424001b 	addi      	r1, r4, 28
  1a:	9307      	ld.w      	r0, (r3, 0x1c)
  1c:	2009      	addi      	r0, 10
  1e:	e0000000 	bsr      	0x0	// 0 <ieee80211_sta_rx_probe_resp>
  22:	e900000b 	bez      	r0, 0x38	// 38 <ieee80211_sta_rx_probe_resp+0x38>
  26:	3300      	movi      	r3, 0
  28:	dc6400ec 	st.b      	r3, (r4, 0xec)
  2c:	e0000000 	bsr      	0x0	// 0 <os_jiffies>
  30:	dc042024 	st.w      	r0, (r4, 0x90)
  34:	dc242025 	st.w      	r1, (r4, 0x94)
  38:	1491      	pop      	r4, r15

Disassembly of section .text.ieee80211_sta_rx_auth:

00000000 <ieee80211_sta_rx_auth>:
   0:	14d5      	push      	r4-r8, r15
   2:	1426      	subi      	r14, r14, 24
   4:	90e2      	ld.w      	r7, (r0, 0x8)
   6:	6d83      	mov      	r6, r0
   8:	8f74      	ld.h      	r3, (r7, 0x28)
   a:	3b1d      	cmphsi      	r3, 30
   c:	0cdf      	bf      	0x1ca	// 1ca <ieee80211_sta_rx_auth+0x1ca>
   e:	9080      	ld.w      	r4, (r0, 0x0)
  10:	8472      	ld.b      	r3, (r4, 0x12)
  12:	3b44      	cmpnei      	r3, 4
  14:	08db      	bt      	0x1ca	// 1ca <ieee80211_sta_rx_auth+0x1ca>
  16:	97a7      	ld.w      	r5, (r7, 0x1c)
  18:	5c36      	addi      	r1, r4, 6
  1a:	5d0e      	addi      	r0, r5, 4
  1c:	e0000000 	bsr      	0x0	// 0 <ieee80211_sta_rx_auth>
  20:	e90000d5 	bez      	r0, 0x1ca	// 1ca <ieee80211_sta_rx_auth+0x1ca>
  24:	d9042063 	ld.w      	r8, (r4, 0x18c)
  28:	e428001b 	addi      	r1, r8, 28
  2c:	e405000f 	addi      	r0, r5, 16
  30:	e0000000 	bsr      	0x0	// 0 <ieee80211_sta_rx_auth>
  34:	e90000cb 	bez      	r0, 0x1ca	// 1ca <ieee80211_sta_rx_auth+0x1ca>
  38:	8d6e      	ld.h      	r3, (r5, 0x1c)
  3a:	ac66      	st.h      	r3, (r4, 0xc)
  3c:	3300      	movi      	r3, 0
  3e:	dc6800eb 	st.b      	r3, (r8, 0xeb)
  42:	32ff      	movi      	r2, 255
  44:	9723      	ld.w      	r1, (r7, 0xc)
  46:	6c13      	mov      	r0, r4
  48:	e0000000 	bsr      	0x0	// 0 <ieee80211_freq_to_chan>
  4c:	a413      	st.b      	r0, (r4, 0x13)
  4e:	9600      	ld.w      	r0, (r6, 0x0)
  50:	8866      	ld.h      	r3, (r0, 0xc)
  52:	e92300be 	bnez      	r3, 0x1ce	// 1ce <ieee80211_sta_rx_auth+0x1ce>
  56:	b068      	st.w      	r3, (r0, 0x20)
  58:	8d6c      	ld.h      	r3, (r5, 0x18)
  5a:	e923000b 	bnez      	r3, 0x70	// 70 <ieee80211_sta_rx_auth+0x70>
  5e:	d8602063 	ld.w      	r3, (r0, 0x18c)
  62:	3101      	movi      	r1, 1
  64:	d8430025 	ld.b      	r2, (r3, 0x25)
  68:	c4415c01 	ins      	r2, r1, 1, 1
  6c:	dc430025 	st.b      	r2, (r3, 0x25)
  70:	d8602063 	ld.w      	r3, (r0, 0x18c)
  74:	d8630025 	ld.b      	r3, (r3, 0x25)
  78:	e4632002 	andi      	r3, r3, 2
  7c:	e9030007 	bez      	r3, 0x8a	// 8a <ieee80211_sta_rx_auth+0x8a>
  80:	6c43      	mov      	r1, r0
  82:	3201      	movi      	r2, 1
  84:	1303      	lrw      	r0, 0x0	// 210 <ieee80211_sta_rx_auth+0x210>
  86:	e0000000 	bsr      	0x0	// 0 <eloop_cancel_timeout>
  8a:	9680      	ld.w      	r4, (r6, 0x0)
  8c:	d8642063 	ld.w      	r3, (r4, 0x18c)
  90:	d8630025 	ld.b      	r3, (r3, 0x25)
  94:	e4632002 	andi      	r3, r3, 2
  98:	e9030099 	bez      	r3, 0x1ca	// 1ca <ieee80211_sta_rx_auth+0x1ca>
  9c:	8d6c      	ld.h      	r3, (r5, 0x18)
  9e:	e9030004 	bez      	r3, 0xa6	// a6 <ieee80211_sta_rx_auth+0xa6>
  a2:	3b43      	cmpnei      	r3, 3
  a4:	0893      	bt      	0x1ca	// 1ca <ieee80211_sta_rx_auth+0x1ca>
  a6:	d864203f 	ld.w      	r3, (r4, 0xfc)
  aa:	eb430400 	cmpnei      	r3, 1024
  ae:	0c03      	bf      	0xb4	// b4 <ieee80211_sta_rx_auth+0xb4>
  b0:	3b42      	cmpnei      	r3, 2
  b2:	086f      	bt      	0x190	// 190 <ieee80211_sta_rx_auth+0x190>
  b4:	94ad      	ld.w      	r5, (r4, 0x34)
  b6:	e905006d 	bez      	r5, 0x190	// 190 <ieee80211_sta_rx_auth+0x190>
  ba:	e4e40112 	addi      	r7, r4, 275
  be:	6c1f      	mov      	r0, r7
  c0:	e0000000 	bsr      	0x0	// 0 <strlen>
  c4:	6c83      	mov      	r2, r0
  c6:	6c5f      	mov      	r1, r7
  c8:	6c17      	mov      	r0, r5
  ca:	e0000000 	bsr      	0x0	// 0 <wpa_sm_set_ssid>
  ce:	d824203f 	ld.w      	r1, (r4, 0xfc)
  d2:	940d      	ld.w      	r0, (r4, 0x34)
  d4:	e0000000 	bsr      	0x0	// 0 <wpa_sm_set_keymgmt>
  d8:	d8242042 	ld.w      	r1, (r4, 0x108)
  dc:	940d      	ld.w      	r0, (r4, 0x34)
  de:	e0000000 	bsr      	0x0	// 0 <wpa_sm_set_wpa_proto>
  e2:	d8242041 	ld.w      	r1, (r4, 0x104)
  e6:	940d      	ld.w      	r0, (r4, 0x34)
  e8:	e0000000 	bsr      	0x0	// 0 <wpa_sm_set_pairwise_cipher>
  ec:	d8242040 	ld.w      	r1, (r4, 0x100)
  f0:	940d      	ld.w      	r0, (r4, 0x34)
  f2:	e0000000 	bsr      	0x0	// 0 <wpa_sm_set_group_cipher>
  f6:	d864203f 	ld.w      	r3, (r4, 0xfc)
  fa:	eb430400 	cmpnei      	r3, 1024
  fe:	0c09      	bf      	0x110	// 110 <ieee80211_sta_rx_auth+0x110>
 100:	3300      	movi      	r3, 0
 102:	940d      	ld.w      	r0, (r4, 0x34)
 104:	3220      	movi      	r2, 32
 106:	b860      	st.w      	r3, (r14, 0x0)
 108:	e4240133 	addi      	r1, r4, 308
 10c:	e0000000 	bsr      	0x0	// 0 <wpa_sm_set_pmk>
 110:	5c36      	addi      	r1, r4, 6
 112:	940d      	ld.w      	r0, (r4, 0x34)
 114:	e0000000 	bsr      	0x0	// 0 <wpa_sm_set_own_addr>
 118:	d8242063 	ld.w      	r1, (r4, 0x18c)
 11c:	211b      	addi      	r1, 28
 11e:	940d      	ld.w      	r0, (r4, 0x34)
 120:	e0000000 	bsr      	0x0	// 0 <wpa_sm_set_bssid>
 124:	d8240110 	ld.b      	r1, (r4, 0x110)
 128:	c4815481 	zext      	r1, r1, 4, 4
 12c:	940d      	ld.w      	r0, (r4, 0x34)
 12e:	e0000000 	bsr      	0x0	// 0 <wpa_sm_set_pmf>
 132:	3500      	movi      	r5, 0
 134:	3100      	movi      	r1, 0
 136:	940d      	ld.w      	r0, (r4, 0x34)
 138:	e0000000 	bsr      	0x0	// 0 <wpa_sm_set_rx_replay_ctr>
 13c:	6cd7      	mov      	r3, r5
 13e:	940d      	ld.w      	r0, (r4, 0x34)
 140:	6c97      	mov      	r2, r5
 142:	6c57      	mov      	r1, r5
 144:	b8a0      	st.w      	r5, (r14, 0x0)
 146:	e0000000 	bsr      	0x0	// 0 <wpa_sm_set_ptk_kck_kek>
 14a:	6c97      	mov      	r2, r5
 14c:	6c57      	mov      	r1, r5
 14e:	940d      	ld.w      	r0, (r4, 0x34)
 150:	e0000000 	bsr      	0x0	// 0 <wpa_sm_set_ap_wpa_ie>
 154:	6c97      	mov      	r2, r5
 156:	6c57      	mov      	r1, r5
 158:	940d      	ld.w      	r0, (r4, 0x34)
 15a:	e0000000 	bsr      	0x0	// 0 <wpa_sm_set_ap_rsn_ie>
 15e:	d8242063 	ld.w      	r1, (r4, 0x18c)
 162:	332c      	movi      	r3, 44
 164:	dc612048 	st.w      	r3, (r1, 0x120)
 168:	e441011f 	addi      	r2, r1, 288
 16c:	940d      	ld.w      	r0, (r4, 0x34)
 16e:	21f2      	addi      	r1, 243
 170:	e0000000 	bsr      	0x0	// 0 <wpa_sm_set_assoc_wpa_ie_default>
 174:	d8242063 	ld.w      	r1, (r4, 0x18c)
 178:	940d      	ld.w      	r0, (r4, 0x34)
 17a:	d8412048 	ld.w      	r2, (r1, 0x120)
 17e:	21f2      	addi      	r1, 243
 180:	e0000000 	bsr      	0x0	// 0 <wpa_sm_set_assoc_wpa_ie>
 184:	d8242063 	ld.w      	r1, (r4, 0x18c)
 188:	211b      	addi      	r1, 28
 18a:	940d      	ld.w      	r0, (r4, 0x34)
 18c:	e0000000 	bsr      	0x0	// 0 <wpa_sm_notify_assoc>
 190:	3105      	movi      	r1, 5
 192:	9600      	ld.w      	r0, (r6, 0x0)
 194:	e0000000 	bsr      	0x0	// 0 <ieee80211_state>
 198:	9660      	ld.w      	r3, (r6, 0x0)
 19a:	d8232065 	ld.w      	r1, (r3, 0x194)
 19e:	5942      	addi      	r2, r1, 1
 1a0:	d8032066 	ld.w      	r0, (r3, 0x198)
 1a4:	6409      	cmplt      	r2, r0
 1a6:	c402008c 	subu      	r12, r2, r0
 1aa:	c44c0c20 	incf      	r2, r12, 0
 1ae:	d8032064 	ld.w      	r0, (r3, 0x190)
 1b2:	640a      	cmpne      	r2, r0
 1b4:	0c07      	bf      	0x1c2	// 1c2 <ieee80211_sta_rx_auth+0x1c2>
 1b6:	604c      	addu      	r1, r3
 1b8:	3006      	movi      	r0, 6
 1ba:	dc01019c 	st.b      	r0, (r1, 0x19c)
 1be:	dc432065 	st.w      	r2, (r3, 0x194)
 1c2:	d803202a 	ld.w      	r0, (r3, 0xa8)
 1c6:	e0000000 	bsr      	0x0	// 0 <os_sema_up>
 1ca:	1406      	addi      	r14, r14, 24
 1cc:	1495      	pop      	r4-r8, r15
 1ce:	9641      	ld.w      	r2, (r6, 0x4)
 1d0:	3109      	movi      	r1, 9
 1d2:	e0000000 	bsr      	0x0	// 0 <ieee80211_iface_event>
 1d6:	9600      	ld.w      	r0, (r6, 0x0)
 1d8:	3100      	movi      	r1, 0
 1da:	8846      	ld.h      	r2, (r0, 0xc)
 1dc:	e0000000 	bsr      	0x0	// 0 <ieee80211_sta_rx_auth>
 1e0:	9600      	ld.w      	r0, (r6, 0x0)
 1e2:	e0000000 	bsr      	0x0	// 0 <ieee80211_sta_disconnect>
 1e6:	9640      	ld.w      	r2, (r6, 0x0)
 1e8:	856a      	ld.b      	r3, (r5, 0xa)
 1ea:	8a46      	ld.h      	r2, (r2, 0xc)
 1ec:	b845      	st.w      	r2, (r14, 0x14)
 1ee:	854f      	ld.b      	r2, (r5, 0xf)
 1f0:	b844      	st.w      	r2, (r14, 0x10)
 1f2:	854e      	ld.b      	r2, (r5, 0xe)
 1f4:	b843      	st.w      	r2, (r14, 0xc)
 1f6:	854d      	ld.b      	r2, (r5, 0xd)
 1f8:	b842      	st.w      	r2, (r14, 0x8)
 1fa:	854c      	ld.b      	r2, (r5, 0xc)
 1fc:	b841      	st.w      	r2, (r14, 0x4)
 1fe:	854b      	ld.b      	r2, (r5, 0xb)
 200:	b840      	st.w      	r2, (r14, 0x0)
 202:	ea0201e3 	movi      	r2, 483
 206:	1024      	lrw      	r1, 0x0	// 214 <ieee80211_sta_rx_auth+0x214>
 208:	1004      	lrw      	r0, 0x0	// 218 <ieee80211_sta_rx_auth+0x218>
 20a:	e0000000 	bsr      	0x0	// 0 <hgprintf>
 20e:	07de      	br      	0x1ca	// 1ca <ieee80211_sta_rx_auth+0x1ca>
	...

Disassembly of section .text.ieee80211_sta_rx_deauth:

00000000 <ieee80211_sta_rx_deauth>:
   0:	14d1      	push      	r4, r15
   2:	1426      	subi      	r14, r14, 24
   4:	9062      	ld.w      	r3, (r0, 0x8)
   6:	6d03      	mov      	r4, r0
   8:	9347      	ld.w      	r2, (r3, 0x1c)
   a:	9060      	ld.w      	r3, (r0, 0x0)
   c:	8a2c      	ld.h      	r1, (r2, 0x18)
   e:	ab27      	st.h      	r1, (r3, 0xe)
  10:	826a      	ld.b      	r3, (r2, 0xa)
  12:	b825      	st.w      	r1, (r14, 0x14)
  14:	822f      	ld.b      	r1, (r2, 0xf)
  16:	b824      	st.w      	r1, (r14, 0x10)
  18:	822e      	ld.b      	r1, (r2, 0xe)
  1a:	b823      	st.w      	r1, (r14, 0xc)
  1c:	822d      	ld.b      	r1, (r2, 0xd)
  1e:	b822      	st.w      	r1, (r14, 0x8)
  20:	822c      	ld.b      	r1, (r2, 0xc)
  22:	b821      	st.w      	r1, (r14, 0x4)
  24:	824b      	ld.b      	r2, (r2, 0xb)
  26:	b840      	st.w      	r2, (r14, 0x0)
  28:	32f7      	movi      	r2, 247
  2a:	1014      	lrw      	r0, 0x0	// 78 <ieee80211_sta_rx_deauth+0x78>
  2c:	4241      	lsli      	r2, r2, 1
  2e:	1034      	lrw      	r1, 0x0	// 7c <ieee80211_sta_rx_deauth+0x7c>
  30:	e0000000 	bsr      	0x0	// 0 <hgprintf>
  34:	9400      	ld.w      	r0, (r4, 0x0)
  36:	8072      	ld.b      	r3, (r0, 0x12)
  38:	3b44      	cmpnei      	r3, 4
  3a:	0c10      	bf      	0x5a	// 5a <ieee80211_sta_rx_deauth+0x5a>
  3c:	3b47      	cmpnei      	r3, 7
  3e:	080c      	bt      	0x56	// 56 <ieee80211_sta_rx_deauth+0x56>
  40:	d860203f 	ld.w      	r3, (r0, 0xfc)
  44:	e4632d42 	andi      	r3, r3, 3394
  48:	e9030007 	bez      	r3, 0x56	// 56 <ieee80211_sta_rx_deauth+0x56>
  4c:	3300      	movi      	r3, 0
  4e:	6c8f      	mov      	r2, r3
  50:	3123      	movi      	r1, 35
  52:	e0000000 	bsr      	0x0	// 0 <ieee80211_iface_event>
  56:	3202      	movi      	r2, 2
  58:	0402      	br      	0x5c	// 5c <ieee80211_sta_rx_deauth+0x5c>
  5a:	3201      	movi      	r2, 1
  5c:	9420      	ld.w      	r1, (r4, 0x0)
  5e:	1009      	lrw      	r0, 0x0	// 80 <ieee80211_sta_rx_deauth+0x80>
  60:	e0000000 	bsr      	0x0	// 0 <eloop_cancel_timeout>
  64:	9400      	ld.w      	r0, (r4, 0x0)
  66:	3200      	movi      	r2, 0
  68:	8827      	ld.h      	r1, (r0, 0xe)
  6a:	e0000000 	bsr      	0x0	// 0 <ieee80211_sta_rx_deauth>
  6e:	9400      	ld.w      	r0, (r4, 0x0)
  70:	e0000000 	bsr      	0x0	// 0 <ieee80211_sta_disconnect>
  74:	1406      	addi      	r14, r14, 24
  76:	1491      	pop      	r4, r15
	...

Disassembly of section .text.ieee80211_sta_rx_disassoc:

00000000 <ieee80211_sta_rx_disassoc>:
   0:	14d1      	push      	r4, r15
   2:	1426      	subi      	r14, r14, 24
   4:	9062      	ld.w      	r3, (r0, 0x8)
   6:	6d03      	mov      	r4, r0
   8:	9347      	ld.w      	r2, (r3, 0x1c)
   a:	9060      	ld.w      	r3, (r0, 0x0)
   c:	8a2c      	ld.h      	r1, (r2, 0x18)
   e:	ab27      	st.h      	r1, (r3, 0xe)
  10:	826a      	ld.b      	r3, (r2, 0xa)
  12:	b825      	st.w      	r1, (r14, 0x14)
  14:	822f      	ld.b      	r1, (r2, 0xf)
  16:	b824      	st.w      	r1, (r14, 0x10)
  18:	822e      	ld.b      	r1, (r2, 0xe)
  1a:	b823      	st.w      	r1, (r14, 0xc)
  1c:	822d      	ld.b      	r1, (r2, 0xd)
  1e:	b822      	st.w      	r1, (r14, 0x8)
  20:	822c      	ld.b      	r1, (r2, 0xc)
  22:	b821      	st.w      	r1, (r14, 0x4)
  24:	824b      	ld.b      	r2, (r2, 0xb)
  26:	b840      	st.w      	r2, (r14, 0x0)
  28:	32fd      	movi      	r2, 253
  2a:	1012      	lrw      	r0, 0x0	// 70 <ieee80211_sta_rx_disassoc+0x70>
  2c:	4241      	lsli      	r2, r2, 1
  2e:	1032      	lrw      	r1, 0x0	// 74 <ieee80211_sta_rx_disassoc+0x74>
  30:	e0000000 	bsr      	0x0	// 0 <hgprintf>
  34:	9400      	ld.w      	r0, (r4, 0x0)
  36:	8072      	ld.b      	r3, (r0, 0x12)
  38:	3b47      	cmpnei      	r3, 7
  3a:	080c      	bt      	0x52	// 52 <ieee80211_sta_rx_disassoc+0x52>
  3c:	d860203f 	ld.w      	r3, (r0, 0xfc)
  40:	e4632d42 	andi      	r3, r3, 3394
  44:	e9030007 	bez      	r3, 0x52	// 52 <ieee80211_sta_rx_disassoc+0x52>
  48:	3300      	movi      	r3, 0
  4a:	6c8f      	mov      	r2, r3
  4c:	3123      	movi      	r1, 35
  4e:	e0000000 	bsr      	0x0	// 0 <ieee80211_iface_event>
  52:	9420      	ld.w      	r1, (r4, 0x0)
  54:	3202      	movi      	r2, 2
  56:	1009      	lrw      	r0, 0x0	// 78 <ieee80211_sta_rx_disassoc+0x78>
  58:	e0000000 	bsr      	0x0	// 0 <eloop_cancel_timeout>
  5c:	9400      	ld.w      	r0, (r4, 0x0)
  5e:	3200      	movi      	r2, 0
  60:	8827      	ld.h      	r1, (r0, 0xe)
  62:	e0000000 	bsr      	0x0	// 0 <ieee80211_sta_rx_disassoc>
  66:	9400      	ld.w      	r0, (r4, 0x0)
  68:	e0000000 	bsr      	0x0	// 0 <ieee80211_sta_disconnect>
  6c:	1406      	addi      	r14, r14, 24
  6e:	1491      	pop      	r4, r15
	...

Disassembly of section .text.ieee80211_sta_do_assoc:

00000000 <ieee80211_sta_do_assoc>:
   0:	14d5      	push      	r4-r8, r15
   2:	1421      	subi      	r14, r14, 4
   4:	8065      	ld.b      	r3, (r0, 0x5)
   6:	e4632081 	andi      	r3, r3, 129
   a:	3b41      	cmpnei      	r3, 1
   c:	6d03      	mov      	r4, r0
   e:	0c06      	bf      	0x1a	// 1a <ieee80211_sta_do_assoc+0x1a>
  10:	3600      	movi      	r6, 0
  12:	2e00      	subi      	r6, 1
  14:	6c1b      	mov      	r0, r6
  16:	1401      	addi      	r14, r14, 4
  18:	1495      	pop      	r4-r8, r15
  1a:	e0000000 	bsr      	0x0	// 0 <ieee80211_is_pairing>
  1e:	6d83      	mov      	r6, r0
  20:	e920fff8 	bnez      	r0, 0x10	// 10 <ieee80211_sta_do_assoc+0x10>
  24:	d8640113 	ld.b      	r3, (r4, 0x113)
  28:	e903fff4 	bez      	r3, 0x10	// 10 <ieee80211_sta_do_assoc+0x10>
  2c:	d8642063 	ld.w      	r3, (r4, 0x18c)
  30:	835c      	ld.b      	r2, (r3, 0x1c)
  32:	e9220030 	bnez      	r2, 0x92	// 92 <ieee80211_sta_do_assoc+0x92>
  36:	835d      	ld.b      	r2, (r3, 0x1d)
  38:	e922002d 	bnez      	r2, 0x92	// 92 <ieee80211_sta_do_assoc+0x92>
  3c:	835e      	ld.b      	r2, (r3, 0x1e)
  3e:	e922002a 	bnez      	r2, 0x92	// 92 <ieee80211_sta_do_assoc+0x92>
  42:	835f      	ld.b      	r2, (r3, 0x1f)
  44:	e9220027 	bnez      	r2, 0x92	// 92 <ieee80211_sta_do_assoc+0x92>
  48:	d8430020 	ld.b      	r2, (r3, 0x20)
  4c:	e9220023 	bnez      	r2, 0x92	// 92 <ieee80211_sta_do_assoc+0x92>
  50:	d8630021 	ld.b      	r3, (r3, 0x21)
  54:	e923001f 	bnez      	r3, 0x92	// 92 <ieee80211_sta_do_assoc+0x92>
  58:	6c13      	mov      	r0, r4
  5a:	e0000000 	bsr      	0x0	// 0 <ieee80211_sta_select_bss>
  5e:	e920001a 	bnez      	r0, 0x92	// 92 <ieee80211_sta_do_assoc+0x92>
  62:	8c66      	ld.h      	r3, (r4, 0xc)
  64:	e9230005 	bnez      	r3, 0x6e	// 6e <ieee80211_sta_do_assoc+0x6e>
  68:	3300      	movi      	r3, 0
  6a:	2b00      	subi      	r3, 1
  6c:	ac66      	st.h      	r3, (r4, 0xc)
  6e:	8c67      	ld.h      	r3, (r4, 0xe)
  70:	e9230005 	bnez      	r3, 0x7a	// 7a <ieee80211_sta_do_assoc+0x7a>
  74:	3300      	movi      	r3, 0
  76:	2b00      	subi      	r3, 1
  78:	ac67      	st.h      	r3, (r4, 0xe)
  7a:	e4240112 	addi      	r1, r4, 275
  7e:	3220      	movi      	r2, 32
  80:	e40400bb 	addi      	r0, r4, 188
  84:	e0000000 	bsr      	0x0	// 0 <strncpy>
  88:	3108      	movi      	r1, 8
  8a:	6c13      	mov      	r0, r4
  8c:	e0000000 	bsr      	0x0	// 0 <ieee80211_scan_do_action>
  90:	07c0      	br      	0x10	// 10 <ieee80211_sta_do_assoc+0x10>
  92:	8472      	ld.b      	r3, (r4, 0x12)
  94:	3b44      	cmpnei      	r3, 4
  96:	0c05      	bf      	0xa0	// a0 <ieee80211_sta_do_assoc+0xa0>
  98:	3b04      	cmphsi      	r3, 5
  9a:	0807      	bt      	0xa8	// a8 <ieee80211_sta_do_assoc+0xa8>
  9c:	e923ffbc 	bnez      	r3, 0x14	// 14 <ieee80211_sta_do_assoc+0x14>
  a0:	6c13      	mov      	r0, r4
  a2:	e0000000 	bsr      	0x0	// 0 <ieee80211_sta_do_assoc>
  a6:	07b7      	br      	0x14	// 14 <ieee80211_sta_do_assoc+0x14>
  a8:	3b45      	cmpnei      	r3, 5
  aa:	0c0d      	bf      	0xc4	// c4 <ieee80211_sta_do_assoc+0xc4>
  ac:	3b49      	cmpnei      	r3, 9
  ae:	0bb3      	bt      	0x14	// 14 <ieee80211_sta_do_assoc+0x14>
  b0:	d864205d 	ld.w      	r3, (r4, 0x174)
  b4:	e903ffb0 	bez      	r3, 0x14	// 14 <ieee80211_sta_do_assoc+0x14>
  b8:	8360      	ld.b      	r3, (r3, 0x0)
  ba:	e4632001 	andi      	r3, r3, 1
  be:	e903ffab 	bez      	r3, 0x14	// 14 <ieee80211_sta_do_assoc+0x14>
  c2:	07ef      	br      	0xa0	// a0 <ieee80211_sta_do_assoc+0xa0>
  c4:	30a8      	movi      	r0, 168
  c6:	e0000000 	bsr      	0x0	// 0 <_os_zalloc>
  ca:	6d43      	mov      	r5, r0
  cc:	e900ffa4 	bez      	r0, 0x14	// 14 <ieee80211_sta_do_assoc+0x14>
  d0:	d8e42063 	ld.w      	r7, (r4, 0x18c)
  d4:	3200      	movi      	r2, 0
  d6:	d8670025 	ld.b      	r3, (r7, 0x25)
  da:	c4625c02 	ins      	r3, r2, 2, 2
  de:	dc670025 	st.b      	r3, (r7, 0x25)
  e2:	d904202b 	ld.w      	r8, (r4, 0xac)
  e6:	e467001b 	addi      	r3, r7, 28
  ea:	b062      	st.w      	r3, (r0, 0x8)
  ec:	d8480000 	ld.b      	r2, (r8, 0x0)
  f0:	dc400039 	st.b      	r2, (r0, 0x39)
  f4:	b061      	st.w      	r3, (r0, 0x4)
  f6:	e4040112 	addi      	r0, r4, 275
  fa:	b503      	st.w      	r0, (r5, 0xc)
  fc:	e0000000 	bsr      	0x0	// 0 <strlen>
 100:	b508      	st.w      	r0, (r5, 0x20)
 102:	8473      	ld.b      	r3, (r4, 0x13)
 104:	dc65003a 	st.b      	r3, (r5, 0x3a)
 108:	d86700ea 	ld.b      	r3, (r7, 0xea)
 10c:	c4435443 	zext      	r3, r3, 2, 2
 110:	d845003b 	ld.b      	r2, (r5, 0x3b)
 114:	c4435c00 	ins      	r2, r3, 0, 0
 118:	dc45003b 	st.b      	r2, (r5, 0x3b)
 11c:	d844203f 	ld.w      	r2, (r4, 0xfc)
 120:	330a      	movi      	r3, 10
 122:	3a42      	cmpnei      	r2, 2
 124:	ad7b      	st.h      	r3, (r5, 0x36)
 126:	d868100c 	ld.h      	r3, (r8, 0x18)
 12a:	b56a      	st.w      	r3, (r5, 0x28)
 12c:	b5e0      	st.w      	r7, (r5, 0x0)
 12e:	0c04      	bf      	0x136	// 136 <ieee80211_sta_do_assoc+0x136>
 130:	eb420400 	cmpnei      	r2, 1024
 134:	080a      	bt      	0x148	// 148 <ieee80211_sta_do_assoc+0x148>
 136:	ec630010 	ori      	r3, r3, 16
 13a:	b56a      	st.w      	r3, (r5, 0x28)
 13c:	e46700f2 	addi      	r3, r7, 243
 140:	b565      	st.w      	r3, (r5, 0x14)
 142:	d8672048 	ld.w      	r3, (r7, 0x120)
 146:	b569      	st.w      	r3, (r5, 0x24)
 148:	3300      	movi      	r3, 0
 14a:	dc6500a6 	st.b      	r3, (r5, 0xa6)
 14e:	6c57      	mov      	r1, r5
 150:	6c13      	mov      	r0, r4
 152:	e0000000 	bsr      	0x0	// 0 <ieee80211_send_assoc_request>
 156:	6c17      	mov      	r0, r5
 158:	e0000000 	bsr      	0x0	// 0 <_os_free>
 15c:	31fa      	movi      	r1, 250
 15e:	8c0a      	ld.h      	r0, (r4, 0x14)
 160:	3302      	movi      	r3, 2
 162:	4122      	lsli      	r1, r1, 2
 164:	b860      	st.w      	r3, (r14, 0x0)
 166:	7c40      	mult      	r1, r0
 168:	6cd3      	mov      	r3, r4
 16a:	1043      	lrw      	r2, 0x0	// 174 <ieee80211_sta_do_assoc+0x174>
 16c:	3000      	movi      	r0, 0
 16e:	e0000000 	bsr      	0x0	// 0 <eloop_register_timeout>
 172:	0751      	br      	0x14	// 14 <ieee80211_sta_do_assoc+0x14>
 174:	00000000 	.long	0x00000000

Disassembly of section .text.ieee80211_sta_mgmt_tx_status:

00000000 <ieee80211_sta_mgmt_tx_status>:
   0:	14d0      	push      	r15
   2:	d8602063 	ld.w      	r3, (r0, 0x18c)
   6:	d8630025 	ld.b      	r3, (r3, 0x25)
   a:	e4632008 	andi      	r3, r3, 8
   e:	e9230009 	bnez      	r3, 0x20	// 20 <ieee80211_sta_mgmt_tx_status+0x20>
  12:	8052      	ld.b      	r2, (r0, 0x12)
  14:	3a49      	cmpnei      	r2, 9
  16:	0805      	bt      	0x20	// 20 <ieee80211_sta_mgmt_tx_status+0x20>
  18:	6c8f      	mov      	r2, r3
  1a:	3108      	movi      	r1, 8
  1c:	e0000000 	bsr      	0x0	// 0 <ieee80211_iface_event>
  20:	1490      	pop      	r15

Disassembly of section .text.ieee80211_sta_rx_action:

00000000 <ieee80211_sta_rx_action>:
   0:	14d2      	push      	r4-r5, r15
   2:	9062      	ld.w      	r3, (r0, 0x8)
   4:	6d03      	mov      	r4, r0
   6:	93a7      	ld.w      	r5, (r3, 0x1c)
   8:	8d6c      	ld.h      	r3, (r5, 0x18)
   a:	3b43      	cmpnei      	r3, 3
   c:	0803      	bt      	0x12	// 12 <ieee80211_sta_rx_action+0x12>
   e:	e0000000 	bsr      	0x0	// 0 <ieee80211_rx_addba_requst>
  12:	8578      	ld.b      	r3, (r5, 0x18)
  14:	eb43007f 	cmpnei      	r3, 127
  18:	0804      	bt      	0x20	// 20 <ieee80211_sta_rx_action+0x20>
  1a:	6c13      	mov      	r0, r4
  1c:	e0000000 	bsr      	0x0	// 0 <ieee80211_rx_vendor_spec_action>
  20:	1492      	pop      	r4-r5, r15

Disassembly of section .text.ieee80211_sta_rx_beacon:

00000000 <ieee80211_sta_rx_beacon>:
   0:	14d4      	push      	r4-r7, r15
   2:	d8a02063 	ld.w      	r5, (r0, 0x18c)
   6:	6d83      	mov      	r6, r0
   8:	d8650025 	ld.b      	r3, (r5, 0x25)
   c:	e4632008 	andi      	r3, r3, 8
  10:	6dc7      	mov      	r7, r1
  12:	e9030019 	bez      	r3, 0x44	// 44 <ieee80211_sta_rx_beacon+0x44>
  16:	9187      	ld.w      	r4, (r1, 0x1c)
  18:	3206      	movi      	r2, 6
  1a:	e425001b 	addi      	r1, r5, 28
  1e:	e4040009 	addi      	r0, r4, 10
  22:	e0000000 	bsr      	0x0	// 0 <memcmp>
  26:	e920000f 	bnez      	r0, 0x44	// 44 <ieee80211_sta_rx_beacon+0x44>
  2a:	e0000000 	bsr      	0x0	// 0 <os_jiffies>
  2e:	2423      	addi      	r4, 36
  30:	9746      	ld.w      	r2, (r7, 0x18)
  32:	dc052024 	st.w      	r0, (r5, 0x90)
  36:	dc252025 	st.w      	r1, (r5, 0x94)
  3a:	6092      	subu      	r2, r4
  3c:	6c53      	mov      	r1, r4
  3e:	6c1b      	mov      	r0, r6
  40:	e0000000 	bsr      	0x0	// 0 <ieee80211_sta_rx_beacon>
  44:	1494      	pop      	r4-r7, r15

Disassembly of section .text.ieee80211_sta_sae_send_auth:

00000000 <ieee80211_sta_sae_send_auth>:
   0:	14d1      	push      	r4, r15
   2:	6d03      	mov      	r4, r0
   4:	3104      	movi      	r1, 4
   6:	e0000000 	bsr      	0x0	// 0 <ieee80211_state>
   a:	d8442065 	ld.w      	r2, (r4, 0x194)
   e:	5a62      	addi      	r3, r2, 1
  10:	d8242066 	ld.w      	r1, (r4, 0x198)
  14:	644d      	cmplt      	r3, r1
  16:	5b05      	subu      	r0, r3, r1
  18:	c4600c20 	incf      	r3, r0, 0
  1c:	d8242064 	ld.w      	r1, (r4, 0x190)
  20:	644e      	cmpne      	r3, r1
  22:	0c07      	bf      	0x30	// 30 <ieee80211_sta_sae_send_auth+0x30>
  24:	6090      	addu      	r2, r4
  26:	3106      	movi      	r1, 6
  28:	dc22019c 	st.b      	r1, (r2, 0x19c)
  2c:	dc642065 	st.w      	r3, (r4, 0x194)
  30:	d804202a 	ld.w      	r0, (r4, 0xa8)
  34:	e0000000 	bsr      	0x0	// 0 <os_sema_up>
  38:	1491      	pop      	r4, r15
