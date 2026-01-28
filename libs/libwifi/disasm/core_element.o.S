
libwifi/o/core_element.o:     file format elf32-csky-little


Disassembly of section .text.ieee80211_ie_put:

00000000 <ieee80211_ie_put>:
   0:	14d3      	push      	r4-r6, r15
   2:	6d87      	mov      	r6, r1
   4:	6d4b      	mov      	r5, r2
   6:	6d0f      	mov      	r4, r3
   8:	5b42      	addi      	r2, r3, 1
   a:	9026      	ld.w      	r1, (r0, 0x18)
   c:	9069      	ld.w      	r3, (r0, 0x24)
   e:	60c6      	subu      	r3, r1
  10:	64c9      	cmplt      	r2, r3
  12:	0c0f      	bf      	0x30	// 30 <ieee80211_ie_put+0x30>
  14:	5c26      	addi      	r1, r4, 2
  16:	e0000000 	bsr      	0x0	// 0 <skb_put>
  1a:	a0c0      	st.b      	r6, (r0, 0x0)
  1c:	a081      	st.b      	r4, (r0, 0x1)
  1e:	e9050009 	bez      	r5, 0x30	// 30 <ieee80211_ie_put+0x30>
  22:	e9040007 	bez      	r4, 0x30	// 30 <ieee80211_ie_put+0x30>
  26:	6c93      	mov      	r2, r4
  28:	6c57      	mov      	r1, r5
  2a:	2001      	addi      	r0, 2
  2c:	e0000000 	bsr      	0x0	// 0 <memcpy>
  30:	3000      	movi      	r0, 0
  32:	2800      	subi      	r0, 1
  34:	1493      	pop      	r4-r6, r15

Disassembly of section .text.ieee80211_ie_get:

00000000 <ieee80211_ie_get>:
   0:	14c1      	push      	r4
   2:	ea0c0000 	movi      	r12, 0
   6:	dd830000 	st.b      	r12, (r3, 0x0)
   a:	6040      	addu      	r1, r0
   c:	c401008d 	subu      	r13, r1, r0
  10:	eb2d0001 	cmplti      	r13, 2
  14:	0807      	bt      	0x22	// 22 <ieee80211_ie_get+0x22>
  16:	d9800001 	ld.b      	r12, (r0, 0x1)
  1a:	e48c0000 	addi      	r4, r12, 1
  1e:	6751      	cmplt      	r4, r13
  20:	0803      	bt      	0x26	// 26 <ieee80211_ie_get+0x26>
  22:	3000      	movi      	r0, 0
  24:	0408      	br      	0x34	// 34 <ieee80211_ie_get+0x34>
  26:	d9a00000 	ld.b      	r13, (r0, 0x0)
  2a:	64b6      	cmpne      	r13, r2
  2c:	2001      	addi      	r0, 2
  2e:	0804      	bt      	0x36	// 36 <ieee80211_ie_get+0x36>
  30:	dd830000 	st.b      	r12, (r3, 0x0)
  34:	1481      	pop      	r4
  36:	6030      	addu      	r0, r12
  38:	07ea      	br      	0xc	// c <ieee80211_ie_get+0xc>

Disassembly of section .text.ieee80211_ie_put_ext:

