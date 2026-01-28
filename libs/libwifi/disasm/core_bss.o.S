
libwifi/o/core_bss.o:     file format elf32-csky-little


Disassembly of section .text.ieee80211_bss_add:

00000000 <ieee80211_bss_add>:
   0:	14d3      	push      	r4-r6, r15
   2:	6d07      	mov      	r4, r1
   4:	e4c001cb 	addi      	r6, r0, 460
   8:	3100      	movi      	r1, 0
   a:	6d43      	mov      	r5, r0
   c:	2900      	subi      	r1, 1
   e:	6c1b      	mov      	r0, r6
  10:	e0000000 	bsr      	0x0	// 0 <os_mutex_lock>
  14:	9440      	ld.w      	r2, (r4, 0x0)
  16:	e9020016 	bez      	r2, 0x42	// 42 <ieee80211_bss_add+0x42>
  1a:	9461      	ld.w      	r3, (r4, 0x4)
  1c:	e9030004 	bez      	r3, 0x24	// 24 <ieee80211_bss_add+0x24>
  20:	b261      	st.w      	r3, (r2, 0x4)
  22:	b340      	st.w      	r2, (r3, 0x0)
  24:	3300      	movi      	r3, 0
  26:	b460      	st.w      	r3, (r4, 0x0)
  28:	d8652075 	ld.w      	r3, (r5, 0x1d4)
  2c:	6c1b      	mov      	r0, r6
  2e:	b381      	st.w      	r4, (r3, 0x4)
  30:	b460      	st.w      	r3, (r4, 0x0)
  32:	e46501d3 	addi      	r3, r5, 468
  36:	b461      	st.w      	r3, (r4, 0x4)
  38:	dc852075 	st.w      	r4, (r5, 0x1d4)
  3c:	e0000000 	bsr      	0x0	// 0 <os_mutex_unlock>
  40:	1493      	pop      	r4-r6, r15
  42:	d86501dc 	ld.b      	r3, (r5, 0x1dc)
  46:	2300      	addi      	r3, 1
  48:	dc6501dc 	st.b      	r3, (r5, 0x1dc)
  4c:	07ee      	br      	0x28	// 28 <ieee80211_bss_add+0x28>

Disassembly of section .text.ieee80211_bss_new:

00000000 <ieee80211_bss_new>:
   0:	14d2      	push      	r4-r5, r15
   2:	6d43      	mov      	r5, r0
   4:	3058      	movi      	r0, 88
   6:	e0000000 	bsr      	0x0	// 0 <_os_zalloc>
   a:	6d03      	mov      	r4, r0
   c:	e900000e 	bez      	r0, 0x28	// 28 <ieee80211_bss_new+0x28>
  10:	e0000000 	bsr      	0x0	// 0 <cpu_intrpt_save>
  14:	3301      	movi      	r3, 1
  16:	b462      	st.w      	r3, (r4, 0x8)
  18:	e0000000 	bsr      	0x0	// 0 <cpu_intrpt_restore>
  1c:	3206      	movi      	r2, 6
  1e:	6c57      	mov      	r1, r5
  20:	e404000b 	addi      	r0, r4, 12
  24:	e0000000 	bsr      	0x0	// 0 <memcpy>
  28:	6c13      	mov      	r0, r4
  2a:	1492      	pop      	r4-r5, r15

Disassembly of section .text.ieee80211_bss_parse_elements:

00000000 <ieee80211_bss_parse_elements>:
   0:	14d8      	push      	r4-r11, r15
   2:	1421      	subi      	r14, r14, 4
   4:	d860003c 	ld.b      	r3, (r0, 0x3c)
   8:	6e4b      	mov      	r9, r2
   a:	e46320df 	andi      	r3, r3, 223
   e:	3200      	movi      	r2, 0
  10:	c4625c06 	ins      	r3, r2, 6, 6
  14:	6d43      	mov      	r5, r0
  16:	6dc7      	mov      	r7, r1
  18:	b052      	st.w      	r2, (r0, 0x48)
  1a:	dc60003c 	st.b      	r3, (r0, 0x3c)
  1e:	6d07      	mov      	r4, r1
  20:	e5000047 	addi      	r8, r0, 72
  24:	e5400011 	addi      	r10, r0, 18
  28:	c5270023 	addu      	r3, r7, r9
  2c:	60d2      	subu      	r3, r4
  2e:	3b21      	cmplti      	r3, 2
  30:	0805      	bt      	0x3a	// 3a <ieee80211_bss_parse_elements+0x3a>
  32:	8421      	ld.b      	r1, (r4, 0x1)
  34:	5942      	addi      	r2, r1, 1
  36:	64c9      	cmplt      	r2, r3
  38:	0803      	bt      	0x3e	// 3e <ieee80211_bss_parse_elements+0x3e>
  3a:	1401      	addi      	r14, r14, 4
  3c:	1498      	pop      	r4-r11, r15
  3e:	d9640000 	ld.b      	r11, (r4, 0x0)
  42:	eb4b0030 	cmpnei      	r11, 48
  46:	5cc6      	addi      	r6, r4, 2
  48:	0c40      	bf      	0xc8	// c8 <ieee80211_bss_parse_elements+0xc8>
  4a:	eb0b0030 	cmphsi      	r11, 49
  4e:	0809      	bt      	0x60	// 60 <ieee80211_bss_parse_elements+0x60>
  50:	e90b0019 	bez      	r11, 0x82	// 82 <ieee80211_bss_parse_elements+0x82>
  54:	eb4b0003 	cmpnei      	r11, 3
  58:	0c23      	bf      	0x9e	// 9e <ieee80211_bss_parse_elements+0x9e>
  5a:	8481      	ld.b      	r4, (r4, 0x1)
  5c:	6118      	addu      	r4, r6
  5e:	07e5      	br      	0x28	// 28 <ieee80211_bss_parse_elements+0x28>
  60:	eb4b00dd 	cmpnei      	r11, 221
  64:	0c40      	bf      	0xe4	// e4 <ieee80211_bss_parse_elements+0xe4>
  66:	eb4b00e8 	cmpnei      	r11, 232
  6a:	0c22      	bf      	0xae	// ae <ieee80211_bss_parse_elements+0xae>
  6c:	eb4b00d6 	cmpnei      	r11, 214
  70:	0bf5      	bt      	0x5a	// 5a <ieee80211_bss_parse_elements+0x5a>
  72:	3942      	cmpnei      	r1, 2
  74:	0bf3      	bt      	0x5a	// 5a <ieee80211_bss_parse_elements+0x5a>
  76:	8463      	ld.b      	r3, (r4, 0x3)
  78:	8442      	ld.b      	r2, (r4, 0x2)
  7a:	4368      	lsli      	r3, r3, 8
  7c:	6cc8      	or      	r3, r2
  7e:	ad7b      	st.h      	r3, (r5, 0x36)
  80:	07ed      	br      	0x5a	// 5a <ieee80211_bss_parse_elements+0x5a>
  82:	5963      	subi      	r3, r1, 1
  84:	74cc      	zextb      	r3, r3
  86:	3b1f      	cmphsi      	r3, 32
  88:	0be9      	bt      	0x5a	// 5a <ieee80211_bss_parse_elements+0x5a>
  8a:	6c87      	mov      	r2, r1
  8c:	6c2b      	mov      	r0, r10
  8e:	6c5b      	mov      	r1, r6
  90:	e0000000 	bsr      	0x0	// 0 <memcpy>
  94:	8461      	ld.b      	r3, (r4, 0x1)
  96:	60d4      	addu      	r3, r5
  98:	dd630012 	st.b      	r11, (r3, 0x12)
  9c:	07df      	br      	0x5a	// 5a <ieee80211_bss_parse_elements+0x5a>
  9e:	d8650033 	ld.b      	r3, (r5, 0x33)
  a2:	e923ffdc 	bnez      	r3, 0x5a	// 5a <ieee80211_bss_parse_elements+0x5a>
  a6:	8462      	ld.b      	r3, (r4, 0x2)
  a8:	dc650033 	st.b      	r3, (r5, 0x33)
  ac:	07d7      	br      	0x5a	// 5a <ieee80211_bss_parse_elements+0x5a>
  ae:	6cbb      	mov      	r2, r14
  b0:	6c1b      	mov      	r0, r6
  b2:	e0000000 	bsr      	0x0	// 0 <ieee80211_ie_parse_s1g_operation>
  b6:	e920ffd2 	bnez      	r0, 0x5a	// 5a <ieee80211_bss_parse_elements+0x5a>
  ba:	3203      	movi      	r2, 3
  bc:	9820      	ld.w      	r1, (r14, 0x0)
  be:	e0000000 	bsr      	0x0	// 0 <ieee80211_freq_to_chan>
  c2:	dc050033 	st.b      	r0, (r5, 0x33)
  c6:	07ca      	br      	0x5a	// 5a <ieee80211_bss_parse_elements+0x5a>
  c8:	d865003c 	ld.b      	r3, (r5, 0x3c)
  cc:	3201      	movi      	r2, 1
  ce:	c4625c05 	ins      	r3, r2, 5, 5
  d2:	dc65003c 	st.b      	r3, (r5, 0x3c)
  d6:	3302      	movi      	r3, 2
  d8:	b572      	st.w      	r3, (r5, 0x48)
  da:	6ca3      	mov      	r2, r8
  dc:	6c1b      	mov      	r0, r6
  de:	e0000000 	bsr      	0x0	// 0 <ieee80211_ie_parse_wpa_rsn>
  e2:	07bc      	br      	0x5a	// 5a <ieee80211_bss_parse_elements+0x5a>
  e4:	8462      	ld.b      	r3, (r4, 0x2)
  e6:	8403      	ld.b      	r0, (r4, 0x3)
  e8:	4010      	lsli      	r0, r0, 16
  ea:	4378      	lsli      	r3, r3, 24
  ec:	6cc0      	or      	r3, r0
  ee:	8404      	ld.b      	r0, (r4, 0x4)
  f0:	4008      	lsli      	r0, r0, 8
  f2:	6cc0      	or      	r3, r0
  f4:	4b68      	lsri      	r3, r3, 8
  f6:	eb4350f2 	cmpnei      	r3, 20722
  fa:	8445      	ld.b      	r2, (r4, 0x5)
  fc:	0baf      	bt      	0x5a	// 5a <ieee80211_bss_parse_elements+0x5a>
  fe:	3906      	cmphsi      	r1, 7
 100:	0fad      	bf      	0x5a	// 5a <ieee80211_bss_parse_elements+0x5a>
 102:	3a41      	cmpnei      	r2, 1
 104:	0bab      	bt      	0x5a	// 5a <ieee80211_bss_parse_elements+0x5a>
 106:	9572      	ld.w      	r3, (r5, 0x48)
 108:	3b42      	cmpnei      	r3, 2
 10a:	0fa8      	bf      	0x5a	// 5a <ieee80211_bss_parse_elements+0x5a>
 10c:	d865003c 	ld.b      	r3, (r5, 0x3c)
 110:	c4625c05 	ins      	r3, r2, 5, 5
 114:	b552      	st.w      	r2, (r5, 0x48)
 116:	dc65003c 	st.b      	r3, (r5, 0x3c)
 11a:	6ca3      	mov      	r2, r8
 11c:	5c16      	addi      	r0, r4, 6
 11e:	07e0      	br      	0xde	// de <ieee80211_bss_parse_elements+0xde>

