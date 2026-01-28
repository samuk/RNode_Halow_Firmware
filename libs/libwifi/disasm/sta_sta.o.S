
libwifi/o/sta_sta.o:     file format elf32-csky-little


Disassembly of section .text.ieee80211_sta_lookup_rasta:

00000000 <ieee80211_sta_lookup_rasta>:
   0:	8120      	ld.b      	r1, (r1, 0x0)
   2:	e4212001 	andi      	r1, r1, 1
   6:	d8402063 	ld.w      	r2, (r0, 0x18c)
   a:	e9010008 	bez      	r1, 0x1a	// 1a <ieee80211_sta_lookup_rasta+0x1a>
   e:	d8220025 	ld.b      	r1, (r2, 0x25)
  12:	e4212008 	andi      	r1, r1, 8
  16:	e901000c 	bez      	r1, 0x2e	// 2e <ieee80211_sta_lookup_rasta+0x2e>
  1a:	d8220025 	ld.b      	r1, (r2, 0x25)
  1e:	e4212004 	andi      	r1, r1, 4
  22:	3000      	movi      	r0, 0
  24:	3940      	cmpnei      	r1, 0
  26:	c4400c20 	incf      	r2, r0, 0
  2a:	b340      	st.w      	r2, (r3, 0x0)
  2c:	783c      	jmp      	r15
  2e:	3000      	movi      	r0, 0
  30:	2800      	subi      	r0, 1
  32:	07fd      	br      	0x2c	// 2c <ieee80211_sta_lookup_rasta+0x2c>

Disassembly of section .text.ieee80211_sta_build_hdr:

00000000 <ieee80211_sta_build_hdr>:
   0:	14d5      	push      	r4-r8, r15
   2:	9167      	ld.w      	r3, (r1, 0x1c)
   4:	6d47      	mov      	r5, r1
   6:	d8202063 	ld.w      	r1, (r0, 0x18c)
   a:	6e03      	mov      	r8, r0
   c:	d8010025 	ld.b      	r0, (r1, 0x25)
  10:	6d0b      	mov      	r4, r2
  12:	e4002008 	andi      	r0, r0, 8
  16:	834c      	ld.b      	r2, (r3, 0xc)
  18:	4248      	lsli      	r2, r2, 8
  1a:	836d      	ld.b      	r3, (r3, 0xd)
  1c:	6c8c      	or      	r2, r3
  1e:	e9200005 	bnez      	r0, 0x28	// 28 <ieee80211_sta_build_hdr+0x28>
  22:	eb42888e 	cmpnei      	r2, 34958
  26:	082a      	bt      	0x7a	// 7a <ieee80211_sta_build_hdr+0x7a>
  28:	d9880005 	ld.b      	r12, (r8, 0x5)
  2c:	e58c2008 	andi      	r12, r12, 8
  30:	8c60      	ld.h      	r3, (r4, 0x0)
  32:	5c0e      	addi      	r0, r4, 4
  34:	211b      	addi      	r1, 28
  36:	e4e40009 	addi      	r7, r4, 10
  3a:	e4c4000f 	addi      	r6, r4, 16
  3e:	e90c001f 	bez      	r12, 0x7c	// 7c <ieee80211_sta_build_hdr+0x7c>
  42:	eb42888e 	cmpnei      	r2, 34958
  46:	0c1b      	bf      	0x7c	// 7c <ieee80211_sta_build_hdr+0x7c>
  48:	ec630300 	ori      	r3, r3, 768
  4c:	ac60      	st.h      	r3, (r4, 0x0)
  4e:	3206      	movi      	r2, 6
  50:	e0000000 	bsr      	0x0	// 0 <memcpy>
  54:	3206      	movi      	r2, 6
  56:	c4480021 	addu      	r1, r8, r2
  5a:	6c1f      	mov      	r0, r7
  5c:	e0000000 	bsr      	0x0	// 0 <memcpy>
  60:	3206      	movi      	r2, 6
  62:	9527      	ld.w      	r1, (r5, 0x1c)
  64:	6c1b      	mov      	r0, r6
  66:	e0000000 	bsr      	0x0	// 0 <memcpy>
  6a:	9527      	ld.w      	r1, (r5, 0x1c)
  6c:	3206      	movi      	r2, 6
  6e:	6048      	addu      	r1, r2
  70:	e4040017 	addi      	r0, r4, 24
  74:	e0000000 	bsr      	0x0	// 0 <memcpy>
  78:	301e      	movi      	r0, 30
  7a:	1495      	pop      	r4-r8, r15
  7c:	ec630100 	ori      	r3, r3, 256
  80:	ac60      	st.h      	r3, (r4, 0x0)
  82:	3206      	movi      	r2, 6
  84:	e0000000 	bsr      	0x0	// 0 <memcpy>
  88:	3206      	movi      	r2, 6
  8a:	9527      	ld.w      	r1, (r5, 0x1c)
  8c:	6048      	addu      	r1, r2
  8e:	6c1f      	mov      	r0, r7
  90:	e0000000 	bsr      	0x0	// 0 <memcpy>
  94:	3206      	movi      	r2, 6
  96:	9527      	ld.w      	r1, (r5, 0x1c)
  98:	6c1b      	mov      	r0, r6
  9a:	e0000000 	bsr      	0x0	// 0 <memcpy>
  9e:	3018      	movi      	r0, 24
  a0:	07ed      	br      	0x7a	// 7a <ieee80211_sta_build_hdr+0x7a>

Disassembly of section .text.ieee80211_sta_rx_mgmt:

00000000 <ieee80211_sta_rx_mgmt>:
   0:	14d1      	push      	r4, r15
   2:	9022      	ld.w      	r1, (r0, 0x8)
   4:	6d03      	mov      	r4, r0
   6:	9167      	ld.w      	r3, (r1, 0x1c)
   8:	8b60      	ld.h      	r3, (r3, 0x0)
   a:	e46320f3 	andi      	r3, r3, 243
   e:	eb430080 	cmpnei      	r3, 128
  12:	0c35      	bf      	0x7c	// 7c <ieee80211_sta_rx_mgmt+0x7c>
  14:	eb030080 	cmphsi      	r3, 129
  18:	080d      	bt      	0x32	// 32 <ieee80211_sta_rx_mgmt+0x32>
  1a:	eb430030 	cmpnei      	r3, 48
  1e:	0c21      	bf      	0x60	// 60 <ieee80211_sta_rx_mgmt+0x60>
  20:	eb430050 	cmpnei      	r3, 80
  24:	0c20      	bf      	0x64	// 64 <ieee80211_sta_rx_mgmt+0x64>
  26:	3b50      	cmpnei      	r3, 16
  28:	080e      	bt      	0x44	// 44 <ieee80211_sta_rx_mgmt+0x44>
  2a:	3100      	movi      	r1, 0
  2c:	e0000000 	bsr      	0x0	// 0 <ieee80211_sta_rx_assoc_resp>
  30:	040a      	br      	0x44	// 44 <ieee80211_sta_rx_mgmt+0x44>
  32:	eb4300b0 	cmpnei      	r3, 176
  36:	0c1d      	bf      	0x70	// 70 <ieee80211_sta_rx_mgmt+0x70>
  38:	eb0300b0 	cmphsi      	r3, 177
  3c:	0809      	bt      	0x4e	// 4e <ieee80211_sta_rx_mgmt+0x4e>
  3e:	eb4300a0 	cmpnei      	r3, 160
  42:	0c14      	bf      	0x6a	// 6a <ieee80211_sta_rx_mgmt+0x6a>
  44:	9402      	ld.w      	r0, (r4, 0x8)
  46:	e0000000 	bsr      	0x0	// 0 <kfree_skb>
  4a:	3000      	movi      	r0, 0
  4c:	1491      	pop      	r4, r15
  4e:	eb4300c0 	cmpnei      	r3, 192
  52:	0c12      	bf      	0x76	// 76 <ieee80211_sta_rx_mgmt+0x76>
  54:	eb4300d0 	cmpnei      	r3, 208
  58:	0bf6      	bt      	0x44	// 44 <ieee80211_sta_rx_action+0x44>
  5a:	e0000000 	bsr      	0x0	// 0 <ieee80211_sta_rx_action>
  5e:	07f3      	br      	0x44	// 44 <ieee80211_sta_rx_mgmt+0x44>
  60:	3101      	movi      	r1, 1
  62:	07e5      	br      	0x2c	// 2c <ieee80211_sta_rx_mgmt+0x2c>
  64:	e0000000 	bsr      	0x0	// 0 <ieee80211_sta_rx_probe_resp>
  68:	07ee      	br      	0x44	// 44 <ieee80211_sta_rx_disassoc+0x44>
  6a:	e0000000 	bsr      	0x0	// 0 <ieee80211_sta_rx_disassoc>
  6e:	07eb      	br      	0x44	// 44 <ieee80211_sta_rx_auth+0x44>
  70:	e0000000 	bsr      	0x0	// 0 <ieee80211_sta_rx_auth>
  74:	07e8      	br      	0x44	// 44 <ieee80211_sta_rx_deauth+0x44>
  76:	e0000000 	bsr      	0x0	// 0 <ieee80211_sta_rx_deauth>
  7a:	07e5      	br      	0x44	// 44 <ieee80211_sta_rx_mgmt+0x44>
  7c:	9000      	ld.w      	r0, (r0, 0x0)
  7e:	9075      	ld.w      	r3, (r0, 0x54)
  80:	e903ffe2 	bez      	r3, 0x44	// 44 <ieee80211_sta_rx_mgmt+0x44>
  84:	7bcd      	jsr      	r3
  86:	07df      	br      	0x44	// 44 <ieee80211_sta_rx_mgmt+0x44>