00000000 <ieee80211_ie_put_ext>:
   0:	14d3      	push      	r4-r6, r15
   2:	6d87      	mov      	r6, r1
   4:	6d4b      	mov      	r5, r2
   6:	6d0f      	mov      	r4, r3
   8:	5b46      	addi      	r2, r3, 2
   a:	9026      	ld.w      	r1, (r0, 0x18)
   c:	9069      	ld.w      	r3, (r0, 0x24)
   e:	60c6      	subu      	r3, r1
  10:	64c9      	cmplt      	r2, r3
  12:	0c15      	bf      	0x3c	// 3c <ieee80211_ie_put_ext+0x3c>
  14:	5c2a      	addi      	r1, r4, 3
  16:	e0000000 	bsr      	0x0	// 0 <skb_put>
  1a:	3300      	movi      	r3, 0
  1c:	2b00      	subi      	r3, 1
  1e:	a060      	st.b      	r3, (r0, 0x0)
  20:	5c62      	addi      	r3, r4, 1
  22:	a061      	st.b      	r3, (r0, 0x1)
  24:	a0c2      	st.b      	r6, (r0, 0x2)
  26:	e9050009 	bez      	r5, 0x38	// 38 <ieee80211_ie_put_ext+0x38>
  2a:	e904000c 	bez      	r4, 0x42	// 42 <ieee80211_ie_put_ext+0x42>
  2e:	6c93      	mov      	r2, r4
  30:	6c57      	mov      	r1, r5
  32:	2002      	addi      	r0, 3
  34:	e0000000 	bsr      	0x0	// 0 <memcpy>
  38:	3000      	movi      	r0, 0
  3a:	1493      	pop      	r4-r6, r15
  3c:	3000      	movi      	r0, 0
  3e:	2800      	subi      	r0, 1
  40:	07fd      	br      	0x3a	// 3a <ieee80211_ie_put_ext+0x3a>
  42:	6c13      	mov      	r0, r4
  44:	07fb      	br      	0x3a	// 3a <ieee80211_ie_put_ext+0x3a>

Disassembly of section .text.ieee80211_ie_get_ext:

00000000 <ieee80211_ie_get_ext>:
   0:	ea0c0000 	movi      	r12, 0
   4:	dd830000 	st.b      	r12, (r3, 0x0)
   8:	6040      	addu      	r1, r0
   a:	e9000016 	bez      	r0, 0x36	// 36 <ieee80211_ie_get_ext+0x36>
   e:	6440      	cmphs      	r0, r1
  10:	0c03      	bf      	0x16	// 16 <ieee80211_ie_get_ext+0x16>
  12:	3000      	movi      	r0, 0
  14:	0411      	br      	0x36	// 36 <ieee80211_ie_get_ext+0x36>
  16:	d9800000 	ld.b      	r12, (r0, 0x0)
  1a:	eb4c00ff 	cmpnei      	r12, 255
  1e:	d9800001 	ld.b      	r12, (r0, 0x1)
  22:	080b      	bt      	0x38	// 38 <ieee80211_ie_get_ext+0x38>
  24:	d9a00002 	ld.b      	r13, (r0, 0x2)
  28:	64b6      	cmpne      	r13, r2
  2a:	0807      	bt      	0x38	// 38 <ieee80211_ie_get_ext+0x38>
  2c:	e58c1000 	subi      	r12, r12, 1
  30:	dd830000 	st.b      	r12, (r3, 0x0)
  34:	2002      	addi      	r0, 3
  36:	783c      	jmp      	r15
  38:	e58c0001 	addi      	r12, r12, 2
  3c:	6030      	addu      	r0, r12
  3e:	07e6      	br      	0xa	// a <ieee80211_ie_get_ext+0xa>

Disassembly of section .text.ieee80211_ie_put_hgic:

00000000 <ieee80211_ie_put_hgic>:
   0:	14d3      	push      	r4-r6, r15
   2:	6d47      	mov      	r5, r1
   4:	6d8b      	mov      	r6, r2
   6:	6d0f      	mov      	r4, r3
   8:	5b5a      	addi      	r2, r3, 7
   a:	9026      	ld.w      	r1, (r0, 0x18)
   c:	9069      	ld.w      	r3, (r0, 0x24)
   e:	60c6      	subu      	r3, r1
  10:	64c9      	cmplt      	r2, r3
  12:	0c21      	bf      	0x54	// 54 <ieee80211_ie_put_hgic+0x54>
  14:	5c3e      	addi      	r1, r4, 8
  16:	e0000000 	bsr      	0x0	// 0 <skb_put>
  1a:	3300      	movi      	r3, 0
  1c:	2b22      	subi      	r3, 35
  1e:	a060      	st.b      	r3, (r0, 0x0)
  20:	5c76      	addi      	r3, r4, 6
  22:	a061      	st.b      	r3, (r0, 0x1)
  24:	3300      	movi      	r3, 0
  26:	2b27      	subi      	r3, 40
  28:	a062      	st.b      	r3, (r0, 0x2)
  2a:	3300      	movi      	r3, 0
  2c:	2b7c      	subi      	r3, 125
  2e:	a063      	st.b      	r3, (r0, 0x3)
  30:	3332      	movi      	r3, 50
  32:	a064      	st.b      	r3, (r0, 0x4)
  34:	a0a6      	st.b      	r5, (r0, 0x6)
  36:	3301      	movi      	r3, 1
  38:	4da8      	lsri      	r5, r5, 8
  3a:	a065      	st.b      	r3, (r0, 0x5)
  3c:	a0a7      	st.b      	r5, (r0, 0x7)
  3e:	e9060009 	bez      	r6, 0x50	// 50 <ieee80211_ie_put_hgic+0x50>
  42:	e904000c 	bez      	r4, 0x5a	// 5a <ieee80211_ie_put_hgic+0x5a>
  46:	6c93      	mov      	r2, r4
  48:	6c5b      	mov      	r1, r6
  4a:	2007      	addi      	r0, 8
  4c:	e0000000 	bsr      	0x0	// 0 <memcpy>
  50:	3000      	movi      	r0, 0
  52:	1493      	pop      	r4-r6, r15
  54:	3000      	movi      	r0, 0
  56:	2800      	subi      	r0, 1
  58:	07fd      	br      	0x52	// 52 <ieee80211_ie_put_hgic+0x52>
  5a:	6c13      	mov      	r0, r4
  5c:	07fb      	br      	0x52	// 52 <ieee80211_ie_put_hgic+0x52>

Disassembly of section .text.ieee80211_ie_get_hgic:

00000000 <ieee80211_ie_get_hgic>:
   0:	14c2      	push      	r4-r5
   2:	ea0c0000 	movi      	r12, 0
   6:	dd830000 	st.b      	r12, (r3, 0x0)
   a:	6040      	addu      	r1, r0
   c:	109b      	lrw      	r4, 0xd8833201	// 78 <ieee80211_ie_get_hgic+0x78>
   e:	c401008c 	subu      	r12, r1, r0
  12:	eb2c0001 	cmplti      	r12, 2
  16:	0807      	bt      	0x24	// 24 <ieee80211_ie_get_hgic+0x24>
  18:	d9a00001 	ld.b      	r13, (r0, 0x1)
  1c:	e4ad0000 	addi      	r5, r13, 1
  20:	6715      	cmplt      	r5, r12
  22:	0803      	bt      	0x28	// 28 <ieee80211_ie_get_hgic+0x28>
  24:	3000      	movi      	r0, 0
  26:	0424      	br      	0x6e	// 6e <ieee80211_ie_get_hgic+0x6e>
  28:	d9800000 	ld.b      	r12, (r0, 0x0)
  2c:	eb4c00dd 	cmpnei      	r12, 221
  30:	0820      	bt      	0x70	// 70 <ieee80211_ie_get_hgic+0x70>
  32:	eb0d0004 	cmphsi      	r13, 5
  36:	0c1d      	bf      	0x70	// 70 <ieee80211_ie_get_hgic+0x70>
  38:	d9800002 	ld.b      	r12, (r0, 0x2)
  3c:	80a3      	ld.b      	r5, (r0, 0x3)
  3e:	45b0      	lsli      	r5, r5, 16
  40:	c70c482c 	lsli      	r12, r12, 24
  44:	6f14      	or      	r12, r5
  46:	80a5      	ld.b      	r5, (r0, 0x5)
  48:	6f14      	or      	r12, r5
  4a:	80a4      	ld.b      	r5, (r0, 0x4)
  4c:	45a8      	lsli      	r5, r5, 8
  4e:	6f14      	or      	r12, r5
  50:	6532      	cmpne      	r12, r4
  52:	080f      	bt      	0x70	// 70 <ieee80211_ie_get_hgic+0x70>
  54:	d9800007 	ld.b      	r12, (r0, 0x7)
  58:	c50c482c 	lsli      	r12, r12, 8
  5c:	80a6      	ld.b      	r5, (r0, 0x6)
  5e:	6f14      	or      	r12, r5
  60:	670a      	cmpne      	r2, r12
  62:	0807      	bt      	0x70	// 70 <ieee80211_ie_get_hgic+0x70>
  64:	e5ad1005 	subi      	r13, r13, 6
  68:	dda30000 	st.b      	r13, (r3, 0x0)
  6c:	2007      	addi      	r0, 8
  6e:	1482      	pop      	r4-r5
  70:	2001      	addi      	r0, 2
  72:	6034      	addu      	r0, r13
  74:	07cd      	br      	0xe	// e <ieee80211_ie_get_hgic+0xe>
  76:	0000      	.short	0x0000
  78:	d8833201 	.long	0xd8833201

