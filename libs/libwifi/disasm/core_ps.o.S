
libwifi/o/core_ps.o:     file format elf32-csky-little


Disassembly of section .text.ieee80211_tim_set:

00000000 <ieee80211_tim_set>:
   0:	c0006023 	mfcr      	r3, cr<0, 0>
   4:	c0807020 	psrclr      	ie
   8:	e4632040 	andi      	r3, r3, 64
   c:	e9010014 	bez      	r1, 0x34	// 34 <ieee80211_tim_set+0x34>
  10:	d8410025 	ld.b      	r2, (r1, 0x25)
  14:	e4422001 	andi      	r2, r2, 1
  18:	e902000e 	bez      	r2, 0x34	// 34 <ieee80211_tim_set+0x34>
  1c:	8946      	ld.h      	r2, (r1, 0xc)
  1e:	c462484c 	lsri      	r12, r2, 3
  22:	e4222007 	andi      	r1, r2, 7
  26:	3201      	movi      	r2, 1
  28:	7084      	lsl      	r2, r1
  2a:	d1800021 	ldr.b      	r1, (r0, r12 << 0)
  2e:	6c84      	or      	r2, r1
  30:	d5800022 	str.b      	r2, (r0, r12 << 0)
  34:	e9030004 	bez      	r3, 0x3c	// 3c <ieee80211_tim_set+0x3c>
  38:	c0807420 	psrset      	ie
  3c:	783c      	jmp      	r15

Disassembly of section .text.ieee80211_tim_clr:

00000000 <ieee80211_tim_clr>:
   0:	c0006022 	mfcr      	r2, cr<0, 0>
   4:	c0807020 	psrclr      	ie
   8:	e4422040 	andi      	r2, r2, 64
   c:	e901000f 	bez      	r1, 0x2a	// 2a <ieee80211_tim_clr+0x2a>
  10:	8966      	ld.h      	r3, (r1, 0xc)
  12:	c463484c 	lsri      	r12, r3, 3
  16:	e4232007 	andi      	r1, r3, 7
  1a:	3300      	movi      	r3, 0
  1c:	2b01      	subi      	r3, 2
  1e:	70c7      	rotl      	r3, r1
  20:	d1800021 	ldr.b      	r1, (r0, r12 << 0)
  24:	68c4      	and      	r3, r1
  26:	d5800023 	str.b      	r3, (r0, r12 << 0)
  2a:	e9020004 	bez      	r2, 0x32	// 32 <ieee80211_tim_clr+0x32>
  2e:	c0807420 	psrset      	ie
  32:	783c      	jmp      	r15

Disassembly of section .text.ieee80211_sta_ps_start:

00000000 <ieee80211_sta_ps_start>:
   0:	14d0      	push      	r15
   2:	d9810025 	ld.b      	r12, (r1, 0x25)
   6:	e46c2001 	andi      	r3, r12, 1
   a:	6c87      	mov      	r2, r1
   c:	e923000b 	bnez      	r3, 0x22	// 22 <ieee80211_sta_ps_start+0x22>
  10:	3101      	movi      	r1, 1
  12:	c5815c00 	ins      	r12, r1, 0, 0
  16:	dd820025 	st.b      	r12, (r2, 0x25)
  1a:	a26e      	st.b      	r3, (r2, 0xe)
  1c:	3112      	movi      	r1, 18
  1e:	e0000000 	bsr      	0x0	// 0 <ieee80211_iface_event>
  22:	1490      	pop      	r15

Disassembly of section .text.ieee80211_sta_ps_end:

00000000 <ieee80211_sta_ps_end>:
   0:	14d0      	push      	r15
   2:	d9810025 	ld.b      	r12, (r1, 0x25)
   6:	e46c2001 	andi      	r3, r12, 1
   a:	6c87      	mov      	r2, r1
   c:	e903000a 	bez      	r3, 0x20	// 20 <ieee80211_sta_ps_end+0x20>
  10:	3300      	movi      	r3, 0
  12:	c5835c00 	ins      	r12, r3, 0, 0
  16:	dd810025 	st.b      	r12, (r1, 0x25)
  1a:	3113      	movi      	r1, 19
  1c:	e0000000 	bsr      	0x0	// 0 <ieee80211_iface_event>
  20:	1490      	pop      	r15