Disassembly of section .text.ieee80211_sta_rx_ctl:

00000000 <ieee80211_sta_rx_ctl>:
   0:	14d0      	push      	r15
   2:	9002      	ld.w      	r0, (r0, 0x8)
   4:	e0000000 	bsr      	0x0	// 0 <kfree_skb>
   8:	3000      	movi      	r0, 0
   a:	1490      	pop      	r15

Disassembly of section .text.ieee80211_sta_rx_ext:

00000000 <ieee80211_sta_rx_ext>:
   0:	14d1      	push      	r4, r15
   2:	9022      	ld.w      	r1, (r0, 0x8)
   4:	6d03      	mov      	r4, r0
   6:	9167      	ld.w      	r3, (r1, 0x1c)
   8:	8b60      	ld.h      	r3, (r3, 0x0)
   a:	e46320f3 	andi      	r3, r3, 243
   e:	3b50      	cmpnei      	r3, 16
  10:	0806      	bt      	0x1c	// 1c <ieee80211_sta_rx_ext+0x1c>
  12:	9000      	ld.w      	r0, (r0, 0x0)
  14:	9075      	ld.w      	r3, (r0, 0x54)
  16:	e9030003 	bez      	r3, 0x1c	// 1c <ieee80211_sta_rx_ext+0x1c>
  1a:	7bcd      	jsr      	r3
  1c:	9402      	ld.w      	r0, (r4, 0x8)
  1e:	e0000000 	bsr      	0x0	// 0 <kfree_skb>
  22:	3000      	movi      	r0, 0
  24:	1491      	pop      	r4, r15

Disassembly of section .text.ieee80211_sta_addsta:

00000000 <ieee80211_sta_addsta>:
   0:	14d0      	push      	r15
   2:	d8602063 	ld.w      	r3, (r0, 0x18c)
   6:	313b      	movi      	r1, 59
   8:	dc03202a 	st.w      	r0, (r3, 0xa8)
   c:	8044      	ld.b      	r2, (r0, 0x4)
   e:	d8631074 	ld.h      	r3, (r3, 0xe8)
  12:	2a00      	subi      	r2, 1
  14:	d8002029 	ld.w      	r0, (r0, 0xa4)
  18:	e0000000 	bsr      	0x0	// 0 <lmac_ioctl>
  1c:	3000      	movi      	r0, 0
  1e:	1490      	pop      	r15

Disassembly of section .text.ieee80211_sta_delsta:

00000000 <ieee80211_sta_delsta>:
   0:	14d0      	push      	r15
   2:	d8602063 	ld.w      	r3, (r0, 0x18c)
   6:	3200      	movi      	r2, 0
   8:	dc431074 	st.h      	r2, (r3, 0xe8)
   c:	8044      	ld.b      	r2, (r0, 0x4)
   e:	3300      	movi      	r3, 0
  10:	2a00      	subi      	r2, 1
  12:	313b      	movi      	r1, 59
  14:	d8002029 	ld.w      	r0, (r0, 0xa4)
  18:	e0000000 	bsr      	0x0	// 0 <lmac_ioctl>
  1c:	3000      	movi      	r0, 0
  1e:	1490      	pop      	r15

Disassembly of section .text.ieee80211_sta_rx_h_check:

00000000 <ieee80211_sta_rx_h_check>:
   0:	14d2      	push      	r4-r5, r15
   2:	1431      	subi      	r14, r14, 68
   4:	9060      	ld.w      	r3, (r0, 0x0)
   6:	6d43      	mov      	r5, r0
   8:	d8632063 	ld.w      	r3, (r3, 0x18c)
   c:	d8630025 	ld.b      	r3, (r3, 0x25)
  10:	e4632008 	andi      	r3, r3, 8
  14:	e9230052 	bnez      	r3, 0xb8	// b8 <ieee80211_sta_rx_h_check+0xb8>
  18:	9002      	ld.w      	r0, (r0, 0x8)
  1a:	9087      	ld.w      	r4, (r0, 0x1c)
  1c:	8c60      	ld.h      	r3, (r4, 0x0)
  1e:	e443200c 	andi      	r2, r3, 12
  22:	3a48      	cmpnei      	r2, 8
  24:	0c06      	bf      	0x30	// 30 <ieee80211_sta_rx_h_check+0x30>
  26:	e44320fc 	andi      	r2, r3, 252
  2a:	eb4200a4 	cmpnei      	r2, 164
  2e:	0845      	bt      	0xb8	// b8 <ieee80211_sta_rx_h_check+0xb8>
  30:	e463204c 	andi      	r3, r3, 76
  34:	3b48      	cmpnei      	r3, 8
  36:	0c0a      	bf      	0x4a	// 4a <ieee80211_sta_rx_h_check+0x4a>
  38:	8464      	ld.b      	r3, (r4, 0x4)
  3a:	e4632001 	andi      	r3, r3, 1
  3e:	e903000d 	bez      	r3, 0x58	// 58 <ieee80211_sta_rx_h_check+0x58>
  42:	3000      	movi      	r0, 0
  44:	2800      	subi      	r0, 1
  46:	1411      	addi      	r14, r14, 68
  48:	1492      	pop      	r4-r5, r15
  4a:	e0000000 	bsr      	0x0	// 0 <ieee80211_get_ether_type>
  4e:	eb40888e 	cmpnei      	r0, 34958
  52:	0bf3      	bt      	0x38	// 38 <ieee80211_sta_rx_h_check+0x38>
  54:	3000      	movi      	r0, 0
  56:	07f8      	br      	0x46	// 46 <ieee80211_sta_rx_h_check+0x46>
  58:	e4240009 	addi      	r1, r4, 10
  5c:	9500      	ld.w      	r0, (r5, 0x0)
  5e:	3203      	movi      	r2, 3
  60:	e0000000 	bsr      	0x0	// 0 <ieee80211_send_disassoc>
  64:	8455      	ld.b      	r2, (r4, 0x15)
  66:	8464      	ld.b      	r3, (r4, 0x4)
  68:	b850      	st.w      	r2, (r14, 0x40)
  6a:	8454      	ld.b      	r2, (r4, 0x14)
  6c:	b84f      	st.w      	r2, (r14, 0x3c)
  6e:	8453      	ld.b      	r2, (r4, 0x13)
  70:	b84e      	st.w      	r2, (r14, 0x38)
  72:	8452      	ld.b      	r2, (r4, 0x12)
  74:	b84d      	st.w      	r2, (r14, 0x34)
  76:	8451      	ld.b      	r2, (r4, 0x11)
  78:	b84c      	st.w      	r2, (r14, 0x30)
  7a:	8450      	ld.b      	r2, (r4, 0x10)
  7c:	b84b      	st.w      	r2, (r14, 0x2c)
  7e:	844f      	ld.b      	r2, (r4, 0xf)
  80:	b84a      	st.w      	r2, (r14, 0x28)
  82:	844e      	ld.b      	r2, (r4, 0xe)
  84:	b849      	st.w      	r2, (r14, 0x24)
  86:	844d      	ld.b      	r2, (r4, 0xd)
  88:	b848      	st.w      	r2, (r14, 0x20)
  8a:	844c      	ld.b      	r2, (r4, 0xc)
  8c:	b847      	st.w      	r2, (r14, 0x1c)
  8e:	844b      	ld.b      	r2, (r4, 0xb)
  90:	b846      	st.w      	r2, (r14, 0x18)
  92:	844a      	ld.b      	r2, (r4, 0xa)
  94:	b845      	st.w      	r2, (r14, 0x14)
  96:	8449      	ld.b      	r2, (r4, 0x9)
  98:	b844      	st.w      	r2, (r14, 0x10)
  9a:	8448      	ld.b      	r2, (r4, 0x8)
  9c:	b843      	st.w      	r2, (r14, 0xc)
  9e:	8447      	ld.b      	r2, (r4, 0x7)
  a0:	b842      	st.w      	r2, (r14, 0x8)
  a2:	8446      	ld.b      	r2, (r4, 0x6)
  a4:	b841      	st.w      	r2, (r14, 0x4)
  a6:	8445      	ld.b      	r2, (r4, 0x5)
  a8:	b840      	st.w      	r2, (r14, 0x0)
  aa:	ea02014f 	movi      	r2, 335
  ae:	1025      	lrw      	r1, 0x0	// c0 <ieee80211_sta_rx_h_check+0xc0>
  b0:	1005      	lrw      	r0, 0x0	// c4 <ieee80211_sta_rx_h_check+0xc4>
  b2:	e0000000 	bsr      	0x0	// 0 <hgprintf>
  b6:	07c6      	br      	0x42	// 42 <ieee80211_sta_rx_h_check+0x42>
  b8:	6c17      	mov      	r0, r5
  ba:	e0000000 	bsr      	0x0	// 0 <ieee80211_sta_rx_check_psstate>
  be:	07cb      	br      	0x54	// 54 <ieee80211_sta_rx_h_check+0x54>
	...

