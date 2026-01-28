
libwifi/o/core_mlme.o:     file format elf32-csky-little


Disassembly of section .text.is_zero_ether_addr:

00000000 <is_zero_ether_addr>:
   0:	8040      	ld.b      	r2, (r0, 0x0)
   2:	e9220013 	bnez      	r2, 0x28	// 28 <is_zero_ether_addr+0x28>
   6:	8061      	ld.b      	r3, (r0, 0x1)
   8:	e9230012 	bnez      	r3, 0x2c	// 2c <is_zero_ether_addr+0x2c>
   c:	8042      	ld.b      	r2, (r0, 0x2)
   e:	e922000b 	bnez      	r2, 0x24	// 24 <is_zero_ether_addr+0x24>
  12:	8063      	ld.b      	r3, (r0, 0x3)
  14:	e923000c 	bnez      	r3, 0x2c	// 2c <is_zero_ether_addr+0x2c>
  18:	8044      	ld.b      	r2, (r0, 0x4)
  1a:	e9220005 	bnez      	r2, 0x24	// 24 <is_zero_ether_addr+0x24>
  1e:	8065      	ld.b      	r3, (r0, 0x5)
  20:	3b40      	cmpnei      	r3, 0
  22:	64c3      	mvcv      	r3
  24:	740c      	zextb      	r0, r3
  26:	783c      	jmp      	r15
  28:	3300      	movi      	r3, 0
  2a:	07fd      	br      	0x24	// 24 <is_zero_ether_addr+0x24>
  2c:	6ccb      	mov      	r3, r2
  2e:	07fb      	br      	0x24	// 24 <is_zero_ether_addr+0x24>

Disassembly of section .text.ieee80211_check_assoc_ies:

00000000 <ieee80211_check_assoc_ies>:
   0:	14d7      	push      	r4-r10, r15
   2:	1426      	subi      	r14, r14, 24
   4:	6d83      	mov      	r6, r0
   6:	6dc7      	mov      	r7, r1
   8:	9287      	ld.w      	r4, (r2, 0x1c)
   a:	e903004a 	bez      	r3, 0x9e	// 9e <ieee80211_check_assoc_ies+0x9e>
   e:	2421      	addi      	r4, 34
  10:	92a6      	ld.w      	r5, (r2, 0x18)
  12:	6152      	subu      	r5, r4
  14:	3300      	movi      	r3, 0
  16:	c40555e5 	zext      	r5, r5, 15, 0
  1a:	dc6e0017 	st.b      	r3, (r14, 0x17)
  1e:	3200      	movi      	r2, 0
  20:	e46e0016 	addi      	r3, r14, 23
  24:	6c57      	mov      	r1, r5
  26:	6c13      	mov      	r0, r4
  28:	e0000000 	bsr      	0x0	// 0 <ieee80211_ie_get>
  2c:	6e03      	mov      	r8, r0
  2e:	e9000036 	bez      	r0, 0x9a	// 9a <ieee80211_check_assoc_ies+0x9a>
  32:	e5260112 	addi      	r9, r6, 275
  36:	6c27      	mov      	r0, r9
  38:	d94e0017 	ld.b      	r10, (r14, 0x17)
  3c:	e0000000 	bsr      	0x0	// 0 <strlen>
  40:	642a      	cmpne      	r10, r0
  42:	084c      	bt      	0xda	// da <ieee80211_check_assoc_ies+0xda>
  44:	6cab      	mov      	r2, r10
  46:	6c67      	mov      	r1, r9
  48:	6c23      	mov      	r0, r8
  4a:	e0000000 	bsr      	0x0	// 0 <memcmp>
  4e:	e9200046 	bnez      	r0, 0xda	// da <ieee80211_check_assoc_ies+0xda>
  52:	d866203f 	ld.w      	r3, (r6, 0xfc)
  56:	3b42      	cmpnei      	r3, 2
  58:	dc0e0017 	st.b      	r0, (r14, 0x17)
  5c:	0c04      	bf      	0x64	// 64 <ieee80211_check_assoc_ies+0x64>
  5e:	eb430400 	cmpnei      	r3, 1024
  62:	0838      	bt      	0xd2	// d2 <ieee80211_check_assoc_ies+0xd2>
  64:	6c13      	mov      	r0, r4
  66:	e46e0016 	addi      	r3, r14, 23
  6a:	3230      	movi      	r2, 48
  6c:	6c57      	mov      	r1, r5
  6e:	e0000000 	bsr      	0x0	// 0 <ieee80211_ie_get>
  72:	6d03      	mov      	r4, r0
  74:	e9000013 	bez      	r0, 0x9a	// 9a <ieee80211_check_assoc_ies+0x9a>
  78:	9742      	ld.w      	r2, (r7, 0x8)
  7a:	e9220008 	bnez      	r2, 0x8a	// 8a <ieee80211_check_assoc_ies+0x8a>
  7e:	e427001b 	addi      	r1, r7, 28
  82:	960d      	ld.w      	r0, (r6, 0x34)
  84:	e0000000 	bsr      	0x0	// 0 <wpa_auth_sta_init>
  88:	b702      	st.w      	r0, (r7, 0x8)
  8a:	9702      	ld.w      	r0, (r7, 0x8)
  8c:	e920000b 	bnez      	r0, 0xa2	// a2 <ieee80211_check_assoc_ies+0xa2>
  90:	3223      	movi      	r2, 35
  92:	1034      	lrw      	r1, 0x0	// e0 <ieee80211_check_assoc_ies+0xe0>
  94:	1014      	lrw      	r0, 0x0	// e4 <ieee80211_check_assoc_ies+0xe4>
  96:	e0000000 	bsr      	0x0	// 0 <hgprintf>
  9a:	3001      	movi      	r0, 1
  9c:	0420      	br      	0xdc	// dc <ieee80211_check_assoc_ies+0xdc>
  9e:	241b      	addi      	r4, 28
  a0:	07b8      	br      	0x10	// 10 <ieee80211_check_assoc_ies+0x10>
  a2:	d866203f 	ld.w      	r3, (r6, 0xfc)
  a6:	eb430400 	cmpnei      	r3, 1024
  aa:	0816      	bt      	0xd6	// d6 <ieee80211_check_assoc_ies+0xd6>
  ac:	3103      	movi      	r1, 3
  ae:	e0000000 	bsr      	0x0	// 0 <wpa_auth_set_auth_alg>
  b2:	d86e0017 	ld.b      	r3, (r14, 0x17)
  b6:	3200      	movi      	r2, 0
  b8:	2301      	addi      	r3, 2
  ba:	b860      	st.w      	r3, (r14, 0x0)
  bc:	9722      	ld.w      	r1, (r7, 0x8)
  be:	960d      	ld.w      	r0, (r6, 0x34)
  c0:	b844      	st.w      	r2, (r14, 0x10)
  c2:	b843      	st.w      	r2, (r14, 0xc)
  c4:	b842      	st.w      	r2, (r14, 0x8)
  c6:	b841      	st.w      	r2, (r14, 0x4)
  c8:	5c67      	subi      	r3, r4, 2
  ca:	e0000000 	bsr      	0x0	// 0 <wpa_validate_wpa_ie>
  ce:	e920ffe6 	bnez      	r0, 0x9a	// 9a <ieee80211_check_assoc_ies+0x9a>
  d2:	3000      	movi      	r0, 0
  d4:	0404      	br      	0xdc	// dc <ieee80211_check_assoc_ies+0xdc>
  d6:	3100      	movi      	r1, 0
  d8:	07eb      	br      	0xae	// ae <ieee80211_check_assoc_ies+0xae>
  da:	3028      	movi      	r0, 40
  dc:	1406      	addi      	r14, r14, 24
  de:	1497      	pop      	r4-r10, r15
	...

Disassembly of section .text.ieee80211_send_disassoc:

00000000 <ieee80211_send_disassoc>:
   0:	14d6      	push      	r4-r9, r15
   2:	1427      	subi      	r14, r14, 28
   4:	d8602027 	ld.w      	r3, (r0, 0x9c)
   8:	6d03      	mov      	r4, r0
   a:	6d47      	mov      	r5, r1
   c:	6dcb      	mov      	r7, r2
   e:	e9030005 	bez      	r3, 0x18	// 18 <ieee80211_send_disassoc+0x18>
  12:	7bcd      	jsr      	r3
  14:	1407      	addi      	r14, r14, 28
  16:	1496      	pop      	r4-r9, r15
  18:	11cf      	lrw      	r6, 0x0	// d4 <ieee80211_send_disassoc+0xd4>
  1a:	d866003a 	ld.b      	r3, (r6, 0x3a)
  1e:	d8060038 	ld.b      	r0, (r6, 0x38)
  22:	600c      	addu      	r0, r3
  24:	d846003b 	ld.b      	r2, (r6, 0x3b)
  28:	d8660039 	ld.b      	r3, (r6, 0x39)
  2c:	60c8      	addu      	r3, r2
  2e:	600c      	addu      	r0, r3
  30:	2031      	addi      	r0, 50
  32:	e0000000 	bsr      	0x0	// 0 <alloc_skb>
  36:	6e03      	mov      	r8, r0
  38:	e900ffee 	bez      	r0, 0x14	// 14 <ieee80211_send_disassoc+0x14>
  3c:	d866003a 	ld.b      	r3, (r6, 0x3a)
  40:	d8260038 	ld.b      	r1, (r6, 0x38)
  44:	604c      	addu      	r1, r3
  46:	e0000000 	bsr      	0x0	// 0 <skb_reserve>
  4a:	311a      	movi      	r1, 26
  4c:	6c23      	mov      	r0, r8
  4e:	e0000000 	bsr      	0x0	// 0 <skb_put_zero>
  52:	33a0      	movi      	r3, 160
  54:	a860      	st.h      	r3, (r0, 0x0)
  56:	6d83      	mov      	r6, r0
  58:	3206      	movi      	r2, 6
  5a:	6c57      	mov      	r1, r5
  5c:	2003      	addi      	r0, 4
  5e:	e5240005 	addi      	r9, r4, 6
  62:	e0000000 	bsr      	0x0	// 0 <memcpy>
  66:	3206      	movi      	r2, 6
  68:	6c67      	mov      	r1, r9
  6a:	e4060009 	addi      	r0, r6, 10
  6e:	e0000000 	bsr      	0x0	// 0 <memcpy>
  72:	8c60      	ld.h      	r3, (r4, 0x0)
  74:	e4632002 	andi      	r3, r3, 2
  78:	e406000f 	addi      	r0, r6, 16
  7c:	3206      	movi      	r2, 6
  7e:	e9030028 	bez      	r3, 0xce	// ce <ieee80211_send_disassoc+0xce>
  82:	6c67      	mov      	r1, r9
  84:	e0000000 	bsr      	0x0	// 0 <memcpy>
  88:	aeec      	st.h      	r7, (r6, 0x18)
  8a:	8545      	ld.b      	r2, (r5, 0x5)
  8c:	b845      	st.w      	r2, (r14, 0x14)
  8e:	8544      	ld.b      	r2, (r5, 0x4)
  90:	b844      	st.w      	r2, (r14, 0x10)
  92:	8543      	ld.b      	r2, (r5, 0x3)
  94:	b843      	st.w      	r2, (r14, 0xc)
  96:	8542      	ld.b      	r2, (r5, 0x2)
  98:	b842      	st.w      	r2, (r14, 0x8)
  9a:	8541      	ld.b      	r2, (r5, 0x1)
  9c:	b841      	st.w      	r2, (r14, 0x4)
  9e:	8540      	ld.b      	r2, (r5, 0x0)
  a0:	8464      	ld.b      	r3, (r4, 0x4)
  a2:	b840      	st.w      	r2, (r14, 0x0)
  a4:	b8e6      	st.w      	r7, (r14, 0x18)
  a6:	3272      	movi      	r2, 114
  a8:	102c      	lrw      	r1, 0x0	// d8 <ieee80211_send_disassoc+0xd8>
  aa:	100d      	lrw      	r0, 0x0	// dc <ieee80211_send_disassoc+0xdc>
  ac:	e0000000 	bsr      	0x0	// 0 <hgprintf>
  b0:	d8642076 	ld.w      	r3, (r4, 0x1d8)
  b4:	2300      	addi      	r3, 1
  b6:	6c63      	mov      	r1, r8
  b8:	6c13      	mov      	r0, r4
  ba:	dc642076 	st.w      	r3, (r4, 0x1d8)
  be:	e0000000 	bsr      	0x0	// 0 <ieee80211_add_customer_ie>
  c2:	6ca3      	mov      	r2, r8
  c4:	3100      	movi      	r1, 0
  c6:	6c13      	mov      	r0, r4
  c8:	e0000000 	bsr      	0x0	// 0 <ieee80211_tx_skb>
  cc:	07a4      	br      	0x14	// 14 <ieee80211_send_disassoc+0x14>
  ce:	6c57      	mov      	r1, r5
  d0:	07da      	br      	0x84	// 84 <ieee80211_send_disassoc+0x84>
	...

Disassembly of section .text.ieee80211_disassoc:

00000000 <ieee80211_disassoc>:
   0:	14d0      	push      	r15
   2:	1421      	subi      	r14, r14, 4
   4:	b820      	st.w      	r1, (r14, 0x0)
   6:	e0000000 	bsr      	0x0	// 0 <ieee80211_iface_get>
   a:	e9000009 	bez      	r0, 0x1c	// 1c <ieee80211_disassoc+0x1c>
   e:	3204      	movi      	r2, 4
  10:	9820      	ld.w      	r1, (r14, 0x0)
  12:	e0000000 	bsr      	0x0	// 0 <ieee80211_disassoc>
  16:	3000      	movi      	r0, 0
  18:	1401      	addi      	r14, r14, 4
  1a:	1490      	pop      	r15
  1c:	3000      	movi      	r0, 0
  1e:	2812      	subi      	r0, 19
  20:	07fc      	br      	0x18	// 18 <ieee80211_disassoc+0x18>

Disassembly of section .text.ieee80211_disassoc_all:

00000000 <ieee80211_disassoc_all>:
   0:	14d0      	push      	r15
   2:	e0000000 	bsr      	0x0	// 0 <ieee80211_iface_get>
   6:	e9000009 	bez      	r0, 0x18	// 18 <ieee80211_disassoc_all+0x18>
   a:	3300      	movi      	r3, 0
   c:	d9802020 	ld.w      	r12, (r0, 0x80)
  10:	6c8f      	mov      	r2, r3
  12:	3120      	movi      	r1, 32
  14:	7bf1      	jsr      	r12
  16:	1490      	pop      	r15
  18:	3000      	movi      	r0, 0
  1a:	2812      	subi      	r0, 19
  1c:	07fd      	br      	0x16	// 16 <ieee80211_disassoc_all+0x16>

Disassembly of section .text.ieee80211_send_deauth:

00000000 <ieee80211_send_deauth>:
   0:	14d6      	push      	r4-r9, r15
   2:	11a7      	lrw      	r5, 0x0	// 9c <ieee80211_send_deauth+0x9c>
   4:	6d03      	mov      	r4, r0
   6:	d865003a 	ld.b      	r3, (r5, 0x3a)
   a:	d8050038 	ld.b      	r0, (r5, 0x38)
   e:	600c      	addu      	r0, r3
  10:	6dcb      	mov      	r7, r2
  12:	d8650039 	ld.b      	r3, (r5, 0x39)
  16:	d845003b 	ld.b      	r2, (r5, 0x3b)
  1a:	60c8      	addu      	r3, r2
  1c:	600c      	addu      	r0, r3
  1e:	2031      	addi      	r0, 50
  20:	6d87      	mov      	r6, r1
  22:	e0000000 	bsr      	0x0	// 0 <alloc_skb>
  26:	6e03      	mov      	r8, r0
  28:	e9000037 	bez      	r0, 0x96	// 96 <ieee80211_send_deauth+0x96>
  2c:	d865003a 	ld.b      	r3, (r5, 0x3a)
  30:	d8250038 	ld.b      	r1, (r5, 0x38)
  34:	604c      	addu      	r1, r3
  36:	e0000000 	bsr      	0x0	// 0 <skb_reserve>
  3a:	311a      	movi      	r1, 26
  3c:	6c23      	mov      	r0, r8
  3e:	e0000000 	bsr      	0x0	// 0 <skb_put_zero>
  42:	33c0      	movi      	r3, 192
  44:	a860      	st.h      	r3, (r0, 0x0)
  46:	6d43      	mov      	r5, r0
  48:	3206      	movi      	r2, 6
  4a:	6c5b      	mov      	r1, r6
  4c:	2003      	addi      	r0, 4
  4e:	e5240005 	addi      	r9, r4, 6
  52:	e0000000 	bsr      	0x0	// 0 <memcpy>
  56:	3206      	movi      	r2, 6
  58:	6c67      	mov      	r1, r9
  5a:	e4050009 	addi      	r0, r5, 10
  5e:	e0000000 	bsr      	0x0	// 0 <memcpy>
  62:	8c60      	ld.h      	r3, (r4, 0x0)
  64:	e4632002 	andi      	r3, r3, 2
  68:	e405000f 	addi      	r0, r5, 16
  6c:	3206      	movi      	r2, 6
  6e:	e9030015 	bez      	r3, 0x98	// 98 <ieee80211_send_deauth+0x98>
  72:	6c67      	mov      	r1, r9
  74:	e0000000 	bsr      	0x0	// 0 <memcpy>
  78:	6c63      	mov      	r1, r8
  7a:	6c13      	mov      	r0, r4
  7c:	adec      	st.h      	r7, (r5, 0x18)
  7e:	e0000000 	bsr      	0x0	// 0 <ieee80211_add_customer_ie>
  82:	d8642076 	ld.w      	r3, (r4, 0x1d8)
  86:	2300      	addi      	r3, 1
  88:	dc642076 	st.w      	r3, (r4, 0x1d8)
  8c:	6ca3      	mov      	r2, r8
  8e:	3100      	movi      	r1, 0
  90:	6c13      	mov      	r0, r4
  92:	e0000000 	bsr      	0x0	// 0 <ieee80211_tx_skb>
  96:	1496      	pop      	r4-r9, r15
  98:	6c5b      	mov      	r1, r6
  9a:	07ed      	br      	0x74	// 74 <ieee80211_send_deauth+0x74>
  9c:	00000000 	.long	0x00000000