Disassembly of section .text.ieee80211_send_wakeup_frame:

00000000 <ieee80211_send_wakeup_frame>:
   0:	14d5      	push      	r4-r8, r15
   2:	1421      	subi      	r14, r14, 4
   4:	6d43      	mov      	r5, r0
   6:	6d87      	mov      	r6, r1
   8:	6dcb      	mov      	r7, r2
   a:	6e0f      	mov      	r8, r3
   c:	e9000032 	bez      	r0, 0x70	// 70 <ieee80211_send_wakeup_frame+0x70>
  10:	300a      	movi      	r0, 10
  12:	e0000000 	bsr      	0x0	// 0 <_os_zalloc>
  16:	6d03      	mov      	r4, r0
  18:	e9000024 	bez      	r0, 0x60	// 60 <ieee80211_send_wakeup_frame+0x60>
  1c:	dd000000 	st.b      	r8, (r0, 0x0)
  20:	3206      	movi      	r2, 6
  22:	6c5f      	mov      	r1, r7
  24:	2003      	addi      	r0, 4
  26:	e0000000 	bsr      	0x0	// 0 <memcpy>
  2a:	330a      	movi      	r3, 10
  2c:	b860      	st.w      	r3, (r14, 0x0)
  2e:	e426001b 	addi      	r1, r6, 28
  32:	6cd3      	mov      	r3, r4
  34:	3205      	movi      	r2, 5
  36:	6c17      	mov      	r0, r5
  38:	e0000000 	bsr      	0x0	// 0 <ieee80211_gen_vendor_spec_action>
  3c:	6d83      	mov      	r6, r0
  3e:	e900000b 	bez      	r0, 0x54	// 54 <ieee80211_send_wakeup_frame+0x54>
  42:	6c43      	mov      	r1, r0
  44:	6c17      	mov      	r0, r5
  46:	e0000000 	bsr      	0x0	// 0 <ieee80211_add_customer_ie>
  4a:	6c9b      	mov      	r2, r6
  4c:	3100      	movi      	r1, 0
  4e:	6c17      	mov      	r0, r5
  50:	e0000000 	bsr      	0x0	// 0 <ieee80211_tx_skb>
  54:	6c13      	mov      	r0, r4
  56:	e0000000 	bsr      	0x0	// 0 <_os_free>
  5a:	3000      	movi      	r0, 0
  5c:	1401      	addi      	r14, r14, 4
  5e:	1495      	pop      	r4-r8, r15
  60:	1006      	lrw      	r0, 0x0	// 78 <ieee80211_send_wakeup_frame+0x78>
  62:	323f      	movi      	r2, 63
  64:	1026      	lrw      	r1, 0x0	// 7c <ieee80211_send_wakeup_frame+0x7c>
  66:	e0000000 	bsr      	0x0	// 0 <hgprintf>
  6a:	3000      	movi      	r0, 0
  6c:	280b      	subi      	r0, 12
  6e:	07f7      	br      	0x5c	// 5c <ieee80211_send_wakeup_frame+0x5c>
  70:	3000      	movi      	r0, 0
  72:	2812      	subi      	r0, 19
  74:	07f4      	br      	0x5c	// 5c <ieee80211_send_wakeup_frame+0x5c>
	...

Disassembly of section .text.ieee80211_wakeup_target:

00000000 <ieee80211_wakeup_target>:
   0:	14d5      	push      	r4-r8, r15
   2:	142b      	subi      	r14, r14, 44
   4:	6d47      	mov      	r5, r1
   6:	3b40      	cmpnei      	r3, 0
   8:	9831      	ld.w      	r1, (r14, 0x44)
   a:	360c      	movi      	r6, 12
   c:	6dc3      	mov      	r7, r0
   e:	6e07      	mov      	r8, r1
  10:	c4c30c40 	inct      	r6, r3, 0
  14:	e9020029 	bez      	r2, 0x66	// 66 <ieee80211_wakeup_target+0x66>
  18:	d860202a 	ld.w      	r3, (r0, 0xa8)
  1c:	d8231026 	ld.h      	r1, (r3, 0x4c)
  20:	6484      	cmphs      	r1, r2
  22:	0c22      	bf      	0x66	// 66 <ieee80211_wakeup_target+0x66>
  24:	34cc      	movi      	r4, 204
  26:	7c90      	mult      	r2, r4
  28:	2acb      	subi      	r2, 204
  2a:	d8832022 	ld.w      	r4, (r3, 0x88)
  2e:	6108      	addu      	r4, r2
  30:	e904001d 	bez      	r4, 0x6a	// 6a <ieee80211_wakeup_target+0x6a>
  34:	d8640025 	ld.b      	r3, (r4, 0x25)
  38:	e4632001 	andi      	r3, r3, 1
  3c:	e923006f 	bnez      	r3, 0x11a	// 11a <ieee80211_wakeup_target+0x11a>
  40:	8545      	ld.b      	r2, (r5, 0x5)
  42:	8560      	ld.b      	r3, (r5, 0x0)
  44:	b844      	st.w      	r2, (r14, 0x10)
  46:	8544      	ld.b      	r2, (r5, 0x4)
  48:	b843      	st.w      	r2, (r14, 0xc)
  4a:	8543      	ld.b      	r2, (r5, 0x3)
  4c:	b842      	st.w      	r2, (r14, 0x8)
  4e:	8542      	ld.b      	r2, (r5, 0x2)
  50:	b841      	st.w      	r2, (r14, 0x4)
  52:	8541      	ld.b      	r2, (r5, 0x1)
  54:	b840      	st.w      	r2, (r14, 0x0)
  56:	326d      	movi      	r2, 109
  58:	1207      	lrw      	r0, 0x0	// 174 <ieee80211_wakeup_target+0x174>
  5a:	1228      	lrw      	r1, 0x0	// 178 <ieee80211_wakeup_target+0x178>
  5c:	e0000000 	bsr      	0x0	// 0 <hgprintf>
  60:	3000      	movi      	r0, 0
  62:	2800      	subi      	r0, 1
  64:	0459      	br      	0x116	// 116 <ieee80211_wakeup_target+0x116>
  66:	e925001b 	bnez      	r5, 0x9c	// 9c <ieee80211_wakeup_target+0x9c>
  6a:	d807202a 	ld.w      	r0, (r7, 0xa8)
  6e:	d8602078 	ld.w      	r3, (r0, 0x1e0)
  72:	e923001b 	bnez      	r3, 0xa8	// a8 <ieee80211_wakeup_target+0xa8>
  76:	8545      	ld.b      	r2, (r5, 0x5)
  78:	8560      	ld.b      	r3, (r5, 0x0)
  7a:	b844      	st.w      	r2, (r14, 0x10)
  7c:	8544      	ld.b      	r2, (r5, 0x4)
  7e:	b843      	st.w      	r2, (r14, 0xc)
  80:	8543      	ld.b      	r2, (r5, 0x3)
  82:	b842      	st.w      	r2, (r14, 0x8)
  84:	8542      	ld.b      	r2, (r5, 0x2)
  86:	b841      	st.w      	r2, (r14, 0x4)
  88:	8541      	ld.b      	r2, (r5, 0x1)
  8a:	b840      	st.w      	r2, (r14, 0x0)
  8c:	3267      	movi      	r2, 103
  8e:	111c      	lrw      	r0, 0x0	// 17c <ieee80211_wakeup_target+0x17c>
  90:	113a      	lrw      	r1, 0x0	// 178 <ieee80211_wakeup_target+0x178>
  92:	e0000000 	bsr      	0x0	// 0 <hgprintf>
  96:	3000      	movi      	r0, 0
  98:	2812      	subi      	r0, 19
  9a:	043e      	br      	0x116	// 116 <ieee80211_wakeup_target+0x116>
  9c:	6c57      	mov      	r1, r5
  9e:	6c1f      	mov      	r0, r7
  a0:	e0000000 	bsr      	0x0	// 0 <ieee80211_sta_get>
  a4:	6d03      	mov      	r4, r0
  a6:	07c5      	br      	0x30	// 30 <ieee80211_wakeup_target+0x30>
  a8:	d9832049 	ld.w      	r12, (r3, 0x124)
  ac:	3300      	movi      	r3, 0
  ae:	6c8f      	mov      	r2, r3
  b0:	6c57      	mov      	r1, r5
  b2:	7bf1      	jsr      	r12
  b4:	e900ffe1 	bez      	r0, 0x76	// 76 <ieee80211_wakeup_target+0x76>
  b8:	9062      	ld.w      	r3, (r0, 0x8)
  ba:	e903ffde 	bez      	r3, 0x76	// 76 <ieee80211_wakeup_target+0x76>
  be:	9083      	ld.w      	r4, (r0, 0xc)
  c0:	e904ffdb 	bez      	r4, 0x76	// 76 <ieee80211_wakeup_target+0x76>
  c4:	3206      	movi      	r2, 6
  c6:	6c57      	mov      	r1, r5
  c8:	e404001b 	addi      	r0, r4, 28
  cc:	e0000000 	bsr      	0x0	// 0 <memcmp>
  d0:	e900ffb2 	bez      	r0, 0x34	// 34 <ieee80211_wakeup_target+0x34>
  d4:	d8440021 	ld.b      	r2, (r4, 0x21)
  d8:	8560      	ld.b      	r3, (r5, 0x0)
  da:	b84a      	st.w      	r2, (r14, 0x28)
  dc:	d8440020 	ld.b      	r2, (r4, 0x20)
  e0:	b849      	st.w      	r2, (r14, 0x24)
  e2:	845f      	ld.b      	r2, (r4, 0x1f)
  e4:	b848      	st.w      	r2, (r14, 0x20)
  e6:	845e      	ld.b      	r2, (r4, 0x1e)
  e8:	b847      	st.w      	r2, (r14, 0x1c)
  ea:	845d      	ld.b      	r2, (r4, 0x1d)
  ec:	b846      	st.w      	r2, (r14, 0x18)
  ee:	845c      	ld.b      	r2, (r4, 0x1c)
  f0:	b845      	st.w      	r2, (r14, 0x14)
  f2:	8545      	ld.b      	r2, (r5, 0x5)
  f4:	b844      	st.w      	r2, (r14, 0x10)
  f6:	8544      	ld.b      	r2, (r5, 0x4)
  f8:	b843      	st.w      	r2, (r14, 0xc)
  fa:	8543      	ld.b      	r2, (r5, 0x3)
  fc:	b842      	st.w      	r2, (r14, 0x8)
  fe:	8542      	ld.b      	r2, (r5, 0x2)
 100:	b841      	st.w      	r2, (r14, 0x4)
 102:	8541      	ld.b      	r2, (r5, 0x1)
 104:	b840      	st.w      	r2, (r14, 0x0)
 106:	3262      	movi      	r2, 98
 108:	101e      	lrw      	r0, 0x0	// 180 <ieee80211_wakeup_target+0x180>
 10a:	103c      	lrw      	r1, 0x0	// 178 <ieee80211_wakeup_target+0x178>
 10c:	e0000000 	bsr      	0x0	// 0 <hgprintf>
 110:	dc882000 	st.w      	r4, (r8, 0x0)
 114:	3001      	movi      	r0, 1
 116:	140b      	addi      	r14, r14, 44
 118:	1495      	pop      	r4-r8, r15
 11a:	847c      	ld.b      	r3, (r4, 0x1c)
 11c:	b8c6      	st.w      	r6, (r14, 0x18)
 11e:	8c46      	ld.h      	r2, (r4, 0xc)
 120:	b845      	st.w      	r2, (r14, 0x14)
 122:	d8440021 	ld.b      	r2, (r4, 0x21)
 126:	b844      	st.w      	r2, (r14, 0x10)
 128:	d8440020 	ld.b      	r2, (r4, 0x20)
 12c:	b843      	st.w      	r2, (r14, 0xc)
 12e:	845f      	ld.b      	r2, (r4, 0x1f)
 130:	b842      	st.w      	r2, (r14, 0x8)
 132:	845e      	ld.b      	r2, (r4, 0x1e)
 134:	b841      	st.w      	r2, (r14, 0x4)
 136:	845d      	ld.b      	r2, (r4, 0x1d)
 138:	b840      	st.w      	r2, (r14, 0x0)
 13a:	3271      	movi      	r2, 113
 13c:	1012      	lrw      	r0, 0x0	// 184 <ieee80211_wakeup_target+0x184>
 13e:	102f      	lrw      	r1, 0x0	// 178 <ieee80211_wakeup_target+0x178>
 140:	e0000000 	bsr      	0x0	// 0 <hgprintf>
 144:	d804202a 	ld.w      	r0, (r4, 0xa8)
 148:	a4ce      	st.b      	r6, (r4, 0xe)
 14a:	88a0      	ld.h      	r5, (r0, 0x0)
 14c:	e4a52001 	andi      	r5, r5, 1
 150:	e9050009 	bez      	r5, 0x162	// 162 <ieee80211_wakeup_target+0x162>
 154:	3300      	movi      	r3, 0
 156:	3201      	movi      	r2, 1
 158:	6c53      	mov      	r1, r4
 15a:	e0000000 	bsr      	0x0	// 0 <ieee80211_send_nullfunc>
 15e:	3000      	movi      	r0, 0
 160:	07db      	br      	0x116	// 116 <ieee80211_wakeup_target+0x116>
 162:	d800202a 	ld.w      	r0, (r0, 0xa8)
 166:	208f      	addi      	r0, 144
 168:	6c53      	mov      	r1, r4
 16a:	e0000000 	bsr      	0x0	// 0 <ieee80211_wakeup_target>
 16e:	6c17      	mov      	r0, r5
 170:	07d3      	br      	0x116	// 116 <ieee80211_wakeup_target+0x116>
	...

