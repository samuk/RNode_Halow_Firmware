
libwifi/o/core_sta_info.o:     file format elf32-csky-little


Disassembly of section .text.ieee80211_sta_get_active:

00000000 <ieee80211_sta_get_active>:
   0:	14d4      	push      	r4-r7, r15
   2:	d860202a 	ld.w      	r3, (r0, 0xa8)
   6:	6d83      	mov      	r6, r0
   8:	6dc7      	mov      	r7, r1
   a:	d8832068 	ld.w      	r4, (r3, 0x1a0)
   e:	e4a3019f 	addi      	r5, r3, 416
  12:	6552      	cmpne      	r4, r5
  14:	0804      	bt      	0x1c	// 1c <ieee80211_sta_get_active+0x1c>
  16:	3400      	movi      	r4, 0
  18:	6c13      	mov      	r0, r4
  1a:	1494      	pop      	r4-r7, r15
  1c:	3206      	movi      	r2, 6
  1e:	6c5f      	mov      	r1, r7
  20:	e404001b 	addi      	r0, r4, 28
  24:	e0000000 	bsr      	0x0	// 0 <memcmp>
  28:	e9200006 	bnez      	r0, 0x34	// 34 <ieee80211_sta_get_active+0x34>
  2c:	d864202a 	ld.w      	r3, (r4, 0xa8)
  30:	64da      	cmpne      	r6, r3
  32:	0ff3      	bf      	0x18	// 18 <ieee80211_sta_get_active+0x18>
  34:	9480      	ld.w      	r4, (r4, 0x0)
  36:	07ee      	br      	0x12	// 12 <ieee80211_sta_get_active+0x12>

Disassembly of section .text.ieee80211_sta_new:

00000000 <ieee80211_sta_new>:
   0:	14d3      	push      	r4-r6, r15
   2:	6d43      	mov      	r5, r0
   4:	6d87      	mov      	r6, r1
   6:	e0000000 	bsr      	0x0	// 0 <ieee80211_sta_new>
   a:	e9200029 	bnez      	r0, 0x5c	// 5c <ieee80211_sta_new+0x5c>
   e:	d865202a 	ld.w      	r3, (r5, 0xa8)
  12:	e4630197 	addi      	r3, r3, 408
  16:	9380      	ld.w      	r4, (r3, 0x0)
  18:	64d2      	cmpne      	r4, r3
  1a:	0c21      	bf      	0x5c	// 5c <ieee80211_sta_new+0x5c>
  1c:	e9040020 	bez      	r4, 0x5c	// 5c <ieee80211_sta_new+0x5c>
  20:	3206      	movi      	r2, 6
  22:	dca4202a 	st.w      	r5, (r4, 0xa8)
  26:	6c5b      	mov      	r1, r6
  28:	e404001b 	addi      	r0, r4, 28
  2c:	e0000000 	bsr      	0x0	// 0 <memcpy>
  30:	9461      	ld.w      	r3, (r4, 0x4)
  32:	9440      	ld.w      	r2, (r4, 0x0)
  34:	e9030006 	bez      	r3, 0x40	// 40 <ieee80211_sta_new+0x40>
  38:	e9020004 	bez      	r2, 0x40	// 40 <ieee80211_sta_new+0x40>
  3c:	b261      	st.w      	r3, (r2, 0x4)
  3e:	b340      	st.w      	r2, (r3, 0x0)
  40:	3300      	movi      	r3, 0
  42:	b460      	st.w      	r3, (r4, 0x0)
  44:	d865202a 	ld.w      	r3, (r5, 0xa8)
  48:	6c13      	mov      	r0, r4
  4a:	d8432068 	ld.w      	r2, (r3, 0x1a0)
  4e:	b281      	st.w      	r4, (r2, 0x4)
  50:	b440      	st.w      	r2, (r4, 0x0)
  52:	e443019f 	addi      	r2, r3, 416
  56:	b441      	st.w      	r2, (r4, 0x4)
  58:	dc832068 	st.w      	r4, (r3, 0x1a0)
  5c:	1493      	pop      	r4-r6, r15

Disassembly of section .text.ieee80211_sta_get:

00000000 <ieee80211_sta_get>:
   0:	14d2      	push      	r4-r5, r15
   2:	81a0      	ld.b      	r5, (r1, 0x0)
   4:	e4a52001 	andi      	r5, r5, 1
   8:	6f07      	mov      	r12, r1
   a:	e925001b 	bnez      	r5, 0x40	// 40 <ieee80211_sta_get+0x40>
   e:	8860      	ld.h      	r3, (r0, 0x0)
  10:	e5a32001 	andi      	r13, r3, 1
  14:	e90d000f 	bez      	r13, 0x32	// 32 <ieee80211_sta_get+0x32>
  18:	d8802063 	ld.w      	r4, (r0, 0x18c)
  1c:	3206      	movi      	r2, 6
  1e:	e424001b 	addi      	r1, r4, 28
  22:	6c33      	mov      	r0, r12
  24:	e0000000 	bsr      	0x0	// 0 <memcmp>
  28:	3840      	cmpnei      	r0, 0
  2a:	6c17      	mov      	r0, r5
  2c:	c4040c20 	incf      	r0, r4, 0
  30:	1492      	pop      	r4-r5, r15
  32:	e4632002 	andi      	r3, r3, 2
  36:	e9030007 	bez      	r3, 0x44	// 44 <ieee80211_sta_get+0x44>
  3a:	e0000000 	bsr      	0x0	// 0 <ieee80211_sta_get>
  3e:	07f9      	br      	0x30	// 30 <ieee80211_sta_get+0x30>
  40:	3000      	movi      	r0, 0
  42:	07f7      	br      	0x30	// 30 <ieee80211_sta_get+0x30>
  44:	6c0f      	mov      	r0, r3
  46:	07f5      	br      	0x30	// 30 <ieee80211_sta_get+0x30>

Disassembly of section .text.ieee80211_sta_add:

00000000 <ieee80211_sta_add>:
   0:	14d2      	push      	r4-r5, r15
   2:	6d47      	mov      	r5, r1
   4:	6d03      	mov      	r4, r0
   6:	e0000000 	bsr      	0x0	// 0 <os_jiffies>
   a:	dc052024 	st.w      	r0, (r5, 0x90)
   e:	dc252025 	st.w      	r1, (r5, 0x94)
  12:	8424      	ld.b      	r1, (r4, 0x4)
  14:	d8042029 	ld.w      	r0, (r4, 0xa4)
  18:	2900      	subi      	r1, 1
  1a:	e465001b 	addi      	r3, r5, 28
  1e:	d980200e 	ld.w      	r12, (r0, 0x38)
  22:	8d46      	ld.h      	r2, (r5, 0xc)
  24:	7444      	zextb      	r1, r1
  26:	7bf1      	jsr      	r12
  28:	9470      	ld.w      	r3, (r4, 0x40)
  2a:	e9030005 	bez      	r3, 0x34	// 34 <ieee80211_sta_add+0x34>
  2e:	6c57      	mov      	r1, r5
  30:	6c13      	mov      	r0, r4
  32:	7bcd      	jsr      	r3
  34:	1492      	pop      	r4-r5, r15

Disassembly of section .text.ieee80211_sta_del:

00000000 <ieee80211_sta_del>:
   0:	14d5      	push      	r4-r8, r15
   2:	1421      	subi      	r14, r14, 4
   4:	d9802011 	ld.w      	r12, (r0, 0x44)
   8:	6d43      	mov      	r5, r0
   a:	6d07      	mov      	r4, r1
   c:	6d8b      	mov      	r6, r2
   e:	6e0f      	mov      	r8, r3
  10:	e90c000a 	bez      	r12, 0x24	// 24 <ieee80211_sta_del+0x24>
  14:	d8610025 	ld.b      	r3, (r1, 0x25)
  18:	e4632004 	andi      	r3, r3, 4
  1c:	e9030004 	bez      	r3, 0x24	// 24 <ieee80211_sta_del+0x24>
  20:	6ca3      	mov      	r2, r8
  22:	7bf1      	jsr      	r12
  24:	d8640025 	ld.b      	r3, (r4, 0x25)
  28:	e4432008 	andi      	r2, r3, 8
  2c:	e4e4001b 	addi      	r7, r4, 28
  30:	e9020019 	bez      	r2, 0x62	// 62 <ieee80211_sta_del+0x62>
  34:	3200      	movi      	r2, 0
  36:	c4625c03 	ins      	r3, r2, 3, 3
  3a:	dc640025 	st.b      	r3, (r4, 0x25)
  3e:	6c93      	mov      	r2, r4
  40:	6ce3      	mov      	r3, r8
  42:	310a      	movi      	r1, 10
  44:	6c17      	mov      	r0, r5
  46:	e0000000 	bsr      	0x0	// 0 <ieee80211_iface_event>
  4a:	310a      	movi      	r1, 10
  4c:	6ce3      	mov      	r3, r8
  4e:	6c9f      	mov      	r2, r7
  50:	6c17      	mov      	r0, r5
  52:	e0000000 	bsr      	0x0	// 0 <ieee80211_event_notify>
  56:	8c26      	ld.h      	r1, (r4, 0xc)
  58:	c6005020 	bmaski      	r0, 17
  5c:	2007      	addi      	r0, 8
  5e:	e0000000 	bsr      	0x0	// 0 <sys_event_new>
  62:	d8052029 	ld.w      	r0, (r5, 0xa4)
  66:	ea080000 	movi      	r8, 0
  6a:	dd0e2000 	st.w      	r8, (r14, 0x0)
  6e:	d9802010 	ld.w      	r12, (r0, 0x40)
  72:	e46400ab 	addi      	r3, r4, 172
  76:	6c9f      	mov      	r2, r7
  78:	3101      	movi      	r1, 1
  7a:	7bf1      	jsr      	r12
  7c:	d8052029 	ld.w      	r0, (r5, 0xa4)
  80:	8524      	ld.b      	r1, (r5, 0x4)
  82:	2900      	subi      	r1, 1
  84:	906f      	ld.w      	r3, (r0, 0x3c)
  86:	6c9f      	mov      	r2, r7
  88:	7444      	zextb      	r1, r1
  8a:	7bcd      	jsr      	r3
  8c:	d805202a 	ld.w      	r0, (r5, 0xa8)
  90:	d8602078 	ld.w      	r3, (r0, 0x1e0)
  94:	e9030007 	bez      	r3, 0xa2	// a2 <ieee80211_sta_del+0xa2>
  98:	d863204c 	ld.w      	r3, (r3, 0x130)
  9c:	6c93      	mov      	r2, r4
  9e:	6c63      	mov      	r1, r8
  a0:	7bcd      	jsr      	r3
  a2:	e404000f 	addi      	r0, r4, 16
  a6:	e0000000 	bsr      	0x0	// 0 <skb_list_destroy>
  aa:	32aa      	movi      	r2, 170
  ac:	3100      	movi      	r1, 0
  ae:	e4040021 	addi      	r0, r4, 34
  b2:	e0000000 	bsr      	0x0	// 0 <memset>
  b6:	9440      	ld.w      	r2, (r4, 0x0)
  b8:	e902000a 	bez      	r2, 0xcc	// cc <ieee80211_sta_del+0xcc>
  bc:	9461      	ld.w      	r3, (r4, 0x4)
  be:	e9030004 	bez      	r3, 0xc6	// c6 <ieee80211_sta_del+0xc6>
  c2:	b261      	st.w      	r3, (r2, 0x4)
  c4:	b340      	st.w      	r2, (r3, 0x0)
  c6:	3300      	movi      	r3, 0
  c8:	b460      	st.w      	r3, (r4, 0x0)
  ca:	b461      	st.w      	r3, (r4, 0x4)
  cc:	e906000d 	bez      	r6, 0xe6	// e6 <ieee80211_sta_del+0xe6>
  d0:	d865202a 	ld.w      	r3, (r5, 0xa8)
  d4:	d8432066 	ld.w      	r2, (r3, 0x198)
  d8:	b281      	st.w      	r4, (r2, 0x4)
  da:	b440      	st.w      	r2, (r4, 0x0)
  dc:	e4430197 	addi      	r2, r3, 408
  e0:	b441      	st.w      	r2, (r4, 0x4)
  e2:	dc832066 	st.w      	r4, (r3, 0x198)
  e6:	1401      	addi      	r14, r14, 4
  e8:	1495      	pop      	r4-r8, r15

Disassembly of section .text.ieee80211_get_stalist:

00000000 <ieee80211_get_stalist>:
   0:	14d8      	push      	r4-r11, r15
   2:	1422      	subi      	r14, r14, 8
   4:	6e03      	mov      	r8, r0
   6:	6d47      	mov      	r5, r1
   8:	6e4b      	mov      	r9, r2
   a:	e901007d 	bez      	r1, 0x104	// 104 <ieee80211_get_stalist+0x104>
   e:	e962007b 	blsz      	r2, 0x104	// 104 <ieee80211_get_stalist+0x104>
  12:	5863      	subi      	r3, r0, 1
  14:	74cc      	zextb      	r3, r3
  16:	3b01      	cmphsi      	r3, 2
  18:	11fc      	lrw      	r7, 0x0	// 108 <ieee80211_get_stalist+0x108>
  1a:	083b      	bt      	0x90	// 90 <ieee80211_get_stalist+0x90>
  1c:	e4c00018 	addi      	r6, r0, 25
  20:	d0c70883 	ldr.w      	r3, (r7, r6 << 2)
  24:	d8232063 	ld.w      	r1, (r3, 0x18c)
  28:	d8810025 	ld.b      	r4, (r1, 0x25)
  2c:	e4842008 	andi      	r4, r4, 8
  30:	e9040024 	bez      	r4, 0x78	// 78 <ieee80211_get_stalist+0x78>
  34:	3206      	movi      	r2, 6
  36:	211b      	addi      	r1, 28
  38:	5d06      	addi      	r0, r5, 2
  3a:	e0000000 	bsr      	0x0	// 0 <memcpy>
  3e:	d0c70883 	ldr.w      	r3, (r7, r6 << 2)
  42:	8541      	ld.b      	r2, (r5, 0x1)
  44:	d8632063 	ld.w      	r3, (r3, 0x18c)
  48:	3401      	movi      	r4, 1
  4a:	832c      	ld.b      	r1, (r3, 0xc)
  4c:	a520      	st.b      	r1, (r5, 0x0)
  4e:	d8030025 	ld.b      	r0, (r3, 0x25)
  52:	c4405c00 	ins      	r2, r0, 0, 0
  56:	a541      	st.b      	r2, (r5, 0x1)
  58:	d8430022 	ld.b      	r2, (r3, 0x22)
  5c:	a548      	st.b      	r2, (r5, 0x8)
  5e:	d8630023 	ld.b      	r3, (r3, 0x23)
  62:	a569      	st.b      	r3, (r5, 0x9)
  64:	1a01      	addi      	r2, r14, 4
  66:	6c23      	mov      	r0, r8
  68:	e0000000 	bsr      	0x0	// 0 <ieee80211_conf_get_sta_snr>
  6c:	d86e0004 	ld.b      	r3, (r14, 0x4)
  70:	a56a      	st.b      	r3, (r5, 0xa)
  72:	d86e0005 	ld.b      	r3, (r14, 0x5)
  76:	a56b      	st.b      	r3, (r5, 0xb)
  78:	ea0a0000 	movi      	r10, 0
  7c:	6eeb      	mov      	r11, r10
  7e:	ea0c000c 	movi      	r12, 12
  82:	d8671026 	ld.h      	r3, (r7, 0x4c)
  86:	64ed      	cmplt      	r11, r3
  88:	0806      	bt      	0x94	// 94 <ieee80211_get_stalist+0x94>
  8a:	6c13      	mov      	r0, r4
  8c:	1402      	addi      	r14, r14, 8
  8e:	1498      	pop      	r4-r11, r15
  90:	3400      	movi      	r4, 0
  92:	07f3      	br      	0x78	// 78 <ieee80211_get_stalist+0x78>
  94:	d8272022 	ld.w      	r1, (r7, 0x88)
  98:	6068      	addu      	r1, r10
  9a:	d8610025 	ld.b      	r3, (r1, 0x25)
  9e:	e4632008 	andi      	r3, r3, 8
  a2:	e903002c 	bez      	r3, 0xfa	// fa <ieee80211_get_stalist+0xfa>
  a6:	c5848426 	mult      	r6, r4, r12
  aa:	6194      	addu      	r6, r5
  ac:	3206      	movi      	r2, 6
  ae:	211b      	addi      	r1, 28
  b0:	5e06      	addi      	r0, r6, 2
  b2:	dd8e2000 	st.w      	r12, (r14, 0x0)
  b6:	e0000000 	bsr      	0x0	// 0 <memcpy>
  ba:	d8672022 	ld.w      	r3, (r7, 0x88)
  be:	60e8      	addu      	r3, r10
  c0:	8641      	ld.b      	r2, (r6, 0x1)
  c2:	832c      	ld.b      	r1, (r3, 0xc)
  c4:	a620      	st.b      	r1, (r6, 0x0)
  c6:	d8030025 	ld.b      	r0, (r3, 0x25)
  ca:	c4405c00 	ins      	r2, r0, 0, 0
  ce:	a641      	st.b      	r2, (r6, 0x1)
  d0:	d8430022 	ld.b      	r2, (r3, 0x22)
  d4:	a648      	st.b      	r2, (r6, 0x8)
  d6:	d8630023 	ld.b      	r3, (r3, 0x23)
  da:	a669      	st.b      	r3, (r6, 0x9)
  dc:	1a01      	addi      	r2, r14, 4
  de:	6c23      	mov      	r0, r8
  e0:	2400      	addi      	r4, 1
  e2:	e0000000 	bsr      	0x0	// 0 <ieee80211_conf_get_sta_snr>
  e6:	d86e0004 	ld.b      	r3, (r14, 0x4)
  ea:	6651      	cmplt      	r4, r9
  ec:	a66a      	st.b      	r3, (r6, 0xa)
  ee:	d86e0005 	ld.b      	r3, (r14, 0x5)
  f2:	a66b      	st.b      	r3, (r6, 0xb)
  f4:	d98e2000 	ld.w      	r12, (r14, 0x0)
  f8:	0fc9      	bf      	0x8a	// 8a <ieee80211_get_stalist+0x8a>
  fa:	e56b0000 	addi      	r11, r11, 1
  fe:	e54a00cb 	addi      	r10, r10, 204
 102:	07c0      	br      	0x82	// 82 <ieee80211_get_stalist+0x82>
 104:	3400      	movi      	r4, 0
 106:	07c2      	br      	0x8a	// 8a <ieee80211_get_stalist+0x8a>
 108:	00000000 	.long	0x00000000

