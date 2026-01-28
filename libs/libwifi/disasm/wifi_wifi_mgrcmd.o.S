
libwifi/o/wifi_wifi_mgrcmd.o:     file format elf32-csky-little


Disassembly of section .text.wifi_mgrcmd_rx:

00000000 <wifi_mgrcmd_rx>:
   0:	14d7      	push      	r4-r10, r15
   2:	142b      	subi      	r14, r14, 44
   4:	8274      	ld.b      	r3, (r2, 0x14)
   6:	3b42      	cmpnei      	r3, 2
   8:	6d0b      	mov      	r4, r2
   a:	0807      	bt      	0x18	// 18 <wifi_mgrcmd_rx+0x18>
   c:	8c6c      	ld.h      	r3, (r4, 0x18)
   e:	2217      	addi      	r2, 24
  10:	e9030007 	bez      	r3, 0x1e	// 1e <wifi_mgrcmd_rx+0x1e>
  14:	3b41      	cmpnei      	r3, 1
  16:	0c12      	bf      	0x3a	// 3a <wifi_mgrcmd_rx+0x3a>
  18:	3000      	movi      	r0, 0
  1a:	140b      	addi      	r14, r14, 44
  1c:	1497      	pop      	r4-r10, r15
  1e:	8a41      	ld.h      	r2, (r2, 0x2)
  20:	3a46      	cmpnei      	r2, 6
  22:	0bfb      	bt      	0x18	// 18 <wifi_mgrcmd_rx+0x18>
  24:	116b      	lrw      	r3, 0x0	// d0 <wifi_mgrcmd_rx+0xd0>
  26:	6c13      	mov      	r0, r4
  28:	9322      	ld.w      	r1, (r3, 0x8)
  2a:	2127      	addi      	r1, 40
  2c:	e0000000 	bsr      	0x0	// 0 <memcmp>
  30:	e920fff4 	bnez      	r0, 0x18	// 18 <wifi_mgrcmd_rx+0x18>
  34:	e0000000 	bsr      	0x0	// 0 <mcu_reset>
  38:	07f0      	br      	0x18	// 18 <wifi_mgrcmd_rx+0x18>
  3a:	1166      	lrw      	r3, 0x0	// d0 <wifi_mgrcmd_rx+0xd0>
  3c:	3206      	movi      	r2, 6
  3e:	9322      	ld.w      	r1, (r3, 0x8)
  40:	2127      	addi      	r1, 40
  42:	6c13      	mov      	r0, r4
  44:	e0000000 	bsr      	0x0	// 0 <memcmp>
  48:	e920ffe8 	bnez      	r0, 0x18	// 18 <wifi_mgrcmd_rx+0x18>
  4c:	841c      	ld.b      	r0, (r4, 0x1c)
  4e:	e9000004 	bez      	r0, 0x56	// 56 <wifi_mgrcmd_rx+0x56>
  52:	e0000000 	bsr      	0x0	// 0 <wificfg_set_bss_bw>
  56:	e504001b 	addi      	r8, r4, 28
  5a:	d8081001 	ld.h      	r0, (r8, 0x2)
  5e:	e9000032 	bez      	r0, 0xc2	// c2 <wifi_mgrcmd_rx+0xc2>
  62:	d8a81002 	ld.h      	r5, (r8, 0x4)
  66:	6142      	subu      	r5, r0
  68:	e0000000 	bsr      	0x0	// 0 <wificfg_get_bss_bw>
  6c:	330a      	movi      	r3, 10
  6e:	7c0c      	mult      	r0, r3
  70:	c4058045 	divs      	r5, r5, r0
  74:	2500      	addi      	r5, 1
  76:	3600      	movi      	r6, 0
  78:	7554      	zextb      	r5, r5
  7a:	6ddb      	mov      	r7, r6
  7c:	e54e000b 	addi      	r10, r14, 12
  80:	74dc      	zextb      	r3, r7
  82:	654c      	cmphs      	r3, r5
  84:	080e      	bt      	0xa0	// a0 <wifi_mgrcmd_rx+0xa0>
  86:	d9281001 	ld.h      	r9, (r8, 0x2)
  8a:	e0000000 	bsr      	0x0	// 0 <wificfg_get_bss_bw>
  8e:	7c18      	mult      	r0, r6
  90:	6240      	addu      	r9, r0
  92:	d4ea0449 	str.h      	r9, (r10, r7 << 1)
  96:	2700      	addi      	r7, 1
  98:	3f50      	cmpnei      	r7, 16
  9a:	2609      	addi      	r6, 10
  9c:	7599      	zexth      	r6, r6
  9e:	0bf1      	bt      	0x80	// 80 <wifi_mgrcmd_rx+0x80>
  a0:	6c57      	mov      	r1, r5
  a2:	6c2b      	mov      	r0, r10
  a4:	e0000000 	bsr      	0x0	// 0 <wificfg_set_chan_list>
  a8:	840b      	ld.b      	r0, (r4, 0xb)
  aa:	b802      	st.w      	r0, (r14, 0x8)
  ac:	840a      	ld.b      	r0, (r4, 0xa)
  ae:	b801      	st.w      	r0, (r14, 0x4)
  b0:	8409      	ld.b      	r0, (r4, 0x9)
  b2:	b800      	st.w      	r0, (r14, 0x0)
  b4:	8468      	ld.b      	r3, (r4, 0x8)
  b6:	8447      	ld.b      	r2, (r4, 0x7)
  b8:	8426      	ld.b      	r1, (r4, 0x6)
  ba:	1007      	lrw      	r0, 0x0	// d4 <wifi_mgrcmd_rx+0xd4>
  bc:	e0000000 	bsr      	0x0	// 0 <hgprintf>
  c0:	07ac      	br      	0x18	// 18 <wifi_mgrcmd_rx+0x18>
  c2:	d8280001 	ld.b      	r1, (r8, 0x1)
  c6:	e901fff1 	bez      	r1, 0xa8	// a8 <wifi_mgrcmd_rx+0xa8>
  ca:	e4040021 	addi      	r0, r4, 34
  ce:	07eb      	br      	0xa4	// a4 <wifi_mgrcmd_rx+0xa4>
	...