Disassembly of section .text.ieee80211_send_auth:

00000000 <ieee80211_send_auth>:
   0:	14d4      	push      	r4-r7, r15
   2:	11aa      	lrw      	r5, 0x0	// a8 <ieee80211_send_auth+0xa8>
   4:	6d83      	mov      	r6, r0
   6:	d865003a 	ld.b      	r3, (r5, 0x3a)
   a:	d8050038 	ld.b      	r0, (r5, 0x38)
   e:	600c      	addu      	r0, r3
  10:	d845003b 	ld.b      	r2, (r5, 0x3b)
  14:	d8650039 	ld.b      	r3, (r5, 0x39)
  18:	60c8      	addu      	r3, r2
  1a:	600c      	addu      	r0, r3
  1c:	8969      	ld.h      	r3, (r1, 0x12)
  1e:	600c      	addu      	r0, r3
  20:	2021      	addi      	r0, 34
  22:	6d07      	mov      	r4, r1
  24:	e0000000 	bsr      	0x0	// 0 <alloc_skb>
  28:	6dc3      	mov      	r7, r0
  2a:	e900003e 	bez      	r0, 0xa6	// a6 <ieee80211_send_auth+0xa6>
  2e:	d865003a 	ld.b      	r3, (r5, 0x3a)
  32:	d8250038 	ld.b      	r1, (r5, 0x38)
  36:	604c      	addu      	r1, r3
  38:	e0000000 	bsr      	0x0	// 0 <skb_reserve>
  3c:	311e      	movi      	r1, 30
  3e:	6c1f      	mov      	r0, r7
  40:	e0000000 	bsr      	0x0	// 0 <skb_put_zero>
  44:	33b0      	movi      	r3, 176
  46:	6d43      	mov      	r5, r0
  48:	a860      	st.h      	r3, (r0, 0x0)
  4a:	3206      	movi      	r2, 6
  4c:	9421      	ld.w      	r1, (r4, 0x4)
  4e:	2003      	addi      	r0, 4
  50:	e0000000 	bsr      	0x0	// 0 <memcpy>
  54:	3206      	movi      	r2, 6
  56:	5e28      	addu      	r1, r6, r2
  58:	e4050009 	addi      	r0, r5, 10
  5c:	e0000000 	bsr      	0x0	// 0 <memcpy>
  60:	9420      	ld.w      	r1, (r4, 0x0)
  62:	3206      	movi      	r2, 6
  64:	e405000f 	addi      	r0, r5, 16
  68:	e0000000 	bsr      	0x0	// 0 <memcpy>
  6c:	8c66      	ld.h      	r3, (r4, 0xc)
  6e:	ad6c      	st.h      	r3, (r5, 0x18)
  70:	8c67      	ld.h      	r3, (r4, 0xe)
  72:	ad6d      	st.h      	r3, (r5, 0x1a)
  74:	8c68      	ld.h      	r3, (r4, 0x10)
  76:	ad6e      	st.h      	r3, (r5, 0x1c)
  78:	9422      	ld.w      	r1, (r4, 0x8)
  7a:	e9010008 	bez      	r1, 0x8a	// 8a <ieee80211_send_auth+0x8a>
  7e:	8c49      	ld.h      	r2, (r4, 0x12)
  80:	e9020005 	bez      	r2, 0x8a	// 8a <ieee80211_send_auth+0x8a>
  84:	6c1f      	mov      	r0, r7
  86:	e0000000 	bsr      	0x0	// 0 <skb_put_data>
  8a:	6c5f      	mov      	r1, r7
  8c:	6c1b      	mov      	r0, r6
  8e:	e0000000 	bsr      	0x0	// 0 <ieee80211_add_customer_ie>
  92:	d8662076 	ld.w      	r3, (r6, 0x1d8)
  96:	2300      	addi      	r3, 1
  98:	dc662076 	st.w      	r3, (r6, 0x1d8)
  9c:	6c9f      	mov      	r2, r7
  9e:	3100      	movi      	r1, 0
  a0:	6c1b      	mov      	r0, r6
  a2:	e0000000 	bsr      	0x0	// 0 <ieee80211_tx_skb>
  a6:	1494      	pop      	r4-r7, r15
  a8:	00000000 	.long	0x00000000

Disassembly of section .text.ieee80211_send_assoc_request:

00000000 <ieee80211_send_assoc_request>:
   0:	14d4      	push      	r4-r7, r15
   2:	12ea      	lrw      	r7, 0x0	// 128 <ieee80211_send_assoc_request+0x128>
   4:	6d83      	mov      	r6, r0
   6:	d840202b 	ld.w      	r2, (r0, 0xac)
   a:	d8670038 	ld.b      	r3, (r7, 0x38)
   e:	d807003a 	ld.b      	r0, (r7, 0x3a)
  12:	6d07      	mov      	r4, r1
  14:	60c0      	addu      	r3, r0
  16:	d827003b 	ld.b      	r1, (r7, 0x3b)
  1a:	d8070039 	ld.b      	r0, (r7, 0x39)
  1e:	6004      	addu      	r0, r1
  20:	60c0      	addu      	r3, r0
  22:	9429      	ld.w      	r1, (r4, 0x24)
  24:	9408      	ld.w      	r0, (r4, 0x20)
  26:	6004      	addu      	r0, r1
  28:	20ae      	addi      	r0, 175
  2a:	60c0      	addu      	r3, r0
  2c:	8205      	ld.b      	r0, (r2, 0x5)
  2e:	60c0      	addu      	r3, r0
  30:	8204      	ld.b      	r0, (r2, 0x4)
  32:	6000      	addu      	r0, r0
  34:	600c      	addu      	r0, r3
  36:	e0000000 	bsr      	0x0	// 0 <alloc_skb>
  3a:	6d43      	mov      	r5, r0
  3c:	e900006a 	bez      	r0, 0x110	// 110 <ieee80211_send_assoc_request+0x110>
  40:	d867003a 	ld.b      	r3, (r7, 0x3a)
  44:	d8270038 	ld.b      	r1, (r7, 0x38)
  48:	604c      	addu      	r1, r3
  4a:	e0000000 	bsr      	0x0	// 0 <skb_reserve>
  4e:	3118      	movi      	r1, 24
  50:	6c17      	mov      	r0, r5
  52:	e0000000 	bsr      	0x0	// 0 <skb_put_zero>
  56:	6dc3      	mov      	r7, r0
  58:	3206      	movi      	r2, 6
  5a:	9422      	ld.w      	r1, (r4, 0x8)
  5c:	2003      	addi      	r0, 4
  5e:	e0000000 	bsr      	0x0	// 0 <memcpy>
  62:	3206      	movi      	r2, 6
  64:	5e28      	addu      	r1, r6, r2
  66:	e4070009 	addi      	r0, r7, 10
  6a:	e0000000 	bsr      	0x0	// 0 <memcpy>
  6e:	3206      	movi      	r2, 6
  70:	9421      	ld.w      	r1, (r4, 0x4)
  72:	e407000f 	addi      	r0, r7, 16
  76:	e0000000 	bsr      	0x0	// 0 <memcpy>
  7a:	d866205d 	ld.w      	r3, (r6, 0x174)
  7e:	e9030007 	bez      	r3, 0x8c	// 8c <ieee80211_send_assoc_request+0x8c>
  82:	8360      	ld.b      	r3, (r3, 0x0)
  84:	e4632001 	andi      	r3, r3, 1
  88:	e9230009 	bnez      	r3, 0x9a	// 9a <ieee80211_send_assoc_request+0x9a>
  8c:	9404      	ld.w      	r0, (r4, 0x10)
  8e:	e9000042 	bez      	r0, 0x112	// 112 <ieee80211_send_assoc_request+0x112>
  92:	e0000000 	bsr      	0x0	// 0 <ieee80211_send_assoc_request>
  96:	e920003e 	bnez      	r0, 0x112	// 112 <ieee80211_send_assoc_request+0x112>
  9a:	310a      	movi      	r1, 10
  9c:	6c17      	mov      	r0, r5
  9e:	e0000000 	bsr      	0x0	// 0 <skb_put>
  a2:	3320      	movi      	r3, 32
  a4:	af60      	st.h      	r3, (r7, 0x0)
  a6:	8c74      	ld.h      	r3, (r4, 0x28)
  a8:	af6c      	st.h      	r3, (r7, 0x18)
  aa:	8c7b      	ld.h      	r3, (r4, 0x36)
  ac:	af6d      	st.h      	r3, (r7, 0x1a)
  ae:	3206      	movi      	r2, 6
  b0:	9424      	ld.w      	r1, (r4, 0x10)
  b2:	e407001b 	addi      	r0, r7, 28
  b6:	e0000000 	bsr      	0x0	// 0 <memcpy>
  ba:	3200      	movi      	r2, 0
  bc:	9423      	ld.w      	r1, (r4, 0xc)
  be:	6c17      	mov      	r0, r5
  c0:	e0000000 	bsr      	0x0	// 0 <ieee80211_ie_add_ssid>
  c4:	6c57      	mov      	r1, r5
  c6:	6c1b      	mov      	r0, r6
  c8:	e0000000 	bsr      	0x0	// 0 <ieee80211_ie_add_supported_rates>
  cc:	3200      	movi      	r2, 0
  ce:	6c57      	mov      	r1, r5
  d0:	6c1b      	mov      	r0, r6
  d2:	e0000000 	bsr      	0x0	// 0 <ieee80211_ie_add_wmm>
  d6:	3103      	movi      	r1, 3
  d8:	6cd3      	mov      	r3, r4
  da:	6c97      	mov      	r2, r5
  dc:	6c1b      	mov      	r0, r6
  de:	e0000000 	bsr      	0x0	// 0 <ieee80211_add_extra_ie>
  e2:	9425      	ld.w      	r1, (r4, 0x14)
  e4:	e9010008 	bez      	r1, 0xf4	// f4 <ieee80211_send_assoc_request+0xf4>
  e8:	9449      	ld.w      	r2, (r4, 0x24)
  ea:	e9020005 	bez      	r2, 0xf4	// f4 <ieee80211_send_assoc_request+0xf4>
  ee:	6c17      	mov      	r0, r5
  f0:	e0000000 	bsr      	0x0	// 0 <skb_put_data>
  f4:	6c57      	mov      	r1, r5
  f6:	6c1b      	mov      	r0, r6
  f8:	e0000000 	bsr      	0x0	// 0 <ieee80211_add_customer_ie>
  fc:	d8662076 	ld.w      	r3, (r6, 0x1d8)
 100:	2300      	addi      	r3, 1
 102:	dc662076 	st.w      	r3, (r6, 0x1d8)
 106:	6c97      	mov      	r2, r5
 108:	3100      	movi      	r1, 0
 10a:	6c1b      	mov      	r0, r6
 10c:	e0000000 	bsr      	0x0	// 0 <ieee80211_tx_skb>
 110:	1494      	pop      	r4-r7, r15
 112:	3104      	movi      	r1, 4
 114:	6c17      	mov      	r0, r5
 116:	e0000000 	bsr      	0x0	// 0 <skb_put>
 11a:	3300      	movi      	r3, 0
 11c:	af60      	st.h      	r3, (r7, 0x0)
 11e:	8c74      	ld.h      	r3, (r4, 0x28)
 120:	af6c      	st.h      	r3, (r7, 0x18)
 122:	8c7b      	ld.h      	r3, (r4, 0x36)
 124:	af6d      	st.h      	r3, (r7, 0x1a)
 126:	07ca      	br      	0xba	// ba <ieee80211_send_assoc_request+0xba>
 128:	00000000 	.long	0x00000000

