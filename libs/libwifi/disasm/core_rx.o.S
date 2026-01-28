
libwifi/o/core_rx.o:     file format elf32-csky-little


Disassembly of section .text.ether_addr_equal:

00000000 <ether_addr_equal>:
   0:	14d0      	push      	r15
   2:	3206      	movi      	r2, 6
   4:	e0000000 	bsr      	0x0	// 0 <memcmp>
   8:	3840      	cmpnei      	r0, 0
   a:	6403      	mvcv      	r0
   c:	7400      	zextb      	r0, r0
   e:	1490      	pop      	r15

Disassembly of section .text.ieee80211_rx_check_dupsn:

00000000 <ieee80211_rx_check_dupsn>:
   0:	14d7      	push      	r4-r10, r15
   2:	1421      	subi      	r14, r14, 4
   4:	d9022000 	ld.w      	r8, (r2, 0x0)
   8:	d9222001 	ld.w      	r9, (r2, 0x4)
   c:	6d03      	mov      	r4, r0
   e:	c5282420 	or      	r0, r8, r9
  12:	6dc7      	mov      	r7, r1
  14:	6d8b      	mov      	r6, r2
  16:	e9200009 	bnez      	r0, 0x28	// 28 <ieee80211_rx_check_dupsn+0x28>
  1a:	a980      	st.h      	r4, (r1, 0x0)
  1c:	3301      	movi      	r3, 1
  1e:	3400      	movi      	r4, 0
  20:	b260      	st.w      	r3, (r2, 0x0)
  22:	b281      	st.w      	r4, (r2, 0x4)
  24:	1401      	addi      	r14, r14, 4
  26:	1497      	pop      	r4-r10, r15
  28:	8960      	ld.h      	r3, (r1, 0x0)
  2a:	64d0      	cmphs      	r4, r3
  2c:	080d      	bt      	0x46	// 46 <ieee80211_rx_check_dupsn+0x46>
  2e:	5b51      	subu      	r2, r3, r4
  30:	eb22007f 	cmplti      	r2, 128
  34:	0c09      	bf      	0x46	// 46 <ieee80211_rx_check_dupsn+0x46>
  36:	b880      	st.w      	r4, (r14, 0x0)
  38:	3256      	movi      	r2, 86
  3a:	1129      	lrw      	r1, 0x0	// dc <ieee80211_rx_check_dupsn+0xdc>
  3c:	1109      	lrw      	r0, 0x0	// e0 <ieee80211_rx_check_dupsn+0xe0>
  3e:	e0000000 	bsr      	0x0	// 0 <hgprintf>
  42:	3000      	movi      	r0, 0
  44:	07f0      	br      	0x24	// 24 <ieee80211_rx_check_dupsn+0x24>
  46:	650c      	cmphs      	r3, r4
  48:	081a      	bt      	0x7c	// 7c <ieee80211_rx_check_dupsn+0x7c>
  4a:	c464008a 	subu      	r10, r4, r3
  4e:	76a9      	zexth      	r10, r10
  50:	eb0a003f 	cmphsi      	r10, 64
  54:	0818      	bt      	0x84	// 84 <ieee80211_rx_check_dupsn+0x84>
  56:	6cab      	mov      	r2, r10
  58:	6c23      	mov      	r0, r8
  5a:	6c67      	mov      	r1, r9
  5c:	e0000000 	bsr      	0x0	// 0 <__lshrdi3>
  60:	e4802001 	andi      	r4, r0, 1
  64:	e9240038 	bnez      	r4, 0xd4	// d4 <ieee80211_rx_check_dupsn+0xd4>
  68:	6cab      	mov      	r2, r10
  6a:	3001      	movi      	r0, 1
  6c:	3100      	movi      	r1, 0
  6e:	e0000000 	bsr      	0x0	// 0 <__ashldi3>
  72:	6c20      	or      	r0, r8
  74:	6c64      	or      	r1, r9
  76:	b600      	st.w      	r0, (r6, 0x0)
  78:	b621      	st.w      	r1, (r6, 0x4)
  7a:	07e4      	br      	0x42	// 42 <ieee80211_rx_check_dupsn+0x42>
  7c:	e5440fff 	addi      	r10, r4, 4096
  80:	628e      	subu      	r10, r3
  82:	07e6      	br      	0x4e	// 4e <ieee80211_rx_check_dupsn+0x4e>
  84:	e44a103e 	subi      	r2, r10, 63
  88:	7489      	zexth      	r2, r2
  8a:	eb02003f 	cmphsi      	r2, 64
  8e:	60c8      	addu      	r3, r2
  90:	e4a32fff 	andi      	r5, r3, 4095
  94:	0817      	bt      	0xc2	// c2 <ieee80211_rx_check_dupsn+0xc2>
  96:	6c23      	mov      	r0, r8
  98:	6c67      	mov      	r1, r9
  9a:	e0000000 	bsr      	0x0	// 0 <__lshrdi3>
  9e:	b600      	st.w      	r0, (r6, 0x0)
  a0:	b621      	st.w      	r1, (r6, 0x4)
  a2:	6514      	cmphs      	r5, r4
  a4:	0814      	bt      	0xcc	// cc <ieee80211_rx_check_dupsn+0xcc>
  a6:	5c55      	subu      	r2, r4, r5
  a8:	7489      	zexth      	r2, r2
  aa:	3001      	movi      	r0, 1
  ac:	3100      	movi      	r1, 0
  ae:	e0000000 	bsr      	0x0	// 0 <__ashldi3>
  b2:	9640      	ld.w      	r2, (r6, 0x0)
  b4:	9661      	ld.w      	r3, (r6, 0x4)
  b6:	6c08      	or      	r0, r2
  b8:	6c4c      	or      	r1, r3
  ba:	b600      	st.w      	r0, (r6, 0x0)
  bc:	b621      	st.w      	r1, (r6, 0x4)
  be:	afa0      	st.h      	r5, (r7, 0x0)
  c0:	07c1      	br      	0x42	// 42 <ieee80211_rx_check_dupsn+0x42>
  c2:	3200      	movi      	r2, 0
  c4:	3300      	movi      	r3, 0
  c6:	b640      	st.w      	r2, (r6, 0x0)
  c8:	b661      	st.w      	r3, (r6, 0x4)
  ca:	07ec      	br      	0xa2	// a2 <ieee80211_rx_check_dupsn+0xa2>
  cc:	e4440fff 	addi      	r2, r4, 4096
  d0:	6096      	subu      	r2, r5
  d2:	07eb      	br      	0xa8	// a8 <ieee80211_rx_check_dupsn+0xa8>
  d4:	3000      	movi      	r0, 0
  d6:	2800      	subi      	r0, 1
  d8:	07a6      	br      	0x24	// 24 <ieee80211_rx_check_dupsn+0x24>
	...

Disassembly of section .text.ieee80211_rx_handle_packet:

00000000 <ieee80211_rx_handle_packet>:
   0:	14d6      	push      	r4-r9, r15
   2:	1423      	subi      	r14, r14, 12
   4:	6e0f      	mov      	r8, r3
   6:	907a      	ld.w      	r3, (r0, 0x68)
   8:	6d03      	mov      	r4, r0
   a:	6d87      	mov      	r6, r1
   c:	6d4b      	mov      	r5, r2
   e:	92e7      	ld.w      	r7, (r2, 0x1c)
  10:	b800      	st.w      	r0, (r14, 0x0)
  12:	b821      	st.w      	r1, (r14, 0x4)
  14:	b842      	st.w      	r2, (r14, 0x8)
  16:	e903000d 	bez      	r3, 0x30	// 30 <ieee80211_rx_handle_packet+0x30>
  1a:	6c3b      	mov      	r0, r14
  1c:	7bcd      	jsr      	r3
  1e:	e9200009 	bnez      	r0, 0x30	// 30 <ieee80211_rx_handle_packet+0x30>
  22:	d8642083 	ld.w      	r3, (r4, 0x20c)
  26:	2300      	addi      	r3, 1
  28:	dc642083 	st.w      	r3, (r4, 0x20c)
  2c:	1403      	addi      	r14, r14, 12
  2e:	1496      	pop      	r4-r9, r15
  30:	e928000f 	bnez      	r8, 0x4e	// 4e <ieee80211_rx_handle_packet+0x4e>
  34:	6c63      	mov      	r1, r8
  36:	6c17      	mov      	r0, r5
  38:	e0000000 	bsr      	0x0	// 0 <skb_copy>
  3c:	e9200008 	bnez      	r0, 0x4c	// 4c <ieee80211_rx_handle_packet+0x4c>
  40:	32c2      	movi      	r2, 194
  42:	0335      	lrw      	r1, 0x0	// 268 <ieee80211_rx_handle_packet+0x268>
  44:	0315      	lrw      	r0, 0x0	// 26c <ieee80211_rx_handle_packet+0x26c>
  46:	e0000000 	bsr      	0x0	// 0 <hgprintf>
  4a:	044a      	br      	0xde	// de <ieee80211_rx_handle_packet+0xde>
  4c:	b802      	st.w      	r0, (r14, 0x8)
  4e:	9860      	ld.w      	r3, (r14, 0x0)
  50:	8362      	ld.b      	r3, (r3, 0x2)
  52:	e4632004 	andi      	r3, r3, 4
  56:	e9030084 	bez      	r3, 0x15e	// 15e <ieee80211_rx_handle_packet+0x15e>
  5a:	9821      	ld.w      	r1, (r14, 0x4)
  5c:	e9010081 	bez      	r1, 0x15e	// 15e <ieee80211_rx_handle_packet+0x15e>
  60:	9862      	ld.w      	r3, (r14, 0x8)
  62:	d9032007 	ld.w      	r8, (r3, 0x1c)
  66:	d8081000 	ld.h      	r0, (r8, 0x0)
  6a:	e460200c 	andi      	r3, r0, 12
  6e:	3b48      	cmpnei      	r3, 8
  70:	0877      	bt      	0x15e	// 15e <ieee80211_rx_handle_packet+0x15e>
  72:	e46020fc 	andi      	r3, r0, 252
  76:	eb430048 	cmpnei      	r3, 72
  7a:	0c72      	bf      	0x15e	// 15e <ieee80211_rx_handle_packet+0x15e>
  7c:	eb4300c8 	cmpnei      	r3, 200
  80:	64c3      	mvcv      	r3
  82:	74cc      	zextb      	r3, r3
  84:	e923006d 	bnez      	r3, 0x15e	// 15e <ieee80211_rx_handle_packet+0x15e>
  88:	e460208c 	andi      	r3, r0, 140
  8c:	eb430088 	cmpnei      	r3, 136
  90:	d928100b 	ld.h      	r9, (r8, 0x16)
  94:	c4894849 	lsri      	r9, r9, 4
  98:	0825      	bt      	0xe2	// e2 <ieee80211_rx_handle_packet+0xe2>
  9a:	d8680004 	ld.b      	r3, (r8, 0x4)
  9e:	e4632001 	andi      	r3, r3, 1
  a2:	e9230020 	bnez      	r3, 0xe2	// e2 <ieee80211_rx_handle_packet+0xe2>
  a6:	e0000000 	bsr      	0x0	// 0 <ieee80211_hdrlen>
  aa:	6020      	addu      	r0, r8
  ac:	2801      	subi      	r0, 2
  ae:	9821      	ld.w      	r1, (r14, 0x4)
  b0:	8060      	ld.b      	r3, (r0, 0x0)
  b2:	e4632007 	andi      	r3, r3, 7
  b6:	e4430009 	addi      	r2, r3, 10
  ba:	231b      	addi      	r3, 28
  bc:	4243      	lsli      	r2, r2, 3
  be:	60cc      	addu      	r3, r3
  c0:	6084      	addu      	r2, r1
  c2:	604c      	addu      	r1, r3
  c4:	6c27      	mov      	r0, r9
  c6:	e0000000 	bsr      	0x0	// 0 <ieee80211_rx_handle_packet>
  ca:	e900004a 	bez      	r0, 0x15e	// 15e <ieee80211_rx_handle_packet+0x15e>
  ce:	d8642083 	ld.w      	r3, (r4, 0x20c)
  d2:	2300      	addi      	r3, 1
  d4:	dc642083 	st.w      	r3, (r4, 0x20c)
  d8:	9802      	ld.w      	r0, (r14, 0x8)
  da:	e0000000 	bsr      	0x0	// 0 <kfree_skb>
  de:	3001      	movi      	r0, 1
  e0:	07a6      	br      	0x2c	// 2c <ieee80211_rx_handle_packet+0x2c>
  e2:	e4410047 	addi      	r2, r1, 72
  e6:	2135      	addi      	r1, 54
  e8:	07ee      	br      	0xc4	// c4 <ieee80211_rx_handle_packet+0xc4>
  ea:	5a25      	subu      	r1, r2, r1
  ec:	046f      	br      	0x1ca	// 1ca <ieee80211_rx_handle_packet+0x1ca>
  ee:	e906000d 	bez      	r6, 0x108	// 108 <ieee80211_rx_handle_packet+0x108>
  f2:	8764      	ld.b      	r3, (r7, 0x4)
  f4:	e4632001 	andi      	r3, r3, 1
  f8:	e9230008 	bnez      	r3, 0x108	// 108 <ieee80211_rx_handle_packet+0x108>
  fc:	e0000000 	bsr      	0x0	// 0 <os_jiffies>
 100:	dc062024 	st.w      	r0, (r6, 0x90)
 104:	dc262025 	st.w      	r1, (r6, 0x94)
 108:	8f60      	ld.h      	r3, (r7, 0x0)
 10a:	e463200c 	andi      	r3, r3, 12
 10e:	3b48      	cmpnei      	r3, 8
 110:	080c      	bt      	0x128	// 128 <ieee80211_rx_handle_packet+0x128>
 112:	d864207e 	ld.w      	r3, (r4, 0x1f8)
 116:	2300      	addi      	r3, 1
 118:	dc64207e 	st.w      	r3, (r4, 0x1f8)
 11c:	9476      	ld.w      	r3, (r4, 0x58)
 11e:	6c3b      	mov      	r0, r14
 120:	7bcd      	jsr      	r3
 122:	e900ffde 	bez      	r0, 0xde	// de <ieee80211_rx_handle_packet+0xde>
 126:	07d4      	br      	0xce	// ce <ieee80211_rx_handle_packet+0xce>
 128:	e9230009 	bnez      	r3, 0x13a	// 13a <ieee80211_rx_handle_packet+0x13a>
 12c:	d864207f 	ld.w      	r3, (r4, 0x1fc)
 130:	2300      	addi      	r3, 1
 132:	dc64207f 	st.w      	r3, (r4, 0x1fc)
 136:	9479      	ld.w      	r3, (r4, 0x64)
 138:	07f3      	br      	0x11e	// 11e <ieee80211_rx_handle_packet+0x11e>
 13a:	3b44      	cmpnei      	r3, 4
 13c:	0808      	bt      	0x14c	// 14c <ieee80211_rx_handle_packet+0x14c>
 13e:	d8642080 	ld.w      	r3, (r4, 0x200)
 142:	2300      	addi      	r3, 1
 144:	dc642080 	st.w      	r3, (r4, 0x200)
 148:	9477      	ld.w      	r3, (r4, 0x5c)
 14a:	07ea      	br      	0x11e	// 11e <ieee80211_rx_handle_packet+0x11e>
 14c:	3b4c      	cmpnei      	r3, 12
 14e:	0bc0      	bt      	0xce	// ce <ieee80211_rx_handle_packet+0xce>
 150:	d8642081 	ld.w      	r3, (r4, 0x204)
 154:	2300      	addi      	r3, 1
 156:	dc642081 	st.w      	r3, (r4, 0x204)
 15a:	9478      	ld.w      	r3, (r4, 0x60)
 15c:	07e1      	br      	0x11e	// 11e <ieee80211_rx_handle_packet+0x11e>
 15e:	9860      	ld.w      	r3, (r14, 0x0)
 160:	937b      	ld.w      	r3, (r3, 0x6c)
 162:	e9030006 	bez      	r3, 0x16e	// 16e <ieee80211_rx_handle_packet+0x16e>
 166:	6c3b      	mov      	r0, r14
 168:	7bcd      	jsr      	r3
 16a:	e920ffb2 	bnez      	r0, 0xce	// ce <ieee80211_rx_handle_packet+0xce>
 16e:	9861      	ld.w      	r3, (r14, 0x4)
 170:	d90e2002 	ld.w      	r8, (r14, 0x8)
 174:	e903006b 	bez      	r3, 0x24a	// 24a <ieee80211_rx_handle_packet+0x24a>
 178:	e508000b 	addi      	r8, r8, 12
 17c:	d843105c 	ld.h      	r2, (r3, 0xb8)
 180:	d8284006 	ld.bs      	r1, (r8, 0x6)
 184:	6084      	addu      	r2, r1
 186:	d82300ba 	ld.b      	r1, (r3, 0xba)
 18a:	2100      	addi      	r1, 1
 18c:	7446      	sextb      	r1, r1
 18e:	3929      	cmplti      	r1, 10
 190:	748b      	sexth      	r2, r2
 192:	dc43105c 	st.h      	r2, (r3, 0xb8)
 196:	dc2300ba 	st.b      	r1, (r3, 0xba)
 19a:	0c07      	bf      	0x1a8	// 1a8 <ieee80211_rx_handle_packet+0x1a8>
 19c:	d8030022 	ld.b      	r0, (r3, 0x22)
 1a0:	e400207f 	andi      	r0, r0, 127
 1a4:	e920000c 	bnez      	r0, 0x1bc	// 1bc <ieee80211_rx_handle_packet+0x1bc>
 1a8:	3000      	movi      	r0, 0
 1aa:	dc0300ba 	st.b      	r0, (r3, 0xba)
 1ae:	c4228042 	divs      	r2, r2, r1
 1b2:	3000      	movi      	r0, 0
 1b4:	dc03105c 	st.h      	r0, (r3, 0xb8)
 1b8:	dc430022 	st.b      	r2, (r3, 0x22)
 1bc:	d82340bb 	ld.bs      	r1, (r3, 0xbb)
 1c0:	d8434022 	ld.bs      	r2, (r3, 0x22)
 1c4:	6449      	cmplt      	r2, r1
 1c6:	0f92      	bf      	0xea	// ea <ieee80211_rx_handle_packet+0xea>
 1c8:	604a      	subu      	r1, r2
 1ca:	3928      	cmplti      	r1, 9
 1cc:	6443      	mvcv      	r1
 1ce:	7444      	zextb      	r1, r1
 1d0:	e9010009 	bez      	r1, 0x1e2	// 1e2 <ieee80211_rx_handle_packet+0x1e2>
 1d4:	dc4300bb 	st.b      	r2, (r3, 0xbb)
 1d8:	310c      	movi      	r1, 12
 1da:	8b66      	ld.h      	r3, (r3, 0xc)
 1dc:	9800      	ld.w      	r0, (r14, 0x0)
 1de:	e0000000 	bsr      	0x0	// 0 <ieee80211_iface_event>
 1e2:	d98e2001 	ld.w      	r12, (r14, 0x4)
 1e6:	d8680007 	ld.b      	r3, (r8, 0x7)
 1ea:	dc6c0023 	st.b      	r3, (r12, 0x23)
 1ee:	d8680008 	ld.b      	r3, (r8, 0x8)
 1f2:	dc6c0024 	st.b      	r3, (r12, 0x24)
 1f6:	9862      	ld.w      	r3, (r14, 0x8)
 1f8:	3100      	movi      	r1, 0
 1fa:	8b14      	ld.h      	r0, (r3, 0x28)
 1fc:	d84c2028 	ld.w      	r2, (r12, 0xa0)
 200:	d86c2029 	ld.w      	r3, (r12, 0xa4)
 204:	6489      	cmplt      	r2, r2
 206:	6081      	addc      	r2, r0
 208:	60c5      	addc      	r3, r1
 20a:	dc4c2028 	st.w      	r2, (r12, 0xa0)
 20e:	dc6c2029 	st.w      	r3, (r12, 0xa4)
 212:	d86c2001 	ld.w      	r3, (r12, 0x4)
 216:	d84c2000 	ld.w      	r2, (r12, 0x0)
 21a:	e9030006 	bez      	r3, 0x226	// 226 <ieee80211_rx_handle_packet+0x226>
 21e:	e9020004 	bez      	r2, 0x226	// 226 <ieee80211_rx_handle_packet+0x226>
 222:	b261      	st.w      	r3, (r2, 0x4)
 224:	b340      	st.w      	r2, (r3, 0x0)
 226:	3300      	movi      	r3, 0
 228:	dc6c2000 	st.w      	r3, (r12, 0x0)
 22c:	9860      	ld.w      	r3, (r14, 0x0)
 22e:	d863202a 	ld.w      	r3, (r3, 0xa8)
 232:	d8432068 	ld.w      	r2, (r3, 0x1a0)
 236:	dd822001 	st.w      	r12, (r2, 0x4)
 23a:	dc4c2000 	st.w      	r2, (r12, 0x0)
 23e:	e443019f 	addi      	r2, r3, 416
 242:	dc4c2001 	st.w      	r2, (r12, 0x4)
 246:	dd832068 	st.w      	r12, (r3, 0x1a0)
 24a:	8d74      	ld.h      	r3, (r5, 0x28)
 24c:	9547      	ld.w      	r2, (r5, 0x1c)
 24e:	310b      	movi      	r1, 11
 250:	6c13      	mov      	r0, r4
 252:	e0000000 	bsr      	0x0	// 0 <ieee80211_event_notify>
 256:	e900ff4c 	bez      	r0, 0xee	// ee <ieee80211_rx_handle_packet+0xee>
 25a:	6c17      	mov      	r0, r5
 25c:	e0000000 	bsr      	0x0	// 0 <kfree_skb>
 260:	32ce      	movi      	r2, 206
 262:	1022      	lrw      	r1, 0x0	// 268 <ieee80211_rx_handle_packet+0x268>
 264:	1003      	lrw      	r0, 0x0	// 270 <ieee80211_rx_handle_packet+0x270>
 266:	06f0      	br      	0x46	// 46 <ieee80211_rx_handle_packet+0x46>
	...