Disassembly of section .text.ieee80211_wakeup_sta:

00000000 <ieee80211_wakeup_sta>:
   0:	14d3      	push      	r4-r6, r15
   2:	1422      	subi      	r14, r14, 8
   4:	1c01      	addi      	r4, r14, 4
   6:	ea0c0000 	movi      	r12, 0
   a:	b880      	st.w      	r4, (r14, 0x0)
   c:	6d47      	mov      	r5, r1
   e:	6d8f      	mov      	r6, r3
  10:	dd8e2001 	st.w      	r12, (r14, 0x4)
  14:	e0000000 	bsr      	0x0	// 0 <ieee80211_wakeup_sta>
  18:	e960000b 	blsz      	r0, 0x2e	// 2e <ieee80211_wakeup_sta+0x2e>
  1c:	9420      	ld.w      	r1, (r4, 0x0)
  1e:	e9010008 	bez      	r1, 0x2e	// 2e <ieee80211_wakeup_sta+0x2e>
  22:	74da      	sextb      	r3, r6
  24:	6c97      	mov      	r2, r5
  26:	d801202a 	ld.w      	r0, (r1, 0xa8)
  2a:	e0000000 	bsr      	0x0	// 0 <ieee80211_wakeup_sta>
  2e:	1402      	addi      	r14, r14, 8
  30:	1493      	pop      	r4-r6, r15