Disassembly of section .text.ieee80211_send_assoc_response:

00000000 <ieee80211_send_assoc_response>:
   0:	14d6      	push      	r4-r9, r15
   2:	129c      	lrw      	r4, 0x0	// 170 <ieee80211_send_assoc_response+0x170>
   4:	6dc3      	mov      	r7, r0
   6:	d920202b 	ld.w      	r9, (r0, 0xac)
   a:	d8640038 	ld.b      	r3, (r4, 0x38)
   e:	d804003a 	ld.b      	r0, (r4, 0x3a)
  12:	d844003b 	ld.b      	r2, (r4, 0x3b)
  16:	60c0      	addu      	r3, r0
  18:	d8040039 	ld.b      	r0, (r4, 0x39)
  1c:	6008      	addu      	r0, r2
  1e:	60c0      	addu      	r3, r0
  20:	9149      	ld.w      	r2, (r1, 0x24)
  22:	9108      	ld.w      	r0, (r1, 0x20)
  24:	6008      	addu      	r0, r2
  26:	20ae      	addi      	r0, 175
  28:	60c0      	addu      	r3, r0
  2a:	d8090005 	ld.b      	r0, (r9, 0x5)
  2e:	60c0      	addu      	r3, r0
  30:	d8090004 	ld.b      	r0, (r9, 0x4)
  34:	6000      	addu      	r0, r0
  36:	600c      	addu      	r0, r3
  38:	6d47      	mov      	r5, r1
  3a:	d909100c 	ld.h      	r8, (r9, 0x18)
  3e:	e0000000 	bsr      	0x0	// 0 <alloc_skb>
  42:	6d83      	mov      	r6, r0
  44:	e9000075 	bez      	r0, 0x12e	// 12e <ieee80211_send_assoc_response+0x12e>
  48:	d864003a 	ld.b      	r3, (r4, 0x3a)
  4c:	d8240038 	ld.b      	r1, (r4, 0x38)
  50:	604c      	addu      	r1, r3
  52:	e0000000 	bsr      	0x0	// 0 <skb_reserve>
  56:	956a      	ld.w      	r3, (r5, 0x28)
  58:	e4432010 	andi      	r2, r3, 16
  5c:	e9020004 	bez      	r2, 0x64	// 64 <ieee80211_send_assoc_response+0x64>
  60:	ed080010 	ori      	r8, r8, 16
  64:	e4632100 	andi      	r3, r3, 256
  68:	e9030004 	bez      	r3, 0x70	// 70 <ieee80211_send_assoc_response+0x70>
  6c:	ed080100 	ori      	r8, r8, 256
  70:	3118      	movi      	r1, 24
  72:	6c1b      	mov      	r0, r6
  74:	e0000000 	bsr      	0x0	// 0 <skb_put_zero>
  78:	6d03      	mov      	r4, r0
  7a:	3206      	movi      	r2, 6
  7c:	9522      	ld.w      	r1, (r5, 0x8)
  7e:	2003      	addi      	r0, 4
  80:	e0000000 	bsr      	0x0	// 0 <memcpy>
  84:	3206      	movi      	r2, 6
  86:	5f28      	addu      	r1, r7, r2
  88:	e4040009 	addi      	r0, r4, 10
  8c:	e0000000 	bsr      	0x0	// 0 <memcpy>
  90:	3206      	movi      	r2, 6
  92:	9521      	ld.w      	r1, (r5, 0x4)
  94:	e404000f 	addi      	r0, r4, 16
  98:	e0000000 	bsr      	0x0	// 0 <memcpy>
  9c:	d8690000 	ld.b      	r3, (r9, 0x0)
  a0:	3b43      	cmpnei      	r3, 3
  a2:	9504      	ld.w      	r0, (r5, 0x10)
  a4:	084c      	bt      	0x13c	// 13c <ieee80211_send_assoc_response+0x13c>
  a6:	e9000045 	bez      	r0, 0x130	// 130 <ieee80211_send_assoc_response+0x130>
  aa:	e0000000 	bsr      	0x0	// 0 <ieee80211_send_assoc_response>
  ae:	e9200041 	bnez      	r0, 0x130	// 130 <ieee80211_send_assoc_response+0x130>
  b2:	3104      	movi      	r1, 4
  b4:	6c1b      	mov      	r0, r6
  b6:	e0000000 	bsr      	0x0	// 0 <skb_put>
  ba:	3330      	movi      	r3, 48
  bc:	ac60      	st.h      	r3, (r4, 0x0)
  be:	dd04100c 	st.h      	r8, (r4, 0x18)
  c2:	d8650038 	ld.b      	r3, (r5, 0x38)
  c6:	ac6d      	st.h      	r3, (r4, 0x1a)
  c8:	6c5b      	mov      	r1, r6
  ca:	6c1f      	mov      	r0, r7
  cc:	e0000000 	bsr      	0x0	// 0 <ieee80211_ie_add_supported_rates>
  d0:	3200      	movi      	r2, 0
  d2:	d82710ac 	ld.h      	r1, (r7, 0x158)
  d6:	6c1b      	mov      	r0, r6
  d8:	e0000000 	bsr      	0x0	// 0 <ieee80211_ie_add_bss_period>
  dc:	e447015b 	addi      	r2, r7, 348
  e0:	6c5b      	mov      	r1, r6
  e2:	6c1f      	mov      	r0, r7
  e4:	e0000000 	bsr      	0x0	// 0 <ieee80211_ie_add_wmm>
  e8:	9560      	ld.w      	r3, (r5, 0x0)
  ea:	6c5b      	mov      	r1, r6
  ec:	834e      	ld.b      	r2, (r3, 0xe)
  ee:	6c1f      	mov      	r0, r7
  f0:	e0000000 	bsr      	0x0	// 0 <ieee80211_ie_add_wakeup_reason>
  f4:	3104      	movi      	r1, 4
  f6:	6cd7      	mov      	r3, r5
  f8:	6c9b      	mov      	r2, r6
  fa:	6c1f      	mov      	r0, r7
  fc:	e0000000 	bsr      	0x0	// 0 <ieee80211_add_extra_ie>
 100:	9525      	ld.w      	r1, (r5, 0x14)
 102:	e9010008 	bez      	r1, 0x112	// 112 <ieee80211_send_assoc_response+0x112>
 106:	9549      	ld.w      	r2, (r5, 0x24)
 108:	e9020005 	bez      	r2, 0x112	// 112 <ieee80211_send_assoc_response+0x112>
 10c:	6c1b      	mov      	r0, r6
 10e:	e0000000 	bsr      	0x0	// 0 <skb_put_data>
 112:	6c5b      	mov      	r1, r6
 114:	6c1f      	mov      	r0, r7
 116:	e0000000 	bsr      	0x0	// 0 <ieee80211_add_customer_ie>
 11a:	d8672076 	ld.w      	r3, (r7, 0x1d8)
 11e:	2300      	addi      	r3, 1
 120:	dc672076 	st.w      	r3, (r7, 0x1d8)
 124:	6c9b      	mov      	r2, r6
 126:	3100      	movi      	r1, 0
 128:	6c1f      	mov      	r0, r7
 12a:	e0000000 	bsr      	0x0	// 0 <ieee80211_tx_skb>
 12e:	1496      	pop      	r4-r9, r15
 130:	3104      	movi      	r1, 4
 132:	6c1b      	mov      	r0, r6
 134:	e0000000 	bsr      	0x0	// 0 <skb_put>
 138:	3310      	movi      	r3, 16
 13a:	07c1      	br      	0xbc	// bc <ieee80211_send_assoc_response+0xbc>
 13c:	e9000014 	bez      	r0, 0x164	// 164 <ieee80211_send_assoc_response+0x164>
 140:	e0000000 	bsr      	0x0	// 0 <ieee80211_send_assoc_response>
 144:	e9200010 	bnez      	r0, 0x164	// 164 <ieee80211_send_assoc_response+0x164>
 148:	3106      	movi      	r1, 6
 14a:	6c1b      	mov      	r0, r6
 14c:	e0000000 	bsr      	0x0	// 0 <skb_put>
 150:	3330      	movi      	r3, 48
 152:	dd04100c 	st.h      	r8, (r4, 0x18)
 156:	ac60      	st.h      	r3, (r4, 0x0)
 158:	d8650038 	ld.b      	r3, (r5, 0x38)
 15c:	ac6d      	st.h      	r3, (r4, 0x1a)
 15e:	8d76      	ld.h      	r3, (r5, 0x2c)
 160:	ac6e      	st.h      	r3, (r4, 0x1c)
 162:	07b3      	br      	0xc8	// c8 <ieee80211_send_assoc_response+0xc8>
 164:	3106      	movi      	r1, 6
 166:	6c1b      	mov      	r0, r6
 168:	e0000000 	bsr      	0x0	// 0 <skb_put>
 16c:	3310      	movi      	r3, 16
 16e:	07f2      	br      	0x152	// 152 <ieee80211_send_assoc_response+0x152>
 170:	00000000 	.long	0x00000000

