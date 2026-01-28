
libwifi/o/ap_event.o:     file format elf32-csky-little


Disassembly of section .text.ieee80211_ap_proc_event:

00000000 <ieee80211_ap_proc_event>:
   0:	14d3      	push      	r4-r6, r15
   2:	6d8f      	mov      	r6, r3
   4:	5977      	subi      	r3, r1, 6
   6:	3b13      	cmphsi      	r3, 20
   8:	6d03      	mov      	r4, r0
   a:	6d4b      	mov      	r5, r2
   c:	089f      	bt      	0x14a	// 14a <ieee80211_ap_proc_event+0x14a>
   e:	1043      	lrw      	r2, 0x0	// 18 <ieee80211_ap_proc_event+0x18>
  10:	d0620883 	ldr.w      	r3, (r2, r3 << 2)
  14:	780c      	jmp      	r3
  16:	0000      	.short	0x0000
  18:	00000000 	.long	0x00000000
  1c:	3114      	movi      	r1, 20
  1e:	3300      	movi      	r3, 0
  20:	8044      	ld.b      	r2, (r0, 0x4)
  22:	e0000000 	bsr      	0x0	// 0 <ieee80211_event_notify>
  26:	8424      	ld.b      	r1, (r4, 0x4)
  28:	c6005020 	bmaski      	r0, 17
  2c:	2010      	addi      	r0, 17
  2e:	e0000000 	bsr      	0x0	// 0 <sys_event_new>
  32:	0440      	br      	0xb2	// b2 <ieee80211_ap_proc_event+0xb2>
  34:	3115      	movi      	r1, 21
  36:	3300      	movi      	r3, 0
  38:	8044      	ld.b      	r2, (r0, 0x4)
  3a:	e0000000 	bsr      	0x0	// 0 <ieee80211_event_notify>
  3e:	8424      	ld.b      	r1, (r4, 0x4)
  40:	c6005020 	bmaski      	r0, 17
  44:	2011      	addi      	r0, 18
  46:	07f4      	br      	0x2e	// 2e <ieee80211_ap_proc_event+0x2e>
  48:	d8650025 	ld.b      	r3, (r5, 0x25)
  4c:	3201      	movi      	r2, 1
  4e:	c4625c03 	ins      	r3, r2, 3, 3
  52:	dc650025 	st.b      	r3, (r5, 0x25)
  56:	3248      	movi      	r2, 72
  58:	3300      	movi      	r3, 0
  5a:	a56e      	st.b      	r3, (r5, 0xe)
  5c:	3100      	movi      	r1, 0
  5e:	5d08      	addu      	r0, r5, r2
  60:	e0000000 	bsr      	0x0	// 0 <memset>
  64:	d864202b 	ld.w      	r3, (r4, 0xac)
  68:	3110      	movi      	r1, 16
  6a:	d9832019 	ld.w      	r12, (r3, 0x64)
  6e:	3300      	movi      	r3, 0
  70:	6c8f      	mov      	r2, r3
  72:	6c13      	mov      	r0, r4
  74:	7bf1      	jsr      	r12
  76:	d804202a 	ld.w      	r0, (r4, 0xa8)
  7a:	6c57      	mov      	r1, r5
  7c:	208f      	addi      	r0, 144
  7e:	e0000000 	bsr      	0x0	// 0 <ieee80211_tim_clr>
  82:	6c57      	mov      	r1, r5
  84:	6c13      	mov      	r0, r4
  86:	e0000000 	bsr      	0x0	// 0 <ieee80211_sta_ps_end>
  8a:	3108      	movi      	r1, 8
  8c:	6cdb      	mov      	r3, r6
  8e:	e445001b 	addi      	r2, r5, 28
  92:	6c13      	mov      	r0, r4
  94:	e0000000 	bsr      	0x0	// 0 <ieee80211_event_notify>
  98:	8d26      	ld.h      	r1, (r5, 0xc)
  9a:	c6005020 	bmaski      	r0, 17
  9e:	2008      	addi      	r0, 9
  a0:	07c7      	br      	0x2e	// 2e <ieee80211_ap_proc_event+0x2e>
  a2:	d860202b 	ld.w      	r3, (r0, 0xac)
  a6:	3110      	movi      	r1, 16
  a8:	d9832019 	ld.w      	r12, (r3, 0x64)
  ac:	3300      	movi      	r3, 0
  ae:	6c8f      	mov      	r2, r3
  b0:	7bf1      	jsr      	r12
  b2:	3000      	movi      	r0, 0
  b4:	0451      	br      	0x156	// 156 <ieee80211_ap_proc_event+0x156>
  b6:	d840202a 	ld.w      	r2, (r0, 0xa8)
  ba:	3112      	movi      	r1, 18
  bc:	d862018c 	ld.b      	r3, (r2, 0x18c)
  c0:	2300      	addi      	r3, 1
  c2:	dc62018c 	st.b      	r3, (r2, 0x18c)
  c6:	6cdb      	mov      	r3, r6
  c8:	e445001b 	addi      	r2, r5, 28
  cc:	e0000000 	bsr      	0x0	// 0 <ieee80211_event_notify>
  d0:	8d26      	ld.h      	r1, (r5, 0xc)
  d2:	c6005020 	bmaski      	r0, 17
  d6:	2009      	addi      	r0, 10
  d8:	07ab      	br      	0x2e	// 2e <ieee80211_ap_proc_event+0x2e>
  da:	d840202a 	ld.w      	r2, (r0, 0xa8)
  de:	6c57      	mov      	r1, r5
  e0:	d862018c 	ld.b      	r3, (r2, 0x18c)
  e4:	2b00      	subi      	r3, 1
  e6:	dc62018c 	st.b      	r3, (r2, 0x18c)
  ea:	e0000000 	bsr      	0x0	// 0 <ieee80211_ap_send_psdata>
  ee:	3113      	movi      	r1, 19
  f0:	6cdb      	mov      	r3, r6
  f2:	e445001b 	addi      	r2, r5, 28
  f6:	6c13      	mov      	r0, r4
  f8:	e0000000 	bsr      	0x0	// 0 <ieee80211_event_notify>
  fc:	8d26      	ld.h      	r1, (r5, 0xc)
  fe:	c6005020 	bmaski      	r0, 17
 102:	200a      	addi      	r0, 11
 104:	0795      	br      	0x2e	// 2e <ieee80211_ap_proc_event+0x2e>
 106:	6c57      	mov      	r1, r5
 108:	e0000000 	bsr      	0x0	// 0 <ieee80211_sta_get>
 10c:	6d83      	mov      	r6, r0
 10e:	e920ffd2 	bnez      	r0, 0xb2	// b2 <ieee80211_ap_proc_event+0xb2>
 112:	3202      	movi      	r2, 2
 114:	6c57      	mov      	r1, r5
 116:	6c13      	mov      	r0, r4
 118:	e0000000 	bsr      	0x0	// 0 <ieee80211_send_disassoc>
 11c:	07cb      	br      	0xb2	// b2 <ieee80211_ap_proc_event+0xb2>
 11e:	3109      	movi      	r1, 9
 120:	e0000000 	bsr      	0x0	// 0 <ieee80211_state>
 124:	3300      	movi      	r3, 0
 126:	3106      	movi      	r1, 6
 128:	6c8f      	mov      	r2, r3
 12a:	6c13      	mov      	r0, r4
 12c:	e0000000 	bsr      	0x0	// 0 <ieee80211_event_notify>
 130:	3100      	movi      	r1, 0
 132:	c6005020 	bmaski      	r0, 17
 136:	2006      	addi      	r0, 7
 138:	077b      	br      	0x2e	// 2e <ieee80211_ap_proc_event+0x2e>
 13a:	e4650011 	addi      	r3, r5, 18
 13e:	e445000b 	addi      	r2, r5, 12
 142:	310e      	movi      	r1, 14
 144:	e0000000 	bsr      	0x0	// 0 <ieee80211_event_notify>
 148:	07b5      	br      	0xb2	// b2 <ieee80211_ap_proc_event+0xb2>
 14a:	6cdb      	mov      	r3, r6
 14c:	6c97      	mov      	r2, r5
 14e:	7445      	zexth      	r1, r1
 150:	6c13      	mov      	r0, r4
 152:	e0000000 	bsr      	0x0	// 0 <ieee80211_event_notify>
 156:	1493      	pop      	r4-r6, r15