Disassembly of section .text.ieee80211_bss_free.isra.3:

00000000 <ieee80211_bss_free.isra.3>:
   0:	14d3      	push      	r4-r6, r15
   2:	6d07      	mov      	r4, r1
   4:	6d43      	mov      	r5, r0
   6:	e0000000 	bsr      	0x0	// 0 <cpu_intrpt_save>
   a:	9462      	ld.w      	r3, (r4, 0x8)
   c:	e903001c 	bez      	r3, 0x44	// 44 <ieee80211_bss_free.isra.3+0x44>
  10:	2b00      	subi      	r3, 1
  12:	3b40      	cmpnei      	r3, 0
  14:	b462      	st.w      	r3, (r4, 0x8)
  16:	6583      	mvcv      	r6
  18:	e0000000 	bsr      	0x0	// 0 <cpu_intrpt_restore>
  1c:	e9060013 	bez      	r6, 0x42	// 42 <ieee80211_bss_free.isra.3+0x42>
  20:	9461      	ld.w      	r3, (r4, 0x4)
  22:	9440      	ld.w      	r2, (r4, 0x0)
  24:	e9030006 	bez      	r3, 0x30	// 30 <ieee80211_bss_free.isra.3+0x30>
  28:	e9020004 	bez      	r2, 0x30	// 30 <ieee80211_bss_free.isra.3+0x30>
  2c:	b261      	st.w      	r3, (r2, 0x4)
  2e:	b340      	st.w      	r2, (r3, 0x0)
  30:	3300      	movi      	r3, 0
  32:	b460      	st.w      	r3, (r4, 0x0)
  34:	b461      	st.w      	r3, (r4, 0x4)
  36:	8560      	ld.b      	r3, (r5, 0x0)
  38:	2b00      	subi      	r3, 1
  3a:	a560      	st.b      	r3, (r5, 0x0)
  3c:	6c13      	mov      	r0, r4
  3e:	e0000000 	bsr      	0x0	// 0 <_os_free>
  42:	1493      	pop      	r4-r6, r15
  44:	3601      	movi      	r6, 1
  46:	07e9      	br      	0x18	// 18 <ieee80211_bss_free.isra.3+0x18>

Disassembly of section .text.ieee80211_bss_flush:

00000000 <ieee80211_bss_flush>:
   0:	14d4      	push      	r4-r7, r15
   2:	6d03      	mov      	r4, r0
   4:	e4c001cb 	addi      	r6, r0, 460
   8:	3100      	movi      	r1, 0
   a:	2900      	subi      	r1, 1
   c:	6c1b      	mov      	r0, r6
   e:	e0000000 	bsr      	0x0	// 0 <os_mutex_lock>
  12:	d8242075 	ld.w      	r1, (r4, 0x1d4)
  16:	e4e401d3 	addi      	r7, r4, 468
  1a:	91a0      	ld.w      	r5, (r1, 0x0)
  1c:	e48401db 	addi      	r4, r4, 476
  20:	65c6      	cmpne      	r1, r7
  22:	0805      	bt      	0x2c	// 2c <ieee80211_bss_flush+0x2c>
  24:	6c1b      	mov      	r0, r6
  26:	e0000000 	bsr      	0x0	// 0 <os_mutex_unlock>
  2a:	1494      	pop      	r4-r7, r15
  2c:	6c13      	mov      	r0, r4
  2e:	e0000000 	bsr      	0x0	// 0 <ieee80211_bss_flush>
  32:	6c57      	mov      	r1, r5
  34:	95a0      	ld.w      	r5, (r5, 0x0)
  36:	07f5      	br      	0x20	// 20 <ieee80211_bss_flush+0x20>

Disassembly of section .text.ieee80211_bss_get_byssid:

00000000 <ieee80211_bss_get_byssid>:
   0:	14d8      	push      	r4-r11, r15
   2:	1421      	subi      	r14, r14, 4
   4:	6dc3      	mov      	r7, r0
   6:	6d87      	mov      	r6, r1
   8:	6e4b      	mov      	r9, r2
   a:	6ecf      	mov      	r11, r3
   c:	e9010055 	bez      	r1, 0xb6	// b6 <ieee80211_bss_get_byssid+0xb6>
  10:	8180      	ld.b      	r4, (r1, 0x0)
  12:	e904001c 	bez      	r4, 0x4a	// 4a <ieee80211_bss_get_byssid+0x4a>
  16:	e50001cb 	addi      	r8, r0, 460
  1a:	3100      	movi      	r1, 0
  1c:	2900      	subi      	r1, 1
  1e:	6c23      	mov      	r0, r8
  20:	e0000000 	bsr      	0x0	// 0 <os_mutex_lock>
  24:	3400      	movi      	r4, 0
  26:	d8a72075 	ld.w      	r5, (r7, 0x1d4)
  2a:	e54701d3 	addi      	r10, r7, 468
  2e:	6696      	cmpne      	r5, r10
  30:	0810      	bt      	0x50	// 50 <ieee80211_bss_get_byssid+0x50>
  32:	e9040009 	bez      	r4, 0x44	// 44 <ieee80211_bss_get_byssid+0x44>
  36:	e0000000 	bsr      	0x0	// 0 <cpu_intrpt_save>
  3a:	9562      	ld.w      	r3, (r5, 0x8)
  3c:	2300      	addi      	r3, 1
  3e:	b562      	st.w      	r3, (r5, 0x8)
  40:	e0000000 	bsr      	0x0	// 0 <cpu_intrpt_restore>
  44:	6c23      	mov      	r0, r8
  46:	e0000000 	bsr      	0x0	// 0 <os_mutex_unlock>
  4a:	6c13      	mov      	r0, r4
  4c:	1401      	addi      	r14, r14, 4
  4e:	1498      	pop      	r4-r11, r15
  50:	d8670052 	ld.b      	r3, (r7, 0x52)
  54:	e4632002 	andi      	r3, r3, 2
  58:	e4250011 	addi      	r1, r5, 18
  5c:	e9030029 	bez      	r3, 0xae	// ae <ieee80211_bss_get_byssid+0xae>
  60:	6c1b      	mov      	r0, r6
  62:	b820      	st.w      	r1, (r14, 0x0)
  64:	e0000000 	bsr      	0x0	// 0 <strlen>
  68:	6c83      	mov      	r2, r0
  6a:	9820      	ld.w      	r1, (r14, 0x0)
  6c:	6c1b      	mov      	r0, r6
  6e:	e0000000 	bsr      	0x0	// 0 <strncmp>
  72:	3840      	cmpnei      	r0, 0
  74:	64c3      	mvcv      	r3
  76:	e903001a 	bez      	r3, 0xaa	// aa <ieee80211_bss_get_byssid+0xaa>
  7a:	eb4900ff 	cmpnei      	r9, 255
  7e:	0c05      	bf      	0x88	// 88 <ieee80211_bss_get_byssid+0x88>
  80:	d8650038 	ld.b      	r3, (r5, 0x38)
  84:	664e      	cmpne      	r3, r9
  86:	0812      	bt      	0xaa	// aa <ieee80211_bss_get_byssid+0xaa>
  88:	e90b0008 	bez      	r11, 0x98	// 98 <ieee80211_bss_get_byssid+0x98>
  8c:	d865003c 	ld.b      	r3, (r5, 0x3c)
  90:	e4632018 	andi      	r3, r3, 24
  94:	e923000b 	bnez      	r3, 0xaa	// aa <ieee80211_bss_get_byssid+0xaa>
  98:	e904000d 	bez      	r4, 0xb2	// b2 <ieee80211_bss_get_byssid+0xb2>
  9c:	d8644039 	ld.bs      	r3, (r4, 0x39)
  a0:	d8454039 	ld.bs      	r2, (r5, 0x39)
  a4:	648d      	cmplt      	r3, r2
  a6:	c4850c40 	inct      	r4, r5, 0
  aa:	95a0      	ld.w      	r5, (r5, 0x0)
  ac:	07c1      	br      	0x2e	// 2e <ieee80211_bss_get_byssid+0x2e>
  ae:	3220      	movi      	r2, 32
  b0:	07de      	br      	0x6c	// 6c <ieee80211_bss_get_byssid+0x6c>
  b2:	6d17      	mov      	r4, r5
  b4:	07fb      	br      	0xaa	// aa <ieee80211_bss_get_byssid+0xaa>
  b6:	6d07      	mov      	r4, r1
  b8:	07c9      	br      	0x4a	// 4a <ieee80211_bss_get_byssid+0x4a>