Disassembly of section .text.ieee80211_send_probe_request:

00000000 <ieee80211_send_probe_request>:
   0:	14d4      	push      	r4-r7, r15
   2:	11f5      	lrw      	r7, 0x0	// d4 <ieee80211_send_probe_request+0xd4>
   4:	6d43      	mov      	r5, r0
   6:	6d07      	mov      	r4, r1
   8:	d807003a 	ld.b      	r0, (r7, 0x3a)
   c:	d8670038 	ld.b      	r3, (r7, 0x38)
  10:	d847003b 	ld.b      	r2, (r7, 0x3b)
  14:	60c0      	addu      	r3, r0
  16:	d8070039 	ld.b      	r0, (r7, 0x39)
  1a:	6008      	addu      	r0, r2
  1c:	8444      	ld.b      	r2, (r4, 0x4)
  1e:	60c0      	addu      	r3, r0
  20:	2215      	addi      	r2, 22
  22:	9105      	ld.w      	r0, (r1, 0x14)
  24:	d825202a 	ld.w      	r1, (r5, 0xa8)
  28:	d0410882 	ldr.w      	r2, (r1, r2 << 2)
  2c:	2097      	addi      	r0, 152
  2e:	60c0      	addu      	r3, r0
  30:	8205      	ld.b      	r0, (r2, 0x5)
  32:	600c      	addu      	r0, r3
  34:	e0000000 	bsr      	0x0	// 0 <alloc_skb>
  38:	6d83      	mov      	r6, r0
  3a:	e9000049 	bez      	r0, 0xcc	// cc <ieee80211_send_probe_request+0xcc>
  3e:	d867003a 	ld.b      	r3, (r7, 0x3a)
  42:	d8270038 	ld.b      	r1, (r7, 0x38)
  46:	604c      	addu      	r1, r3
  48:	e0000000 	bsr      	0x0	// 0 <skb_reserve>
  4c:	3118      	movi      	r1, 24
  4e:	6c1b      	mov      	r0, r6
  50:	e0000000 	bsr      	0x0	// 0 <skb_put_zero>
  54:	3340      	movi      	r3, 64
  56:	a860      	st.h      	r3, (r0, 0x0)
  58:	6dc3      	mov      	r7, r0
  5a:	3206      	movi      	r2, 6
  5c:	9422      	ld.w      	r1, (r4, 0x8)
  5e:	2003      	addi      	r0, 4
  60:	e0000000 	bsr      	0x0	// 0 <memcpy>
  64:	3206      	movi      	r2, 6
  66:	5d28      	addu      	r1, r5, r2
  68:	e4070009 	addi      	r0, r7, 10
  6c:	e0000000 	bsr      	0x0	// 0 <memcpy>
  70:	3206      	movi      	r2, 6
  72:	9422      	ld.w      	r1, (r4, 0x8)
  74:	e407000f 	addi      	r0, r7, 16
  78:	e0000000 	bsr      	0x0	// 0 <memcpy>
  7c:	3200      	movi      	r2, 0
  7e:	9423      	ld.w      	r1, (r4, 0xc)
  80:	6c1b      	mov      	r0, r6
  82:	e0000000 	bsr      	0x0	// 0 <ieee80211_ie_add_ssid>
  86:	6c5b      	mov      	r1, r6
  88:	6c17      	mov      	r0, r5
  8a:	e0000000 	bsr      	0x0	// 0 <ieee80211_ie_add_supported_rates>
  8e:	3101      	movi      	r1, 1
  90:	6cd3      	mov      	r3, r4
  92:	6c9b      	mov      	r2, r6
  94:	6c17      	mov      	r0, r5
  96:	e0000000 	bsr      	0x0	// 0 <ieee80211_add_extra_ie>
  9a:	9424      	ld.w      	r1, (r4, 0x10)
  9c:	e9010008 	bez      	r1, 0xac	// ac <ieee80211_send_probe_request+0xac>
  a0:	9446      	ld.w      	r2, (r4, 0x18)
  a2:	e9020005 	bez      	r2, 0xac	// ac <ieee80211_send_probe_request+0xac>
  a6:	6c1b      	mov      	r0, r6
  a8:	e0000000 	bsr      	0x0	// 0 <skb_put_data>
  ac:	6c5b      	mov      	r1, r6
  ae:	6c17      	mov      	r0, r5
  b0:	e0000000 	bsr      	0x0	// 0 <ieee80211_add_customer_ie>
  b4:	d8652076 	ld.w      	r3, (r5, 0x1d8)
  b8:	2300      	addi      	r3, 1
  ba:	6c17      	mov      	r0, r5
  bc:	dc652076 	st.w      	r3, (r5, 0x1d8)
  c0:	6c9b      	mov      	r2, r6
  c2:	9420      	ld.w      	r1, (r4, 0x0)
  c4:	e0000000 	bsr      	0x0	// 0 <ieee80211_tx_skb>
  c8:	3000      	movi      	r0, 0
  ca:	1494      	pop      	r4-r7, r15
  cc:	3000      	movi      	r0, 0
  ce:	280b      	subi      	r0, 12
  d0:	07fd      	br      	0xca	// ca <ieee80211_send_probe_request+0xca>
  d2:	0000      	.short	0x0000
  d4:	00000000 	.long	0x00000000

Disassembly of section .text.ieee80211_send_probe_response:

00000000 <ieee80211_send_probe_response>:
   0:	14d5      	push      	r4-r8, r15
   2:	1280      	lrw      	r4, 0x0	// 100 <ieee80211_send_probe_response+0x100>
   4:	6d43      	mov      	r5, r0
   6:	d8640038 	ld.b      	r3, (r4, 0x38)
   a:	d804003a 	ld.b      	r0, (r4, 0x3a)
   e:	d844003b 	ld.b      	r2, (r4, 0x3b)
  12:	60c0      	addu      	r3, r0
  14:	d8040039 	ld.b      	r0, (r4, 0x39)
  18:	6008      	addu      	r0, r2
  1a:	6d87      	mov      	r6, r1
  1c:	9146      	ld.w      	r2, (r1, 0x18)
  1e:	60c0      	addu      	r3, r0
  20:	9105      	ld.w      	r0, (r1, 0x14)
  22:	6008      	addu      	r0, r2
  24:	8644      	ld.b      	r2, (r6, 0x4)
  26:	d825202a 	ld.w      	r1, (r5, 0xa8)
  2a:	2215      	addi      	r2, 22
  2c:	d0410882 	ldr.w      	r2, (r1, r2 << 2)
  30:	2071      	addi      	r0, 114
  32:	60c0      	addu      	r3, r0
  34:	8205      	ld.b      	r0, (r2, 0x5)
  36:	600c      	addu      	r0, r3
  38:	e0000000 	bsr      	0x0	// 0 <alloc_skb>
  3c:	6dc3      	mov      	r7, r0
  3e:	e900005d 	bez      	r0, 0xf8	// f8 <ieee80211_send_probe_response+0xf8>
  42:	d864003a 	ld.b      	r3, (r4, 0x3a)
  46:	d8240038 	ld.b      	r1, (r4, 0x38)
  4a:	604c      	addu      	r1, r3
  4c:	e0000000 	bsr      	0x0	// 0 <skb_reserve>
  50:	3124      	movi      	r1, 36
  52:	6c1f      	mov      	r0, r7
  54:	e0000000 	bsr      	0x0	// 0 <skb_put_zero>
  58:	3350      	movi      	r3, 80
  5a:	6d03      	mov      	r4, r0
  5c:	a860      	st.h      	r3, (r0, 0x0)
  5e:	3206      	movi      	r2, 6
  60:	9622      	ld.w      	r1, (r6, 0x8)
  62:	e5050005 	addi      	r8, r5, 6
  66:	2003      	addi      	r0, 4
  68:	e0000000 	bsr      	0x0	// 0 <memcpy>
  6c:	3206      	movi      	r2, 6
  6e:	6c63      	mov      	r1, r8
  70:	e4040009 	addi      	r0, r4, 10
  74:	e0000000 	bsr      	0x0	// 0 <memcpy>
  78:	3206      	movi      	r2, 6
  7a:	6c63      	mov      	r1, r8
  7c:	e404000f 	addi      	r0, r4, 16
  80:	e0000000 	bsr      	0x0	// 0 <memcpy>
  84:	3300      	movi      	r3, 0
  86:	ac6c      	st.h      	r3, (r4, 0x18)
  88:	ac6d      	st.h      	r3, (r4, 0x1a)
  8a:	ac6e      	st.h      	r3, (r4, 0x1c)
  8c:	ac6f      	st.h      	r3, (r4, 0x1e)
  8e:	8e63      	ld.h      	r3, (r6, 0x6)
  90:	ac70      	st.h      	r3, (r4, 0x20)
  92:	d865202b 	ld.w      	r3, (r5, 0xac)
  96:	8b6c      	ld.h      	r3, (r3, 0x18)
  98:	ac71      	st.h      	r3, (r4, 0x22)
  9a:	d845203f 	ld.w      	r2, (r5, 0xfc)
  9e:	3a44      	cmpnei      	r2, 4
  a0:	0c04      	bf      	0xa8	// a8 <ieee80211_send_probe_response+0xa8>
  a2:	ec630010 	ori      	r3, r3, 16
  a6:	ac71      	st.h      	r3, (r4, 0x22)
  a8:	3200      	movi      	r2, 0
  aa:	9623      	ld.w      	r1, (r6, 0xc)
  ac:	6c1f      	mov      	r0, r7
  ae:	e0000000 	bsr      	0x0	// 0 <ieee80211_ie_add_ssid>
  b2:	6c5f      	mov      	r1, r7
  b4:	6c17      	mov      	r0, r5
  b6:	e0000000 	bsr      	0x0	// 0 <ieee80211_ie_add_supported_rates>
  ba:	3102      	movi      	r1, 2
  bc:	6cdb      	mov      	r3, r6
  be:	6c9f      	mov      	r2, r7
  c0:	6c17      	mov      	r0, r5
  c2:	e0000000 	bsr      	0x0	// 0 <ieee80211_add_extra_ie>
  c6:	9624      	ld.w      	r1, (r6, 0x10)
  c8:	e9010008 	bez      	r1, 0xd8	// d8 <ieee80211_send_probe_response+0xd8>
  cc:	9646      	ld.w      	r2, (r6, 0x18)
  ce:	e9020005 	bez      	r2, 0xd8	// d8 <ieee80211_send_probe_response+0xd8>
  d2:	6c1f      	mov      	r0, r7
  d4:	e0000000 	bsr      	0x0	// 0 <skb_put_data>
  d8:	6c5f      	mov      	r1, r7
  da:	6c17      	mov      	r0, r5
  dc:	e0000000 	bsr      	0x0	// 0 <ieee80211_add_customer_ie>
  e0:	d8652076 	ld.w      	r3, (r5, 0x1d8)
  e4:	2300      	addi      	r3, 1
  e6:	6c17      	mov      	r0, r5
  e8:	dc652076 	st.w      	r3, (r5, 0x1d8)
  ec:	6c9f      	mov      	r2, r7
  ee:	9620      	ld.w      	r1, (r6, 0x0)
  f0:	e0000000 	bsr      	0x0	// 0 <ieee80211_tx_skb>
  f4:	3000      	movi      	r0, 0
  f6:	1495      	pop      	r4-r8, r15
  f8:	3000      	movi      	r0, 0
  fa:	280b      	subi      	r0, 12
  fc:	07fd      	br      	0xf6	// f6 <ieee80211_send_probe_response+0xf6>
  fe:	0000      	.short	0x0000
 100:	00000000 	.long	0x00000000

Disassembly of section .text.ieee80211_send_nullfunc:

00000000 <ieee80211_send_nullfunc>:
   0:	14d8      	push      	r4-r11, r15
   2:	1421      	subi      	r14, r14, 4
   4:	1190      	lrw      	r4, 0x0	// c4 <ieee80211_send_nullfunc+0xc4>
   6:	6e43      	mov      	r9, r0
   8:	6e0f      	mov      	r8, r3
   a:	d8040038 	ld.b      	r0, (r4, 0x38)
   e:	d864003a 	ld.b      	r3, (r4, 0x3a)
  12:	600c      	addu      	r0, r3
  14:	6dcb      	mov      	r7, r2
  16:	d8640039 	ld.b      	r3, (r4, 0x39)
  1a:	d844003b 	ld.b      	r2, (r4, 0x3b)
  1e:	60c8      	addu      	r3, r2
  20:	600c      	addu      	r0, r3
  22:	201d      	addi      	r0, 30
  24:	6d87      	mov      	r6, r1
  26:	e0000000 	bsr      	0x0	// 0 <alloc_skb>
  2a:	6e83      	mov      	r10, r0
  2c:	e9000048 	bez      	r0, 0xbc	// bc <ieee80211_send_nullfunc+0xbc>
  30:	d864003a 	ld.b      	r3, (r4, 0x3a)
  34:	d8240038 	ld.b      	r1, (r4, 0x38)
  38:	604c      	addu      	r1, r3
  3a:	e0000000 	bsr      	0x0	// 0 <skb_reserve>
  3e:	311e      	movi      	r1, 30
  40:	6c2b      	mov      	r0, r10
  42:	e0000000 	bsr      	0x0	// 0 <skb_put>
  46:	321e      	movi      	r2, 30
  48:	3100      	movi      	r1, 0
  4a:	6d43      	mov      	r5, r0
  4c:	3480      	movi      	r4, 128
  4e:	e0000000 	bsr      	0x0	// 0 <memset>
  52:	3380      	movi      	r3, 128
  54:	3f40      	cmpnei      	r7, 0
  56:	4482      	lsli      	r4, r4, 2
  58:	4361      	lsli      	r3, r3, 1
  5a:	c4640c20 	incf      	r3, r4, 0
  5e:	ec830048 	ori      	r4, r3, 72
  62:	e466001b 	addi      	r3, r6, 28
  66:	6c4f      	mov      	r1, r3
  68:	3206      	movi      	r2, 6
  6a:	e5690005 	addi      	r11, r9, 6
  6e:	ad80      	st.h      	r4, (r5, 0x0)
  70:	5d0e      	addi      	r0, r5, 4
  72:	b860      	st.w      	r3, (r14, 0x0)
  74:	e0000000 	bsr      	0x0	// 0 <memcpy>
  78:	3206      	movi      	r2, 6
  7a:	6c6f      	mov      	r1, r11
  7c:	e4050009 	addi      	r0, r5, 10
  80:	e0000000 	bsr      	0x0	// 0 <memcpy>
  84:	3f40      	cmpnei      	r7, 0
  86:	6c6f      	mov      	r1, r11
  88:	9860      	ld.w      	r3, (r14, 0x0)
  8a:	3206      	movi      	r2, 6
  8c:	c4230c40 	inct      	r1, r3, 0
  90:	e405000f 	addi      	r0, r5, 16
  94:	e0000000 	bsr      	0x0	// 0 <memcpy>
  98:	e9080005 	bez      	r8, 0xa2	// a2 <ieee80211_send_nullfunc+0xa2>
  9c:	ec841000 	ori      	r4, r4, 4096
  a0:	ad80      	st.h      	r4, (r5, 0x0)
  a2:	d8692076 	ld.w      	r3, (r9, 0x1d8)
  a6:	2300      	addi      	r3, 1
  a8:	6c27      	mov      	r0, r9
  aa:	dc692076 	st.w      	r3, (r9, 0x1d8)
  ae:	6cab      	mov      	r2, r10
  b0:	6c5b      	mov      	r1, r6
  b2:	e0000000 	bsr      	0x0	// 0 <ieee80211_tx_skb>
  b6:	3000      	movi      	r0, 0
  b8:	1401      	addi      	r14, r14, 4
  ba:	1498      	pop      	r4-r11, r15
  bc:	3000      	movi      	r0, 0
  be:	280b      	subi      	r0, 12
  c0:	07fc      	br      	0xb8	// b8 <ieee80211_send_nullfunc+0xb8>
  c2:	0000      	.short	0x0000
  c4:	00000000 	.long	0x00000000