Disassembly of section .text.wifi_mgrcmd_enable:

00000000 <wifi_mgrcmd_enable>:
   0:	14d0      	push      	r15
   2:	1003      	lrw      	r0, 0x0	// c <wifi_mgrcmd_enable+0xc>
   4:	e0000000 	bsr      	0x0	// 0 <wifi_mgr_add_submod>
   8:	1490      	pop      	r15
   a:	0000      	.short	0x0000
   c:	00000000 	.long	0x00000000

Disassembly of section .text.wifi_mgr_reset_sta:

00000000 <wifi_mgr_reset_sta>:
   0:	14d1      	push      	r4, r15
   2:	1423      	subi      	r14, r14, 12
   4:	3300      	movi      	r3, 0
   6:	6d07      	mov      	r4, r1
   8:	dc6e1000 	st.h      	r3, (r14, 0x0)
   c:	3206      	movi      	r2, 6
   e:	3306      	movi      	r3, 6
  10:	1801      	addi      	r0, r14, 4
  12:	dc6e1001 	st.h      	r3, (r14, 0x2)
  16:	e0000000 	bsr      	0x0	// 0 <memcpy>
  1a:	330a      	movi      	r3, 10
  1c:	6cbb      	mov      	r2, r14
  1e:	3102      	movi      	r1, 2
  20:	6c13      	mov      	r0, r4
  22:	e0000000 	bsr      	0x0	// 0 <wifi_mgr_send_wifimgr_data>
  26:	1403      	addi      	r14, r14, 12
  28:	1491      	pop      	r4, r15

Disassembly of section .text.wifi_mgr_set_sta_freqinfo:

00000000 <wifi_mgr_set_sta_freqinfo>:
   0:	14d5      	push      	r4-r8, r15
   2:	5ac7      	subi      	r6, r2, 2
   4:	6c1b      	mov      	r0, r6
   6:	6d07      	mov      	r4, r1
   8:	6e0b      	mov      	r8, r2
   a:	e0000000 	bsr      	0x0	// 0 <_os_malloc>
   e:	6d43      	mov      	r5, r0
  10:	e9000027 	bez      	r0, 0x5e	// 5e <wifi_mgr_set_sta_freqinfo+0x5e>
  14:	8461      	ld.b      	r3, (r4, 0x1)
  16:	8400      	ld.b      	r0, (r4, 0x0)
  18:	6c0c      	or      	r0, r3
  1a:	8462      	ld.b      	r3, (r4, 0x2)
  1c:	6c0c      	or      	r0, r3
  1e:	8463      	ld.b      	r3, (r4, 0x3)
  20:	6c0c      	or      	r0, r3
  22:	8464      	ld.b      	r3, (r4, 0x4)
  24:	6c0c      	or      	r0, r3
  26:	8465      	ld.b      	r3, (r4, 0x5)
  28:	6c0c      	or      	r0, r3
  2a:	3840      	cmpnei      	r0, 0
  2c:	3301      	movi      	r3, 1
  2e:	10ee      	lrw      	r7, 0x0	// 64 <wifi_mgr_set_sta_freqinfo+0x64>
  30:	c4e40c40 	inct      	r7, r4, 0
  34:	5c36      	addi      	r1, r4, 6
  36:	ad60      	st.h      	r3, (r5, 0x0)
  38:	e4481005 	subi      	r2, r8, 6
  3c:	dd051001 	st.h      	r8, (r5, 0x2)
  40:	5d0e      	addi      	r0, r5, 4
  42:	e0000000 	bsr      	0x0	// 0 <memcpy>
  46:	6cdb      	mov      	r3, r6
  48:	6c97      	mov      	r2, r5
  4a:	3102      	movi      	r1, 2
  4c:	6c1f      	mov      	r0, r7
  4e:	e0000000 	bsr      	0x0	// 0 <wifi_mgr_send_wifimgr_data>
  52:	6d03      	mov      	r4, r0
  54:	6c17      	mov      	r0, r5
  56:	e0000000 	bsr      	0x0	// 0 <_os_free>
  5a:	6c13      	mov      	r0, r4
  5c:	1495      	pop      	r4-r8, r15
  5e:	3400      	movi      	r4, 0
  60:	2c0b      	subi      	r4, 12
  62:	07fc      	br      	0x5a	// 5a <wifi_mgr_set_sta_freqinfo+0x5a>
  64:	00000000 	.long	0x00000000