Disassembly of section .text.ieee80211_recv_skb:

00000000 <ieee80211_recv_skb>:
   0:	14d2      	push      	r4-r5, r15
   2:	6d03      	mov      	r4, r0
   4:	d800202a 	ld.w      	r0, (r0, 0xa8)
   8:	6d47      	mov      	r5, r1
   a:	d8600052 	ld.b      	r3, (r0, 0x52)
   e:	e4632001 	andi      	r3, r3, 1
  12:	e903000c 	bez      	r3, 0x2a	// 2a <ieee80211_recv_skb+0x2a>
  16:	8954      	ld.h      	r2, (r1, 0x28)
  18:	3300      	movi      	r3, 0
  1a:	9127      	ld.w      	r1, (r1, 0x1c)
  1c:	940c      	ld.w      	r0, (r4, 0x30)
  1e:	e0000000 	bsr      	0x0	// 0 <sys_wifi_recv>
  22:	6c17      	mov      	r0, r5
  24:	e0000000 	bsr      	0x0	// 0 <kfree_skb>
  28:	1492      	pop      	r4-r5, r15
  2a:	8464      	ld.b      	r3, (r4, 0x4)
  2c:	a171      	st.b      	r3, (r1, 0x11)
  2e:	e40001bf 	addi      	r0, r0, 448
  32:	e0000000 	bsr      	0x0	// 0 <skb_list_queue>
  36:	d804202a 	ld.w      	r0, (r4, 0xa8)
  3a:	2007      	addi      	r0, 8
  3c:	e0000000 	bsr      	0x0	// 0 <os_sema_up>
  40:	07f4      	br      	0x28	// 28 <ieee80211_recv_skb+0x28>