Disassembly of section .text.ieee80211_ie_add_ssid:

00000000 <ieee80211_ie_add_ssid>:
   0:	14d3      	push      	r4-r6, r15
   2:	6d43      	mov      	r5, r0
   4:	6d07      	mov      	r4, r1
   6:	6d8b      	mov      	r6, r2
   8:	6c07      	mov      	r0, r1
   a:	e9010004 	bez      	r1, 0x12	// 12 <ieee80211_ie_add_ssid+0x12>
   e:	e0000000 	bsr      	0x0	// 0 <strlen>
  12:	3100      	movi      	r1, 0
  14:	3e40      	cmpnei      	r6, 0
  16:	c4010c40 	inct      	r0, r1, 0
  1a:	74c0      	zextb      	r3, r0
  1c:	6c93      	mov      	r2, r4
  1e:	6c17      	mov      	r0, r5
  20:	e0000000 	bsr      	0x0	// 0 <ieee80211_ie_add_ssid>
  24:	1493      	pop      	r4-r6, r15

Disassembly of section .text.ieee80211_ie_add_dsparam:

00000000 <ieee80211_ie_add_dsparam>:
   0:	14d0      	push      	r15
   2:	1421      	subi      	r14, r14, 4
   4:	dc2e0003 	st.b      	r1, (r14, 0x3)
   8:	3301      	movi      	r3, 1
   a:	e44e0002 	addi      	r2, r14, 3
   e:	3103      	movi      	r1, 3
  10:	e0000000 	bsr      	0x0	// 0 <ieee80211_ie_add_dsparam>
  14:	1401      	addi      	r14, r14, 4
  16:	1490      	pop      	r15

Disassembly of section .text.ieee80211_ie_add_supported_rates:

00000000 <ieee80211_ie_add_supported_rates>:
   0:	14d2      	push      	r4-r5, r15
   2:	d840202b 	ld.w      	r2, (r0, 0xac)
   6:	6d43      	mov      	r5, r0
   8:	8265      	ld.b      	r3, (r2, 0x5)
   a:	3b08      	cmphsi      	r3, 9
   c:	6d07      	mov      	r4, r1
   e:	9243      	ld.w      	r2, (r2, 0xc)
  10:	0c12      	bf      	0x34	// 34 <ieee80211_ie_add_supported_rates+0x34>
  12:	3308      	movi      	r3, 8
  14:	3101      	movi      	r1, 1
  16:	6c13      	mov      	r0, r4
  18:	e0000000 	bsr      	0x0	// 0 <ieee80211_ie_add_supported_rates>
  1c:	d845202b 	ld.w      	r2, (r5, 0xac)
  20:	3132      	movi      	r1, 50
  22:	8265      	ld.b      	r3, (r2, 0x5)
  24:	2b07      	subi      	r3, 8
  26:	9243      	ld.w      	r2, (r2, 0xc)
  28:	74cc      	zextb      	r3, r3
  2a:	2207      	addi      	r2, 8
  2c:	6c13      	mov      	r0, r4
  2e:	e0000000 	bsr      	0x0	// 0 <ieee80211_ie_add_supported_rates>
  32:	1492      	pop      	r4-r5, r15
  34:	3101      	movi      	r1, 1
  36:	07fb      	br      	0x2c	// 2c <ieee80211_ie_add_supported_rates+0x2c>

