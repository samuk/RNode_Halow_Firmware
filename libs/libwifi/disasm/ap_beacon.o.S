
libwifi/o/ap_beacon.o:     file format elf32-csky-little


Disassembly of section .text.ieee80211_ap_gen_beacon:

00000000 <ieee80211_ap_gen_beacon>:
   0:	14d4      	push      	r4-r7, r15
   2:	11a0      	lrw      	r5, 0x0	// 80 <ieee80211_ap_gen_beacon+0x80>
   4:	6d83      	mov      	r6, r0
   6:	d865003a 	ld.b      	r3, (r5, 0x3a)
   a:	d8050038 	ld.b      	r0, (r5, 0x38)
   e:	600c      	addu      	r0, r3
  10:	d845003b 	ld.b      	r2, (r5, 0x3b)
  14:	d8650039 	ld.b      	r3, (r5, 0x39)
  18:	60c8      	addu      	r3, r2
  1a:	600c      	addu      	r0, r3
  1c:	e40003ff 	addi      	r0, r0, 1024
  20:	e0000000 	bsr      	0x0	// 0 <alloc_skb>
  24:	6d03      	mov      	r4, r0
  26:	e9200009 	bnez      	r0, 0x38	// 38 <ieee80211_ap_gen_beacon+0x38>
  2a:	320a      	movi      	r2, 10
  2c:	1036      	lrw      	r1, 0x0	// 84 <ieee80211_ap_gen_beacon+0x84>
  2e:	1017      	lrw      	r0, 0x0	// 88 <ieee80211_ap_gen_beacon+0x88>
  30:	e0000000 	bsr      	0x0	// 0 <hgprintf>
  34:	6c13      	mov      	r0, r4
  36:	1494      	pop      	r4-r7, r15
  38:	96f4      	ld.w      	r7, (r6, 0x50)
  3a:	e927000c 	bnez      	r7, 0x52	// 52 <ieee80211_ap_gen_beacon+0x52>
  3e:	320f      	movi      	r2, 15
  40:	1031      	lrw      	r1, 0x0	// 84 <ieee80211_ap_gen_beacon+0x84>
  42:	1013      	lrw      	r0, 0x0	// 8c <ieee80211_ap_gen_beacon+0x8c>
  44:	e0000000 	bsr      	0x0	// 0 <hgprintf>
  48:	6c13      	mov      	r0, r4
  4a:	e0000000 	bsr      	0x0	// 0 <kfree_skb>
  4e:	6d1f      	mov      	r4, r7
  50:	07f2      	br      	0x34	// 34 <ieee80211_ap_gen_beacon+0x34>
  52:	d865003a 	ld.b      	r3, (r5, 0x3a)
  56:	d8250038 	ld.b      	r1, (r5, 0x38)
  5a:	604c      	addu      	r1, r3
  5c:	e0000000 	bsr      	0x0	// 0 <skb_reserve>
  60:	9674      	ld.w      	r3, (r6, 0x50)
  62:	6c53      	mov      	r1, r4
  64:	6c1b      	mov      	r0, r6
  66:	7bcd      	jsr      	r3
  68:	d866202b 	ld.w      	r3, (r6, 0xac)
  6c:	3201      	movi      	r2, 1
  6e:	8360      	ld.b      	r3, (r3, 0x0)
  70:	a46c      	st.b      	r3, (r4, 0xc)
  72:	8664      	ld.b      	r3, (r6, 0x4)
  74:	a46d      	st.b      	r3, (r4, 0xd)
  76:	846e      	ld.b      	r3, (r4, 0xe)
  78:	c4625c00 	ins      	r3, r2, 0, 0
  7c:	a46e      	st.b      	r3, (r4, 0xe)
  7e:	07db      	br      	0x34	// 34 <ieee80211_ap_gen_beacon+0x34>
	...
