
libwifi/o/sta_ps.o:     file format elf32-csky-little


Disassembly of section .text.ieee80211_sta_wakeup_ap:

00000000 <ieee80211_sta_wakeup_ap>:
   0:	14d3      	push      	r4-r6, r15
   2:	1425      	subi      	r14, r14, 20
   4:	6d83      	mov      	r6, r0
   6:	6d0b      	mov      	r4, r2
   8:	d8a62063 	ld.w      	r5, (r6, 0x18c)
   c:	6c07      	mov      	r0, r1
   e:	3206      	movi      	r2, 6
  10:	e425001b 	addi      	r1, r5, 28
  14:	e0000000 	bsr      	0x0	// 0 <memcmp>
  18:	e9200026 	bnez      	r0, 0x64	// 64 <ieee80211_sta_wakeup_ap+0x64>
  1c:	e9240024 	bnez      	r4, 0x64	// 64 <ieee80211_sta_wakeup_ap+0x64>
  20:	d8650025 	ld.b      	r3, (r5, 0x25)
  24:	e4632001 	andi      	r3, r3, 1
  28:	e9030021 	bez      	r3, 0x6a	// 6a <ieee80211_sta_wakeup_ap+0x6a>
  2c:	d8450021 	ld.b      	r2, (r5, 0x21)
  30:	857c      	ld.b      	r3, (r5, 0x1c)
  32:	b844      	st.w      	r2, (r14, 0x10)
  34:	d8450020 	ld.b      	r2, (r5, 0x20)
  38:	b843      	st.w      	r2, (r14, 0xc)
  3a:	855f      	ld.b      	r2, (r5, 0x1f)
  3c:	b842      	st.w      	r2, (r14, 0x8)
  3e:	855e      	ld.b      	r2, (r5, 0x1e)
  40:	b841      	st.w      	r2, (r14, 0x4)
  42:	855d      	ld.b      	r2, (r5, 0x1d)
  44:	b840      	st.w      	r2, (r14, 0x0)
  46:	320d      	movi      	r2, 13
  48:	102a      	lrw      	r1, 0x0	// 70 <ieee80211_sta_wakeup_ap+0x70>
  4a:	100b      	lrw      	r0, 0x0	// 74 <ieee80211_sta_wakeup_ap+0x74>
  4c:	e0000000 	bsr      	0x0	// 0 <hgprintf>
  50:	6cd3      	mov      	r3, r4
  52:	3201      	movi      	r2, 1
  54:	d8262063 	ld.w      	r1, (r6, 0x18c)
  58:	6c1b      	mov      	r0, r6
  5a:	e0000000 	bsr      	0x0	// 0 <ieee80211_send_nullfunc>
  5e:	6c13      	mov      	r0, r4
  60:	1405      	addi      	r14, r14, 20
  62:	1493      	pop      	r4-r6, r15
  64:	3000      	movi      	r0, 0
  66:	2812      	subi      	r0, 19
  68:	07fc      	br      	0x60	// 60 <ieee80211_sta_wakeup_ap+0x60>
  6a:	3000      	movi      	r0, 0
  6c:	2815      	subi      	r0, 22
  6e:	07f9      	br      	0x60	// 60 <ieee80211_sta_wakeup_ap+0x60>
	...

Disassembly of section .text.ieee80211_sta_rx_check_psstate:

00000000 <ieee80211_sta_rx_check_psstate>:
   0:	14d0      	push      	r15
   2:	9062      	ld.w      	r3, (r0, 0x8)
   4:	9021      	ld.w      	r1, (r0, 0x4)
   6:	9367      	ld.w      	r3, (r3, 0x1c)
   8:	e9010013 	bez      	r1, 0x2e	// 2e <ieee80211_sta_rx_check_psstate+0x2e>
   c:	8b60      	ld.h      	r3, (r3, 0x0)
   e:	e44320fc 	andi      	r2, r3, 252
  12:	3a5c      	cmpnei      	r2, 28
  14:	080e      	bt      	0x30	// 30 <ieee80211_sta_rx_check_psstate+0x30>
  16:	4b6f      	lsri      	r3, r3, 15
  18:	d8410025 	ld.b      	r2, (r1, 0x25)
  1c:	e4422001 	andi      	r2, r2, 1
  20:	e922000b 	bnez      	r2, 0x36	// 36 <ieee80211_sta_rx_check_psstate+0x36>
  24:	e9030005 	bez      	r3, 0x2e	// 2e <ieee80211_sta_rx_check_psstate+0x2e>
  28:	9000      	ld.w      	r0, (r0, 0x0)
  2a:	e0000000 	bsr      	0x0	// 0 <ieee80211_sta_ps_start>
  2e:	1490      	pop      	r15
  30:	c5835583 	zext      	r3, r3, 12, 12
  34:	07f2      	br      	0x18	// 18 <ieee80211_sta_rx_check_psstate+0x18>
  36:	e923fffc 	bnez      	r3, 0x2e	// 2e <ieee80211_sta_rx_check_psstate+0x2e>
  3a:	9000      	ld.w      	r0, (r0, 0x0)
  3c:	e0000000 	bsr      	0x0	// 0 <ieee80211_sta_ps_end>
  40:	07f7      	br      	0x2e	// 2e <ieee80211_sta_rx_check_psstate+0x2e>
