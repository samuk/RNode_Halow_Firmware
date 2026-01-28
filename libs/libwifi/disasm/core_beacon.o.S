
libwifi/o/core_beacon.o:     file format elf32-csky-little


Disassembly of section .text.__bitmap_empty:

00000000 <__bitmap_empty>:
   0:	39df      	btsti      	r1, 31
   2:	c4610c20 	incf      	r3, r1, 0
   6:	c4610c5f 	inct      	r3, r1, 31
   a:	5365      	asri      	r3, r3, 5
   c:	3200      	movi      	r2, 0
   e:	64c9      	cmplt      	r2, r3
  10:	081a      	bt      	0x44	// 44 <__bitmap_empty+0x44>
  12:	e461201f 	andi      	r3, r1, 31
  16:	e903001f 	bez      	r3, 0x54	// 54 <__bitmap_empty+0x54>
  1a:	c7c05023 	bmaski      	r3, 31
  1e:	231f      	addi      	r3, 32
  20:	684c      	and      	r1, r3
  22:	e9a10007 	bhsz      	r1, 0x30	// 30 <__bitmap_empty+0x30>
  26:	3300      	movi      	r3, 0
  28:	2900      	subi      	r1, 1
  2a:	2b1f      	subi      	r3, 32
  2c:	6c4c      	or      	r1, r3
  2e:	2100      	addi      	r1, 1
  30:	3301      	movi      	r3, 1
  32:	c4234021 	lsl      	r1, r3, r1
  36:	2900      	subi      	r1, 1
  38:	d0400883 	ldr.w      	r3, (r0, r2 << 2)
  3c:	684c      	and      	r1, r3
  3e:	3940      	cmpnei      	r1, 0
  40:	6403      	mvcv      	r0
  42:	783c      	jmp      	r15
  44:	d040088c 	ldr.w      	r12, (r0, r2 << 2)
  48:	e92c0004 	bnez      	r12, 0x50	// 50 <__bitmap_empty+0x50>
  4c:	2200      	addi      	r2, 1
  4e:	07e0      	br      	0xe	// e <__bitmap_empty+0xe>
  50:	3000      	movi      	r0, 0
  52:	07f8      	br      	0x42	// 42 <__bitmap_empty+0x42>
  54:	3001      	movi      	r0, 1
  56:	07f6      	br      	0x42	// 42 <__bitmap_empty+0x42>

Disassembly of section .text.bitmap_empty:

00000000 <bitmap_empty>:
   0:	14d0      	push      	r15
   2:	eb210020 	cmplti      	r1, 33
   6:	6cc7      	mov      	r3, r1
   8:	0c1c      	bf      	0x40	// 40 <bitmap_empty+0x40>
   a:	e421201f 	andi      	r1, r1, 31
   e:	9040      	ld.w      	r2, (r0, 0x0)
  10:	e9010015 	bez      	r1, 0x3a	// 3a <bitmap_empty+0x3a>
  14:	c7c05021 	bmaski      	r1, 31
  18:	211f      	addi      	r1, 32
  1a:	684c      	and      	r1, r3
  1c:	e9a10007 	bhsz      	r1, 0x2a	// 2a <bitmap_empty+0x2a>
  20:	3300      	movi      	r3, 0
  22:	2900      	subi      	r1, 1
  24:	2b1f      	subi      	r3, 32
  26:	6c4c      	or      	r1, r3
  28:	2100      	addi      	r1, 1
  2a:	3301      	movi      	r3, 1
  2c:	c4234021 	lsl      	r1, r3, r1
  30:	2900      	subi      	r1, 1
  32:	6848      	and      	r1, r2
  34:	3940      	cmpnei      	r1, 0
  36:	6403      	mvcv      	r0
  38:	1490      	pop      	r15
  3a:	3100      	movi      	r1, 0
  3c:	2900      	subi      	r1, 1
  3e:	07fa      	br      	0x32	// 32 <bitmap_empty+0x32>
  40:	e0000000 	bsr      	0x0	// 0 <bitmap_empty>
  44:	07fa      	br      	0x38	// 38 <bitmap_empty+0x38>

Disassembly of section .text.ieee80211_beacon_add_tim:

00000000 <ieee80211_beacon_add_tim>:
   0:	14d6      	push      	r4-r9, r15
   2:	d8a100fc 	ld.b      	r5, (r1, 0xfc)
   6:	6d03      	mov      	r4, r0
   8:	6dc7      	mov      	r7, r1
   a:	6e0b      	mov      	r8, r2
   c:	e905000a 	bez      	r5, 0x20	// 20 <ieee80211_beacon_add_tim+0x20>
  10:	31fb      	movi      	r1, 251
  12:	4123      	lsli      	r1, r1, 3
  14:	6c1f      	mov      	r0, r7
  16:	e0000000 	bsr      	0x0	// 0 <ieee80211_beacon_add_tim>
  1a:	3840      	cmpnei      	r0, 0
  1c:	6543      	mvcv      	r5
  1e:	7554      	zextb      	r5, r5
  20:	d8642061 	ld.w      	r3, (r4, 0x184)
  24:	e9230004 	bnez      	r3, 0x2c	// 2c <ieee80211_beacon_add_tim+0x2c>
  28:	d8640189 	ld.b      	r3, (r4, 0x189)
  2c:	2b00      	subi      	r3, 1
  2e:	dc642061 	st.w      	r3, (r4, 0x184)
  32:	3106      	movi      	r1, 6
  34:	6c23      	mov      	r0, r8
  36:	e0000000 	bsr      	0x0	// 0 <skb_put>
  3a:	3305      	movi      	r3, 5
  3c:	a060      	st.b      	r3, (r0, 0x0)
  3e:	3304      	movi      	r3, 4
  40:	a061      	st.b      	r3, (r0, 0x1)
  42:	d8640184 	ld.b      	r3, (r4, 0x184)
  46:	a062      	st.b      	r3, (r0, 0x2)
  48:	d8640189 	ld.b      	r3, (r4, 0x189)
  4c:	a063      	st.b      	r3, (r0, 0x3)
  4e:	d8642061 	ld.w      	r3, (r4, 0x184)
  52:	6d83      	mov      	r6, r0
  54:	e923002b 	bnez      	r3, 0xaa	// aa <ieee80211_beacon_add_tim+0xaa>
  58:	e4040177 	addi      	r0, r4, 376
  5c:	e0000000 	bsr      	0x0	// 0 <skb_list_count>
  60:	3840      	cmpnei      	r0, 0
  62:	c4000503 	mvc      	r3
  66:	748c      	zextb      	r2, r3
  68:	dc440188 	st.b      	r2, (r4, 0x188)
  6c:	e905002d 	bez      	r5, 0xc6	// c6 <ieee80211_beacon_add_tim+0xc6>
  70:	3500      	movi      	r5, 0
  72:	d0a70024 	ldr.b      	r4, (r7, r5 << 0)
  76:	e904001c 	bez      	r4, 0xae	// ae <ieee80211_beacon_add_tim+0xae>
  7a:	e4a520fe 	andi      	r5, r5, 254
  7e:	34fa      	movi      	r4, 250
  80:	6551      	cmplt      	r4, r5
  82:	0c1c      	bf      	0xba	// ba <ieee80211_beacon_add_tim+0xba>
  84:	6d17      	mov      	r4, r5
  86:	6cd4      	or      	r3, r5
  88:	c4a40089 	subu      	r9, r4, r5
  8c:	a664      	st.b      	r3, (r6, 0x4)
  8e:	6c67      	mov      	r1, r9
  90:	6c23      	mov      	r0, r8
  92:	6d27      	mov      	r4, r9
  94:	e0000000 	bsr      	0x0	// 0 <skb_put>
  98:	2403      	addi      	r4, 4
  9a:	e4490000 	addi      	r2, r9, 1
  9e:	5f34      	addu      	r1, r7, r5
  a0:	5e12      	addi      	r0, r6, 5
  a2:	e0000000 	bsr      	0x0	// 0 <memcpy>
  a6:	a681      	st.b      	r4, (r6, 0x1)
  a8:	1496      	pop      	r4-r9, r15
  aa:	3300      	movi      	r3, 0
  ac:	07dd      	br      	0x66	// 66 <ieee80211_beacon_add_tim+0x66>
  ae:	2500      	addi      	r5, 1
  b0:	eb4500fb 	cmpnei      	r5, 251
  b4:	0bdf      	bt      	0x72	// 72 <ieee80211_beacon_add_tim+0x72>
  b6:	6d53      	mov      	r5, r4
  b8:	07e3      	br      	0x7e	// 7e <ieee80211_beacon_add_tim+0x7e>
  ba:	d0870022 	ldr.b      	r2, (r7, r4 << 0)
  be:	e922ffe4 	bnez      	r2, 0x86	// 86 <ieee80211_beacon_add_tim+0x86>
  c2:	2c00      	subi      	r4, 1
  c4:	07de      	br      	0x80	// 80 <ieee80211_beacon_add_tim+0x80>
  c6:	a644      	st.b      	r2, (r6, 0x4)
  c8:	a6a5      	st.b      	r5, (r6, 0x5)
  ca:	07ef      	br      	0xa8	// a8 <ieee80211_beacon_add_tim+0xa8>

Disassembly of section .text.ieee80211_build_beacon:

00000000 <ieee80211_build_beacon>:
   0:	14d5      	push      	r4-r8, r15
   2:	6d87      	mov      	r6, r1
   4:	6d03      	mov      	r4, r0
   6:	3124      	movi      	r1, 36
   8:	6c1b      	mov      	r0, r6
   a:	e0000000 	bsr      	0x0	// 0 <skb_put>
   e:	3700      	movi      	r7, 0
  10:	3380      	movi      	r3, 128
  12:	6d43      	mov      	r5, r0
  14:	a860      	st.h      	r3, (r0, 0x0)
  16:	a8e1      	st.h      	r7, (r0, 0x2)
  18:	e5040005 	addi      	r8, r4, 6
  1c:	3206      	movi      	r2, 6
  1e:	112c      	lrw      	r1, 0x0	// cc <ieee80211_build_beacon+0xcc>
  20:	2003      	addi      	r0, 4
  22:	e0000000 	bsr      	0x0	// 0 <memcpy>
  26:	6c63      	mov      	r1, r8
  28:	3206      	movi      	r2, 6
  2a:	e4050009 	addi      	r0, r5, 10
  2e:	e0000000 	bsr      	0x0	// 0 <memcpy>
  32:	6c63      	mov      	r1, r8
  34:	3206      	movi      	r2, 6
  36:	e405000f 	addi      	r0, r5, 16
  3a:	e0000000 	bsr      	0x0	// 0 <memcpy>
  3e:	adec      	st.h      	r7, (r5, 0x18)
  40:	aded      	st.h      	r7, (r5, 0x1a)
  42:	adee      	st.h      	r7, (r5, 0x1c)
  44:	adef      	st.h      	r7, (r5, 0x1e)
  46:	d86410aa 	ld.h      	r3, (r4, 0x154)
  4a:	ad70      	st.h      	r3, (r5, 0x20)
  4c:	d864202b 	ld.w      	r3, (r4, 0xac)
  50:	3101      	movi      	r1, 1
  52:	d843500c 	ld.hs      	r2, (r3, 0x18)
  56:	d864203f 	ld.w      	r3, (r4, 0xfc)
  5a:	3b44      	cmpnei      	r3, 4
  5c:	3311      	movi      	r3, 17
  5e:	c4610c20 	incf      	r3, r1, 0
  62:	6cc8      	or      	r3, r2
  64:	ad71      	st.h      	r3, (r5, 0x22)
  66:	adeb      	st.h      	r7, (r5, 0x16)
  68:	d8640156 	ld.b      	r3, (r4, 0x156)
  6c:	dc640189 	st.b      	r3, (r4, 0x189)
  70:	d8642063 	ld.w      	r3, (r4, 0x18c)
  74:	6c1b      	mov      	r0, r6
  76:	835c      	ld.b      	r2, (r3, 0x1c)
  78:	6884      	and      	r2, r1
  7a:	e4240112 	addi      	r1, r4, 275
  7e:	e0000000 	bsr      	0x0	// 0 <ieee80211_ie_add_ssid>
  82:	6c5b      	mov      	r1, r6
  84:	6c13      	mov      	r0, r4
  86:	e0000000 	bsr      	0x0	// 0 <ieee80211_ie_add_supported_rates>
  8a:	8433      	ld.b      	r1, (r4, 0x13)
  8c:	6c1b      	mov      	r0, r6
  8e:	e0000000 	bsr      	0x0	// 0 <ieee80211_ie_add_dsparam>
  92:	d824202a 	ld.w      	r1, (r4, 0xa8)
  96:	6c9b      	mov      	r2, r6
  98:	6c13      	mov      	r0, r4
  9a:	218f      	addi      	r1, 144
  9c:	e0000000 	bsr      	0x0	// 0 <ieee80211_build_beacon>
  a0:	6c5b      	mov      	r1, r6
  a2:	6c13      	mov      	r0, r4
  a4:	e0000000 	bsr      	0x0	// 0 <ieee80211_ie_add_wpa>
  a8:	e444015b 	addi      	r2, r4, 348
  ac:	6c5b      	mov      	r1, r6
  ae:	6c13      	mov      	r0, r4
  b0:	e0000000 	bsr      	0x0	// 0 <ieee80211_ie_add_wmm>
  b4:	3300      	movi      	r3, 0
  b6:	6c4f      	mov      	r1, r3
  b8:	6c9b      	mov      	r2, r6
  ba:	6c13      	mov      	r0, r4
  bc:	e0000000 	bsr      	0x0	// 0 <ieee80211_add_extra_ie>
  c0:	6c5b      	mov      	r1, r6
  c2:	6c13      	mov      	r0, r4
  c4:	e0000000 	bsr      	0x0	// 0 <ieee80211_add_customer_ie>
  c8:	1495      	pop      	r4-r8, r15
  ca:	0000      	.short	0x0000
  cc:	00000000 	.long	0x00000000
