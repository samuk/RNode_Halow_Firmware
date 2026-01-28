
libwifi/o/core_hw.o:     file format elf32-csky-little


Disassembly of section .text.ieee80211_hw_recv_task:

00000000 <ieee80211_hw_recv_task>:
   0:	14d7      	push      	r4-r10, r15
   2:	6d43      	mov      	r5, r0
   4:	e5200007 	addi      	r9, r0, 8
   8:	e50001bf 	addi      	r8, r0, 448
   c:	3100      	movi      	r1, 0
   e:	2900      	subi      	r1, 1
  10:	6c27      	mov      	r0, r9
  12:	e0000000 	bsr      	0x0	// 0 <os_sema_down>
  16:	6c23      	mov      	r0, r8
  18:	e0000000 	bsr      	0x0	// 0 <skb_list_dequeue>
  1c:	6d03      	mov      	r4, r0
  1e:	e900fff7 	bez      	r0, 0xc	// c <ieee80211_hw_recv_task+0xc>
  22:	6c23      	mov      	r0, r8
  24:	e0000000 	bsr      	0x0	// 0 <skb_list_count>
  28:	3840      	cmpnei      	r0, 0
  2a:	84d1      	ld.b      	r6, (r4, 0x11)
  2c:	3700      	movi      	r7, 0
  2e:	c400050a 	mvc      	r10
  32:	2618      	addi      	r6, 25
  34:	2f0f      	subi      	r7, 16
  36:	d0c50880 	ldr.w      	r0, (r5, r6 << 2)
  3a:	6ceb      	mov      	r3, r10
  3c:	8c54      	ld.h      	r2, (r4, 0x28)
  3e:	9427      	ld.w      	r1, (r4, 0x1c)
  40:	900c      	ld.w      	r0, (r0, 0x30)
  42:	e0000000 	bsr      	0x0	// 0 <sys_wifi_recv>
  46:	65c2      	cmpne      	r0, r7
  48:	0805      	bt      	0x52	// 52 <ieee80211_hw_recv_task+0x52>
  4a:	3005      	movi      	r0, 5
  4c:	e0000000 	bsr      	0x0	// 0 <os_sleep_ms>
  50:	07f3      	br      	0x36	// 36 <ieee80211_hw_recv_task+0x36>
  52:	6c13      	mov      	r0, r4
  54:	e0000000 	bsr      	0x0	// 0 <kfree_skb>
  58:	07da      	br      	0xc	// c <ieee80211_hw_recv_task+0xc>

Disassembly of section .text.ieee80211_hw_proc:

00000000 <ieee80211_hw_proc>:
   0:	14d5      	push      	r4-r8, r15
   2:	6e03      	mov      	r8, r0
   4:	6d47      	mov      	r5, r1
   6:	6d0b      	mov      	r4, r2
   8:	3600      	movi      	r6, 0
   a:	e4e001b3 	addi      	r7, r0, 436
   e:	e9040007 	bez      	r4, 0x1c	// 1c <ieee80211_hw_proc+0x1c>
  12:	3c01      	cmphsi      	r4, 2
  14:	5c63      	subi      	r3, r4, 1
  16:	74cc      	zextb      	r3, r3
  18:	0c23      	bf      	0x5e	// 5e <ieee80211_hw_proc+0x5e>
  1a:	6d0f      	mov      	r4, r3
  1c:	6c17      	mov      	r0, r5
  1e:	e0000000 	bsr      	0x0	// 0 <skb_list_dequeue>
  22:	6c43      	mov      	r1, r0
  24:	e900001d 	bez      	r0, 0x5e	// 5e <ieee80211_hw_proc+0x5e>
  28:	8875      	ld.h      	r3, (r0, 0x2a)
  2a:	c4e35522 	zext      	r2, r3, 9, 7
  2e:	3a41      	cmpnei      	r2, 1
  30:	0c0b      	bf      	0x46	// 46 <ieee80211_hw_proc+0x46>
  32:	3a42      	cmpnei      	r2, 2
  34:	0c16      	bf      	0x60	// 60 <ieee80211_hw_proc+0x60>
  36:	d8682011 	ld.w      	r3, (r8, 0x44)
  3a:	2300      	addi      	r3, 1
  3c:	dc682011 	st.w      	r3, (r8, 0x44)
  40:	e0000000 	bsr      	0x0	// 0 <kfree_skb>
  44:	0407      	br      	0x52	// 52 <ieee80211_hw_proc+0x52>
  46:	c4665c47 	ins      	r3, r6, 9, 7
  4a:	a875      	st.h      	r3, (r0, 0x2a)
  4c:	6c23      	mov      	r0, r8
  4e:	e0000000 	bsr      	0x0	// 0 <ieee80211_rx_packet>
  52:	65d6      	cmpne      	r5, r7
  54:	0bdd      	bt      	0xe	// e <ieee80211_hw_proc+0xe>
  56:	d868206c 	ld.w      	r3, (r8, 0x1b0)
  5a:	e903ffda 	bez      	r3, 0xe	// e <ieee80211_hw_proc+0xe>
  5e:	1495      	pop      	r4-r8, r15
  60:	c4665c47 	ins      	r3, r6, 9, 7
  64:	a875      	st.h      	r3, (r0, 0x2a)
  66:	806d      	ld.b      	r3, (r0, 0xd)
  68:	2318      	addi      	r3, 25
  6a:	d0680880 	ldr.w      	r0, (r8, r3 << 2)
  6e:	e0000000 	bsr      	0x0	// 0 <ieee80211_handle_tx_status>
  72:	07f0      	br      	0x52	// 52 <ieee80211_hw_proc+0x52>

