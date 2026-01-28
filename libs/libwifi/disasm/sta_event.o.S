
libwifi/o/sta_event.o:     file format elf32-csky-little


Disassembly of section .text.ieee80211_sta_proc_event:

00000000 <ieee80211_sta_proc_event>:
   0:	14d3      	push      	r4-r6, r15
   2:	1421      	subi      	r14, r14, 4
   4:	6d8f      	mov      	r6, r3
   6:	5963      	subi      	r3, r1, 1
   8:	eb030022 	cmphsi      	r3, 35
   c:	6d03      	mov      	r4, r0
   e:	6d4b      	mov      	r5, r2
  10:	0995      	bt      	0x33a	// 33a <ieee80211_sta_proc_event+0x33a>
  12:	1043      	lrw      	r2, 0x0	// 1c <ieee80211_sta_proc_event+0x1c>
  14:	d0620883 	ldr.w      	r3, (r2, r3 << 2)
  18:	780c      	jmp      	r3
  1a:	0000      	.short	0x0000
  1c:	00000000 	.long	0x00000000
  20:	3114      	movi      	r1, 20
  22:	3300      	movi      	r3, 0
  24:	8044      	ld.b      	r2, (r0, 0x4)
  26:	e0000000 	bsr      	0x0	// 0 <ieee80211_event_notify>
  2a:	8424      	ld.b      	r1, (r4, 0x4)
  2c:	c6005020 	bmaski      	r0, 17
  30:	2010      	addi      	r0, 17
  32:	e0000000 	bsr      	0x0	// 0 <sys_event_new>
  36:	3000      	movi      	r0, 0
  38:	1401      	addi      	r14, r14, 4
  3a:	1493      	pop      	r4-r6, r15
  3c:	3115      	movi      	r1, 21
  3e:	3300      	movi      	r3, 0
  40:	8044      	ld.b      	r2, (r0, 0x4)
  42:	e0000000 	bsr      	0x0	// 0 <ieee80211_event_notify>
  46:	8424      	ld.b      	r1, (r4, 0x4)
  48:	c6005020 	bmaski      	r0, 17
  4c:	2011      	addi      	r0, 18
  4e:	07f2      	br      	0x32	// 32 <ieee80211_sta_proc_event+0x32>
  50:	7598      	zextb      	r6, r6
  52:	3e44      	cmpnei      	r6, 4
  54:	0c26      	bf      	0xa0	// a0 <ieee80211_sta_proc_event+0xa0>
  56:	3e49      	cmpnei      	r6, 9
  58:	0c0a      	bf      	0x6c	// 6c <ieee80211_sta_proc_event+0x6c>
  5a:	e926ffee 	bnez      	r6, 0x36	// 36 <ieee80211_sta_proc_event+0x36>
  5e:	900d      	ld.w      	r0, (r0, 0x34)
  60:	e0000000 	bsr      	0x0	// 0 <wpa_sm_notify_disassoc>
  64:	6c13      	mov      	r0, r4
  66:	e0000000 	bsr      	0x0	// 0 <ieee80211_sta_start_assoc>
  6a:	07e6      	br      	0x36	// 36 <ieee80211_sta_proc_event+0x36>
  6c:	d8a02063 	ld.w      	r5, (r0, 0x18c)
  70:	e0000000 	bsr      	0x0	// 0 <os_jiffies>
  74:	d864203f 	ld.w      	r3, (r4, 0xfc)
  78:	3b44      	cmpnei      	r3, 4
  7a:	dc052024 	st.w      	r0, (r5, 0x90)
  7e:	dc252025 	st.w      	r1, (r5, 0x94)
  82:	0bda      	bt      	0x36	// 36 <ieee80211_sta_proc_event+0x36>
  84:	d8642063 	ld.w      	r3, (r4, 0x18c)
  88:	d8630025 	ld.b      	r3, (r3, 0x25)
  8c:	e4632008 	andi      	r3, r3, 8
  90:	e923ffd3 	bnez      	r3, 0x36	// 36 <ieee80211_sta_proc_event+0x36>
  94:	6c8f      	mov      	r2, r3
  96:	3108      	movi      	r1, 8
  98:	6c13      	mov      	r0, r4
  9a:	e0000000 	bsr      	0x0	// 0 <ieee80211_iface_event>
  9e:	07cc      	br      	0x36	// 36 <ieee80211_sta_proc_event+0x36>
  a0:	7554      	zextb      	r5, r5
  a2:	3d03      	cmphsi      	r5, 4
  a4:	0bc9      	bt      	0x36	// 36 <ieee80211_sta_proc_event+0x36>
  a6:	3300      	movi      	r3, 0
  a8:	6c8f      	mov      	r2, r3
  aa:	3107      	movi      	r1, 7
  ac:	07f6      	br      	0x98	// 98 <ieee80211_sta_proc_event+0x98>
  ae:	d8202063 	ld.w      	r1, (r0, 0x18c)
  b2:	e4c5000b 	addi      	r6, r5, 12
  b6:	d86100ea 	ld.b      	r3, (r1, 0xea)
  ba:	e4632008 	andi      	r3, r3, 8
  be:	2511      	addi      	r5, 18
  c0:	e9030009 	bez      	r3, 0xd2	// d2 <ieee80211_sta_proc_event+0xd2>
  c4:	3206      	movi      	r2, 6
  c6:	21ec      	addi      	r1, 237
  c8:	6c1b      	mov      	r0, r6
  ca:	e0000000 	bsr      	0x0	// 0 <memcmp>
  ce:	e900000e 	bez      	r0, 0xea	// ea <ieee80211_sta_proc_event+0xea>
  d2:	d8644002 	ld.bs      	r3, (r4, 0x2)
  d6:	e9a30014 	bhsz      	r3, 0xfe	// fe <ieee80211_sta_proc_event+0xfe>
  da:	3220      	movi      	r2, 32
  dc:	e4240112 	addi      	r1, r4, 275
  e0:	6c17      	mov      	r0, r5
  e2:	e0000000 	bsr      	0x0	// 0 <strncmp>
  e6:	e920000c 	bnez      	r0, 0xfe	// fe <ieee80211_sta_proc_event+0xfe>
  ea:	d86400b0 	ld.b      	r3, (r4, 0xb0)
  ee:	e4632001 	andi      	r3, r3, 1
  f2:	e9030006 	bez      	r3, 0xfe	// fe <ieee80211_sta_proc_event+0xfe>
  f6:	310a      	movi      	r1, 10
  f8:	6c13      	mov      	r0, r4
  fa:	e0000000 	bsr      	0x0	// 0 <ieee80211_scan_do_action>
  fe:	6cd7      	mov      	r3, r5
 100:	6c9b      	mov      	r2, r6
 102:	310e      	movi      	r1, 14
 104:	6c13      	mov      	r0, r4
 106:	e0000000 	bsr      	0x0	// 0 <ieee80211_event_notify>
 10a:	0796      	br      	0x36	// 36 <ieee80211_sta_proc_event+0x36>
 10c:	d8202063 	ld.w      	r1, (r0, 0x18c)
 110:	d8610025 	ld.b      	r3, (r1, 0x25)
 114:	e4632008 	andi      	r3, r3, 8
 118:	e903ff8f 	bez      	r3, 0x36	// 36 <ieee80211_sta_proc_event+0x36>
 11c:	8072      	ld.b      	r3, (r0, 0x12)
 11e:	3b43      	cmpnei      	r3, 3
 120:	0f8b      	bf      	0x36	// 36 <ieee80211_sta_proc_event+0x36>
 122:	3206      	movi      	r2, 6
 124:	211b      	addi      	r1, 28
 126:	e405000b 	addi      	r0, r5, 12
 12a:	e0000000 	bsr      	0x0	// 0 <memcmp>
 12e:	e920ff84 	bnez      	r0, 0x36	// 36 <ieee80211_sta_proc_event+0x36>
 132:	d8450033 	ld.b      	r2, (r5, 0x33)
 136:	e902ff80 	bez      	r2, 0x36	// 36 <ieee80211_sta_proc_event+0x36>
 13a:	8473      	ld.b      	r3, (r4, 0x13)
 13c:	64ca      	cmpne      	r2, r3
 13e:	0f7c      	bf      	0x36	// 36 <ieee80211_sta_proc_event+0x36>
 140:	84c2      	ld.b      	r6, (r4, 0x2)
 142:	e4c62001 	andi      	r6, r6, 1
 146:	e926ff78 	bnez      	r6, 0x36	// 36 <ieee80211_sta_proc_event+0x36>
 14a:	b840      	st.w      	r2, (r14, 0x0)
 14c:	323e      	movi      	r2, 62
 14e:	133e      	lrw      	r1, 0x0	// 344 <ieee80211_sta_proc_event+0x344>
 150:	131e      	lrw      	r0, 0x0	// 348 <ieee80211_sta_proc_event+0x348>
 152:	e0000000 	bsr      	0x0	// 0 <hgprintf>
 156:	d8250033 	ld.b      	r1, (r5, 0x33)
 15a:	6c13      	mov      	r0, r4
 15c:	e0000000 	bsr      	0x0	// 0 <ieee80211_set_channel>
 160:	6cdb      	mov      	r3, r6
 162:	3201      	movi      	r2, 1
 164:	d8242063 	ld.w      	r1, (r4, 0x18c)
 168:	6c13      	mov      	r0, r4
 16a:	e0000000 	bsr      	0x0	// 0 <ieee80211_send_nullfunc>
 16e:	0764      	br      	0x36	// 36 <ieee80211_sta_proc_event+0x36>
 170:	3300      	movi      	r3, 0
 172:	3105      	movi      	r1, 5
 174:	6c8f      	mov      	r2, r3
 176:	e0000000 	bsr      	0x0	// 0 <ieee80211_event_notify>
 17a:	3100      	movi      	r1, 0
 17c:	c6005020 	bmaski      	r0, 17
 180:	2005      	addi      	r0, 6
 182:	0758      	br      	0x32	// 32 <ieee80211_sta_proc_event+0x32>
 184:	d8602063 	ld.w      	r3, (r0, 0x18c)
 188:	d8a30025 	ld.b      	r5, (r3, 0x25)
 18c:	e4a52008 	andi      	r5, r5, 8
 190:	e9050010 	bez      	r5, 0x1b0	// 1b0 <ieee80211_sta_proc_event+0x1b0>
 194:	3109      	movi      	r1, 9
 196:	e0000000 	bsr      	0x0	// 0 <ieee80211_state>
 19a:	3300      	movi      	r3, 0
 19c:	3106      	movi      	r1, 6
 19e:	6c8f      	mov      	r2, r3
 1a0:	6c13      	mov      	r0, r4
 1a2:	e0000000 	bsr      	0x0	// 0 <ieee80211_event_notify>
 1a6:	3100      	movi      	r1, 0
 1a8:	c6005020 	bmaski      	r0, 17
 1ac:	2006      	addi      	r0, 7
 1ae:	0742      	br      	0x32	// 32 <ieee80211_sta_proc_event+0x32>
 1b0:	e0000000 	bsr      	0x0	// 0 <ieee80211_sta_select_bss>
 1b4:	e9000020 	bez      	r0, 0x1f4	// 1f4 <ieee80211_sta_proc_event+0x1f4>
 1b8:	3104      	movi      	r1, 4
 1ba:	6c13      	mov      	r0, r4
 1bc:	dca400b1 	st.b      	r5, (r4, 0xb1)
 1c0:	e0000000 	bsr      	0x0	// 0 <ieee80211_state>
 1c4:	d8442065 	ld.w      	r2, (r4, 0x194)
 1c8:	5a62      	addi      	r3, r2, 1
 1ca:	d8242066 	ld.w      	r1, (r4, 0x198)
 1ce:	644d      	cmplt      	r3, r1
 1d0:	5b05      	subu      	r0, r3, r1
 1d2:	c4600c20 	incf      	r3, r0, 0
 1d6:	d8242064 	ld.w      	r1, (r4, 0x190)
 1da:	644e      	cmpne      	r3, r1
 1dc:	0c07      	bf      	0x1ea	// 1ea <ieee80211_sta_proc_event+0x1ea>
 1de:	6090      	addu      	r2, r4
 1e0:	3106      	movi      	r1, 6
 1e2:	dc22019c 	st.b      	r1, (r2, 0x19c)
 1e6:	dc642065 	st.w      	r3, (r4, 0x194)
 1ea:	d804202a 	ld.w      	r0, (r4, 0xa8)
 1ee:	e0000000 	bsr      	0x0	// 0 <os_sema_up>
 1f2:	07d4      	br      	0x19a	// 19a <ieee80211_sta_proc_event+0x19a>
 1f4:	8465      	ld.b      	r3, (r4, 0x5)
 1f6:	e4632081 	andi      	r3, r3, 129
 1fa:	3b41      	cmpnei      	r3, 1
 1fc:	0bcf      	bt      	0x19a	// 19a <ieee80211_sta_proc_event+0x19a>
 1fe:	6c13      	mov      	r0, r4
 200:	e0000000 	bsr      	0x0	// 0 <ieee80211_scan_delay>
 204:	07cb      	br      	0x19a	// 19a <ieee80211_sta_proc_event+0x19a>
 206:	3109      	movi      	r1, 9
 208:	3300      	movi      	r3, 0
 20a:	8846      	ld.h      	r2, (r0, 0xc)
 20c:	e0000000 	bsr      	0x0	// 0 <ieee80211_event_notify>
 210:	8c26      	ld.h      	r1, (r4, 0xc)
 212:	c6005020 	bmaski      	r0, 17
 216:	2003      	addi      	r0, 4
 218:	070d      	br      	0x32	// 32 <ieee80211_sta_proc_event+0x32>
 21a:	d8002063 	ld.w      	r0, (r0, 0x18c)
 21e:	20cb      	addi      	r0, 204
 220:	e0000000 	bsr      	0x0	// 0 <os_timer_stop>
 224:	d864202b 	ld.w      	r3, (r4, 0xac)
 228:	3110      	movi      	r1, 16
 22a:	d9832019 	ld.w      	r12, (r3, 0x64)
 22e:	3300      	movi      	r3, 0
 230:	6c8f      	mov      	r2, r3
 232:	6c13      	mov      	r0, r4
 234:	7bf1      	jsr      	r12
 236:	e424015b 	addi      	r1, r4, 348
 23a:	6c13      	mov      	r0, r4
 23c:	e0000000 	bsr      	0x0	// 0 <ieee80211_setup_wmm_param>
 240:	6c5b      	mov      	r1, r6
 242:	c6005020 	bmaski      	r0, 17
 246:	2004      	addi      	r0, 5
 248:	06f5      	br      	0x32	// 32 <ieee80211_sta_proc_event+0x32>
 24a:	8042      	ld.b      	r2, (r0, 0x2)
 24c:	3300      	movi      	r3, 0
 24e:	c4435c00 	ins      	r2, r3, 0, 0
 252:	a042      	st.b      	r2, (r0, 0x2)
 254:	3101      	movi      	r1, 1
 256:	d840003d 	ld.b      	r2, (r0, 0x3d)
 25a:	c4415c00 	ins      	r2, r1, 0, 0
 25e:	dc40003d 	st.b      	r2, (r0, 0x3d)
 262:	d8002063 	ld.w      	r0, (r0, 0x18c)
 266:	d8400025 	ld.b      	r2, (r0, 0x25)
 26a:	c4415c03 	ins      	r2, r1, 3, 3
 26e:	dc400025 	st.b      	r2, (r0, 0x25)
 272:	9041      	ld.w      	r2, (r0, 0x4)
 274:	ac66      	st.h      	r3, (r4, 0xc)
 276:	ac67      	st.h      	r3, (r4, 0xe)
 278:	9020      	ld.w      	r1, (r0, 0x0)
 27a:	e9020006 	bez      	r2, 0x286	// 286 <ieee80211_sta_proc_event+0x286>
 27e:	e9010004 	bez      	r1, 0x286	// 286 <ieee80211_sta_proc_event+0x286>
 282:	b141      	st.w      	r2, (r1, 0x4)
 284:	b220      	st.w      	r1, (r2, 0x0)
 286:	b060      	st.w      	r3, (r0, 0x0)
 288:	d864202a 	ld.w      	r3, (r4, 0xa8)
 28c:	3100      	movi      	r1, 0
 28e:	d8432068 	ld.w      	r2, (r3, 0x1a0)
 292:	b201      	st.w      	r0, (r2, 0x4)
 294:	b040      	st.w      	r2, (r0, 0x0)
 296:	e443019f 	addi      	r2, r3, 416
 29a:	b041      	st.w      	r2, (r0, 0x4)
 29c:	3248      	movi      	r2, 72
 29e:	dc032068 	st.w      	r0, (r3, 0x1a0)
 2a2:	6008      	addu      	r0, r2
 2a4:	e0000000 	bsr      	0x0	// 0 <memset>
 2a8:	d8442063 	ld.w      	r2, (r4, 0x18c)
 2ac:	3300      	movi      	r3, 0
 2ae:	3108      	movi      	r1, 8
 2b0:	221b      	addi      	r2, 28
 2b2:	6c13      	mov      	r0, r4
 2b4:	e0000000 	bsr      	0x0	// 0 <ieee80211_event_notify>
 2b8:	d8642063 	ld.w      	r3, (r4, 0x18c)
 2bc:	c6005020 	bmaski      	r0, 17
 2c0:	2002      	addi      	r0, 3
 2c2:	d8231074 	ld.h      	r1, (r3, 0xe8)
 2c6:	06b6      	br      	0x32	// 32 <ieee80211_sta_proc_event+0x32>
 2c8:	3300      	movi      	r3, 0
 2ca:	dc600026 	st.b      	r3, (r0, 0x26)
 2ce:	d8002063 	ld.w      	r0, (r0, 0x18c)
 2d2:	20cb      	addi      	r0, 204
 2d4:	e0000000 	bsr      	0x0	// 0 <os_timer_stop>
 2d8:	d8042063 	ld.w      	r0, (r4, 0x18c)
 2dc:	d82410aa 	ld.h      	r1, (r4, 0x154)
 2e0:	20cb      	addi      	r0, 204
 2e2:	e0000000 	bsr      	0x0	// 0 <os_timer_start>
 2e6:	d8442063 	ld.w      	r2, (r4, 0x18c)
 2ea:	3107      	movi      	r1, 7
 2ec:	3300      	movi      	r3, 0
 2ee:	221b      	addi      	r2, 28
 2f0:	6c13      	mov      	r0, r4
 2f2:	e0000000 	bsr      	0x0	// 0 <ieee80211_event_notify>
 2f6:	3100      	movi      	r1, 0
 2f8:	c6005020 	bmaski      	r0, 17
 2fc:	2001      	addi      	r0, 2
 2fe:	069a      	br      	0x32	// 32 <ieee80211_sta_proc_event+0x32>
 300:	3301      	movi      	r3, 1
 302:	310a      	movi      	r1, 10
 304:	a867      	st.h      	r3, (r0, 0xe)
 306:	907c      	ld.w      	r3, (r0, 0x70)
 308:	7bcd      	jsr      	r3
 30a:	6c13      	mov      	r0, r4
 30c:	e0000000 	bsr      	0x0	// 0 <ieee80211_sta_disconnect>
 310:	6cdb      	mov      	r3, r6
 312:	6c97      	mov      	r2, r5
 314:	3101      	movi      	r1, 1
 316:	06f7      	br      	0x104	// 104 <ieee80211_sta_proc_event+0x104>
 318:	907c      	ld.w      	r3, (r0, 0x70)
 31a:	3105      	movi      	r1, 5
 31c:	7bcd      	jsr      	r3
 31e:	6cdb      	mov      	r3, r6
 320:	6c97      	mov      	r2, r5
 322:	3104      	movi      	r1, 4
 324:	06f0      	br      	0x104	// 104 <ieee80211_sta_proc_event+0x104>
 326:	3123      	movi      	r1, 35
 328:	6cdb      	mov      	r3, r6
 32a:	6c97      	mov      	r2, r5
 32c:	e0000000 	bsr      	0x0	// 0 <ieee80211_event_notify>
 330:	3100      	movi      	r1, 0
 332:	c6005020 	bmaski      	r0, 17
 336:	200f      	addi      	r0, 16
 338:	067d      	br      	0x32	// 32 <ieee80211_sta_proc_event+0x32>
 33a:	6cdb      	mov      	r3, r6
 33c:	6c97      	mov      	r2, r5
 33e:	7445      	zexth      	r1, r1
 340:	06e2      	br      	0x104	// 104 <ieee80211_sta_proc_event+0x104>
	...