Disassembly of section .text.ieee80211_rx_wakeup_frame:

00000000 <ieee80211_rx_wakeup_frame>:
   0:	14d2      	push      	r4-r5, r15
   2:	9062      	ld.w      	r3, (r0, 0x8)
   4:	3206      	movi      	r2, 6
   6:	9387      	ld.w      	r4, (r3, 0x1c)
   8:	90a0      	ld.w      	r5, (r0, 0x0)
   a:	5d08      	addu      	r0, r5, r2
   c:	5c2e      	addi      	r1, r4, 4
   e:	e0000000 	bsr      	0x0	// 0 <memcmp>
  12:	6c83      	mov      	r2, r0
  14:	e920000a 	bnez      	r0, 0x28	// 28 <ieee80211_rx_wakeup_frame+0x28>
  18:	d8640024 	ld.b      	r3, (r4, 0x24)
  1c:	e4240027 	addi      	r1, r4, 40
  20:	6c17      	mov      	r0, r5
  22:	e0000000 	bsr      	0x0	// 0 <ieee80211_rx_wakeup_frame>
  26:	1492      	pop      	r4-r5, r15
  28:	3000      	movi      	r0, 0
  2a:	2800      	subi      	r0, 1
  2c:	07fd      	br      	0x26	// 26 <ieee80211_rx_wakeup_frame+0x26>