Disassembly of section .text.ieee80211_bss_get_bybssid:

00000000 <ieee80211_bss_get_bybssid>:
   0:	14d6      	push      	r4-r9, r15
   2:	6d43      	mov      	r5, r0
   4:	6d87      	mov      	r6, r1
   6:	6e0b      	mov      	r8, r2
   8:	6e4f      	mov      	r9, r3
   a:	e9010035 	bez      	r1, 0x74	// 74 <ieee80211_bss_get_bybssid+0x74>
   e:	e4e001cb 	addi      	r7, r0, 460
  12:	3100      	movi      	r1, 0
  14:	2900      	subi      	r1, 1
  16:	6c1f      	mov      	r0, r7
  18:	e0000000 	bsr      	0x0	// 0 <os_mutex_lock>
  1c:	e4a501d3 	addi      	r5, r5, 468
  20:	9580      	ld.w      	r4, (r5, 0x0)
  22:	6552      	cmpne      	r4, r5
  24:	0803      	bt      	0x2a	// 2a <ieee80211_bss_get_bybssid+0x2a>
  26:	3400      	movi      	r4, 0
  28:	0419      	br      	0x5a	// 5a <ieee80211_bss_get_bybssid+0x5a>
  2a:	3206      	movi      	r2, 6
  2c:	e424000b 	addi      	r1, r4, 12
  30:	6c1b      	mov      	r0, r6
  32:	e0000000 	bsr      	0x0	// 0 <memcmp>
  36:	e920001d 	bnez      	r0, 0x70	// 70 <ieee80211_bss_get_bybssid+0x70>
  3a:	eb4800ff 	cmpnei      	r8, 255
  3e:	0c05      	bf      	0x48	// 48 <ieee80211_bss_get_bybssid+0x48>
  40:	d8640038 	ld.b      	r3, (r4, 0x38)
  44:	660e      	cmpne      	r3, r8
  46:	0815      	bt      	0x70	// 70 <ieee80211_bss_get_bybssid+0x70>
  48:	e929000e 	bnez      	r9, 0x64	// 64 <ieee80211_bss_get_bybssid+0x64>
  4c:	e0000000 	bsr      	0x0	// 0 <cpu_intrpt_save>
  50:	9462      	ld.w      	r3, (r4, 0x8)
  52:	2300      	addi      	r3, 1
  54:	b462      	st.w      	r3, (r4, 0x8)
  56:	e0000000 	bsr      	0x0	// 0 <cpu_intrpt_restore>
  5a:	6c1f      	mov      	r0, r7
  5c:	e0000000 	bsr      	0x0	// 0 <os_mutex_unlock>
  60:	6c13      	mov      	r0, r4
  62:	1496      	pop      	r4-r9, r15
  64:	d864003c 	ld.b      	r3, (r4, 0x3c)
  68:	e4632018 	andi      	r3, r3, 24
  6c:	e903fff0 	bez      	r3, 0x4c	// 4c <ieee80211_bss_get_bybssid+0x4c>
  70:	9480      	ld.w      	r4, (r4, 0x0)
  72:	07d8      	br      	0x22	// 22 <ieee80211_bss_get_bybssid+0x22>
  74:	6d07      	mov      	r4, r1
  76:	07f5      	br      	0x60	// 60 <ieee80211_bss_get_bybssid+0x60>

Disassembly of section .text.ieee80211_bss_put:

00000000 <ieee80211_bss_put>:
   0:	14d3      	push      	r4-r6, r15
   2:	6d87      	mov      	r6, r1
   4:	e48001cb 	addi      	r4, r0, 460
   8:	3100      	movi      	r1, 0
   a:	6d43      	mov      	r5, r0
   c:	2900      	subi      	r1, 1
   e:	6c13      	mov      	r0, r4
  10:	e0000000 	bsr      	0x0	// 0 <os_mutex_lock>
  14:	6c5b      	mov      	r1, r6
  16:	e40501db 	addi      	r0, r5, 476
  1a:	e0000000 	bsr      	0x0	// 0 <ieee80211_bss_put>
  1e:	6c13      	mov      	r0, r4
  20:	e0000000 	bsr      	0x0	// 0 <os_mutex_unlock>
  24:	1493      	pop      	r4-r6, r15

Disassembly of section .text.ieee80211_update_bss_info:

00000000 <ieee80211_update_bss_info>:
   0:	14d8      	push      	r4-r11, r15
   2:	1431      	subi      	r14, r14, 68
   4:	6d8b      	mov      	r6, r2
   6:	e502000b 	addi      	r8, r2, 12
   a:	6d03      	mov      	r4, r0
   c:	92e7      	ld.w      	r7, (r2, 0x1c)
   e:	6e47      	mov      	r9, r1
  10:	d8480004 	ld.b      	r2, (r8, 0x4)
  14:	9623      	ld.w      	r1, (r6, 0xc)
  16:	3000      	movi      	r0, 0
  18:	e0000000 	bsr      	0x0	// 0 <ieee80211_freq_to_chan>
  1c:	d8640049 	ld.b      	r3, (r4, 0x49)
  20:	d84401dc 	ld.b      	r2, (r4, 0x1dc)
  24:	4b61      	lsri      	r3, r3, 1
  26:	648c      	cmphs      	r3, r2
  28:	b80a      	st.w      	r0, (r14, 0x28)
  2a:	0c43      	bf      	0xb0	// b0 <ieee80211_update_bss_info+0xb0>
  2c:	33fa      	movi      	r3, 250
  2e:	d9441027 	ld.h      	r10, (r4, 0x4e)
  32:	4362      	lsli      	r3, r3, 2
  34:	7e8c      	mult      	r10, r3
  36:	e4a401cb 	addi      	r5, r4, 460
  3a:	3100      	movi      	r1, 0
  3c:	2900      	subi      	r1, 1
  3e:	6c17      	mov      	r0, r5
  40:	e0000000 	bsr      	0x0	// 0 <os_mutex_lock>
  44:	e44401d3 	addi      	r2, r4, 468
  48:	d8642075 	ld.w      	r3, (r4, 0x1d4)
  4c:	b84b      	st.w      	r2, (r14, 0x2c)
  4e:	e44401db 	addi      	r2, r4, 476
  52:	d9632000 	ld.w      	r11, (r3, 0x0)
  56:	b84c      	st.w      	r2, (r14, 0x30)
  58:	984b      	ld.w      	r2, (r14, 0x2c)
  5a:	648e      	cmpne      	r3, r2
  5c:	082d      	bt      	0xb6	// b6 <ieee80211_update_bss_info+0xb6>
  5e:	6c17      	mov      	r0, r5
  60:	e0000000 	bsr      	0x0	// 0 <os_mutex_unlock>
  64:	8f60      	ld.h      	r3, (r7, 0x0)
  66:	e44320fc 	andi      	r2, r3, 252
  6a:	3a5c      	cmpnei      	r2, 28
  6c:	0859      	bt      	0x11e	// 11e <ieee80211_update_bss_info+0x11e>
  6e:	e5470003 	addi      	r10, r7, 4
  72:	e4632100 	andi      	r3, r3, 256
  76:	e9030066 	bez      	r3, 0x142	// 142 <ieee80211_update_bss_info+0x142>
  7a:	e467000f 	addi      	r3, r7, 16
  7e:	b868      	st.w      	r3, (r14, 0x20)
  80:	d8480004 	ld.b      	r2, (r8, 0x4)
  84:	3300      	movi      	r3, 0
  86:	6c6b      	mov      	r1, r10
  88:	6c13      	mov      	r0, r4
  8a:	e0000000 	bsr      	0x0	// 0 <ieee80211_update_bss_info>
  8e:	6ec3      	mov      	r11, r0
  90:	e920005b 	bnez      	r0, 0x146	// 146 <ieee80211_update_bss_info+0x146>
  94:	6c2b      	mov      	r0, r10
  96:	e0000000 	bsr      	0x0	// 0 <ieee80211_update_bss_info>
  9a:	6ec3      	mov      	r11, r0
  9c:	e9200092 	bnez      	r0, 0x1c0	// 1c0 <ieee80211_update_bss_info+0x1c0>
  a0:	329c      	movi      	r2, 156
  a2:	4241      	lsli      	r2, r2, 1
  a4:	013e      	lrw      	r1, 0x0	// 3a8 <ieee80211_update_bss_info+0x3a8>
  a6:	011d      	lrw      	r0, 0x0	// 3ac <ieee80211_update_bss_info+0x3ac>
  a8:	e0000000 	bsr      	0x0	// 0 <hgprintf>
  ac:	1411      	addi      	r14, r14, 68
  ae:	1498      	pop      	r4-r11, r15
  b0:	ea0a1388 	movi      	r10, 5000
  b4:	07c1      	br      	0x36	// 36 <ieee80211_update_bss_info+0x36>
  b6:	d823003c 	ld.b      	r1, (r3, 0x3c)
  ba:	e4212018 	andi      	r1, r1, 24
  be:	3940      	cmpnei      	r1, 0
  c0:	ea022710 	movi      	r2, 10000
  c4:	c44a0c20 	incf      	r2, r10, 0
  c8:	d9832010 	ld.w      	r12, (r3, 0x40)
  cc:	d9a32011 	ld.w      	r13, (r3, 0x44)
  d0:	dd8e200f 	st.w      	r12, (r14, 0x3c)
  d4:	ddae2010 	st.w      	r13, (r14, 0x40)
  d8:	b86e      	st.w      	r3, (r14, 0x38)
  da:	b84d      	st.w      	r2, (r14, 0x34)
  dc:	e0000000 	bsr      	0x0	// 0 <os_jiffies>
  e0:	984d      	ld.w      	r2, (r14, 0x34)
  e2:	527f      	asri      	r3, r2, 31
  e4:	b848      	st.w      	r2, (r14, 0x20)
  e6:	b869      	st.w      	r3, (r14, 0x24)
  e8:	d98e200f 	ld.w      	r12, (r14, 0x3c)
  ec:	d9ae2010 	ld.w      	r13, (r14, 0x40)
  f0:	9848      	ld.w      	r2, (r14, 0x20)
  f2:	9869      	ld.w      	r3, (r14, 0x24)
  f4:	6489      	cmplt      	r2, r2
  f6:	60b1      	addc      	r2, r12
  f8:	60f5      	addc      	r3, r13
  fa:	6f0b      	mov      	r12, r2
  fc:	6f4f      	mov      	r13, r3
  fe:	6488      	cmphs      	r2, r2
 100:	c40c0102 	subc      	r2, r12, r0
 104:	c42d0103 	subc      	r3, r13, r1
 108:	e9a30007 	bhsz      	r3, 0x116	// 116 <ieee80211_update_bss_info+0x116>
 10c:	986e      	ld.w      	r3, (r14, 0x38)
 10e:	6c4f      	mov      	r1, r3
 110:	980c      	ld.w      	r0, (r14, 0x30)
 112:	e0000000 	bsr      	0x0	// 0 <ieee80211_update_bss_info>
 116:	6cef      	mov      	r3, r11
 118:	d96b2000 	ld.w      	r11, (r11, 0x0)
 11c:	079e      	br      	0x58	// 58 <ieee80211_update_bss_info+0x58>
 11e:	e4432300 	andi      	r2, r3, 768
 122:	eb420300 	cmpnei      	r2, 768
 126:	0804      	bt      	0x12e	// 12e <ieee80211_update_bss_info+0x12e>
 128:	e5470017 	addi      	r10, r7, 24
 12c:	07a3      	br      	0x72	// 72 <ieee80211_update_bss_info+0x72>
 12e:	e4432200 	andi      	r2, r3, 512
 132:	e9020005 	bez      	r2, 0x13c	// 13c <ieee80211_update_bss_info+0x13c>
 136:	e547000f 	addi      	r10, r7, 16
 13a:	079c      	br      	0x72	// 72 <ieee80211_update_bss_info+0x72>
 13c:	e5470009 	addi      	r10, r7, 10
 140:	0799      	br      	0x72	// 72 <ieee80211_update_bss_info+0x72>
 142:	5f6e      	addi      	r3, r7, 4
 144:	079d      	br      	0x7e	// 7e <ieee80211_update_bss_info+0x7e>
 146:	ea0a0000 	movi      	r10, 0
 14a:	d86b003c 	ld.b      	r3, (r11, 0x3c)
 14e:	e4632018 	andi      	r3, r3, 24
 152:	3b48      	cmpnei      	r3, 8
 154:	0839      	bt      	0x1c6	// 1c6 <ieee80211_update_bss_info+0x1c6>
 156:	d86b0033 	ld.b      	r3, (r11, 0x33)
 15a:	984a      	ld.w      	r2, (r14, 0x28)
 15c:	648e      	cmpne      	r3, r2
 15e:	0834      	bt      	0x1c6	// 1c6 <ieee80211_update_bss_info+0x1c6>
 160:	d8680004 	ld.b      	r3, (r8, 0x4)
 164:	d84b0038 	ld.b      	r2, (r11, 0x38)
 168:	64ca      	cmpne      	r2, r3
 16a:	64c3      	mvcv      	r3
 16c:	d84b003c 	ld.b      	r2, (r11, 0x3c)
 170:	c4435c23 	ins      	r2, r3, 4, 3
 174:	dc4b003c 	st.b      	r2, (r11, 0x3c)
 178:	d8680004 	ld.b      	r3, (r8, 0x4)
 17c:	dc6b0038 	st.b      	r3, (r11, 0x38)
 180:	d8680006 	ld.b      	r3, (r8, 0x6)
 184:	dc6b0039 	st.b      	r3, (r11, 0x39)
 188:	d8680007 	ld.b      	r3, (r8, 0x7)
 18c:	dc6b003a 	st.b      	r3, (r11, 0x3a)
 190:	d86e0028 	ld.b      	r3, (r14, 0x28)
 194:	dc6b0033 	st.b      	r3, (r11, 0x33)
 198:	8f60      	ld.h      	r3, (r7, 0x0)
 19a:	e46320fc 	andi      	r3, r3, 252
 19e:	eb430080 	cmpnei      	r3, 128
 1a2:	0814      	bt      	0x1ca	// 1ca <ieee80211_update_bss_info+0x1ca>
 1a4:	d9062007 	ld.w      	r8, (r6, 0x1c)
 1a8:	3100      	movi      	r1, 0
 1aa:	2900      	subi      	r1, 1
 1ac:	6c17      	mov      	r0, r5
 1ae:	e0000000 	bsr      	0x0	// 0 <os_mutex_lock>
 1b2:	d8681010 	ld.h      	r3, (r8, 0x20)
 1b6:	e4e80023 	addi      	r7, r8, 36
 1ba:	dc6b101a 	st.h      	r3, (r11, 0x34)
 1be:	041e      	br      	0x1fa	// 1fa <ieee80211_update_bss_info+0x1fa>
 1c0:	ea0a0001 	movi      	r10, 1
 1c4:	07c3      	br      	0x14a	// 14a <ieee80211_update_bss_info+0x14a>
 1c6:	3300      	movi      	r3, 0
 1c8:	07d2      	br      	0x16c	// 16c <ieee80211_update_bss_info+0x16c>
 1ca:	3b5c      	cmpnei      	r3, 28
 1cc:	0842      	bt      	0x250	// 250 <ieee80211_update_bss_info+0x250>
 1ce:	96e7      	ld.w      	r7, (r6, 0x1c)
 1d0:	8761      	ld.b      	r3, (r7, 0x1)
 1d2:	e4432001 	andi      	r2, r3, 1
 1d6:	e922003b 	bnez      	r2, 0x24c	// 24c <ieee80211_update_bss_info+0x24c>
 1da:	270e      	addi      	r7, 15
 1dc:	e4432002 	andi      	r2, r3, 2
 1e0:	3a40      	cmpnei      	r2, 0
 1e2:	e4632004 	andi      	r3, r3, 4
 1e6:	3100      	movi      	r1, 0
 1e8:	c4e70c44 	inct      	r7, r7, 4
 1ec:	2900      	subi      	r1, 1
 1ee:	3b40      	cmpnei      	r3, 0
 1f0:	6c17      	mov      	r0, r5
 1f2:	c4e70c41 	inct      	r7, r7, 1
 1f6:	e0000000 	bsr      	0x0	// 0 <os_mutex_lock>
 1fa:	9646      	ld.w      	r2, (r6, 0x18)
 1fc:	609e      	subu      	r2, r7
 1fe:	6c5f      	mov      	r1, r7
 200:	6c2f      	mov      	r0, r11
 202:	e0000000 	bsr      	0x0	// 0 <ieee80211_update_bss_info>
 206:	6c17      	mov      	r0, r5
 208:	e0000000 	bsr      	0x0	// 0 <os_mutex_unlock>
 20c:	d86b003c 	ld.b      	r3, (r11, 0x3c)
 210:	e4632018 	andi      	r3, r3, 24
 214:	e9230008 	bnez      	r3, 0x224	// 224 <ieee80211_update_bss_info+0x224>
 218:	e0000000 	bsr      	0x0	// 0 <os_jiffies>
 21c:	dc0b2010 	st.w      	r0, (r11, 0x40)
 220:	dc2b2011 	st.w      	r1, (r11, 0x44)
 224:	6c6f      	mov      	r1, r11
 226:	6c13      	mov      	r0, r4
 228:	e0000000 	bsr      	0x0	// 0 <ieee80211_update_bss_info>
 22c:	eb4a0000 	cmpnei      	r10, 0
 230:	6583      	mvcv      	r6
 232:	260d      	addi      	r6, 14
 234:	3500      	movi      	r5, 0
 236:	d8640048 	ld.b      	r3, (r4, 0x48)
 23a:	64d5      	cmplt      	r5, r3
 23c:	089d      	bt      	0x376	// 376 <ieee80211_update_bss_info+0x376>
 23e:	e92aff37 	bnez      	r10, 0xac	// ac <ieee80211_update_bss_info+0xac>
 242:	6c6f      	mov      	r1, r11
 244:	6c13      	mov      	r0, r4
 246:	e0000000 	bsr      	0x0	// 0 <ieee80211_update_bss_info>
 24a:	0731      	br      	0xac	// ac <ieee80211_update_bss_info+0xac>
 24c:	2711      	addi      	r7, 18
 24e:	07c7      	br      	0x1dc	// 1dc <ieee80211_update_bss_info+0x1dc>
 250:	eb430050 	cmpnei      	r3, 80
 254:	0807      	bt      	0x262	// 262 <ieee80211_update_bss_info+0x262>
 256:	9828      	ld.w      	r1, (r14, 0x20)
 258:	6c13      	mov      	r0, r4
 25a:	e0000000 	bsr      	0x0	// 0 <ieee80211_iface_addr_match>
 25e:	e920ffa3 	bnez      	r0, 0x1a4	// 1a4 <ieee80211_update_bss_info+0x1a4>
 262:	9667      	ld.w      	r3, (r6, 0x1c)
 264:	8378      	ld.b      	r3, (r3, 0x18)
 266:	e463207f 	andi      	r3, r3, 127
 26a:	3b4a      	cmpnei      	r3, 10
 26c:	0842      	bt      	0x2f0	// 2f0 <ieee80211_update_bss_info+0x2f0>
 26e:	9828      	ld.w      	r1, (r14, 0x20)
 270:	6c13      	mov      	r0, r4
 272:	e0000000 	bsr      	0x0	// 0 <ieee80211_iface_addr_match>
 276:	e900003d 	bez      	r0, 0x2f0	// 2f0 <ieee80211_update_bss_info+0x2f0>
 27a:	3100      	movi      	r1, 0
 27c:	96e7      	ld.w      	r7, (r6, 0x1c)
 27e:	2900      	subi      	r1, 1
 280:	e4cb0011 	addi      	r6, r11, 18
 284:	6c17      	mov      	r0, r5
 286:	e0000000 	bsr      	0x0	// 0 <os_mutex_lock>
 28a:	e427001b 	addi      	r1, r7, 28
 28e:	3220      	movi      	r2, 32
 290:	6c1b      	mov      	r0, r6
 292:	e0000000 	bsr      	0x0	// 0 <strncpy>
 296:	d847003c 	ld.b      	r2, (r7, 0x3c)
 29a:	d86b003c 	ld.b      	r3, (r11, 0x3c)
 29e:	c4625c05 	ins      	r3, r2, 5, 5
 2a2:	dc6b003c 	st.b      	r3, (r11, 0x3c)
 2a6:	6c17      	mov      	r0, r5
 2a8:	e0000000 	bsr      	0x0	// 0 <os_mutex_unlock>
 2ac:	d86b4039 	ld.bs      	r3, (r11, 0x39)
 2b0:	b867      	st.w      	r3, (r14, 0x1c)
 2b2:	d86b0033 	ld.b      	r3, (r11, 0x33)
 2b6:	b866      	st.w      	r3, (r14, 0x18)
 2b8:	d86b0011 	ld.b      	r3, (r11, 0x11)
 2bc:	b865      	st.w      	r3, (r14, 0x14)
 2be:	d86b0010 	ld.b      	r3, (r11, 0x10)
 2c2:	b864      	st.w      	r3, (r14, 0x10)
 2c4:	d86b000f 	ld.b      	r3, (r11, 0xf)
 2c8:	b863      	st.w      	r3, (r14, 0xc)
 2ca:	d86b000e 	ld.b      	r3, (r11, 0xe)
 2ce:	b862      	st.w      	r3, (r14, 0x8)
 2d0:	d86b000d 	ld.b      	r3, (r11, 0xd)
 2d4:	b861      	st.w      	r3, (r14, 0x4)
 2d6:	d86b000c 	ld.b      	r3, (r11, 0xc)
 2da:	3288      	movi      	r2, 136
 2dc:	b860      	st.w      	r3, (r14, 0x0)
 2de:	4241      	lsli      	r2, r2, 1
 2e0:	6cdb      	mov      	r3, r6
 2e2:	1134      	lrw      	r1, 0x0	// 3b0 <ieee80211_update_bss_info+0x3b0>
 2e4:	1114      	lrw      	r0, 0x0	// 3b4 <ieee80211_update_bss_info+0x3b4>
 2e6:	e5070017 	addi      	r8, r7, 24
 2ea:	e0000000 	bsr      	0x0	// 0 <hgprintf>
 2ee:	078f      	br      	0x20c	// 20c <ieee80211_update_bss_info+0x20c>
 2f0:	d8690002 	ld.b      	r3, (r9, 0x2)
 2f4:	e4632070 	andi      	r3, r3, 112
 2f8:	96c7      	ld.w      	r6, (r6, 0x1c)
 2fa:	e903ffa4 	bez      	r3, 0x242	// 242 <ieee80211_update_bss_info+0x242>
 2fe:	8e60      	ld.h      	r3, (r6, 0x0)
 300:	e46320fc 	andi      	r3, r3, 252
 304:	eb4300d0 	cmpnei      	r3, 208
 308:	0b9d      	bt      	0x242	// 242 <ieee80211_update_bss_info+0x242>
 30a:	3100      	movi      	r1, 0
 30c:	2900      	subi      	r1, 1
 30e:	6c17      	mov      	r0, r5
 310:	e0000000 	bsr      	0x0	// 0 <os_mutex_lock>
 314:	d86b003c 	ld.b      	r3, (r11, 0x3c)
 318:	e4632018 	andi      	r3, r3, 24
 31c:	e923ff75 	bnez      	r3, 0x206	// 206 <ieee80211_update_bss_info+0x206>
 320:	d8292063 	ld.w      	r1, (r9, 0x18c)
 324:	3206      	movi      	r2, 6
 326:	211b      	addi      	r1, 28
 328:	e40b000b 	addi      	r0, r11, 12
 32c:	e0000000 	bsr      	0x0	// 0 <memcmp>
 330:	e900ff6b 	bez      	r0, 0x206	// 206 <ieee80211_update_bss_info+0x206>
 334:	3220      	movi      	r2, 32
 336:	e4260027 	addi      	r1, r6, 40
 33a:	e40b0011 	addi      	r0, r11, 18
 33e:	e0000000 	bsr      	0x0	// 0 <strncpy>
 342:	d8660021 	ld.b      	r3, (r6, 0x21)
 346:	d8260020 	ld.b      	r1, (r6, 0x20)
 34a:	4368      	lsli      	r3, r3, 8
 34c:	6cc4      	or      	r3, r1
 34e:	d8260022 	ld.b      	r1, (r6, 0x22)
 352:	4130      	lsli      	r1, r1, 16
 354:	6c4c      	or      	r1, r3
 356:	d8660023 	ld.b      	r3, (r6, 0x23)
 35a:	d849202b 	ld.w      	r2, (r9, 0xac)
 35e:	4378      	lsli      	r3, r3, 24
 360:	6cc4      	or      	r3, r1
 362:	3164      	movi      	r1, 100
 364:	8240      	ld.b      	r2, (r2, 0x0)
 366:	c4238021 	divu      	r1, r3, r1
 36a:	6c27      	mov      	r0, r9
 36c:	e0000000 	bsr      	0x0	// 0 <ieee80211_freq_to_chan>
 370:	dc0b0033 	st.b      	r0, (r11, 0x33)
 374:	0749      	br      	0x206	// 206 <ieee80211_update_bss_info+0x206>
 376:	4562      	lsli      	r3, r5, 2
 378:	60d0      	addu      	r3, r4
 37a:	931a      	ld.w      	r0, (r3, 0x68)
 37c:	e9000013 	bez      	r0, 0x3a2	// 3a2 <ieee80211_update_bss_info+0x3a2>
 380:	8065      	ld.b      	r3, (r0, 0x5)
 382:	e4632001 	andi      	r3, r3, 1
 386:	e903000e 	bez      	r3, 0x3a2	// 3a2 <ieee80211_update_bss_info+0x3a2>
 38a:	d860202b 	ld.w      	r3, (r0, 0xac)
 38e:	8340      	ld.b      	r2, (r3, 0x0)
 390:	d86b0038 	ld.b      	r3, (r11, 0x38)
 394:	64ca      	cmpne      	r2, r3
 396:	0806      	bt      	0x3a2	// 3a2 <ieee80211_update_bss_info+0x3a2>
 398:	3300      	movi      	r3, 0
 39a:	6caf      	mov      	r2, r11
 39c:	6c5b      	mov      	r1, r6
 39e:	e0000000 	bsr      	0x0	// 0 <ieee80211_iface_event>
 3a2:	2500      	addi      	r5, 1
 3a4:	0749      	br      	0x236	// 236 <ieee80211_update_bss_info+0x236>
	...