Disassembly of section .text.ieee80211_ie_add_bss_period:

00000000 <ieee80211_ie_add_bss_period>:
   0:	14d2      	push      	r4-r5, r15
   2:	6d07      	mov      	r4, r1
   4:	3105      	movi      	r1, 5
   6:	6d4b      	mov      	r5, r2
   8:	e0000000 	bsr      	0x0	// 0 <skb_put>
   c:	335a      	movi      	r3, 90
   e:	a060      	st.b      	r3, (r0, 0x0)
  10:	a082      	st.b      	r4, (r0, 0x2)
  12:	3303      	movi      	r3, 3
  14:	4c88      	lsri      	r4, r4, 8
  16:	a061      	st.b      	r3, (r0, 0x1)
  18:	a083      	st.b      	r4, (r0, 0x3)
  1a:	a0a4      	st.b      	r5, (r0, 0x4)
  1c:	1492      	pop      	r4-r5, r15

Disassembly of section .text.ieee80211_ie_add_ht_capabilities:

00000000 <ieee80211_ie_add_ht_capabilities>:
   0:	14d1      	push      	r4, r15
   2:	6d03      	mov      	r4, r0
   4:	6c07      	mov      	r0, r1
   6:	d864202b 	ld.w      	r3, (r4, 0xac)
   a:	835a      	ld.b      	r2, (r3, 0x1a)
   c:	3a43      	cmpnei      	r2, 3
   e:	0812      	bt      	0x32	// 32 <ieee80211_ie_add_ht_capabilities+0x32>
  10:	8326      	ld.b      	r1, (r3, 0x6)
  12:	2101      	addi      	r1, 2
  14:	e0000000 	bsr      	0x0	// 0 <skb_put>
  18:	332d      	movi      	r3, 45
  1a:	a060      	st.b      	r3, (r0, 0x0)
  1c:	d864202b 	ld.w      	r3, (r4, 0xac)
  20:	8366      	ld.b      	r3, (r3, 0x6)
  22:	a061      	st.b      	r3, (r0, 0x1)
  24:	d864202b 	ld.w      	r3, (r4, 0xac)
  28:	2001      	addi      	r0, 2
  2a:	8346      	ld.b      	r2, (r3, 0x6)
  2c:	9322      	ld.w      	r1, (r3, 0x8)
  2e:	e0000000 	bsr      	0x0	// 0 <memcpy>
  32:	1491      	pop      	r4, r15

Disassembly of section .text.ieee80211_ie_add_ht_operation:

00000000 <ieee80211_ie_add_ht_operation>:
   0:	14d1      	push      	r4, r15
   2:	6d03      	mov      	r4, r0
   4:	6c07      	mov      	r0, r1
   6:	d864202b 	ld.w      	r3, (r4, 0xac)
   a:	835a      	ld.b      	r2, (r3, 0x1a)
   c:	3a43      	cmpnei      	r2, 3
   e:	0819      	bt      	0x40	// 40 <ieee80211_ie_add_ht_operation+0x40>
  10:	8327      	ld.b      	r1, (r3, 0x7)
  12:	2101      	addi      	r1, 2
  14:	e0000000 	bsr      	0x0	// 0 <skb_put>
  18:	333d      	movi      	r3, 61
  1a:	a060      	st.b      	r3, (r0, 0x0)
  1c:	d844202b 	ld.w      	r2, (r4, 0xac)
  20:	5866      	addi      	r3, r0, 2
  22:	8247      	ld.b      	r2, (r2, 0x7)
  24:	a041      	st.b      	r2, (r0, 0x1)
  26:	d824202b 	ld.w      	r1, (r4, 0xac)
  2a:	6c0f      	mov      	r0, r3
  2c:	8147      	ld.b      	r2, (r1, 0x7)
  2e:	9124      	ld.w      	r1, (r1, 0x10)
  30:	e0000000 	bsr      	0x0	// 0 <memcpy>
  34:	d844202b 	ld.w      	r2, (r4, 0xac)
  38:	8433      	ld.b      	r1, (r4, 0x13)
  3a:	8247      	ld.b      	r2, (r2, 0x7)
  3c:	d4400021 	str.b      	r1, (r0, r2 << 0)
  40:	1491      	pop      	r4, r15