Disassembly of section .text.ieee80211_sta_accept_frame:

00000000 <ieee80211_sta_accept_frame>:
   0:	14d3      	push      	r4-r6, r15
   2:	9062      	ld.w      	r3, (r0, 0x8)
   4:	9040      	ld.w      	r2, (r0, 0x0)
   6:	93a7      	ld.w      	r5, (r3, 0x1c)
   8:	8b34      	ld.h      	r1, (r3, 0x28)
   a:	6d03      	mov      	r4, r0
   c:	6c17      	mov      	r0, r5
   e:	e0000000 	bsr      	0x0	// 0 <ieee80211_get_bssid>
  12:	8564      	ld.b      	r3, (r5, 0x4)
  14:	e4632001 	andi      	r3, r3, 1
  18:	e9230012 	bnez      	r3, 0x3c	// 3c <ieee80211_sta_accept_frame+0x3c>
  1c:	8d60      	ld.h      	r3, (r5, 0x0)
  1e:	e46320fc 	andi      	r3, r3, 252
  22:	3b5c      	cmpnei      	r3, 28
  24:	6583      	mvcv      	r6
  26:	7598      	zextb      	r6, r6
  28:	e920000c 	bnez      	r0, 0x40	// 40 <ieee80211_sta_accept_frame+0x40>
  2c:	9460      	ld.w      	r3, (r4, 0x0)
  2e:	8365      	ld.b      	r3, (r3, 0x5)
  30:	e4632008 	andi      	r3, r3, 8
  34:	e9230006 	bnez      	r3, 0x40	// 40 <ieee80211_sta_accept_frame+0x40>
  38:	3000      	movi      	r0, 0
  3a:	1493      	pop      	r4-r6, r15
  3c:	3601      	movi      	r6, 1
  3e:	07f5      	br      	0x28	// 28 <ieee80211_sta_accept_frame+0x28>
  40:	9462      	ld.w      	r3, (r4, 0x8)
  42:	8b54      	ld.h      	r2, (r3, 0x28)
  44:	3a18      	cmphsi      	r2, 25
  46:	0805      	bt      	0x50	// 50 <ieee80211_sta_accept_frame+0x50>
  48:	e906000d 	bez      	r6, 0x62	// 62 <ieee80211_sta_accept_frame+0x62>
  4c:	3001      	movi      	r0, 1
  4e:	07f6      	br      	0x3a	// 3a <ieee80211_sta_accept_frame+0x3a>
  50:	9307      	ld.w      	r0, (r3, 0x1c)
  52:	e0000000 	bsr      	0x0	// 0 <_ieee80211_is_robust_mgmt_frame>
  56:	e900fff9 	bez      	r0, 0x48	// 48 <ieee80211_sta_accept_frame+0x48>
  5a:	9461      	ld.w      	r3, (r4, 0x4)
  5c:	e923fff6 	bnez      	r3, 0x48	// 48 <ieee80211_sta_accept_frame+0x48>
  60:	07ec      	br      	0x38	// 38 <ieee80211_sta_accept_frame+0x38>
  62:	3206      	movi      	r2, 6
  64:	9400      	ld.w      	r0, (r4, 0x0)
  66:	5d2e      	addi      	r1, r5, 4
  68:	6008      	addu      	r0, r2
  6a:	e0000000 	bsr      	0x0	// 0 <memcmp>
  6e:	3840      	cmpnei      	r0, 0
  70:	6403      	mvcv      	r0
  72:	07e4      	br      	0x3a	// 3a <ieee80211_sta_accept_frame+0x3a>

Disassembly of section .text.ieee80211_sta_hbtimer_cb:

00000000 <ieee80211_sta_hbtimer_cb>:
   0:	14d0      	push      	r15
   2:	8065      	ld.b      	r3, (r0, 0x5)
   4:	e4632001 	andi      	r3, r3, 1
   8:	e9030022 	bez      	r3, 0x4c	// 4c <ieee80211_sta_hbtimer_cb+0x4c>
   c:	d8602063 	ld.w      	r3, (r0, 0x18c)
  10:	d8630025 	ld.b      	r3, (r3, 0x25)
  14:	e4632008 	andi      	r3, r3, 8
  18:	e903001a 	bez      	r3, 0x4c	// 4c <ieee80211_sta_hbtimer_cb+0x4c>
  1c:	d8402065 	ld.w      	r2, (r0, 0x194)
  20:	5a62      	addi      	r3, r2, 1
  22:	d8202066 	ld.w      	r1, (r0, 0x198)
  26:	644d      	cmplt      	r3, r1
  28:	c423008c 	subu      	r12, r3, r1
  2c:	c46c0c20 	incf      	r3, r12, 0
  30:	d8202064 	ld.w      	r1, (r0, 0x190)
  34:	64c6      	cmpne      	r1, r3
  36:	0c07      	bf      	0x44	// 44 <ieee80211_sta_hbtimer_cb+0x44>
  38:	6080      	addu      	r2, r0
  3a:	3104      	movi      	r1, 4
  3c:	dc22019c 	st.b      	r1, (r2, 0x19c)
  40:	dc602065 	st.w      	r3, (r0, 0x194)
  44:	d800202a 	ld.w      	r0, (r0, 0xa8)
  48:	e0000000 	bsr      	0x0	// 0 <os_sema_up>
  4c:	1490      	pop      	r15

Disassembly of section .text.ieee80211_sta_tx_status:

00000000 <ieee80211_sta_tx_status>:
   0:	14d2      	push      	r4-r5, r15
   2:	d861002a 	ld.b      	r3, (r1, 0x2a)
   6:	e4632010 	andi      	r3, r3, 16
   a:	6d03      	mov      	r4, r0
   c:	e9030018 	bez      	r3, 0x3c	// 3c <ieee80211_sta_tx_status+0x3c>
  10:	d8602063 	ld.w      	r3, (r0, 0x18c)
  14:	d8a30025 	ld.b      	r5, (r3, 0x25)
  18:	e4a52008 	andi      	r5, r5, 8
  1c:	e9250010 	bnez      	r5, 0x3c	// 3c <ieee80211_sta_tx_status+0x3c>
  20:	8072      	ld.b      	r3, (r0, 0x12)
  22:	3b49      	cmpnei      	r3, 9
  24:	080c      	bt      	0x3c	// 3c <ieee80211_sta_tx_status+0x3c>
  26:	6c43      	mov      	r1, r0
  28:	3202      	movi      	r2, 2
  2a:	1006      	lrw      	r0, 0x0	// 40 <ieee80211_sta_tx_status+0x40>
  2c:	e0000000 	bsr      	0x0	// 0 <eloop_cancel_timeout>
  30:	6cd7      	mov      	r3, r5
  32:	6c97      	mov      	r2, r5
  34:	3108      	movi      	r1, 8
  36:	6c13      	mov      	r0, r4
  38:	e0000000 	bsr      	0x0	// 0 <ieee80211_iface_event>
  3c:	1492      	pop      	r4-r5, r15
  3e:	0000      	.short	0x0000
  40:	0000      	.short	0x0000
	...

Disassembly of section .text.ieee80211_sta_rx_data:

00000000 <ieee80211_sta_rx_data>:
   0:	14d4      	push      	r4-r7, r15
   2:	90e2      	ld.w      	r7, (r0, 0x8)
   4:	90c0      	ld.w      	r6, (r0, 0x0)
   6:	9727      	ld.w      	r1, (r7, 0x1c)
   8:	6d43      	mov      	r5, r0
   a:	d8062063 	ld.w      	r0, (r6, 0x18c)
   e:	8980      	ld.h      	r4, (r1, 0x0)
  10:	3206      	movi      	r2, 6
  12:	2109      	addi      	r1, 10
  14:	201b      	addi      	r0, 28
  16:	e48420f3 	andi      	r4, r4, 243
  1a:	e0000000 	bsr      	0x0	// 0 <memcmp>
  1e:	e9000005 	bez      	r0, 0x28	// 28 <ieee80211_sta_rx_data+0x28>
  22:	3000      	movi      	r0, 0
  24:	2800      	subi      	r0, 1
  26:	040f      	br      	0x44	// 44 <ieee80211_sta_rx_data+0x44>
  28:	e9040005 	bez      	r4, 0x32	// 32 <ieee80211_sta_rx_data+0x32>
  2c:	eb440080 	cmpnei      	r4, 128
  30:	0bf9      	bt      	0x22	// 22 <ieee80211_sta_rx_data+0x22>
  32:	6c5f      	mov      	r1, r7
  34:	6c1b      	mov      	r0, r6
  36:	e0000000 	bsr      	0x0	// 0 <ieee80211_data_to_8023>
  3a:	e920fff4 	bnez      	r0, 0x22	// 22 <ieee80211_sta_rx_data+0x22>
  3e:	6c17      	mov      	r0, r5
  40:	e0000000 	bsr      	0x0	// 0 <ieee80211_rx_8023_data>
  44:	1494      	pop      	r4-r7, r15

Disassembly of section .text.ieee80211_sta_select_bss:

00000000 <ieee80211_sta_select_bss>:
   0:	14d2      	push      	r4-r5, r15
   2:	1428      	subi      	r14, r14, 32
   4:	d8202063 	ld.w      	r1, (r0, 0x18c)
   8:	6d43      	mov      	r5, r0
   a:	d86100ea 	ld.b      	r3, (r1, 0xea)
   e:	e4632008 	andi      	r3, r3, 8
  12:	d840202b 	ld.w      	r2, (r0, 0xac)
  16:	d800202a 	ld.w      	r0, (r0, 0xa8)
  1a:	e903005b 	bez      	r3, 0xd0	// d0 <ieee80211_sta_select_bss+0xd0>
  1e:	3301      	movi      	r3, 1
  20:	8240      	ld.b      	r2, (r2, 0x0)
  22:	21ec      	addi      	r1, 237
  24:	e0000000 	bsr      	0x0	// 0 <ieee80211_bss_get_bybssid>
  28:	6d03      	mov      	r4, r0
  2a:	e900005a 	bez      	r0, 0xde	// de <ieee80211_sta_select_bss+0xde>
  2e:	d8652063 	ld.w      	r3, (r5, 0x18c)
  32:	114c      	lrw      	r2, 0x0	// e0 <ieee80211_sta_select_bss+0xe0>
  34:	d86300ea 	ld.b      	r3, (r3, 0xea)
  38:	e4632008 	andi      	r3, r3, 8
  3c:	3b40      	cmpnei      	r3, 0
  3e:	d8600033 	ld.b      	r3, (r0, 0x33)
  42:	b867      	st.w      	r3, (r14, 0x1c)
  44:	8071      	ld.b      	r3, (r0, 0x11)
  46:	b866      	st.w      	r3, (r14, 0x18)
  48:	8070      	ld.b      	r3, (r0, 0x10)
  4a:	b865      	st.w      	r3, (r14, 0x14)
  4c:	806f      	ld.b      	r3, (r0, 0xf)
  4e:	b864      	st.w      	r3, (r14, 0x10)
  50:	806e      	ld.b      	r3, (r0, 0xe)
  52:	b863      	st.w      	r3, (r14, 0xc)
  54:	806d      	ld.b      	r3, (r0, 0xd)
  56:	b862      	st.w      	r3, (r14, 0x8)
  58:	806c      	ld.b      	r3, (r0, 0xc)
  5a:	b861      	st.w      	r3, (r14, 0x4)
  5c:	e4600011 	addi      	r3, r0, 18
  60:	b860      	st.w      	r3, (r14, 0x0)
  62:	1121      	lrw      	r1, 0x0	// e4 <ieee80211_sta_select_bss+0xe4>
  64:	1161      	lrw      	r3, 0x0	// e8 <ieee80211_sta_select_bss+0xe8>
  66:	c4620c40 	inct      	r3, r2, 0
  6a:	1101      	lrw      	r0, 0x0	// ec <ieee80211_sta_select_bss+0xec>
  6c:	3218      	movi      	r2, 24
  6e:	e0000000 	bsr      	0x0	// 0 <hgprintf>
  72:	d8052063 	ld.w      	r0, (r5, 0x18c)
  76:	3206      	movi      	r2, 6
  78:	e424000b 	addi      	r1, r4, 12
  7c:	201b      	addi      	r0, 28
  7e:	e0000000 	bsr      	0x0	// 0 <memcpy>
  82:	8c5b      	ld.h      	r2, (r4, 0x36)
  84:	8c7a      	ld.h      	r3, (r4, 0x34)
  86:	648d      	cmplt      	r3, r2
  88:	c4620c40 	inct      	r3, r2, 0
  8c:	dc6510aa 	st.h      	r3, (r5, 0x154)
  90:	9473      	ld.w      	r3, (r4, 0x4c)
  92:	dc652040 	st.w      	r3, (r5, 0x100)
  96:	9474      	ld.w      	r3, (r4, 0x50)
  98:	dc652041 	st.w      	r3, (r5, 0x104)
  9c:	9472      	ld.w      	r3, (r4, 0x48)
  9e:	dc652042 	st.w      	r3, (r5, 0x108)
  a2:	d864003c 	ld.b      	r3, (r4, 0x3c)
  a6:	c4c354c3 	zext      	r3, r3, 6, 6
  aa:	d8450110 	ld.b      	r2, (r5, 0x110)
  ae:	c4435c05 	ins      	r2, r3, 5, 5
  b2:	dc450110 	st.b      	r2, (r5, 0x110)
  b6:	d8240033 	ld.b      	r1, (r4, 0x33)
  ba:	6c17      	mov      	r0, r5
  bc:	e0000000 	bsr      	0x0	// 0 <ieee80211_set_channel>
  c0:	d805202a 	ld.w      	r0, (r5, 0xa8)
  c4:	6c53      	mov      	r1, r4
  c6:	e0000000 	bsr      	0x0	// 0 <ieee80211_bss_put>
  ca:	3001      	movi      	r0, 1
  cc:	1408      	addi      	r14, r14, 32
  ce:	1492      	pop      	r4-r5, r15
  d0:	3301      	movi      	r3, 1
  d2:	8240      	ld.b      	r2, (r2, 0x0)
  d4:	e4250112 	addi      	r1, r5, 275
  d8:	e0000000 	bsr      	0x0	// 0 <ieee80211_bss_get_byssid>
  dc:	07a6      	br      	0x28	// 28 <ieee80211_sta_select_bss+0x28>
  de:	07f7      	br      	0xcc	// cc <ieee80211_sta_select_bss+0xcc>
	...