Disassembly of section .text.ieee80211_bss_dump:

00000000 <ieee80211_bss_dump>:
   0:	14d8      	push      	r4-r11, r15
   2:	1434      	subi      	r14, r14, 80
   4:	1d0c      	addi      	r5, r14, 48
   6:	3220      	movi      	r2, 32
   8:	3100      	movi      	r1, 0
   a:	6c17      	mov      	r0, r5
   c:	e0000000 	bsr      	0x0	// 0 <memset>
  10:	11d6      	lrw      	r6, 0x0	// e8 <ieee80211_bss_dump+0xe8>
  12:	3100      	movi      	r1, 0
  14:	2900      	subi      	r1, 1
  16:	1116      	lrw      	r0, 0x0	// ec <ieee80211_bss_dump+0xec>
  18:	e0000000 	bsr      	0x0	// 0 <os_mutex_lock>
  1c:	d82601dc 	ld.b      	r1, (r6, 0x1dc)
  20:	e901001a 	bez      	r1, 0x54	// 54 <ieee80211_bss_dump+0x54>
  24:	1113      	lrw      	r0, 0x0	// f0 <hgprintf+0xf0>
  26:	e0000000 	bsr      	0x0	// 0 <hgprintf>
  2a:	1113      	lrw      	r0, 0x0	// f4 <hgprintf+0xf4>
  2c:	e0000000 	bsr      	0x0	// 0 <hgprintf>
  30:	1112      	lrw      	r0, 0x0	// f8 <hgprintf+0xf8>
  32:	e0000000 	bsr      	0x0	// 0 <hgprintf>
  36:	e46601d3 	addi      	r3, r6, 468
  3a:	b869      	st.w      	r3, (r14, 0x24)
  3c:	d8862075 	ld.w      	r4, (r6, 0x1d4)
  40:	116f      	lrw      	r3, 0x0	// fc <ieee80211_bss_dump+0xfc>
  42:	b86a      	st.w      	r3, (r14, 0x28)
  44:	116f      	lrw      	r3, 0x0	// 100 <ieee80211_bss_dump+0x100>
  46:	b86b      	st.w      	r3, (r14, 0x2c)
  48:	9869      	ld.w      	r3, (r14, 0x24)
  4a:	64d2      	cmpne      	r4, r3
  4c:	0809      	bt      	0x5e	// 5e <ieee80211_bss_dump+0x5e>
  4e:	110b      	lrw      	r0, 0x0	// f8 <ieee80211_bss_dump+0xf8>
  50:	e0000000 	bsr      	0x0	// 0 <hgprintf>
  54:	1106      	lrw      	r0, 0x0	// ec <os_mutex_unlock+0xec>
  56:	e0000000 	bsr      	0x0	// 0 <os_mutex_unlock>
  5a:	1414      	addi      	r14, r14, 80
  5c:	1498      	pop      	r4-r11, r15
  5e:	9432      	ld.w      	r1, (r4, 0x48)
  60:	9415      	ld.w      	r0, (r4, 0x54)
  62:	e0000000 	bsr      	0x0	// 0 <ieee80211_key_mgmt_txt>
  66:	6d83      	mov      	r6, r0
  68:	9414      	ld.w      	r0, (r4, 0x50)
  6a:	e0000000 	bsr      	0x0	// 0 <ieee80211_cipher_txt>
  6e:	6cc3      	mov      	r3, r0
  70:	6c9b      	mov      	r2, r6
  72:	1125      	lrw      	r1, 0x0	// 104 <ieee80211_bss_dump+0x104>
  74:	6c17      	mov      	r0, r5
  76:	e0000000 	bsr      	0x0	// 0 <sprintf>
  7a:	d804003c 	ld.b      	r0, (r4, 0x3c)
  7e:	e5402018 	andi      	r10, r0, 24
  82:	eb4a0000 	cmpnei      	r10, 0
  86:	d96e200a 	ld.w      	r11, (r14, 0x28)
  8a:	d94e200b 	ld.w      	r10, (r14, 0x2c)
  8e:	e4002020 	andi      	r0, r0, 32
  92:	c54b0c40 	inct      	r10, r11, 0
  96:	3840      	cmpnei      	r0, 0
  98:	101c      	lrw      	r0, 0x0	// 108 <ieee80211_bss_dump+0x108>
  9a:	d984000f 	ld.b      	r12, (r4, 0xf)
  9e:	d9a40010 	ld.b      	r13, (r4, 0x10)
  a2:	84d1      	ld.b      	r6, (r4, 0x11)
  a4:	d8e40033 	ld.b      	r7, (r4, 0x33)
  a8:	d9044039 	ld.bs      	r8, (r4, 0x39)
  ac:	d9240038 	ld.b      	r9, (r4, 0x38)
  b0:	c4050c40 	inct      	r0, r5, 0
  b4:	e5640011 	addi      	r11, r4, 18
  b8:	842c      	ld.b      	r1, (r4, 0xc)
  ba:	844d      	ld.b      	r2, (r4, 0xd)
  bc:	846e      	ld.b      	r3, (r4, 0xe)
  be:	b807      	st.w      	r0, (r14, 0x1c)
  c0:	dd6e2008 	st.w      	r11, (r14, 0x20)
  c4:	dd4e2006 	st.w      	r10, (r14, 0x18)
  c8:	dd2e2005 	st.w      	r9, (r14, 0x14)
  cc:	dd0e2004 	st.w      	r8, (r14, 0x10)
  d0:	b8e3      	st.w      	r7, (r14, 0xc)
  d2:	b8c2      	st.w      	r6, (r14, 0x8)
  d4:	ddae2001 	st.w      	r13, (r14, 0x4)
  d8:	dd8e2000 	st.w      	r12, (r14, 0x0)
  dc:	100c      	lrw      	r0, 0x0	// 10c <hgprintf+0x10c>
  de:	e0000000 	bsr      	0x0	// 0 <hgprintf>
  e2:	9480      	ld.w      	r4, (r4, 0x0)
  e4:	07b2      	br      	0x48	// 48 <ieee80211_bss_dump+0x48>
	...