Disassembly of section .text.ieee80211_stainfo_init:

00000000 <ieee80211_stainfo_init>:
   0:	14d4      	push      	r4-r7, r15
   2:	d8602022 	ld.w      	r3, (r0, 0x88)
   6:	6d03      	mov      	r4, r0
   8:	e923001e 	bnez      	r3, 0x44	// 44 <ieee80211_stainfo_init+0x44>
   c:	d8001026 	ld.h      	r0, (r0, 0x4c)
  10:	33cc      	movi      	r3, 204
  12:	7c0c      	mult      	r0, r3
  14:	e0000000 	bsr      	0x0	// 0 <_os_zalloc>
  18:	dc042022 	st.w      	r0, (r4, 0x88)
  1c:	e9200007 	bnez      	r0, 0x2a	// 2a <ieee80211_stainfo_init+0x2a>
  20:	1053      	lrw      	r2, 0x0	// 6c <ieee80211_stainfo_init+0x6c>
  22:	318e      	movi      	r1, 142
  24:	1013      	lrw      	r0, 0x0	// 70 <ieee80211_stainfo_init+0x70>
  26:	e0000000 	bsr      	0x0	// 0 <assert_internal>
  2a:	d8642022 	ld.w      	r3, (r4, 0x88)
  2e:	e903000b 	bez      	r3, 0x44	// 44 <ieee80211_stainfo_init+0x44>
  32:	3500      	movi      	r5, 0
  34:	6d97      	mov      	r6, r5
  36:	e4e40197 	addi      	r7, r4, 408
  3a:	d8441026 	ld.h      	r2, (r4, 0x4c)
  3e:	6499      	cmplt      	r6, r2
  40:	2600      	addi      	r6, 1
  42:	0802      	bt      	0x46	// 46 <ieee80211_stainfo_init+0x46>
  44:	1494      	pop      	r4-r7, r15
  46:	d8042022 	ld.w      	r0, (r4, 0x88)
  4a:	6014      	addu      	r0, r5
  4c:	a8c6      	st.h      	r6, (r0, 0xc)
  4e:	200f      	addi      	r0, 16
  50:	e0000000 	bsr      	0x0	// 0 <skb_list_init>
  54:	d8642022 	ld.w      	r3, (r4, 0x88)
  58:	60d4      	addu      	r3, r5
  5a:	d8442067 	ld.w      	r2, (r4, 0x19c)
  5e:	25cb      	addi      	r5, 204
  60:	dc642067 	st.w      	r3, (r4, 0x19c)
  64:	b3e0      	st.w      	r7, (r3, 0x0)
  66:	b341      	st.w      	r2, (r3, 0x4)
  68:	b260      	st.w      	r3, (r2, 0x0)
  6a:	07e8      	br      	0x3a	// 3a <ieee80211_stainfo_init+0x3a>
	...