Disassembly of section .text.ieee80211_sta_disconnect:

00000000 <ieee80211_sta_disconnect>:
   0:	14d1      	push      	r4, r15
   2:	6d03      	mov      	r4, r0
   4:	6c7f      	mov      	r1, r15
   6:	1010      	lrw      	r0, 0x0	// 44 <ieee80211_sta_disconnect+0x44>
   8:	e0000000 	bsr      	0x0	// 0 <hgprintf>
   c:	8c67      	ld.h      	r3, (r4, 0xe)
   e:	3200      	movi      	r2, 0
  10:	d8242063 	ld.w      	r1, (r4, 0x18c)
  14:	6c13      	mov      	r0, r4
  16:	e0000000 	bsr      	0x0	// 0 <ieee80211_sta_del>
  1a:	6c13      	mov      	r0, r4
  1c:	e0000000 	bsr      	0x0	// 0 <ieee80211_del_gtk>
  20:	6c13      	mov      	r0, r4
  22:	3100      	movi      	r1, 0
  24:	e0000000 	bsr      	0x0	// 0 <ieee80211_state>
  28:	d8042063 	ld.w      	r0, (r4, 0x18c)
  2c:	3206      	movi      	r2, 6
  2e:	3100      	movi      	r1, 0
  30:	201b      	addi      	r0, 28
  32:	e0000000 	bsr      	0x0	// 0 <memset>
  36:	d8642063 	ld.w      	r3, (r4, 0x18c)
  3a:	3200      	movi      	r2, 0
  3c:	dc4300eb 	st.b      	r2, (r3, 0xeb)
  40:	1491      	pop      	r4, r15
  42:	0000      	.short	0x0000
  44:	00000000 	.long	0x00000000

Disassembly of section .text.ieee80211_sta_heartbeat:

00000000 <ieee80211_sta_heartbeat>:
   0:	1424      	subi      	r14, r14, 16
   2:	b880      	st.w      	r4, (r14, 0x0)
   4:	b8c1      	st.w      	r6, (r14, 0x4)
   6:	b8e2      	st.w      	r7, (r14, 0x8)
   8:	ddee2003 	st.w      	r15, (r14, 0xc)
   c:	1429      	subi      	r14, r14, 36
   e:	8065      	ld.b      	r3, (r0, 0x5)
  10:	e4632081 	andi      	r3, r3, 129
  14:	3b41      	cmpnei      	r3, 1
  16:	6d03      	mov      	r4, r0
  18:	0819      	bt      	0x4a	// 4a <ieee80211_sta_heartbeat+0x4a>
  1a:	8072      	ld.b      	r3, (r0, 0x12)
  1c:	3b49      	cmpnei      	r3, 9
  1e:	0816      	bt      	0x4a	// 4a <ieee80211_sta_heartbeat+0x4a>
  20:	e0000000 	bsr      	0x0	// 0 <ieee80211_is_pairing>
  24:	e9200013 	bnez      	r0, 0x4a	// 4a <ieee80211_sta_heartbeat+0x4a>
  28:	8472      	ld.b      	r3, (r4, 0x12)
  2a:	3b43      	cmpnei      	r3, 3
  2c:	d8c42063 	ld.w      	r6, (r4, 0x18c)
  30:	0816      	bt      	0x5c	// 5c <ieee80211_sta_heartbeat+0x5c>
  32:	d8660025 	ld.b      	r3, (r6, 0x25)
  36:	e4632008 	andi      	r3, r3, 8
  3a:	e9030011 	bez      	r3, 0x5c	// 5c <ieee80211_sta_heartbeat+0x5c>
  3e:	e0000000 	bsr      	0x0	// 0 <os_jiffies>
  42:	dc062024 	st.w      	r0, (r6, 0x90)
  46:	dc262025 	st.w      	r1, (r6, 0x94)
  4a:	3000      	movi      	r0, 0
  4c:	1409      	addi      	r14, r14, 36
  4e:	d9ee2003 	ld.w      	r15, (r14, 0xc)
  52:	98e2      	ld.w      	r7, (r14, 0x8)
  54:	98c1      	ld.w      	r6, (r14, 0x4)
  56:	9880      	ld.w      	r4, (r14, 0x0)
  58:	1404      	addi      	r14, r14, 16
  5a:	783c      	jmp      	r15
  5c:	d8660025 	ld.b      	r3, (r6, 0x25)
  60:	e4632001 	andi      	r3, r3, 1
  64:	e903005e 	bez      	r3, 0x120	// 120 <ieee80211_sta_heartbeat+0x120>
  68:	d86410ac 	ld.h      	r3, (r4, 0x158)
  6c:	436a      	lsli      	r3, r3, 10
  6e:	e903007d 	bez      	r3, 0x168	// 168 <ieee80211_sta_heartbeat+0x168>
  72:	6c0f      	mov      	r0, r3
  74:	533f      	asri      	r1, r3, 31
  76:	d8e62025 	ld.w      	r7, (r6, 0x94)
  7a:	d8c62024 	ld.w      	r6, (r6, 0x90)
  7e:	6599      	cmplt      	r6, r6
  80:	6181      	addc      	r6, r0
  82:	61c5      	addc      	r7, r1
  84:	e0000000 	bsr      	0x0	// 0 <os_jiffies>
  88:	6400      	cmphs      	r0, r0
  8a:	c4060100 	subc      	r0, r6, r0
  8e:	c4270101 	subc      	r1, r7, r1
  92:	e9a1006b 	bhsz      	r1, 0x168	// 168 <ieee80211_sta_heartbeat+0x168>
  96:	d8242063 	ld.w      	r1, (r4, 0x18c)
  9a:	d8610025 	ld.b      	r3, (r1, 0x25)
  9e:	e4432020 	andi      	r2, r3, 32
  a2:	e9220045 	bnez      	r2, 0x12c	// 12c <ieee80211_sta_heartbeat+0x12c>
  a6:	3201      	movi      	r2, 1
  a8:	c4625c05 	ins      	r3, r2, 5, 5
  ac:	dc610025 	st.b      	r3, (r1, 0x25)
  b0:	8465      	ld.b      	r3, (r4, 0x5)
  b2:	c4435443 	zext      	r3, r3, 2, 2
  b6:	6c13      	mov      	r0, r4
  b8:	e0000000 	bsr      	0x0	// 0 <ieee80211_send_nullfunc>
  bc:	d86410ac 	ld.h      	r3, (r4, 0x158)
  c0:	4b61      	lsri      	r3, r3, 1
  c2:	430a      	lsli      	r0, r3, 10
  c4:	503f      	asri      	r1, r0, 31
  c6:	94ca      	ld.w      	r6, (r4, 0x28)
  c8:	94eb      	ld.w      	r7, (r4, 0x2c)
  ca:	6599      	cmplt      	r6, r6
  cc:	6181      	addc      	r6, r0
  ce:	61c5      	addc      	r7, r1
  d0:	e0000000 	bsr      	0x0	// 0 <os_jiffies>
  d4:	6400      	cmphs      	r0, r0
  d6:	c4060100 	subc      	r0, r6, r0
  da:	c4270101 	subc      	r1, r7, r1
  de:	e9a1ffb6 	bhsz      	r1, 0x4a	// 4a <ieee80211_sta_heartbeat+0x4a>
  e2:	d8c42063 	ld.w      	r6, (r4, 0x18c)
  e6:	d8660025 	ld.b      	r3, (r6, 0x25)
  ea:	e4632001 	andi      	r3, r3, 1
  ee:	e9030047 	bez      	r3, 0x17c	// 17c <ieee80211_sta_heartbeat+0x17c>
  f2:	321c      	movi      	r2, 28
  f4:	3100      	movi      	r1, 0
  f6:	1802      	addi      	r0, r14, 8
  f8:	e0000000 	bsr      	0x0	// 0 <memset>
  fc:	261b      	addi      	r6, 28
  fe:	d864202b 	ld.w      	r3, (r4, 0xac)
 102:	b8c4      	st.w      	r6, (r14, 0x10)
 104:	8360      	ld.b      	r3, (r3, 0x0)
 106:	e4040112 	addi      	r0, r4, 275
 10a:	dc6e000c 	st.b      	r3, (r14, 0xc)
 10e:	b805      	st.w      	r0, (r14, 0x14)
 110:	e0000000 	bsr      	0x0	// 0 <strlen>
 114:	b807      	st.w      	r0, (r14, 0x1c)
 116:	1902      	addi      	r1, r14, 8
 118:	6c13      	mov      	r0, r4
 11a:	e0000000 	bsr      	0x0	// 0 <ieee80211_send_probe_request>
 11e:	0796      	br      	0x4a	// 4a <ieee80211_sta_heartbeat+0x4a>
 120:	d8660124 	ld.b      	r3, (r6, 0x124)
 124:	d84410aa 	ld.h      	r2, (r4, 0x154)
 128:	7cc8      	mult      	r3, r2
 12a:	07a2      	br      	0x6e	// 6e <ieee80211_sta_heartbeat+0x6e>
 12c:	d8612024 	ld.w      	r3, (r1, 0x90)
 130:	d8412025 	ld.w      	r2, (r1, 0x94)
 134:	d82410aa 	ld.h      	r1, (r4, 0x154)
 138:	b821      	st.w      	r1, (r14, 0x4)
 13a:	b840      	st.w      	r2, (r14, 0x0)
 13c:	324c      	movi      	r2, 76
 13e:	1035      	lrw      	r1, 0x0	// 190 <ieee80211_sta_heartbeat+0x190>
 140:	1015      	lrw      	r0, 0x0	// 194 <ieee80211_sta_heartbeat+0x194>
 142:	e0000000 	bsr      	0x0	// 0 <hgprintf>
 146:	d844202b 	ld.w      	r2, (r4, 0xac)
 14a:	3301      	movi      	r3, 1
 14c:	ac67      	st.h      	r3, (r4, 0xe)
 14e:	d8242063 	ld.w      	r1, (r4, 0x18c)
 152:	d804202a 	ld.w      	r0, (r4, 0xa8)
 156:	3302      	movi      	r3, 2
 158:	8240      	ld.b      	r2, (r2, 0x0)
 15a:	211b      	addi      	r1, 28
 15c:	e0000000 	bsr      	0x0	// 0 <ieee80211_bss_disable>
 160:	6c13      	mov      	r0, r4
 162:	e0000000 	bsr      	0x0	// 0 <ieee80211_sta_heartbeat>
 166:	07ab      	br      	0xbc	// bc <ieee80211_sta_heartbeat+0xbc>
 168:	d8642063 	ld.w      	r3, (r4, 0x18c)
 16c:	3100      	movi      	r1, 0
 16e:	d8430025 	ld.b      	r2, (r3, 0x25)
 172:	c4415c05 	ins      	r2, r1, 5, 5
 176:	dc430025 	st.b      	r2, (r3, 0x25)
 17a:	07a1      	br      	0xbc	// bc <ieee80211_sta_heartbeat+0xbc>
 17c:	8465      	ld.b      	r3, (r4, 0x5)
 17e:	c4435443 	zext      	r3, r3, 2, 2
 182:	3201      	movi      	r2, 1
 184:	6c5b      	mov      	r1, r6
 186:	6c13      	mov      	r0, r4
 188:	e0000000 	bsr      	0x0	// 0 <ieee80211_send_nullfunc>
 18c:	075f      	br      	0x4a	// 4a <ieee80211_sta_heartbeat+0x4a>
	...