Disassembly of section .text.ieee80211_bss_conf_defaults:

00000000 <ieee80211_bss_conf_defaults>:
   0:	3364      	movi      	r3, 100
   2:	dc60102c 	st.h      	r3, (r0, 0x58)
   6:	3396      	movi      	r3, 150
   8:	4361      	lsli      	r3, r3, 1
   a:	dc60102e 	st.h      	r3, (r0, 0x5c)
   e:	3304      	movi      	r3, 4
  10:	8054      	ld.b      	r2, (r0, 0x14)
  12:	b060      	st.w      	r3, (r0, 0x0)
  14:	3302      	movi      	r3, 2
  16:	c4435c60 	ins      	r2, r3, 3, 0
  1a:	a054      	st.b      	r2, (r0, 0x14)
  1c:	b063      	st.w      	r3, (r0, 0xc)
  1e:	320a      	movi      	r2, 10
  20:	330f      	movi      	r3, 15
  22:	dc40102d 	st.h      	r2, (r0, 0x5a)
  26:	a076      	st.b      	r3, (r0, 0x16)
  28:	3210      	movi      	r2, 16
  2a:	ea035180 	movi      	r3, 20864
  2e:	3bb0      	bseti      	r3, 16
  30:	b042      	st.w      	r2, (r0, 0x8)
  32:	b041      	st.w      	r2, (r0, 0x4)
  34:	b064      	st.w      	r3, (r0, 0x10)
  36:	783c      	jmp      	r15

Disassembly of section .text.ieee80211_get_bsslist:

00000000 <ieee80211_get_bsslist>:
   0:	14d5      	push      	r4-r8, r15
   2:	6d03      	mov      	r4, r0
   4:	6e07      	mov      	r8, r1
   6:	e9000015 	bez      	r0, 0x30	// 30 <ieee80211_get_bsslist+0x30>
   a:	e961003d 	blsz      	r1, 0x84	// 84 <ieee80211_get_bsslist+0x84>
   e:	3100      	movi      	r1, 0
  10:	2900      	subi      	r1, 1
  12:	101e      	lrw      	r0, 0x0	// 88 <ieee80211_get_bsslist+0x88>
  14:	e0000000 	bsr      	0x0	// 0 <os_mutex_lock>
  18:	107d      	lrw      	r3, 0x0	// 8c <ieee80211_get_bsslist+0x8c>
  1a:	6d93      	mov      	r6, r4
  1c:	d8a32075 	ld.w      	r5, (r3, 0x1d4)
  20:	3400      	movi      	r4, 0
  22:	e4e301d3 	addi      	r7, r3, 468
  26:	65d6      	cmpne      	r5, r7
  28:	0806      	bt      	0x34	// 34 <ieee80211_get_bsslist+0x34>
  2a:	1018      	lrw      	r0, 0x0	// 88 <ieee80211_get_bsslist+0x88>
  2c:	e0000000 	bsr      	0x0	// 0 <os_mutex_unlock>
  30:	6c13      	mov      	r0, r4
  32:	1495      	pop      	r4-r8, r15
  34:	3206      	movi      	r2, 6
  36:	e425000b 	addi      	r1, r5, 12
  3a:	6c1b      	mov      	r0, r6
  3c:	e0000000 	bsr      	0x0	// 0 <memcpy>
  40:	3220      	movi      	r2, 32
  42:	e4250011 	addi      	r1, r5, 18
  46:	5e16      	addi      	r0, r6, 6
  48:	e0000000 	bsr      	0x0	// 0 <strncpy>
  4c:	d8450038 	ld.b      	r2, (r5, 0x38)
  50:	d8250033 	ld.b      	r1, (r5, 0x33)
  54:	3000      	movi      	r0, 0
  56:	e0000000 	bsr      	0x0	// 0 <ieee80211_chan_to_freq>
  5a:	ae14      	st.h      	r0, (r6, 0x28)
  5c:	d8650039 	ld.b      	r3, (r5, 0x39)
  60:	dc660027 	st.b      	r3, (r6, 0x27)
  64:	9575      	ld.w      	r3, (r5, 0x54)
  66:	3b82      	bclri      	r3, 2
  68:	3b40      	cmpnei      	r3, 0
  6a:	2400      	addi      	r4, 1
  6c:	c4000503 	mvc      	r3
  70:	6522      	cmpne      	r8, r4
  72:	dc660026 	st.b      	r3, (r6, 0x26)
  76:	3300      	movi      	r3, 0
  78:	dc660025 	st.b      	r3, (r6, 0x25)
  7c:	2629      	addi      	r6, 42
  7e:	0fd6      	bf      	0x2a	// 2a <ieee80211_get_bsslist+0x2a>
  80:	95a0      	ld.w      	r5, (r5, 0x0)
  82:	07d2      	br      	0x26	// 26 <ieee80211_get_bsslist+0x26>
  84:	3400      	movi      	r4, 0
  86:	07d5      	br      	0x30	// 30 <ieee80211_get_bsslist+0x30>
	...

Disassembly of section .text.ieee80211_bss_disable:

00000000 <ieee80211_bss_disable>:
   0:	14d2      	push      	r4-r5, r15
   2:	6d4f      	mov      	r5, r3
   4:	3300      	movi      	r3, 0
   6:	6d03      	mov      	r4, r0
   8:	e0000000 	bsr      	0x0	// 0 <ieee80211_bss_disable>
   c:	6c43      	mov      	r1, r0
   e:	e900000b 	bez      	r0, 0x24	// 24 <ieee80211_bss_disable+0x24>
  12:	d860003c 	ld.b      	r3, (r0, 0x3c)
  16:	c4655c23 	ins      	r3, r5, 4, 3
  1a:	dc60003c 	st.b      	r3, (r0, 0x3c)
  1e:	6c13      	mov      	r0, r4
  20:	e0000000 	bsr      	0x0	// 0 <ieee80211_bss_disable>
  24:	1492      	pop      	r4-r5, r15

Disassembly of section .text.ieee80211_bss_active:

00000000 <ieee80211_bss_active>:
   0:	14d3      	push      	r4-r6, r15
   2:	6d03      	mov      	r4, r0
   4:	6d87      	mov      	r6, r1
   6:	e4a001cb 	addi      	r5, r0, 460
   a:	3100      	movi      	r1, 0
   c:	2900      	subi      	r1, 1
   e:	6c17      	mov      	r0, r5
  10:	e0000000 	bsr      	0x0	// 0 <os_mutex_lock>
  14:	e48401d3 	addi      	r4, r4, 468
  18:	9460      	ld.w      	r3, (r4, 0x0)
  1a:	3100      	movi      	r1, 0
  1c:	650e      	cmpne      	r3, r4
  1e:	0805      	bt      	0x28	// 28 <ieee80211_bss_active+0x28>
  20:	6c17      	mov      	r0, r5
  22:	e0000000 	bsr      	0x0	// 0 <os_mutex_unlock>
  26:	1493      	pop      	r4-r6, r15
  28:	d8430038 	ld.b      	r2, (r3, 0x38)
  2c:	658a      	cmpne      	r2, r6
  2e:	0807      	bt      	0x3c	// 3c <ieee80211_bss_active+0x3c>
  30:	d843003c 	ld.b      	r2, (r3, 0x3c)
  34:	c4415c23 	ins      	r2, r1, 4, 3
  38:	dc43003c 	st.b      	r2, (r3, 0x3c)
  3c:	9360      	ld.w      	r3, (r3, 0x0)
  3e:	07ef      	br      	0x1c	// 1c <ieee80211_bss_active+0x1c>

Disassembly of section .text.ieee80211_cleanup_bsslist:

00000000 <ieee80211_cleanup_bsslist>:
   0:	14d3      	push      	r4-r6, r15
   2:	3100      	movi      	r1, 0
   4:	2900      	subi      	r1, 1
   6:	100c      	lrw      	r0, 0x0	// 34 <ieee80211_cleanup_bsslist+0x34>
   8:	e0000000 	bsr      	0x0	// 0 <os_mutex_lock>
   c:	100b      	lrw      	r0, 0x0	// 38 <ieee80211_cleanup_bsslist+0x38>
   e:	e4c001d3 	addi      	r6, r0, 468
  12:	d8202075 	ld.w      	r1, (r0, 0x1d4)
  16:	e48001db 	addi      	r4, r0, 476
  1a:	91a0      	ld.w      	r5, (r1, 0x0)
  1c:	6586      	cmpne      	r1, r6
  1e:	0805      	bt      	0x28	// 28 <ieee80211_cleanup_bsslist+0x28>
  20:	591f      	subi      	r0, r1, 8
  22:	e0000000 	bsr      	0x0	// 0 <os_mutex_unlock>
  26:	1493      	pop      	r4-r6, r15
  28:	6c13      	mov      	r0, r4
  2a:	e0000000 	bsr      	0x0	// 0 <ieee80211_cleanup_bsslist>
  2e:	6c57      	mov      	r1, r5
  30:	95a0      	ld.w      	r5, (r5, 0x0)
  32:	07f5      	br      	0x1c	// 1c <ieee80211_cleanup_bsslist+0x1c>
	...

Disassembly of section .text.ieee80211_get_bssinfo:

00000000 <ieee80211_get_bssinfo>:
   0:	14d2      	push      	r4-r5, r15
   2:	6d03      	mov      	r4, r0
   4:	6f0b      	mov      	r12, r2
   6:	6c0f      	mov      	r0, r3
   8:	e9020031 	bez      	r2, 0x6a	// 6a <ieee80211_get_bssinfo+0x6a>
   c:	6c87      	mov      	r2, r1
   e:	3301      	movi      	r3, 1
  10:	6c73      	mov      	r1, r12
  12:	101f      	lrw      	r0, 0x0	// 8c <ieee80211_get_bssinfo+0x8c>
  14:	e0000000 	bsr      	0x0	// 0 <ieee80211_get_bssinfo>
  18:	6d43      	mov      	r5, r0
  1a:	e9000034 	bez      	r0, 0x82	// 82 <ieee80211_get_bssinfo+0x82>
  1e:	e9040035 	bez      	r4, 0x88	// 88 <ieee80211_get_bssinfo+0x88>
  22:	e420000b 	addi      	r1, r0, 12
  26:	3206      	movi      	r2, 6
  28:	6c13      	mov      	r0, r4
  2a:	e0000000 	bsr      	0x0	// 0 <memcpy>
  2e:	3220      	movi      	r2, 32
  30:	e4250011 	addi      	r1, r5, 18
  34:	5c16      	addi      	r0, r4, 6
  36:	e0000000 	bsr      	0x0	// 0 <strncpy>
  3a:	d8450038 	ld.b      	r2, (r5, 0x38)
  3e:	d8250033 	ld.b      	r1, (r5, 0x33)
  42:	3000      	movi      	r0, 0
  44:	e0000000 	bsr      	0x0	// 0 <ieee80211_chan_to_freq>
  48:	ac14      	st.h      	r0, (r4, 0x28)
  4a:	d8650039 	ld.b      	r3, (r5, 0x39)
  4e:	dc640027 	st.b      	r3, (r4, 0x27)
  52:	9575      	ld.w      	r3, (r5, 0x54)
  54:	3b82      	bclri      	r3, 2
  56:	3b40      	cmpnei      	r3, 0
  58:	c4000503 	mvc      	r3
  5c:	dc640026 	st.b      	r3, (r4, 0x26)
  60:	3300      	movi      	r3, 0
  62:	dc640025 	st.b      	r3, (r4, 0x25)
  66:	3000      	movi      	r0, 0
  68:	1492      	pop      	r4-r5, r15
  6a:	e9030009 	bez      	r3, 0x7c	// 7c <ieee80211_get_bssinfo+0x7c>
  6e:	6c87      	mov      	r2, r1
  70:	3301      	movi      	r3, 1
  72:	6c43      	mov      	r1, r0
  74:	1006      	lrw      	r0, 0x0	// 8c <ieee80211_get_bssinfo+0x8c>
  76:	e0000000 	bsr      	0x0	// 0 <ieee80211_get_bssinfo>
  7a:	07cf      	br      	0x18	// 18 <ieee80211_get_bssinfo+0x18>
  7c:	3000      	movi      	r0, 0
  7e:	2815      	subi      	r0, 22
  80:	07f4      	br      	0x68	// 68 <ieee80211_get_bssinfo+0x68>
  82:	3000      	movi      	r0, 0
  84:	2812      	subi      	r0, 19
  86:	07f1      	br      	0x68	// 68 <ieee80211_get_bssinfo+0x68>
  88:	6c13      	mov      	r0, r4
  8a:	07ef      	br      	0x68	// 68 <ieee80211_get_bssinfo+0x68>
  8c:	00000000 	.long	0x00000000