Disassembly of section .text.ieee80211_ie_add_wpa:

00000000 <ieee80211_ie_add_wpa>:
   0:	14d1      	push      	r4, r15
   2:	1421      	subi      	r14, r14, 4
   4:	3300      	movi      	r3, 0
   6:	b860      	st.w      	r3, (r14, 0x0)
   8:	d860203f 	ld.w      	r3, (r0, 0xfc)
   c:	3b42      	cmpnei      	r3, 2
   e:	6d07      	mov      	r4, r1
  10:	0810      	bt      	0x30	// 30 <ieee80211_ie_add_wpa+0x30>
  12:	900d      	ld.w      	r0, (r0, 0x34)
  14:	e900000e 	bez      	r0, 0x30	// 30 <ieee80211_ie_add_wpa+0x30>
  18:	6c7b      	mov      	r1, r14
  1a:	e0000000 	bsr      	0x0	// 0 <wpa_auth_get_wpa_ie>
  1e:	6c43      	mov      	r1, r0
  20:	e9000008 	bez      	r0, 0x30	// 30 <ieee80211_ie_add_wpa+0x30>
  24:	9840      	ld.w      	r2, (r14, 0x0)
  26:	e9020005 	bez      	r2, 0x30	// 30 <ieee80211_ie_add_wpa+0x30>
  2a:	6c13      	mov      	r0, r4
  2c:	e0000000 	bsr      	0x0	// 0 <skb_put_data>
  30:	1401      	addi      	r14, r14, 4
  32:	1491      	pop      	r4, r15

Disassembly of section .text.ieee80211_ie_add_wmm:

00000000 <ieee80211_ie_add_wmm>:
   0:	14d3      	push      	r4-r6, r15
   2:	3a40      	cmpnei      	r2, 0
   4:	3307      	movi      	r3, 7
   6:	3518      	movi      	r5, 24
   8:	c4a30c20 	incf      	r5, r3, 0
   c:	6d83      	mov      	r6, r0
   e:	6c07      	mov      	r0, r1
  10:	5d26      	addi      	r1, r5, 2
  12:	6d0b      	mov      	r4, r2
  14:	e0000000 	bsr      	0x0	// 0 <skb_put>
  18:	3300      	movi      	r3, 0
  1a:	2b22      	subi      	r3, 35
  1c:	a060      	st.b      	r3, (r0, 0x0)
  1e:	3350      	movi      	r3, 80
  20:	a063      	st.b      	r3, (r0, 0x3)
  22:	3300      	movi      	r3, 0
  24:	2b0d      	subi      	r3, 14
  26:	a064      	st.b      	r3, (r0, 0x4)
  28:	3c40      	cmpnei      	r4, 0
  2a:	3302      	movi      	r3, 2
  2c:	a065      	st.b      	r3, (r0, 0x5)
  2e:	3200      	movi      	r2, 0
  30:	c4000503 	mvc      	r3
  34:	a0a1      	st.b      	r5, (r0, 0x1)
  36:	a042      	st.b      	r2, (r0, 0x2)
  38:	a066      	st.b      	r3, (r0, 0x6)
  3a:	8665      	ld.b      	r3, (r6, 0x5)
  3c:	e4632020 	andi      	r3, r3, 32
  40:	3b40      	cmpnei      	r3, 0
  42:	31ff      	movi      	r1, 255
  44:	3301      	movi      	r3, 1
  46:	c4610c20 	incf      	r3, r1, 0
  4a:	a067      	st.b      	r3, (r0, 0x7)
  4c:	d8660112 	ld.b      	r3, (r6, 0x112)
  50:	e463200f 	andi      	r3, r3, 15
  54:	a068      	st.b      	r3, (r0, 0x8)
  56:	e9040008 	bez      	r4, 0x66	// 66 <ieee80211_ie_add_wmm+0x66>
  5a:	a049      	st.b      	r2, (r0, 0x9)
  5c:	6c53      	mov      	r1, r4
  5e:	3210      	movi      	r2, 16
  60:	2009      	addi      	r0, 10
  62:	e0000000 	bsr      	0x0	// 0 <memcpy>
  66:	1493      	pop      	r4-r6, r15