Disassembly of section .text.ieee80211_rx_packet:

00000000 <ieee80211_rx_packet>:
   0:	14d8      	push      	r4-r11, r15
   2:	91a7      	ld.w      	r5, (r1, 0x1c)
   4:	6d83      	mov      	r6, r0
   6:	8d60      	ld.h      	r3, (r5, 0x0)
   8:	e46320fc 	andi      	r3, r3, 252
   c:	3b5c      	cmpnei      	r3, 28
   e:	6d07      	mov      	r4, r1
  10:	0832      	bt      	0x74	// 74 <ieee80211_rx_packet+0x74>
  12:	5dee      	addi      	r7, r5, 4
  14:	6c13      	mov      	r0, r4
  16:	e0000000 	bsr      	0x0	// 0 <ieee80211_parse_qos>
  1a:	8d60      	ld.h      	r3, (r5, 0x0)
  1c:	e46320fc 	andi      	r3, r3, 252
  20:	eb430050 	cmpnei      	r3, 80
  24:	0c0c      	bf      	0x3c	// 3c <ieee80211_rx_packet+0x3c>
  26:	9447      	ld.w      	r2, (r4, 0x1c)
  28:	8258      	ld.b      	r2, (r2, 0x18)
  2a:	e442207f 	andi      	r2, r2, 127
  2e:	3a4a      	cmpnei      	r2, 10
  30:	0c06      	bf      	0x3c	// 3c <ieee80211_rx_packet+0x3c>
  32:	eb430080 	cmpnei      	r3, 128
  36:	0c03      	bf      	0x3c	// 3c <ieee80211_rx_packet+0x3c>
  38:	3b5c      	cmpnei      	r3, 28
  3a:	0805      	bt      	0x44	// 44 <ieee80211_rx_packet+0x44>
  3c:	6c53      	mov      	r1, r4
  3e:	6c1b      	mov      	r0, r6
  40:	e0000000 	bsr      	0x0	// 0 <ieee80211_scan_rx>
  44:	8d60      	ld.h      	r3, (r5, 0x0)
  46:	e463200c 	andi      	r3, r3, 12
  4a:	3b48      	cmpnei      	r3, 8
  4c:	0c17      	bf      	0x7a	// 7a <ieee80211_rx_packet+0x7a>
  4e:	3500      	movi      	r5, 0
  50:	6e17      	mov      	r8, r5
  52:	e544000b 	addi      	r10, r4, 12
  56:	d8660048 	ld.b      	r3, (r6, 0x48)
  5a:	64e1      	cmplt      	r8, r3
  5c:	084e      	bt      	0xf8	// f8 <ieee80211_rx_packet+0xf8>
  5e:	e9050025 	bez      	r5, 0xa8	// a8 <ieee80211_rx_packet+0xa8>
  62:	6c5f      	mov      	r1, r7
  64:	6c17      	mov      	r0, r5
  66:	e0000000 	bsr      	0x0	// 0 <ieee80211_sta_get>
  6a:	6c43      	mov      	r1, r0
  6c:	3301      	movi      	r3, 1
  6e:	6c93      	mov      	r2, r4
  70:	6c17      	mov      	r0, r5
  72:	0417      	br      	0xa0	// a0 <ieee80211_rx_packet+0xa0>
  74:	e4e50009 	addi      	r7, r5, 10
  78:	07ce      	br      	0x14	// 14 <ieee80211_rx_packet+0x14>
  7a:	d8a62068 	ld.w      	r5, (r6, 0x1a0)
  7e:	ea080000 	movi      	r8, 0
  82:	d9652000 	ld.w      	r11, (r5, 0x0)
  86:	e526019f 	addi      	r9, r6, 416
  8a:	e544000b 	addi      	r10, r4, 12
  8e:	6656      	cmpne      	r5, r9
  90:	0810      	bt      	0xb0	// b0 <ieee80211_rx_packet+0xb0>
  92:	e908ffde 	bez      	r8, 0x4e	// 4e <ieee80211_rx_packet+0x4e>
  96:	3301      	movi      	r3, 1
  98:	6c93      	mov      	r2, r4
  9a:	6c63      	mov      	r1, r8
  9c:	d808202a 	ld.w      	r0, (r8, 0xa8)
  a0:	e0000000 	bsr      	0x0	// 0 <ieee80211_rx_packet>
  a4:	e9200005 	bnez      	r0, 0xae	// ae <ieee80211_rx_packet+0xae>
  a8:	6c13      	mov      	r0, r4
  aa:	e0000000 	bsr      	0x0	// 0 <kfree_skb>
  ae:	1498      	pop      	r4-r11, r15
  b0:	e425001b 	addi      	r1, r5, 28
  b4:	6c1f      	mov      	r0, r7
  b6:	e0000000 	bsr      	0x0	// 0 <ieee80211_rx_packet>
  ba:	e9000019 	bez      	r0, 0xec	// ec <ieee80211_rx_packet+0xec>
  be:	d805202a 	ld.w      	r0, (r5, 0xa8)
  c2:	e9000015 	bez      	r0, 0xec	// ec <ieee80211_rx_packet+0xec>
  c6:	8065      	ld.b      	r3, (r0, 0x5)
  c8:	e4632001 	andi      	r3, r3, 1
  cc:	e9030010 	bez      	r3, 0xec	// ec <ieee80211_rx_packet+0xec>
  d0:	d860202b 	ld.w      	r3, (r0, 0xac)
  d4:	8340      	ld.b      	r2, (r3, 0x0)
  d6:	d86a0004 	ld.b      	r3, (r10, 0x4)
  da:	64ca      	cmpne      	r2, r3
  dc:	0808      	bt      	0xec	// ec <ieee80211_rx_packet+0xec>
  de:	e908000b 	bez      	r8, 0xf4	// f4 <ieee80211_rx_packet+0xf4>
  e2:	3300      	movi      	r3, 0
  e4:	6c93      	mov      	r2, r4
  e6:	6c57      	mov      	r1, r5
  e8:	e0000000 	bsr      	0x0	// 0 <ieee80211_rx_packet>
  ec:	6d6f      	mov      	r5, r11
  ee:	d96b2000 	ld.w      	r11, (r11, 0x0)
  f2:	07ce      	br      	0x8e	// 8e <ieee80211_rx_packet+0x8e>
  f4:	6e17      	mov      	r8, r5
  f6:	07fb      	br      	0xec	// ec <ieee80211_rx_packet+0xec>
  f8:	c4484829 	lsli      	r9, r8, 2
  fc:	6258      	addu      	r9, r6
  fe:	d809201a 	ld.w      	r0, (r9, 0x68)
 102:	e900001a 	bez      	r0, 0x136	// 136 <ieee80211_rx_packet+0x136>
 106:	8065      	ld.b      	r3, (r0, 0x5)
 108:	e4632001 	andi      	r3, r3, 1
 10c:	e9030015 	bez      	r3, 0x136	// 136 <ieee80211_rx_packet+0x136>
 110:	d860202b 	ld.w      	r3, (r0, 0xac)
 114:	8340      	ld.b      	r2, (r3, 0x0)
 116:	d86a0004 	ld.b      	r3, (r10, 0x4)
 11a:	64ca      	cmpne      	r2, r3
 11c:	080d      	bt      	0x136	// 136 <ieee80211_rx_packet+0x136>
 11e:	e905000f 	bez      	r5, 0x13c	// 13c <ieee80211_rx_packet+0x13c>
 122:	6c5f      	mov      	r1, r7
 124:	e0000000 	bsr      	0x0	// 0 <ieee80211_sta_get>
 128:	6c43      	mov      	r1, r0
 12a:	3300      	movi      	r3, 0
 12c:	6c93      	mov      	r2, r4
 12e:	d809201a 	ld.w      	r0, (r9, 0x68)
 132:	e0000000 	bsr      	0x0	// 0 <ieee80211_rx_packet>
 136:	e5080000 	addi      	r8, r8, 1
 13a:	078e      	br      	0x56	// 56 <ieee80211_rx_packet+0x56>
 13c:	6d43      	mov      	r5, r0
 13e:	07fc      	br      	0x136	// 136 <ieee80211_rx_packet+0x136>