Disassembly of section .text.ieee80211_sta_start_assoc:

00000000 <ieee80211_sta_start_assoc>:
   0:	14d0      	push      	r15
   2:	8065      	ld.b      	r3, (r0, 0x5)
   4:	e4632081 	andi      	r3, r3, 129
   8:	3b41      	cmpnei      	r3, 1
   a:	0824      	bt      	0x52	// 52 <ieee80211_sta_start_assoc+0x52>
   c:	8860      	ld.h      	r3, (r0, 0x0)
   e:	e4632001 	andi      	r3, r3, 1
  12:	e9030020 	bez      	r3, 0x52	// 52 <ieee80211_sta_start_assoc+0x52>
  16:	d8600113 	ld.b      	r3, (r0, 0x113)
  1a:	e903001c 	bez      	r3, 0x52	// 52 <ieee80211_sta_start_assoc+0x52>
  1e:	d8402065 	ld.w      	r2, (r0, 0x194)
  22:	5a62      	addi      	r3, r2, 1
  24:	d8202066 	ld.w      	r1, (r0, 0x198)
  28:	644d      	cmplt      	r3, r1
  2a:	c423008c 	subu      	r12, r3, r1
  2e:	c46c0c20 	incf      	r3, r12, 0
  32:	d8202064 	ld.w      	r1, (r0, 0x190)
  36:	644e      	cmpne      	r3, r1
  38:	0c07      	bf      	0x46	// 46 <ieee80211_sta_start_assoc+0x46>
  3a:	6080      	addu      	r2, r0
  3c:	3105      	movi      	r1, 5
  3e:	dc22019c 	st.b      	r1, (r2, 0x19c)
  42:	dc602065 	st.w      	r3, (r0, 0x194)
  46:	d800202a 	ld.w      	r0, (r0, 0xa8)
  4a:	e0000000 	bsr      	0x0	// 0 <os_sema_up>
  4e:	3000      	movi      	r0, 0
  50:	1490      	pop      	r15
  52:	3000      	movi      	r0, 0
  54:	2800      	subi      	r0, 1
  56:	07fd      	br      	0x50	// 50 <ieee80211_sta_start_assoc+0x50>

Disassembly of section .text.ieee80211_sta_do_action:

00000000 <ieee80211_sta_do_action>:
   0:	14d2      	push      	r4-r5, r15
   2:	2900      	subi      	r1, 1
   4:	7445      	zexth      	r1, r1
   6:	3910      	cmphsi      	r1, 17
   8:	6d03      	mov      	r4, r0
   a:	0899      	bt      	0x13c	// 13c <ieee80211_sta_do_action+0x13c>
   c:	1062      	lrw      	r3, 0x0	// 14 <ieee80211_sta_do_action+0x14>
   e:	d0230883 	ldr.w      	r3, (r3, r1 << 2)
  12:	780c      	jmp      	r3
  14:	00000000 	.long	0x00000000
  18:	8065      	ld.b      	r3, (r0, 0x5)
  1a:	e4a32001 	andi      	r5, r3, 1
  1e:	e9050004 	bez      	r5, 0x26	// 26 <ieee80211_sta_do_action+0x26>
  22:	3000      	movi      	r0, 0
  24:	1492      	pop      	r4-r5, r15
  26:	8840      	ld.h      	r2, (r0, 0x0)
  28:	e4422001 	andi      	r2, r2, 1
  2c:	e902fffb 	bez      	r2, 0x22	// 22 <ieee80211_sta_do_action+0x22>
  30:	3201      	movi      	r2, 1
  32:	c4625c00 	ins      	r3, r2, 0, 0
  36:	a065      	st.b      	r3, (r0, 0x5)
  38:	3114      	movi      	r1, 20
  3a:	6cd7      	mov      	r3, r5
  3c:	8044      	ld.b      	r2, (r0, 0x4)
  3e:	e0000000 	bsr      	0x0	// 0 <ieee80211_iface_event>
  42:	8433      	ld.b      	r1, (r4, 0x13)
  44:	6c13      	mov      	r0, r4
  46:	e0000000 	bsr      	0x0	// 0 <ieee80211_set_channel>
  4a:	6c13      	mov      	r0, r4
  4c:	e0000000 	bsr      	0x0	// 0 <ieee80211_sta_do_action>
  50:	07e9      	br      	0x22	// 22 <ieee80211_sta_do_action+0x22>
  52:	8065      	ld.b      	r3, (r0, 0x5)
  54:	e4432001 	andi      	r2, r3, 1
  58:	e902ffe5 	bez      	r2, 0x22	// 22 <ieee80211_sta_do_action+0x22>
  5c:	8840      	ld.h      	r2, (r0, 0x0)
  5e:	e4422001 	andi      	r2, r2, 1
  62:	e902ffe0 	bez      	r2, 0x22	// 22 <ieee80211_sta_do_action+0x22>
  66:	3200      	movi      	r2, 0
  68:	c4625c00 	ins      	r3, r2, 0, 0
  6c:	a065      	st.b      	r3, (r0, 0x5)
  6e:	d8002063 	ld.w      	r0, (r0, 0x18c)
  72:	20cb      	addi      	r0, 204
  74:	e0000000 	bsr      	0x0	// 0 <os_timer_stop>
  78:	6c13      	mov      	r0, r4
  7a:	e0000000 	bsr      	0x0	// 0 <ieee80211_sta_send_disassoc>
  7e:	d864205b 	ld.w      	r3, (r4, 0x16c)
  82:	e9030006 	bez      	r3, 0x8e	// 8e <ieee80211_sta_do_action+0x8e>
  86:	d8632024 	ld.w      	r3, (r3, 0x90)
  8a:	6c13      	mov      	r0, r4
  8c:	7bcd      	jsr      	r3
  8e:	d804202a 	ld.w      	r0, (r4, 0xa8)
  92:	d8602078 	ld.w      	r3, (r0, 0x1e0)
  96:	e9030007 	bez      	r3, 0xa4	// a4 <ieee80211_sta_do_action+0xa4>
  9a:	d863204c 	ld.w      	r3, (r3, 0x130)
  9e:	3200      	movi      	r2, 0
  a0:	6c53      	mov      	r1, r4
  a2:	7bcd      	jsr      	r3
  a4:	6c13      	mov      	r0, r4
  a6:	3101      	movi      	r1, 1
  a8:	e0000000 	bsr      	0x0	// 0 <ieee80211_state>
  ac:	d8642063 	ld.w      	r3, (r4, 0x18c)
  b0:	3200      	movi      	r2, 0
  b2:	dc431074 	st.h      	r2, (r3, 0xe8)
  b6:	8444      	ld.b      	r2, (r4, 0x4)
  b8:	3300      	movi      	r3, 0
  ba:	2a00      	subi      	r2, 1
  bc:	313b      	movi      	r1, 59
  be:	d8042029 	ld.w      	r0, (r4, 0xa4)
  c2:	e0000000 	bsr      	0x0	// 0 <lmac_ioctl>
  c6:	3300      	movi      	r3, 0
  c8:	8444      	ld.b      	r2, (r4, 0x4)
  ca:	3115      	movi      	r1, 21
  cc:	6c13      	mov      	r0, r4
  ce:	e0000000 	bsr      	0x0	// 0 <ieee80211_iface_event>
  d2:	07a8      	br      	0x22	// 22 <ieee80211_sta_do_action+0x22>
  d4:	8045      	ld.b      	r2, (r0, 0x5)
  d6:	e4422081 	andi      	r2, r2, 129
  da:	3a41      	cmpnei      	r2, 1
  dc:	0ba3      	bt      	0x22	// 22 <ieee80211_sta_do_action+0x22>
  de:	8860      	ld.h      	r3, (r0, 0x0)
  e0:	e4632001 	andi      	r3, r3, 1
  e4:	e903ff9f 	bez      	r3, 0x22	// 22 <ieee80211_sta_do_action+0x22>
  e8:	8073      	ld.b      	r3, (r0, 0x13)
  ea:	3102      	movi      	r1, 2
  ec:	dc60003c 	st.b      	r3, (r0, 0x3c)
  f0:	d860003d 	ld.b      	r3, (r0, 0x3d)
  f4:	c4615cc1 	ins      	r3, r1, 7, 1
  f8:	c4625c00 	ins      	r3, r2, 0, 0
  fc:	dc60003d 	st.b      	r3, (r0, 0x3d)
 100:	e0000000 	bsr      	0x0	// 0 <ieee80211_sta_send_disassoc>
 104:	3104      	movi      	r1, 4
 106:	6c13      	mov      	r0, r4
 108:	e0000000 	bsr      	0x0	// 0 <ieee80211_state>
 10c:	6c13      	mov      	r0, r4
 10e:	e0000000 	bsr      	0x0	// 0 <ieee80211_sta_do_assoc>
 112:	0788      	br      	0x22	// 22 <ieee80211_sta_do_action+0x22>
 114:	e0000000 	bsr      	0x0	// 0 <ieee80211_sta_do_action>
 118:	0785      	br      	0x22	// 22 <ieee80211_sta_do_action+0x22>
 11a:	d8a02063 	ld.w      	r5, (r0, 0x18c)
 11e:	e0000000 	bsr      	0x0	// 0 <os_jiffies>
 122:	8465      	ld.b      	r3, (r4, 0x5)
 124:	e4632001 	andi      	r3, r3, 1
 128:	dc052024 	st.w      	r0, (r5, 0x90)
 12c:	dc252025 	st.w      	r1, (r5, 0x94)
 130:	e903ff79 	bez      	r3, 0x22	// 22 <ieee80211_sta_do_action+0x22>
 134:	8472      	ld.b      	r3, (r4, 0x12)
 136:	3b49      	cmpnei      	r3, 9
 138:	0b89      	bt      	0x4a	// 4a <ieee80211_sta_do_action+0x4a>
 13a:	0774      	br      	0x22	// 22 <ieee80211_sta_do_action+0x22>
 13c:	3000      	movi      	r0, 0
 13e:	2800      	subi      	r0, 1
 140:	0772      	br      	0x24	// 24 <ieee80211_sta_do_action+0x24>

Disassembly of section .text.ieee80211_sta_ft_start:

00000000 <ieee80211_sta_ft_start>:
   0:	14d2      	push      	r4-r5, r15
   2:	8072      	ld.b      	r3, (r0, 0x12)
   4:	3b49      	cmpnei      	r3, 9
   6:	6d03      	mov      	r4, r0
   8:	6d47      	mov      	r5, r1
   a:	0807      	bt      	0x18	// 18 <ieee80211_sta_ft_start+0x18>
   c:	d8600110 	ld.b      	r3, (r0, 0x110)
  10:	e4632020 	andi      	r3, r3, 32
  14:	e923000a 	bnez      	r3, 0x28	// 28 <ieee80211_sta_ft_start+0x28>
  18:	3278      	movi      	r2, 120
  1a:	1121      	lrw      	r1, 0x0	// 9c <ieee80211_sta_ft_start+0x9c>
  1c:	1101      	lrw      	r0, 0x0	// a0 <ieee80211_sta_ft_start+0xa0>
  1e:	e0000000 	bsr      	0x0	// 0 <hgprintf>
  22:	3000      	movi      	r0, 0
  24:	2800      	subi      	r0, 1
  26:	043a      	br      	0x9a	// 9a <ieee80211_sta_ft_start+0x9a>
  28:	d800205d 	ld.w      	r0, (r0, 0x174)
  2c:	e900fffb 	bez      	r0, 0x22	// 22 <ieee80211_sta_ft_start+0x22>
  30:	8060      	ld.b      	r3, (r0, 0x0)
  32:	3201      	movi      	r2, 1
  34:	c4625c00 	ins      	r3, r2, 0, 0
  38:	c4625c01 	ins      	r3, r2, 1, 1
  3c:	a060      	st.b      	r3, (r0, 0x0)
  3e:	d8242063 	ld.w      	r1, (r4, 0x18c)
  42:	3206      	movi      	r2, 6
  44:	211b      	addi      	r1, 28
  46:	2013      	addi      	r0, 20
  48:	e0000000 	bsr      	0x0	// 0 <memcpy>
  4c:	250d      	addi      	r5, 14
  4e:	d804205d 	ld.w      	r0, (r4, 0x174)
  52:	3206      	movi      	r2, 6
  54:	6c57      	mov      	r1, r5
  56:	200d      	addi      	r0, 14
  58:	e0000000 	bsr      	0x0	// 0 <memcpy>
  5c:	d8042063 	ld.w      	r0, (r4, 0x18c)
  60:	3206      	movi      	r2, 6
  62:	6c57      	mov      	r1, r5
  64:	201b      	addi      	r0, 28
  66:	e0000000 	bsr      	0x0	// 0 <memcpy>
  6a:	d8442065 	ld.w      	r2, (r4, 0x194)
  6e:	5a62      	addi      	r3, r2, 1
  70:	d8242066 	ld.w      	r1, (r4, 0x198)
  74:	644d      	cmplt      	r3, r1
  76:	5b05      	subu      	r0, r3, r1
  78:	c4600c20 	incf      	r3, r0, 0
  7c:	d8242064 	ld.w      	r1, (r4, 0x190)
  80:	644e      	cmpne      	r3, r1
  82:	0c07      	bf      	0x90	// 90 <ieee80211_sta_ft_start+0x90>
  84:	6090      	addu      	r2, r4
  86:	3106      	movi      	r1, 6
  88:	dc22019c 	st.b      	r1, (r2, 0x19c)
  8c:	dc642065 	st.w      	r3, (r4, 0x194)
  90:	d804202a 	ld.w      	r0, (r4, 0xa8)
  94:	e0000000 	bsr      	0x0	// 0 <os_sema_up>
  98:	3000      	movi      	r0, 0
  9a:	1492      	pop      	r4-r5, r15
	...

Disassembly of section .text.ieee80211_sta_init:

00000000 <ieee80211_sta_init>:
   0:	14d1      	push      	r4, r15
   2:	6d03      	mov      	r4, r0
   4:	3094      	movi      	r0, 148
   6:	4001      	lsli      	r0, r0, 1
   8:	e0000000 	bsr      	0x0	// 0 <_os_zalloc>
   c:	dc042063 	st.w      	r0, (r4, 0x18c)
  10:	e9200008 	bnez      	r0, 0x20	// 20 <ieee80211_sta_init+0x20>
  14:	31c6      	movi      	r1, 198
  16:	1147      	lrw      	r2, 0x0	// b0 <ieee80211_sta_init+0xb0>
  18:	4121      	lsli      	r1, r1, 1
  1a:	1107      	lrw      	r0, 0x0	// b4 <ieee80211_sta_init+0xb4>
  1c:	e0000000 	bsr      	0x0	// 0 <assert_internal>
  20:	3364      	movi      	r3, 100
  22:	ac6a      	st.h      	r3, (r4, 0x14)
  24:	ac6b      	st.h      	r3, (r4, 0x16)
  26:	33fa      	movi      	r3, 250
  28:	d8042063 	ld.w      	r0, (r4, 0x18c)
  2c:	4363      	lsli      	r3, r3, 3
  2e:	ac6c      	st.h      	r3, (r4, 0x18)
  30:	331e      	movi      	r3, 30
  32:	dc600124 	st.b      	r3, (r0, 0x124)
  36:	3201      	movi      	r2, 1
  38:	6cd3      	mov      	r3, r4
  3a:	1120      	lrw      	r1, 0x0	// b8 <ieee80211_sta_init+0xb8>
  3c:	20cb      	addi      	r0, 204
  3e:	e0000000 	bsr      	0x0	// 0 <os_timer_init>
  42:	6c13      	mov      	r0, r4
  44:	e0000000 	bsr      	0x0	// 0 <wpas_init>
  48:	b40d      	st.w      	r0, (r4, 0x34)
  4a:	e9200008 	bnez      	r0, 0x5a	// 5a <ieee80211_sta_init+0x5a>
  4e:	105c      	lrw      	r2, 0x0	// bc <ieee80211_sta_init+0xbc>
  50:	ea010193 	movi      	r1, 403
  54:	1018      	lrw      	r0, 0x0	// b4 <assert_internal+0xb4>
  56:	e0000000 	bsr      	0x0	// 0 <assert_internal>
  5a:	107a      	lrw      	r3, 0x0	// c0 <ieee80211_sta_init+0xc0>
  5c:	ea0201a3 	movi      	r2, 419
  60:	b47c      	st.w      	r3, (r4, 0x70)
  62:	1039      	lrw      	r1, 0x0	// c4 <ieee80211_sta_init+0xc4>
  64:	1079      	lrw      	r3, 0x0	// c8 <ieee80211_sta_init+0xc8>
  66:	101a      	lrw      	r0, 0x0	// cc <ieee80211_sta_init+0xcc>
  68:	b47d      	st.w      	r3, (r4, 0x74)
  6a:	107a      	lrw      	r3, 0x0	// d0 <ieee80211_sta_init+0xd0>
  6c:	b47b      	st.w      	r3, (r4, 0x6c)
  6e:	107a      	lrw      	r3, 0x0	// d4 <ieee80211_sta_init+0xd4>
  70:	b47a      	st.w      	r3, (r4, 0x68)
  72:	107a      	lrw      	r3, 0x0	// d8 <ieee80211_sta_init+0xd8>
  74:	b479      	st.w      	r3, (r4, 0x64)
  76:	107a      	lrw      	r3, 0x0	// dc <ieee80211_sta_init+0xdc>
  78:	b477      	st.w      	r3, (r4, 0x5c)
  7a:	107a      	lrw      	r3, 0x0	// e0 <ieee80211_sta_init+0xe0>
  7c:	b478      	st.w      	r3, (r4, 0x60)
  7e:	107a      	lrw      	r3, 0x0	// e4 <ieee80211_sta_init+0xe4>
  80:	b476      	st.w      	r3, (r4, 0x58)
  82:	107a      	lrw      	r3, 0x0	// e8 <ieee80211_sta_init+0xe8>
  84:	b473      	st.w      	r3, (r4, 0x4c)
  86:	107a      	lrw      	r3, 0x0	// ec <ieee80211_sta_init+0xec>
  88:	b472      	st.w      	r3, (r4, 0x48)
  8a:	107a      	lrw      	r3, 0x0	// f0 <ieee80211_sta_init+0xf0>
  8c:	dc642020 	st.w      	r3, (r4, 0x80)
  90:	1079      	lrw      	r3, 0x0	// f4 <ieee80211_sta_init+0xf4>
  92:	b470      	st.w      	r3, (r4, 0x40)
  94:	1079      	lrw      	r3, 0x0	// f8 <ieee80211_sta_init+0xf8>
  96:	b471      	st.w      	r3, (r4, 0x44)
  98:	1079      	lrw      	r3, 0x0	// fc <ieee80211_sta_init+0xfc>
  9a:	dc642023 	st.w      	r3, (r4, 0x8c)
  9e:	1079      	lrw      	r3, 0x0	// 100 <ieee80211_sta_init+0x100>
  a0:	dc642022 	st.w      	r3, (r4, 0x88)
  a4:	8c60      	ld.h      	r3, (r4, 0x0)
  a6:	e0000000 	bsr      	0x0	// 0 <hgprintf>
  aa:	3000      	movi      	r0, 0
  ac:	1491      	pop      	r4, r15
	...