Disassembly of section .text.ieee80211_hw_task:

00000000 <ieee80211_hw_task>:
   0:	14d3      	push      	r4-r6, r15
   2:	6d03      	mov      	r4, r0
   4:	e4c001a7 	addi      	r6, r0, 424
   8:	e4a001b3 	addi      	r5, r0, 436
   c:	3100      	movi      	r1, 0
   e:	2900      	subi      	r1, 1
  10:	6c13      	mov      	r0, r4
  12:	e0000000 	bsr      	0x0	// 0 <os_sema_down>
  16:	6c5b      	mov      	r1, r6
  18:	6c13      	mov      	r0, r4
  1a:	3200      	movi      	r2, 0
  1c:	e0000000 	bsr      	0x0	// 0 <ieee80211_hw_task>
  20:	3205      	movi      	r2, 5
  22:	6c57      	mov      	r1, r5
  24:	6c13      	mov      	r0, r4
  26:	e0000000 	bsr      	0x0	// 0 <ieee80211_hw_task>
  2a:	6c13      	mov      	r0, r4
  2c:	e0000000 	bsr      	0x0	// 0 <ieee80211_eloop_work>
  30:	6c13      	mov      	r0, r4
  32:	e0000000 	bsr      	0x0	// 0 <ieee80211_iface_work>
  36:	07eb      	br      	0xc	// c <ieee80211_hw_task+0xc>

Disassembly of section .text.ieee80211_sleepcb_hdl:

00000000 <ieee80211_sleepcb_hdl>:
   0:	14d0      	push      	r15
   2:	8960      	ld.h      	r3, (r1, 0x0)
   4:	eb430201 	cmpnei      	r3, 513
   8:	6c0b      	mov      	r0, r2
   a:	0805      	bt      	0x14	// 14 <ieee80211_sleepcb_hdl+0x14>
   c:	e0000000 	bsr      	0x0	// 0 <ieee80211_iface_suspend>
  10:	3000      	movi      	r0, 0
  12:	1490      	pop      	r15
  14:	eb430200 	cmpnei      	r3, 512
  18:	0bfc      	bt      	0x10	// 10 <ieee80211_iface_resume+0x10>
  1a:	e0000000 	bsr      	0x0	// 0 <ieee80211_iface_resume>
  1e:	07f9      	br      	0x10	// 10 <ieee80211_sleepcb_hdl+0x10>

Disassembly of section .text.ieee80211_event_cb:

00000000 <ieee80211_event_cb>:
   0:	1063      	lrw      	r3, 0x0	// c <ieee80211_event_cb+0xc>
   2:	9355      	ld.w      	r2, (r3, 0x54)
   4:	b315      	st.w      	r0, (r3, 0x54)
   6:	6c0b      	mov      	r0, r2
   8:	783c      	jmp      	r15
   a:	0000      	.short	0x0000
   c:	00000000 	.long	0x00000000

Disassembly of section .text.ieee80211_init:

00000000 <ieee80211_init>:
   0:	14d2      	push      	r4-r5, r15
   2:	1294      	lrw      	r4, 0x0	// 150 <ieee80211_init+0x150>
   4:	332c      	movi      	r3, 44
   6:	dc640038 	st.b      	r3, (r4, 0x38)
   a:	6c53      	mov      	r1, r4
   c:	3312      	movi      	r3, 18
   e:	6d43      	mov      	r5, r0
  10:	1211      	lrw      	r0, 0x0	// 154 <ieee80211_init+0x154>
  12:	dc640039 	st.b      	r3, (r4, 0x39)
  16:	e0000000 	bsr      	0x0	// 0 <sys_register_sleepcb>
  1a:	3100      	movi      	r1, 0
  1c:	6c13      	mov      	r0, r4
  1e:	e0000000 	bsr      	0x0	// 0 <os_sema_init>
  22:	e40401cb 	addi      	r0, r4, 460
  26:	e0000000 	bsr      	0x0	// 0 <os_mutex_init>
  2a:	e404018f 	addi      	r0, r4, 400
  2e:	e0000000 	bsr      	0x0	// 0 <os_mutex_init>
  32:	e40401b3 	addi      	r0, r4, 436
  36:	e0000000 	bsr      	0x0	// 0 <skb_list_init>
  3a:	e40401a7 	addi      	r0, r4, 424
  3e:	e0000000 	bsr      	0x0	// 0 <skb_list_init>
  42:	e40401bf 	addi      	r0, r4, 448
  46:	e0000000 	bsr      	0x0	// 0 <skb_list_init>
  4a:	e464019f 	addi      	r3, r4, 416
  4e:	dc642068 	st.w      	r3, (r4, 0x1a0)
  52:	dc642069 	st.w      	r3, (r4, 0x1a4)
  56:	e4640197 	addi      	r3, r4, 408
  5a:	dc642066 	st.w      	r3, (r4, 0x198)
  5e:	dc642067 	st.w      	r3, (r4, 0x19c)
  62:	e46401d3 	addi      	r3, r4, 468
  66:	dc642075 	st.w      	r3, (r4, 0x1d4)
  6a:	dc642076 	st.w      	r3, (r4, 0x1d8)
  6e:	e9050014 	bez      	r5, 0x96	// 96 <ieee80211_init+0x96>
  72:	3210      	movi      	r2, 16
  74:	6c57      	mov      	r1, r5
  76:	e4040047 	addi      	r0, r4, 72
  7a:	e0000000 	bsr      	0x0	// 0 <memcpy>
  7e:	8542      	ld.b      	r2, (r5, 0x2)
  80:	d8640038 	ld.b      	r3, (r4, 0x38)
  84:	60c8      	addu      	r3, r2
  86:	dc640038 	st.b      	r3, (r4, 0x38)
  8a:	8543      	ld.b      	r2, (r5, 0x3)
  8c:	d8640039 	ld.b      	r3, (r4, 0x39)
  90:	60c8      	addu      	r3, r2
  92:	dc640039 	st.b      	r3, (r4, 0x39)
  96:	d8641027 	ld.h      	r3, (r4, 0x4e)
  9a:	e9230005 	bnez      	r3, 0xa4	// a4 <ieee80211_init+0xa4>
  9e:	331e      	movi      	r3, 30
  a0:	dc641027 	st.h      	r3, (r4, 0x4e)
  a4:	d8640049 	ld.b      	r3, (r4, 0x49)
  a8:	e9230005 	bnez      	r3, 0xb2	// b2 <ieee80211_init+0xb2>
  ac:	3320      	movi      	r3, 32
  ae:	dc640049 	st.b      	r3, (r4, 0x49)
  b2:	d8641026 	ld.h      	r3, (r4, 0x4c)
  b6:	e9230005 	bnez      	r3, 0xc0	// c0 <ieee80211_init+0xc0>
  ba:	3308      	movi      	r3, 8
  bc:	dc641026 	st.h      	r3, (r4, 0x4c)
  c0:	d8640048 	ld.b      	r3, (r4, 0x48)
  c4:	e9230041 	bnez      	r3, 0x146	// 146 <ieee80211_init+0x146>
  c8:	3302      	movi      	r3, 2
  ca:	dc640048 	st.b      	r3, (r4, 0x48)
  ce:	d8641028 	ld.h      	r3, (r4, 0x50)
  d2:	e9230006 	bnez      	r3, 0xde	// de <ieee80211_init+0xde>
  d6:	3380      	movi      	r3, 128
  d8:	4364      	lsli      	r3, r3, 4
  da:	dc641028 	st.h      	r3, (r4, 0x50)
  de:	101d      	lrw      	r0, 0x0	// 150 <ieee80211_eloop_init+0x150>
  e0:	e0000000 	bsr      	0x0	// 0 <ieee80211_eloop_init>
  e4:	107b      	lrw      	r3, 0x0	// 150 <ieee80211_init+0x150>
  e6:	e423000f 	addi      	r1, r3, 16
  ea:	105c      	lrw      	r2, 0x0	// 158 <ieee80211_init+0x158>
  ec:	101c      	lrw      	r0, 0x0	// 15c <ieee80211_init+0x15c>
  ee:	e0000000 	bsr      	0x0	// 0 <os_task_init>
  f2:	d8241028 	ld.h      	r1, (r4, 0x50)
  f6:	101b      	lrw      	r0, 0x0	// 160 <os_task_set_stacksize+0x160>
  f8:	e0000000 	bsr      	0x0	// 0 <os_task_set_stacksize>
  fc:	3151      	movi      	r1, 81
  fe:	1019      	lrw      	r0, 0x0	// 160 <ieee80211_init+0x160>
 100:	e0000000 	bsr      	0x0	// 0 <_os_task_set_priority>
 104:	1017      	lrw      	r0, 0x0	// 160 <os_task_run+0x160>
 106:	e0000000 	bsr      	0x0	// 0 <os_task_run>
 10a:	d8240052 	ld.b      	r1, (r4, 0x52)
 10e:	e4212001 	andi      	r1, r1, 1
 112:	e9210018 	bnez      	r1, 0x142	// 142 <ieee80211_init+0x142>
 116:	1014      	lrw      	r0, 0x0	// 164 <os_sema_init+0x164>
 118:	e0000000 	bsr      	0x0	// 0 <os_sema_init>
 11c:	106d      	lrw      	r3, 0x0	// 150 <ieee80211_init+0x150>
 11e:	e4230023 	addi      	r1, r3, 36
 122:	1052      	lrw      	r2, 0x0	// 168 <ieee80211_init+0x168>
 124:	1012      	lrw      	r0, 0x0	// 16c <ieee80211_init+0x16c>
 126:	e0000000 	bsr      	0x0	// 0 <os_task_init>
 12a:	3180      	movi      	r1, 128
 12c:	4123      	lsli      	r1, r1, 3
 12e:	1011      	lrw      	r0, 0x0	// 170 <ieee80211_init+0x170>
 130:	e0000000 	bsr      	0x0	// 0 <os_task_set_stacksize>
 134:	3155      	movi      	r1, 85
 136:	100f      	lrw      	r0, 0x0	// 170 <ieee80211_init+0x170>
 138:	e0000000 	bsr      	0x0	// 0 <_os_task_set_priority>
 13c:	100d      	lrw      	r0, 0x0	// 170 <os_task_run+0x170>
 13e:	e0000000 	bsr      	0x0	// 0 <os_task_run>
 142:	3000      	movi      	r0, 0
 144:	1492      	pop      	r4-r5, r15
 146:	3b08      	cmphsi      	r3, 9
 148:	0fc3      	bf      	0xce	// ce <ieee80211_init+0xce>
 14a:	3308      	movi      	r3, 8
 14c:	07bf      	br      	0xca	// ca <ieee80211_init+0xca>
	...