Disassembly of section .text.ieee80211_data_to_8023:

00000000 <ieee80211_data_to_8023>:
   0:	14d7      	push      	r4-r10, r15
   2:	1423      	subi      	r14, r14, 12
   4:	9187      	ld.w      	r4, (r1, 0x1c)
   6:	6d83      	mov      	r6, r0
   8:	8c00      	ld.h      	r0, (r4, 0x0)
   a:	e460204c 	andi      	r3, r0, 76
   e:	3b48      	cmpnei      	r3, 8
  10:	6d47      	mov      	r5, r1
  12:	0c05      	bf      	0x1c	// 1c <ieee80211_data_to_8023+0x1c>
  14:	3000      	movi      	r0, 0
  16:	2800      	subi      	r0, 1
  18:	1403      	addi      	r14, r14, 12
  1a:	1497      	pop      	r4-r10, r15
  1c:	e0000000 	bsr      	0x0	// 0 <ieee80211_hdrlen>
  20:	7601      	zexth      	r8, r0
  22:	e4480006 	addi      	r2, r8, 7
  26:	8d74      	ld.h      	r3, (r5, 0x28)
  28:	64c9      	cmplt      	r2, r3
  2a:	0ff5      	bf      	0x14	// 14 <ieee80211_data_to_8023+0x14>
  2c:	8662      	ld.b      	r3, (r6, 0x2)
  2e:	e4632070 	andi      	r3, r3, 112
  32:	e9030013 	bez      	r3, 0x58	// 58 <ieee80211_data_to_8023+0x58>
  36:	3206      	movi      	r2, 6
  38:	e424000f 	addi      	r1, r4, 16
  3c:	6c3b      	mov      	r0, r14
  3e:	e0000000 	bsr      	0x0	// 0 <memcpy>
  42:	e4281005 	subi      	r1, r8, 6
  46:	6c17      	mov      	r0, r5
  48:	e0000000 	bsr      	0x0	// 0 <skb_pull>
  4c:	3206      	movi      	r2, 6
  4e:	6c7b      	mov      	r1, r14
  50:	e0000000 	bsr      	0x0	// 0 <memcpy>
  54:	3000      	movi      	r0, 0
  56:	07e1      	br      	0x18	// 18 <ieee80211_data_to_8023+0x18>
  58:	95c7      	ld.w      	r6, (r5, 0x1c)
  5a:	d9441000 	ld.h      	r10, (r4, 0x0)
  5e:	61a0      	addu      	r6, r8
  60:	e46a2100 	andi      	r3, r10, 256
  64:	86e6      	ld.b      	r7, (r6, 0x6)
  66:	d9260007 	ld.b      	r9, (r6, 0x7)
  6a:	e903002e 	bez      	r3, 0xc6	// c6 <ieee80211_data_to_8023+0xc6>
  6e:	e424000f 	addi      	r1, r4, 16
  72:	3206      	movi      	r2, 6
  74:	6c3b      	mov      	r0, r14
  76:	e0000000 	bsr      	0x0	// 0 <memcpy>
  7a:	e46a20fc 	andi      	r3, r10, 252
  7e:	3b5c      	cmpnei      	r3, 28
  80:	0825      	bt      	0xca	// ca <ieee80211_data_to_8023+0xca>
  82:	5c2e      	addi      	r1, r4, 4
  84:	3206      	movi      	r2, 6
  86:	c44e0020 	addu      	r0, r14, r2
  8a:	e0000000 	bsr      	0x0	// 0 <memcpy>
  8e:	1122      	lrw      	r1, 0x0	// 114 <ieee80211_data_to_8023+0x114>
  90:	6c1b      	mov      	r0, r6
  92:	e0000000 	bsr      	0x0	// 0 <ieee80211_data_to_8023>
  96:	e900000a 	bez      	r0, 0xaa	// aa <ieee80211_data_to_8023+0xaa>
  9a:	4768      	lsli      	r3, r7, 8
  9c:	6ce4      	or      	r3, r9
  9e:	eb4380f3 	cmpnei      	r3, 33011
  a2:	0c04      	bf      	0xaa	// aa <ieee80211_data_to_8023+0xaa>
  a4:	eb438137 	cmpnei      	r3, 33079
  a8:	0808      	bt      	0xb8	// b8 <ieee80211_data_to_8023+0xb8>
  aa:	103c      	lrw      	r1, 0x0	// 118 <ieee80211_data_to_8023+0x118>
  ac:	6c1b      	mov      	r0, r6
  ae:	e0000000 	bsr      	0x0	// 0 <ieee80211_data_to_8023>
  b2:	6d03      	mov      	r4, r0
  b4:	e900001d 	bez      	r0, 0xee	// ee <ieee80211_data_to_8023+0xee>
  b8:	e4281005 	subi      	r1, r8, 6
  bc:	6c17      	mov      	r0, r5
  be:	e0000000 	bsr      	0x0	// 0 <skb_pull>
  c2:	320c      	movi      	r2, 12
  c4:	07c5      	br      	0x4e	// 4e <ieee80211_data_to_8023+0x4e>
  c6:	5c2e      	addi      	r1, r4, 4
  c8:	07d5      	br      	0x72	// 72 <ieee80211_data_to_8023+0x72>
  ca:	e46a2300 	andi      	r3, r10, 768
  ce:	eb430300 	cmpnei      	r3, 768
  d2:	0804      	bt      	0xda	// da <ieee80211_data_to_8023+0xda>
  d4:	e4240017 	addi      	r1, r4, 24
  d8:	07d6      	br      	0x84	// 84 <ieee80211_data_to_8023+0x84>
  da:	e54a2200 	andi      	r10, r10, 512
  de:	e90a0005 	bez      	r10, 0xe8	// e8 <ieee80211_data_to_8023+0xe8>
  e2:	e424000f 	addi      	r1, r4, 16
  e6:	07cf      	br      	0x84	// 84 <ieee80211_data_to_8023+0x84>
  e8:	e4240009 	addi      	r1, r4, 10
  ec:	07cc      	br      	0x84	// 84 <ieee80211_data_to_8023+0x84>
  ee:	e428100d 	subi      	r1, r8, 14
  f2:	6c17      	mov      	r0, r5
  f4:	e0000000 	bsr      	0x0	// 0 <skb_pull>
  f8:	320c      	movi      	r2, 12
  fa:	6c7b      	mov      	r1, r14
  fc:	9507      	ld.w      	r0, (r5, 0x1c)
  fe:	e0000000 	bsr      	0x0	// 0 <memcpy>
 102:	8d74      	ld.h      	r3, (r5, 0x28)
 104:	2b0d      	subi      	r3, 14
 106:	74cd      	zexth      	r3, r3
 108:	9547      	ld.w      	r2, (r5, 0x1c)
 10a:	4b28      	lsri      	r1, r3, 8
 10c:	a22c      	st.b      	r1, (r2, 0xc)
 10e:	a26d      	st.b      	r3, (r2, 0xd)
 110:	6c13      	mov      	r0, r4
 112:	0783      	br      	0x18	// 18 <ieee80211_data_to_8023+0x18>
	...