Disassembly of section .text.ieee80211_ie_add_wakeup_reason:

00000000 <ieee80211_ie_add_wakeup_reason>:
   0:	14d0      	push      	r15
   2:	1421      	subi      	r14, r14, 4
   4:	6c07      	mov      	r0, r1
   6:	dc4e0003 	st.b      	r2, (r14, 0x3)
   a:	e9020008 	bez      	r2, 0x1a	// 1a <ieee80211_ie_add_wakeup_reason+0x1a>
   e:	3301      	movi      	r3, 1
  10:	e44e0002 	addi      	r2, r14, 3
  14:	3100      	movi      	r1, 0
  16:	e0000000 	bsr      	0x0	// 0 <ieee80211_ie_add_wakeup_reason>
  1a:	1401      	addi      	r14, r14, 4
  1c:	1490      	pop      	r15

Disassembly of section .text.ieee80211_ie_add_p2p_element:

00000000 <ieee80211_ie_add_p2p_element>:
   0:	14d1      	push      	r4, r15
   2:	1421      	subi      	r14, r14, 4
   4:	9069      	ld.w      	r3, (r0, 0x24)
   6:	d9802006 	ld.w      	r12, (r0, 0x18)
   a:	6d07      	mov      	r4, r1
   c:	60f2      	subu      	r3, r12
   e:	5a22      	addi      	r1, r2, 1
  10:	64c5      	cmplt      	r1, r3
  12:	0c1b      	bf      	0x48	// 48 <ieee80211_ie_add_p2p_element+0x48>
  14:	5a26      	addi      	r1, r2, 2
  16:	b840      	st.w      	r2, (r14, 0x0)
  18:	e0000000 	bsr      	0x0	// 0 <skb_put>
  1c:	3300      	movi      	r3, 0
  1e:	2b22      	subi      	r3, 35
  20:	a060      	st.b      	r3, (r0, 0x0)
  22:	3350      	movi      	r3, 80
  24:	a062      	st.b      	r3, (r0, 0x2)
  26:	336f      	movi      	r3, 111
  28:	a063      	st.b      	r3, (r0, 0x3)
  2a:	3300      	movi      	r3, 0
  2c:	2b65      	subi      	r3, 102
  2e:	9840      	ld.w      	r2, (r14, 0x0)
  30:	a064      	st.b      	r3, (r0, 0x4)
  32:	3309      	movi      	r3, 9
  34:	a041      	st.b      	r2, (r0, 0x1)
  36:	a065      	st.b      	r3, (r0, 0x5)
  38:	e9040008 	bez      	r4, 0x48	// 48 <ieee80211_ie_add_p2p_element+0x48>
  3c:	e9020006 	bez      	r2, 0x48	// 48 <ieee80211_ie_add_p2p_element+0x48>
  40:	6c53      	mov      	r1, r4
  42:	2005      	addi      	r0, 6
  44:	e0000000 	bsr      	0x0	// 0 <memcpy>
  48:	1401      	addi      	r14, r14, 4
  4a:	1491      	pop      	r4, r15