Disassembly of section .text.ieee80211_bss_add_manualAP:

00000000 <ieee80211_bss_add_manualAP>:
   0:	14d8      	push      	r4-r11, r15
   2:	6dcf      	mov      	r7, r3
   4:	11d2      	lrw      	r6, 0x0	// cc <ieee80211_bss_add_manualAP+0xcc>
   6:	6ec3      	mov      	r11, r0
   8:	6e4b      	mov      	r9, r2
   a:	3300      	movi      	r3, 0
   c:	6c9f      	mov      	r2, r7
   e:	6c1b      	mov      	r0, r6
  10:	6e87      	mov      	r10, r1
  12:	d90e2009 	ld.w      	r8, (r14, 0x24)
  16:	e0000000 	bsr      	0x0	// 0 <ieee80211_bss_add_manualAP>
  1a:	6d03      	mov      	r4, r0
  1c:	e9000009 	bez      	r0, 0x2e	// 2e <ieee80211_bss_add_manualAP+0x2e>
  20:	6c43      	mov      	r1, r0
  22:	6c1b      	mov      	r0, r6
  24:	e0000000 	bsr      	0x0	// 0 <ieee80211_bss_add_manualAP>
  28:	3000      	movi      	r0, 0
  2a:	2810      	subi      	r0, 17
  2c:	1498      	pop      	r4-r11, r15
  2e:	3f03      	cmphsi      	r7, 4
  30:	084a      	bt      	0xc4	// c4 <ieee80211_bss_add_manualAP+0xc4>
  32:	e4670015 	addi      	r3, r7, 22
  36:	d0660883 	ldr.w      	r3, (r6, r3 << 2)
  3a:	e9030045 	bez      	r3, 0xc4	// c4 <ieee80211_bss_add_manualAP+0xc4>
  3e:	e9090043 	bez      	r9, 0xc4	// c4 <ieee80211_bss_add_manualAP+0xc4>
  42:	8364      	ld.b      	r3, (r3, 0x4)
  44:	664c      	cmphs      	r3, r9
  46:	0c3f      	bf      	0xc4	// c4 <ieee80211_bss_add_manualAP+0xc4>
  48:	6c2b      	mov      	r0, r10
  4a:	e0000000 	bsr      	0x0	// 0 <ieee80211_bss_add_manualAP>
  4e:	6d43      	mov      	r5, r0
  50:	e920000b 	bnez      	r0, 0x66	// 66 <ieee80211_bss_add_manualAP+0x66>
  54:	32f8      	movi      	r2, 248
  56:	101f      	lrw      	r0, 0x0	// d0 <ieee80211_bss_add_manualAP+0xd0>
  58:	4241      	lsli      	r2, r2, 1
  5a:	103f      	lrw      	r1, 0x0	// d4 <ieee80211_bss_add_manualAP+0xd4>
  5c:	e0000000 	bsr      	0x0	// 0 <hgprintf>
  60:	3000      	movi      	r0, 0
  62:	280b      	subi      	r0, 12
  64:	07e4      	br      	0x2c	// 2c <ieee80211_bss_add_manualAP+0x2c>
  66:	3220      	movi      	r2, 32
  68:	6c6f      	mov      	r1, r11
  6a:	2011      	addi      	r0, 18
  6c:	e0000000 	bsr      	0x0	// 0 <strncpy>
  70:	3206      	movi      	r2, 6
  72:	6c6b      	mov      	r1, r10
  74:	e405000b 	addi      	r0, r5, 12
  78:	e0000000 	bsr      	0x0	// 0 <memcpy>
  7c:	d8682000 	ld.w      	r3, (r8, 0x0)
  80:	b572      	st.w      	r3, (r5, 0x48)
  82:	d8682003 	ld.w      	r3, (r8, 0xc)
  86:	b575      	st.w      	r3, (r5, 0x54)
  88:	d8682001 	ld.w      	r3, (r8, 0x4)
  8c:	b573      	st.w      	r3, (r5, 0x4c)
  8e:	d8682002 	ld.w      	r3, (r8, 0x8)
  92:	b574      	st.w      	r3, (r5, 0x50)
  94:	3300      	movi      	r3, 0
  96:	2b09      	subi      	r3, 10
  98:	dc650039 	st.b      	r3, (r5, 0x39)
  9c:	3300      	movi      	r3, 0
  9e:	2b1d      	subi      	r3, 30
  a0:	dc65003a 	st.b      	r3, (r5, 0x3a)
  a4:	3364      	movi      	r3, 100
  a6:	ad7a      	st.h      	r3, (r5, 0x34)
  a8:	dd250033 	st.b      	r9, (r5, 0x33)
  ac:	dce50038 	st.b      	r7, (r5, 0x38)
  b0:	e0000000 	bsr      	0x0	// 0 <os_jiffies>
  b4:	b510      	st.w      	r0, (r5, 0x40)
  b6:	b531      	st.w      	r1, (r5, 0x44)
  b8:	6c1b      	mov      	r0, r6
  ba:	6c57      	mov      	r1, r5
  bc:	e0000000 	bsr      	0x0	// 0 <ieee80211_bss_add_manualAP>
  c0:	6c13      	mov      	r0, r4
  c2:	07b5      	br      	0x2c	// 2c <ieee80211_bss_add_manualAP+0x2c>
  c4:	3000      	movi      	r0, 0
  c6:	2815      	subi      	r0, 22
  c8:	07b2      	br      	0x2c	// 2c <ieee80211_bss_add_manualAP+0x2c>
	...

Disassembly of section .text.ieee80211_bss_get_wpadata:

00000000 <ieee80211_bss_get_wpadata>:
   0:	14d1      	push      	r4, r15
   2:	6d0b      	mov      	r4, r2
   4:	3300      	movi      	r3, 0
   6:	6c87      	mov      	r2, r1
   8:	6c43      	mov      	r1, r0
   a:	100c      	lrw      	r0, 0x0	// 38 <ieee80211_bss_get_wpadata+0x38>
   c:	e0000000 	bsr      	0x0	// 0 <ieee80211_bss_get_wpadata>
  10:	6c43      	mov      	r1, r0
  12:	e900000f 	bez      	r0, 0x30	// 30 <ieee80211_bss_get_wpadata+0x30>
  16:	9072      	ld.w      	r3, (r0, 0x48)
  18:	b460      	st.w      	r3, (r4, 0x0)
  1a:	9075      	ld.w      	r3, (r0, 0x54)
  1c:	b463      	st.w      	r3, (r4, 0xc)
  1e:	9073      	ld.w      	r3, (r0, 0x4c)
  20:	b461      	st.w      	r3, (r4, 0x4)
  22:	9074      	ld.w      	r3, (r0, 0x50)
  24:	b462      	st.w      	r3, (r4, 0x8)
  26:	1005      	lrw      	r0, 0x0	// 38 <ieee80211_bss_get_wpadata+0x38>
  28:	e0000000 	bsr      	0x0	// 0 <ieee80211_bss_get_wpadata>
  2c:	3000      	movi      	r0, 0
  2e:	1491      	pop      	r4, r15
  30:	3000      	movi      	r0, 0
  32:	2801      	subi      	r0, 2
  34:	07fd      	br      	0x2e	// 2e <ieee80211_bss_get_wpadata+0x2e>
  36:	0000      	.short	0x0000
  38:	00000000 	.long	0x00000000