Disassembly of section .text.ieee80211_rx_forward:

00000000 <ieee80211_rx_forward>:
   0:	14d3      	push      	r4-r6, r15
   2:	d860202a 	ld.w      	r3, (r0, 0xa8)
   6:	6d43      	mov      	r5, r0
   8:	d8832078 	ld.w      	r4, (r3, 0x1e0)
   c:	6d87      	mov      	r6, r1
   e:	e9040006 	bez      	r4, 0x1a	// 1a <ieee80211_rx_forward+0x1a>
  12:	d8642048 	ld.w      	r3, (r4, 0x120)
  16:	7bcd      	jsr      	r3
  18:	1493      	pop      	r4-r6, r15
  1a:	8860      	ld.h      	r3, (r0, 0x0)
  1c:	e4632002 	andi      	r3, r3, 2
  20:	e9230004 	bnez      	r3, 0x28	// 28 <ieee80211_rx_forward+0x28>
  24:	3000      	movi      	r0, 0
  26:	07f9      	br      	0x18	// 18 <ieee80211_rx_forward+0x18>
  28:	9127      	ld.w      	r1, (r1, 0x1c)
  2a:	8160      	ld.b      	r3, (r1, 0x0)
  2c:	e4632001 	andi      	r3, r3, 1
  30:	e9230012 	bnez      	r3, 0x54	// 54 <ieee80211_rx_forward+0x54>
  34:	e0000000 	bsr      	0x0	// 0 <ieee80211_sta_get>
  38:	e900fff6 	bez      	r0, 0x24	// 24 <ieee80211_rx_forward+0x24>
  3c:	b60e      	st.w      	r0, (r6, 0x38)
  3e:	6c5b      	mov      	r1, r6
  40:	e40501bb 	addi      	r0, r5, 444
  44:	e0000000 	bsr      	0x0	// 0 <skb_list_queue>
  48:	d805202a 	ld.w      	r0, (r5, 0xa8)
  4c:	e0000000 	bsr      	0x0	// 0 <os_sema_up>
  50:	3001      	movi      	r0, 1
  52:	07e3      	br      	0x18	// 18 <ieee80211_rx_forward+0x18>
  54:	6c53      	mov      	r1, r4
  56:	6c1b      	mov      	r0, r6
  58:	e0000000 	bsr      	0x0	// 0 <skb_copy>
  5c:	6c43      	mov      	r1, r0
  5e:	e900ffe3 	bez      	r0, 0x24	// 24 <ieee80211_rx_forward+0x24>
  62:	e40501bb 	addi      	r0, r5, 444
  66:	e0000000 	bsr      	0x0	// 0 <skb_list_queue>
  6a:	d805202a 	ld.w      	r0, (r5, 0xa8)
  6e:	e0000000 	bsr      	0x0	// 0 <os_sema_up>
  72:	6c13      	mov      	r0, r4
  74:	07d2      	br      	0x18	// 18 <ieee80211_rx_forward+0x18>

Disassembly of section .text.ieee80211_rx_8023_data:

00000000 <ieee80211_rx_8023_data>:
   0:	14d4      	push      	r4-r7, r15
   2:	9062      	ld.w      	r3, (r0, 0x8)
   4:	6d03      	mov      	r4, r0
   6:	93a7      	ld.w      	r5, (r3, 0x1c)
   8:	8560      	ld.b      	r3, (r5, 0x0)
   a:	e4632001 	andi      	r3, r3, 1
   e:	e9230035 	bnez      	r3, 0x78	// 78 <ieee80211_rx_8023_data+0x78>
  12:	9400      	ld.w      	r0, (r4, 0x0)
  14:	d840205b 	ld.w      	r2, (r0, 0x16c)
  18:	e922004a 	bnez      	r2, 0xac	// ac <ieee80211_rx_8023_data+0xac>
  1c:	94e2      	ld.w      	r7, (r4, 0x8)
  1e:	94a0      	ld.w      	r5, (r4, 0x0)
  20:	97c7      	ld.w      	r6, (r7, 0x1c)
  22:	866c      	ld.b      	r3, (r6, 0xc)
  24:	864d      	ld.b      	r2, (r6, 0xd)
  26:	4368      	lsli      	r3, r3, 8
  28:	6cc8      	or      	r3, r2
  2a:	74cf      	sexth      	r3, r3
  2c:	ea027771 	movi      	r2, 30577
  30:	6c8a      	nor      	r2, r2
  32:	648e      	cmpne      	r3, r2
  34:	0852      	bt      	0xd8	// d8 <ieee80211_rx_8023_data+0xd8>
  36:	6c5b      	mov      	r1, r6
  38:	5d16      	addi      	r0, r5, 6
  3a:	e0000000 	bsr      	0x0	// 0 <ieee80211_rx_8023_data>
  3e:	e900004d 	bez      	r0, 0xd8	// d8 <ieee80211_rx_8023_data+0xd8>
  42:	950d      	ld.w      	r0, (r5, 0x34)
  44:	e900004a 	bez      	r0, 0xd8	// d8 <ieee80211_rx_8023_data+0xd8>
  48:	d985200e 	ld.w      	r12, (r5, 0x38)
  4c:	e90c0046 	bez      	r12, 0xd8	// d8 <ieee80211_rx_8023_data+0xd8>
  50:	8572      	ld.b      	r3, (r5, 0x12)
  52:	3b05      	cmphsi      	r3, 6
  54:	0c07      	bf      	0x62	// 62 <ieee80211_rx_8023_data+0x62>
  56:	8f74      	ld.h      	r3, (r7, 0x28)
  58:	2b0d      	subi      	r3, 14
  5a:	e446000d 	addi      	r2, r6, 14
  5e:	5e36      	addi      	r1, r6, 6
  60:	7bf1      	jsr      	r12
  62:	9402      	ld.w      	r0, (r4, 0x8)
  64:	e0000000 	bsr      	0x0	// 0 <kfree_skb>
  68:	9440      	ld.w      	r2, (r4, 0x0)
  6a:	d8622084 	ld.w      	r3, (r2, 0x210)
  6e:	2300      	addi      	r3, 1
  70:	dc622084 	st.w      	r3, (r2, 0x210)
  74:	3500      	movi      	r5, 0
  76:	040b      	br      	0x8c	// 8c <ieee80211_rx_8023_data+0x8c>
  78:	90c0      	ld.w      	r6, (r0, 0x0)
  7a:	2505      	addi      	r5, 6
  7c:	6c57      	mov      	r1, r5
  7e:	5e16      	addi      	r0, r6, 6
  80:	e0000000 	bsr      	0x0	// 0 <ieee80211_rx_8023_data>
  84:	e9000006 	bez      	r0, 0x90	// 90 <ieee80211_rx_8023_data+0x90>
  88:	3500      	movi      	r5, 0
  8a:	2d00      	subi      	r5, 1
  8c:	6c17      	mov      	r0, r5
  8e:	1494      	pop      	r4-r7, r15
  90:	d806202a 	ld.w      	r0, (r6, 0xa8)
  94:	d8602078 	ld.w      	r3, (r0, 0x1e0)
  98:	e903ffbd 	bez      	r3, 0x12	// 12 <ieee80211_rx_8023_data+0x12>
  9c:	d863204a 	ld.w      	r3, (r3, 0x128)
  a0:	6c9b      	mov      	r2, r6
  a2:	6c57      	mov      	r1, r5
  a4:	7bcd      	jsr      	r3
  a6:	e920fff1 	bnez      	r0, 0x88	// 88 <ieee80211_rx_8023_data+0x88>
  aa:	07b4      	br      	0x12	// 12 <ieee80211_rx_8023_data+0x12>
  ac:	8065      	ld.b      	r3, (r0, 0x5)
  ae:	e4632008 	andi      	r3, r3, 8
  b2:	e923ffb5 	bnez      	r3, 0x1c	// 1c <ieee80211_rx_8023_data+0x1c>
  b6:	d8622025 	ld.w      	r3, (r2, 0x94)
  ba:	9422      	ld.w      	r1, (r4, 0x8)
  bc:	7bcd      	jsr      	r3
  be:	07af      	br      	0x1c	// 1c <ieee80211_rx_8023_data+0x1c>
  c0:	9440      	ld.w      	r2, (r4, 0x0)
  c2:	d8622086 	ld.w      	r3, (r2, 0x218)
  c6:	2300      	addi      	r3, 1
  c8:	dc622086 	st.w      	r3, (r2, 0x218)
  cc:	07d4      	br      	0x74	// 74 <ieee80211_rx_8023_data+0x74>
  ce:	9422      	ld.w      	r1, (r4, 0x8)
  d0:	9400      	ld.w      	r0, (r4, 0x0)
  d2:	e0000000 	bsr      	0x0	// 0 <ieee80211_rx_8023_data>
  d6:	07db      	br      	0x8c	// 8c <ieee80211_rx_8023_data+0x8c>
  d8:	6c17      	mov      	r0, r5
  da:	3200      	movi      	r2, 0
  dc:	6c5f      	mov      	r1, r7
  de:	e0000000 	bsr      	0x0	// 0 <ieee80211_pkthook_handle_data>
  e2:	6d43      	mov      	r5, r0
  e4:	e920ffee 	bnez      	r0, 0xc0	// c0 <ieee80211_rx_8023_data+0xc0>
  e8:	9441      	ld.w      	r2, (r4, 0x4)
  ea:	9422      	ld.w      	r1, (r4, 0x8)
  ec:	9400      	ld.w      	r0, (r4, 0x0)
  ee:	e0000000 	bsr      	0x0	// 0 <ieee80211_rx_8023_data>
  f2:	e900ffee 	bez      	r0, 0xce	// ce <ieee80211_rx_8023_data+0xce>
  f6:	9440      	ld.w      	r2, (r4, 0x0)
  f8:	d8622082 	ld.w      	r3, (r2, 0x208)
  fc:	2300      	addi      	r3, 1
  fe:	dc622082 	st.w      	r3, (r2, 0x208)
 102:	07c5      	br      	0x8c	// 8c <ieee80211_rx_8023_data+0x8c>

Disassembly of section .text.ieee80211_rx:

00000000 <ieee80211_rx>:
   0:	14d6      	push      	r4-r9, r15
   2:	6d87      	mov      	r6, r1
   4:	6e4b      	mov      	r9, r2
   6:	6e0f      	mov      	r8, r3
   8:	370b      	movi      	r7, 11
   a:	1191      	lrw      	r4, 0x0	// cc <ieee80211_rx+0xcc>
   c:	2f00      	subi      	r7, 1
   e:	75dc      	zextb      	r7, r7
  10:	e9270008 	bnez      	r7, 0x20	// 20 <ieee80211_rx+0x20>
  14:	9470      	ld.w      	r3, (r4, 0x40)
  16:	2300      	addi      	r3, 1
  18:	3000      	movi      	r0, 0
  1a:	b470      	st.w      	r3, (r4, 0x40)
  1c:	280b      	subi      	r0, 12
  1e:	1496      	pop      	r4-r9, r15
  20:	d804003a 	ld.b      	r0, (r4, 0x3a)
  24:	d8640038 	ld.b      	r3, (r4, 0x38)
  28:	60c0      	addu      	r3, r0
  2a:	d844003b 	ld.b      	r2, (r4, 0x3b)
  2e:	d8040039 	ld.b      	r0, (r4, 0x39)
  32:	60e0      	addu      	r3, r8
  34:	6008      	addu      	r0, r2
  36:	600c      	addu      	r0, r3
  38:	e0000000 	bsr      	0x0	// 0 <alloc_rx_skb>
  3c:	6d43      	mov      	r5, r0
  3e:	e9200006 	bnez      	r0, 0x4a	// 4a <ieee80211_rx+0x4a>
  42:	3002      	movi      	r0, 2
  44:	e0000000 	bsr      	0x0	// 0 <os_sleep_ms>
  48:	07e2      	br      	0xc	// c <ieee80211_rx+0xc>
  4a:	8875      	ld.h      	r3, (r0, 0x2a)
  4c:	3201      	movi      	r2, 1
  4e:	c4625c47 	ins      	r3, r2, 9, 7
  52:	a875      	st.h      	r3, (r0, 0x2a)
  54:	d864003a 	ld.b      	r3, (r4, 0x3a)
  58:	d8240038 	ld.b      	r1, (r4, 0x38)
  5c:	604c      	addu      	r1, r3
  5e:	e0000000 	bsr      	0x0	// 0 <skb_reserve>
  62:	6ca3      	mov      	r2, r8
  64:	6c67      	mov      	r1, r9
  66:	9507      	ld.w      	r0, (r5, 0x1c)
  68:	e0000000 	bsr      	0x0	// 0 <hw_memcpy>
  6c:	6c63      	mov      	r1, r8
  6e:	6c17      	mov      	r0, r5
  70:	e0000000 	bsr      	0x0	// 0 <skb_put>
  74:	946f      	ld.w      	r3, (r4, 0x3c)
  76:	2300      	addi      	r3, 1
  78:	b46f      	st.w      	r3, (r4, 0x3c)
  7a:	e485000b 	addi      	r4, r5, 12
  7e:	320c      	movi      	r2, 12
  80:	3100      	movi      	r1, 0
  82:	6c13      	mov      	r0, r4
  84:	e0000000 	bsr      	0x0	// 0 <memset>
  88:	8660      	ld.b      	r3, (r6, 0x0)
  8a:	a570      	st.b      	r3, (r5, 0x10)
  8c:	8662      	ld.b      	r3, (r6, 0x2)
  8e:	a573      	st.b      	r3, (r5, 0x13)
  90:	8663      	ld.b      	r3, (r6, 0x3)
  92:	a572      	st.b      	r3, (r5, 0x12)
  94:	8e62      	ld.h      	r3, (r6, 0x4)
  96:	b563      	st.w      	r3, (r5, 0xc)
  98:	8661      	ld.b      	r3, (r6, 0x1)
  9a:	c4035463 	zext      	r3, r3, 3, 0
  9e:	a574      	st.b      	r3, (r5, 0x14)
  a0:	d8691000 	ld.h      	r3, (r9, 0x0)
  a4:	e463200c 	andi      	r3, r3, 12
  a8:	108a      	lrw      	r4, 0x0	// d0 <ieee80211_rx+0xd0>
  aa:	3b48      	cmpnei      	r3, 8
  ac:	e404100b 	subi      	r0, r4, 12
  b0:	6c57      	mov      	r1, r5
  b2:	c4040c20 	incf      	r0, r4, 0
  b6:	dd05100b 	st.h      	r8, (r5, 0x16)
  ba:	e0000000 	bsr      	0x0	// 0 <skb_list_queue>
  be:	e40411b3 	subi      	r0, r4, 436
  c2:	e0000000 	bsr      	0x0	// 0 <os_sema_up>
  c6:	3000      	movi      	r0, 0
  c8:	07ab      	br      	0x1e	// 1e <ieee80211_rx+0x1e>
	...

Disassembly of section .text.ieee80211_input:

00000000 <ieee80211_input>:
   0:	14d5      	push      	r4-r8, r15
   2:	6d43      	mov      	r5, r0
   4:	6e07      	mov      	r8, r1
   6:	6dcb      	mov      	r7, r2
   8:	e0000000 	bsr      	0x0	// 0 <ieee80211_iface_get>
   c:	6d03      	mov      	r4, r0
   e:	e9000042 	bez      	r0, 0x92	// 92 <ieee80211_input+0x92>
  12:	d860202a 	ld.w      	r3, (r0, 0xa8)
  16:	d8630052 	ld.b      	r3, (r3, 0x52)
  1a:	e4632001 	andi      	r3, r3, 1
  1e:	e9030009 	bez      	r3, 0x30	// 30 <ieee80211_input+0x30>
  22:	3300      	movi      	r3, 0
  24:	6c9f      	mov      	r2, r7
  26:	6c63      	mov      	r1, r8
  28:	900c      	ld.w      	r0, (r0, 0x30)
  2a:	e0000000 	bsr      	0x0	// 0 <sys_wifi_recv>
  2e:	1495      	pop      	r4-r8, r15
  30:	10bb      	lrw      	r5, 0x0	// 9c <ieee80211_input+0x9c>
  32:	d805003a 	ld.b      	r0, (r5, 0x3a)
  36:	d8650038 	ld.b      	r3, (r5, 0x38)
  3a:	60c0      	addu      	r3, r0
  3c:	d845003b 	ld.b      	r2, (r5, 0x3b)
  40:	d8050039 	ld.b      	r0, (r5, 0x39)
  44:	60dc      	addu      	r3, r7
  46:	6008      	addu      	r0, r2
  48:	600c      	addu      	r0, r3
  4a:	e0000000 	bsr      	0x0	// 0 <alloc_rx_skb>
  4e:	6d83      	mov      	r6, r0
  50:	e900ffef 	bez      	r0, 0x2e	// 2e <ieee80211_input+0x2e>
  54:	d865003a 	ld.b      	r3, (r5, 0x3a)
  58:	d8250038 	ld.b      	r1, (r5, 0x38)
  5c:	604c      	addu      	r1, r3
  5e:	e0000000 	bsr      	0x0	// 0 <skb_reserve>
  62:	6c9f      	mov      	r2, r7
  64:	6c63      	mov      	r1, r8
  66:	9607      	ld.w      	r0, (r6, 0x1c)
  68:	e0000000 	bsr      	0x0	// 0 <hw_memcpy>
  6c:	6c5f      	mov      	r1, r7
  6e:	6c1b      	mov      	r0, r6
  70:	e0000000 	bsr      	0x0	// 0 <skb_put>
  74:	8464      	ld.b      	r3, (r4, 0x4)
  76:	a671      	st.b      	r3, (r6, 0x11)
  78:	d804202a 	ld.w      	r0, (r4, 0xa8)
  7c:	6c5b      	mov      	r1, r6
  7e:	e40001bf 	addi      	r0, r0, 448
  82:	e0000000 	bsr      	0x0	// 0 <skb_list_queue>
  86:	d804202a 	ld.w      	r0, (r4, 0xa8)
  8a:	2007      	addi      	r0, 8
  8c:	e0000000 	bsr      	0x0	// 0 <os_sema_up>
  90:	07cf      	br      	0x2e	// 2e <ieee80211_input+0x2e>
  92:	6c57      	mov      	r1, r5
  94:	1003      	lrw      	r0, 0x0	// a0 <ieee80211_input+0xa0>
  96:	e0000000 	bsr      	0x0	// 0 <hgprintf>
  9a:	07ca      	br      	0x2e	// 2e <umac4+0x2e>
	...