Disassembly of section .text.ieee80211_rx_addba_requst:

00000000 <ieee80211_rx_addba_requst>:
   0:	14d8      	push      	r4-r11, r15
   2:	1422      	subi      	r14, r14, 8
   4:	9062      	ld.w      	r3, (r0, 0x8)
   6:	d9002000 	ld.w      	r8, (r0, 0x0)
   a:	9367      	ld.w      	r3, (r3, 0x1c)
   c:	83fe      	ld.b      	r7, (r3, 0x1e)
   e:	835d      	ld.b      	r2, (r3, 0x1d)
  10:	47e8      	lsli      	r7, r7, 8
  12:	83bc      	ld.b      	r5, (r3, 0x1c)
  14:	6dc8      	or      	r7, r2
  16:	45a8      	lsli      	r5, r5, 8
  18:	835b      	ld.b      	r2, (r3, 0x1b)
  1a:	6d48      	or      	r5, r2
  1c:	4dc2      	lsri      	r6, r5, 2
  1e:	4da6      	lsri      	r5, r5, 6
  20:	d963001a 	ld.b      	r11, (r3, 0x1a)
  24:	e9050006 	bez      	r5, 0x30	// 30 <ieee80211_rx_addba_requst+0x30>
  28:	d8680027 	ld.b      	r3, (r8, 0x27)
  2c:	654c      	cmphs      	r3, r5
  2e:	0803      	bt      	0x34	// 34 <ieee80211_rx_addba_requst+0x34>
  30:	d8a80027 	ld.b      	r5, (r8, 0x27)
  34:	119b      	lrw      	r4, 0x0	// 120 <ieee80211_rx_addba_requst+0x120>
  36:	d9402001 	ld.w      	r10, (r0, 0x4)
  3a:	d864003a 	ld.b      	r3, (r4, 0x3a)
  3e:	d8040038 	ld.b      	r0, (r4, 0x38)
  42:	600c      	addu      	r0, r3
  44:	d844003b 	ld.b      	r2, (r4, 0x3b)
  48:	d8640039 	ld.b      	r3, (r4, 0x39)
  4c:	60c8      	addu      	r3, r2
  4e:	600c      	addu      	r0, r3
  50:	201d      	addi      	r0, 30
  52:	e0000000 	bsr      	0x0	// 0 <alloc_skb>
  56:	6e43      	mov      	r9, r0
  58:	e900005b 	bez      	r0, 0x10e	// 10e <ieee80211_rx_addba_requst+0x10e>
  5c:	d864003a 	ld.b      	r3, (r4, 0x3a)
  60:	d8240038 	ld.b      	r1, (r4, 0x38)
  64:	604c      	addu      	r1, r3
  66:	e0000000 	bsr      	0x0	// 0 <skb_reserve>
  6a:	3118      	movi      	r1, 24
  6c:	6c27      	mov      	r0, r9
  6e:	e0000000 	bsr      	0x0	// 0 <skb_put>
  72:	3218      	movi      	r2, 24
  74:	3100      	movi      	r1, 0
  76:	6d03      	mov      	r4, r0
  78:	e0000000 	bsr      	0x0	// 0 <memset>
  7c:	e58a001b 	addi      	r12, r10, 28
  80:	6c73      	mov      	r1, r12
  82:	3206      	movi      	r2, 6
  84:	5c0e      	addi      	r0, r4, 4
  86:	dd8e2001 	st.w      	r12, (r14, 0x4)
  8a:	e0000000 	bsr      	0x0	// 0 <memcpy>
  8e:	e5a80005 	addi      	r13, r8, 6
  92:	3206      	movi      	r2, 6
  94:	6c77      	mov      	r1, r13
  96:	e4040009 	addi      	r0, r4, 10
  9a:	ddae2000 	st.w      	r13, (r14, 0x0)
  9e:	e0000000 	bsr      	0x0	// 0 <memcpy>
  a2:	d8681000 	ld.h      	r3, (r8, 0x0)
  a6:	e4432002 	andi      	r2, r3, 2
  aa:	d9ae2000 	ld.w      	r13, (r14, 0x0)
  ae:	d98e2001 	ld.w      	r12, (r14, 0x4)
  b2:	e9020030 	bez      	r2, 0x112	// 112 <ieee80211_rx_addba_requst+0x112>
  b6:	3206      	movi      	r2, 6
  b8:	6c77      	mov      	r1, r13
  ba:	e404000f 	addi      	r0, r4, 16
  be:	e0000000 	bsr      	0x0	// 0 <memcpy>
  c2:	33d0      	movi      	r3, 208
  c4:	46c2      	lsli      	r6, r6, 2
  c6:	ac60      	st.h      	r3, (r4, 0x0)
  c8:	3109      	movi      	r1, 9
  ca:	6c27      	mov      	r0, r9
  cc:	e4c6203c 	andi      	r6, r6, 60
  d0:	e0000000 	bsr      	0x0	// 0 <skb_put>
  d4:	ecc60002 	ori      	r6, r6, 2
  d8:	3303      	movi      	r3, 3
  da:	45a6      	lsli      	r5, r5, 6
  dc:	a478      	st.b      	r3, (r4, 0x18)
  de:	6d58      	or      	r5, r6
  e0:	3301      	movi      	r3, 1
  e2:	a479      	st.b      	r3, (r4, 0x19)
  e4:	a4bd      	st.b      	r5, (r4, 0x1d)
  e6:	3300      	movi      	r3, 0
  e8:	a4ff      	st.b      	r7, (r4, 0x1f)
  ea:	4da8      	lsri      	r5, r5, 8
  ec:	4fe8      	lsri      	r7, r7, 8
  ee:	6c67      	mov      	r1, r9
  f0:	6c23      	mov      	r0, r8
  f2:	dd64001a 	st.b      	r11, (r4, 0x1a)
  f6:	a4be      	st.b      	r5, (r4, 0x1e)
  f8:	dce40020 	st.b      	r7, (r4, 0x20)
  fc:	a47b      	st.b      	r3, (r4, 0x1b)
  fe:	a47c      	st.b      	r3, (r4, 0x1c)
 100:	e0000000 	bsr      	0x0	// 0 <ieee80211_add_customer_ie>
 104:	6ca7      	mov      	r2, r9
 106:	6c6b      	mov      	r1, r10
 108:	6c23      	mov      	r0, r8
 10a:	e0000000 	bsr      	0x0	// 0 <ieee80211_tx_skb>
 10e:	1402      	addi      	r14, r14, 8
 110:	1498      	pop      	r4-r11, r15
 112:	e4632001 	andi      	r3, r3, 1
 116:	e903ffd6 	bez      	r3, 0xc2	// c2 <ieee80211_rx_addba_requst+0xc2>
 11a:	3206      	movi      	r2, 6
 11c:	6c73      	mov      	r1, r12
 11e:	07ce      	br      	0xba	// ba <ieee80211_rx_addba_requst+0xba>
 120:	00000000 	.long	0x00000000

Disassembly of section .text.ieee80211_rx_vendor_spec_action:

00000000 <ieee80211_rx_vendor_spec_action>:
   0:	14d4      	push      	r4-r7, r15
   2:	1423      	subi      	r14, r14, 12
   4:	9062      	ld.w      	r3, (r0, 0x8)
   6:	6dc3      	mov      	r7, r0
   8:	93c7      	ld.w      	r6, (r3, 0x1c)
   a:	8679      	ld.b      	r3, (r6, 0x19)
   c:	865a      	ld.b      	r2, (r6, 0x1a)
   e:	4250      	lsli      	r2, r2, 16
  10:	4378      	lsli      	r3, r3, 24
  12:	6cc8      	or      	r3, r2
  14:	865b      	ld.b      	r2, (r6, 0x1b)
  16:	4248      	lsli      	r2, r2, 8
  18:	6cc8      	or      	r3, r2
  1a:	4b68      	lsri      	r3, r3, 8
  1c:	114b      	lrw      	r2, 0xd88332	// c8 <ieee80211_rx_vendor_spec_action+0xc8>
  1e:	648e      	cmpne      	r3, r2
  20:	080f      	bt      	0x3e	// 3e <ieee80211_rx_vendor_spec_action+0x3e>
  22:	261b      	addi      	r6, 28
  24:	6d1b      	mov      	r4, r6
  26:	6d4f      	mov      	r5, r3
  28:	9722      	ld.w      	r1, (r7, 0x8)
  2a:	8974      	ld.h      	r3, (r1, 0x28)
  2c:	2b1b      	subi      	r3, 28
  2e:	60d8      	addu      	r3, r6
  30:	60d2      	subu      	r3, r4
  32:	3b21      	cmplti      	r3, 2
  34:	0805      	bt      	0x3e	// 3e <ieee80211_rx_vendor_spec_action+0x3e>
  36:	8441      	ld.b      	r2, (r4, 0x1)
  38:	5a02      	addi      	r0, r2, 1
  3a:	64c1      	cmplt      	r0, r3
  3c:	0803      	bt      	0x42	// 42 <ieee80211_rx_vendor_spec_action+0x42>
  3e:	1403      	addi      	r14, r14, 12
  40:	1494      	pop      	r4-r7, r15
  42:	8460      	ld.b      	r3, (r4, 0x0)
  44:	eb4300dd 	cmpnei      	r3, 221
  48:	081e      	bt      	0x84	// 84 <ieee80211_rx_vendor_spec_action+0x84>
  4a:	8462      	ld.b      	r3, (r4, 0x2)
  4c:	8403      	ld.b      	r0, (r4, 0x3)
  4e:	4010      	lsli      	r0, r0, 16
  50:	4378      	lsli      	r3, r3, 24
  52:	6cc0      	or      	r3, r0
  54:	8404      	ld.b      	r0, (r4, 0x4)
  56:	4008      	lsli      	r0, r0, 8
  58:	6cc0      	or      	r3, r0
  5a:	4b68      	lsri      	r3, r3, 8
  5c:	654e      	cmpne      	r3, r5
  5e:	d9840005 	ld.b      	r12, (r4, 0x5)
  62:	0811      	bt      	0x84	// 84 <ieee80211_rx_vendor_spec_action+0x84>
  64:	3a05      	cmphsi      	r2, 6
  66:	0c0f      	bf      	0x84	// 84 <ieee80211_rx_vendor_spec_action+0x84>
  68:	eb4c0001 	cmpnei      	r12, 1
  6c:	080c      	bt      	0x84	// 84 <ieee80211_rx_vendor_spec_action+0x84>
  6e:	8467      	ld.b      	r3, (r4, 0x7)
  70:	4368      	lsli      	r3, r3, 8
  72:	8406      	ld.b      	r0, (r4, 0x6)
  74:	6cc0      	or      	r3, r0
  76:	74cf      	sexth      	r3, r3
  78:	3b43      	cmpnei      	r3, 3
  7a:	0c18      	bf      	0xaa	// aa <ieee80211_rx_vendor_spec_action+0xaa>
  7c:	3b23      	cmplti      	r3, 4
  7e:	0c07      	bf      	0x8c	// 8c <ieee80211_rx_vendor_spec_action+0x8c>
  80:	3b20      	cmplti      	r3, 1
  82:	0c0b      	bf      	0x98	// 98 <ieee80211_rx_vendor_spec_action+0x98>
  84:	5c66      	addi      	r3, r4, 2
  86:	8481      	ld.b      	r4, (r4, 0x1)
  88:	610c      	addu      	r4, r3
  8a:	07cf      	br      	0x28	// 28 <ieee80211_rx_vendor_spec_action+0x28>
  8c:	3b45      	cmpnei      	r3, 5
  8e:	0bfb      	bt      	0x84	// 84 <ieee80211_rx_vendor_spec_action+0x84>
  90:	6c1f      	mov      	r0, r7
  92:	e0000000 	bsr      	0x0	// 0 <ieee80211_rx_wakeup_frame>
  96:	07f7      	br      	0x84	// 84 <ieee80211_rx_vendor_spec_action+0x84>
  98:	9760      	ld.w      	r3, (r7, 0x0)
  9a:	d863205c 	ld.w      	r3, (r3, 0x170)
  9e:	e903fff3 	bez      	r3, 0x84	// 84 <ieee80211_rx_vendor_spec_action+0x84>
  a2:	9375      	ld.w      	r3, (r3, 0x54)
  a4:	6c1f      	mov      	r0, r7
  a6:	7bcd      	jsr      	r3
  a8:	07ee      	br      	0x84	// 84 <ieee80211_rx_vendor_spec_action+0x84>
  aa:	5c7e      	addi      	r3, r4, 8
  ac:	b861      	st.w      	r3, (r14, 0x4)
  ae:	9167      	ld.w      	r3, (r1, 0x1c)
  b0:	2a05      	subi      	r2, 6
  b2:	2309      	addi      	r3, 10
  b4:	dc4e0008 	st.b      	r2, (r14, 0x8)
  b8:	b860      	st.w      	r3, (r14, 0x0)
  ba:	6cbb      	mov      	r2, r14
  bc:	3300      	movi      	r3, 0
  be:	3121      	movi      	r1, 33
  c0:	9700      	ld.w      	r0, (r7, 0x0)
  c2:	e0000000 	bsr      	0x0	// 0 <ieee80211_iface_event>
  c6:	07df      	br      	0x84	// 84 <ieee80211_rx_vendor_spec_action+0x84>
  c8:	00d88332 	.long	0x00d88332

Disassembly of section .text.ieee80211_gen_vendor_spec_action:

00000000 <ieee80211_gen_vendor_spec_action>:
   0:	14d8      	push      	r4-r11, r15
   2:	ea890032 	lrw      	r9, 0x0	// c8 <ieee80211_gen_vendor_spec_action+0xc8>
   6:	6d83      	mov      	r6, r0
   8:	6e0f      	mov      	r8, r3
   a:	d8090038 	ld.b      	r0, (r9, 0x38)
   e:	d869003a 	ld.b      	r3, (r9, 0x3a)
  12:	600c      	addu      	r0, r3
  14:	6dcb      	mov      	r7, r2
  16:	d8690039 	ld.b      	r3, (r9, 0x39)
  1a:	d849003b 	ld.b      	r2, (r9, 0x3b)
  1e:	60c8      	addu      	r3, r2
  20:	600c      	addu      	r0, r3
  22:	d88e0024 	ld.b      	r4, (r14, 0x24)
  26:	2029      	addi      	r0, 42
  28:	6010      	addu      	r0, r4
  2a:	6d47      	mov      	r5, r1
  2c:	e0000000 	bsr      	0x0	// 0 <alloc_skb>
  30:	6e83      	mov      	r10, r0
  32:	e9000042 	bez      	r0, 0xb6	// b6 <ieee80211_gen_vendor_spec_action+0xb6>
  36:	d869003a 	ld.b      	r3, (r9, 0x3a)
  3a:	d8290038 	ld.b      	r1, (r9, 0x38)
  3e:	604c      	addu      	r1, r3
  40:	e0000000 	bsr      	0x0	// 0 <skb_reserve>
  44:	3118      	movi      	r1, 24
  46:	6c2b      	mov      	r0, r10
  48:	e0000000 	bsr      	0x0	// 0 <skb_put>
  4c:	6e43      	mov      	r9, r0
  4e:	3218      	movi      	r2, 24
  50:	3100      	movi      	r1, 0
  52:	e0000000 	bsr      	0x0	// 0 <memset>
  56:	e5660005 	addi      	r11, r6, 6
  5a:	3206      	movi      	r2, 6
  5c:	6c57      	mov      	r1, r5
  5e:	e4090003 	addi      	r0, r9, 4
  62:	e0000000 	bsr      	0x0	// 0 <memcpy>
  66:	3206      	movi      	r2, 6
  68:	6c6f      	mov      	r1, r11
  6a:	e4090009 	addi      	r0, r9, 10
  6e:	e0000000 	bsr      	0x0	// 0 <memcpy>
  72:	8e60      	ld.h      	r3, (r6, 0x0)
  74:	e4432002 	andi      	r2, r3, 2
  78:	e9020021 	bez      	r2, 0xba	// ba <ieee80211_gen_vendor_spec_action+0xba>
  7c:	3206      	movi      	r2, 6
  7e:	6c6f      	mov      	r1, r11
  80:	e409000f 	addi      	r0, r9, 16
  84:	e0000000 	bsr      	0x0	// 0 <memcpy>
  88:	33d0      	movi      	r3, 208
  8a:	dc691000 	st.h      	r3, (r9, 0x0)
  8e:	3104      	movi      	r1, 4
  90:	6c2b      	mov      	r0, r10
  92:	e0000000 	bsr      	0x0	// 0 <skb_put>
  96:	337f      	movi      	r3, 127
  98:	a060      	st.b      	r3, (r0, 0x0)
  9a:	3300      	movi      	r3, 0
  9c:	2b27      	subi      	r3, 40
  9e:	a061      	st.b      	r3, (r0, 0x1)
  a0:	3300      	movi      	r3, 0
  a2:	2b7c      	subi      	r3, 125
  a4:	a062      	st.b      	r3, (r0, 0x2)
  a6:	3332      	movi      	r3, 50
  a8:	a063      	st.b      	r3, (r0, 0x3)
  aa:	6ca3      	mov      	r2, r8
  ac:	6cd3      	mov      	r3, r4
  ae:	6c5f      	mov      	r1, r7
  b0:	6c2b      	mov      	r0, r10
  b2:	e0000000 	bsr      	0x0	// 0 <ieee80211_ie_put_hgic>
  b6:	6c2b      	mov      	r0, r10
  b8:	1498      	pop      	r4-r11, r15
  ba:	e4632001 	andi      	r3, r3, 1
  be:	e903ffe5 	bez      	r3, 0x88	// 88 <ieee80211_gen_vendor_spec_action+0x88>
  c2:	3206      	movi      	r2, 6
  c4:	6c57      	mov      	r1, r5
  c6:	07dd      	br      	0x80	// 80 <ieee80211_gen_vendor_spec_action+0x80>
  c8:	00000000 	.long	0x00000000
