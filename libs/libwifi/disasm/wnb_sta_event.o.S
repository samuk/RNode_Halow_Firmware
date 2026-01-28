
libwifi/o/wnb_sta_event.o:     file format elf32-csky-little


Disassembly of section .text.ieee80211_wnbsta_proc_event:

00000000 <ieee80211_wnbsta_proc_event>:
   0:	14d2      	push      	r4-r5, r15
   2:	1421      	subi      	r14, r14, 4
   4:	6d43      	mov      	r5, r0
   6:	5907      	subi      	r0, r1, 2
   8:	380d      	cmphsi      	r0, 14
   a:	6d0f      	mov      	r4, r3
   c:	08bf      	bt      	0x18a	// 18a <ieee80211_wnbsta_proc_event+0x18a>
   e:	ea8c0003 	lrw      	r12, 0x0	// 18 <ieee80211_wnbsta_proc_event+0x18>
  12:	d00c0880 	ldr.w      	r0, (r12, r0 << 2)
  16:	7800      	jmp      	r0
  18:	00000000 	.long	0x00000000
  1c:	750c      	zextb      	r4, r3
  1e:	3c44      	cmpnei      	r4, 4
  20:	0c22      	bf      	0x64	// 64 <ieee80211_wnbsta_proc_event+0x64>
  22:	3c49      	cmpnei      	r4, 9
  24:	0c08      	bf      	0x34	// 34 <ieee80211_wnbsta_proc_event+0x34>
  26:	e9240005 	bnez      	r4, 0x30	// 30 <ieee80211_wnbsta_proc_event+0x30>
  2a:	6c17      	mov      	r0, r5
  2c:	e0000000 	bsr      	0x0	// 0 <ieee80211_sta_start_assoc>
  30:	3000      	movi      	r0, 0
  32:	04b0      	br      	0x192	// 192 <ieee80211_wnbsta_proc_event+0x192>
  34:	d8652063 	ld.w      	r3, (r5, 0x18c)
  38:	d8630025 	ld.b      	r3, (r3, 0x25)
  3c:	e4632008 	andi      	r3, r3, 8
  40:	e903000b 	bez      	r3, 0x56	// 56 <ieee80211_wnbsta_proc_event+0x56>
  44:	d805205d 	ld.w      	r0, (r5, 0x174)
  48:	e90000a5 	bez      	r0, 0x192	// 192 <ieee80211_wnbsta_proc_event+0x192>
  4c:	8061      	ld.b      	r3, (r0, 0x1)
  4e:	2b03      	subi      	r3, 4
  50:	74cc      	zextb      	r3, r3
  52:	3b01      	cmphsi      	r3, 2
  54:	0bee      	bt      	0x30	// 30 <ieee80211_wnbsta_proc_event+0x30>
  56:	3300      	movi      	r3, 0
  58:	6c8f      	mov      	r2, r3
  5a:	3108      	movi      	r1, 8
  5c:	6c17      	mov      	r0, r5
  5e:	e0000000 	bsr      	0x0	// 0 <ieee80211_iface_event>
  62:	07e7      	br      	0x30	// 30 <ieee80211_wnbsta_proc_event+0x30>
  64:	7488      	zextb      	r2, r2
  66:	3a03      	cmphsi      	r2, 4
  68:	0be4      	bt      	0x30	// 30 <ieee80211_wnbsta_proc_event+0x30>
  6a:	3300      	movi      	r3, 0
  6c:	6c8f      	mov      	r2, r3
  6e:	3107      	movi      	r1, 7
  70:	07f6      	br      	0x5c	// 5c <ieee80211_wnbsta_proc_event+0x5c>
  72:	6c4b      	mov      	r1, r2
  74:	6c17      	mov      	r0, r5
  76:	b840      	st.w      	r2, (r14, 0x0)
  78:	e0000000 	bsr      	0x0	// 0 <ieee80211_wnb_roaming_do_check_rssi>
  7c:	6cd3      	mov      	r3, r4
  7e:	9840      	ld.w      	r2, (r14, 0x0)
  80:	310f      	movi      	r1, 15
  82:	6c17      	mov      	r0, r5
  84:	e0000000 	bsr      	0x0	// 0 <ieee80211_sta_proc_event>
  88:	07d4      	br      	0x30	// 30 <ieee80211_wnbsta_proc_event+0x30>
  8a:	d8652063 	ld.w      	r3, (r5, 0x18c)
  8e:	d8630025 	ld.b      	r3, (r3, 0x25)
  92:	e4632008 	andi      	r3, r3, 8
  96:	e9030013 	bez      	r3, 0xbc	// bc <ieee80211_wnbsta_proc_event+0xbc>
  9a:	3109      	movi      	r1, 9
  9c:	6c17      	mov      	r0, r5
  9e:	e0000000 	bsr      	0x0	// 0 <ieee80211_state>
  a2:	3300      	movi      	r3, 0
  a4:	6c8f      	mov      	r2, r3
  a6:	3106      	movi      	r1, 6
  a8:	6c17      	mov      	r0, r5
  aa:	e0000000 	bsr      	0x0	// 0 <ieee80211_event_notify>
  ae:	3100      	movi      	r1, 0
  b0:	c6005020 	bmaski      	r0, 17
  b4:	2006      	addi      	r0, 7
  b6:	e0000000 	bsr      	0x0	// 0 <sys_event_new>
  ba:	07bb      	br      	0x30	// 30 <ieee80211_wnbsta_proc_event+0x30>
  bc:	dc6500b1 	st.b      	r3, (r5, 0xb1)
  c0:	3104      	movi      	r1, 4
  c2:	6c17      	mov      	r0, r5
  c4:	e0000000 	bsr      	0x0	// 0 <ieee80211_state>
  c8:	d8452065 	ld.w      	r2, (r5, 0x194)
  cc:	5a62      	addi      	r3, r2, 1
  ce:	d8252066 	ld.w      	r1, (r5, 0x198)
  d2:	644d      	cmplt      	r3, r1
  d4:	5b05      	subu      	r0, r3, r1
  d6:	c4600c20 	incf      	r3, r0, 0
  da:	d8252064 	ld.w      	r1, (r5, 0x190)
  de:	644e      	cmpne      	r3, r1
  e0:	0c07      	bf      	0xee	// ee <ieee80211_wnbsta_proc_event+0xee>
  e2:	6094      	addu      	r2, r5
  e4:	3106      	movi      	r1, 6
  e6:	dc22019c 	st.b      	r1, (r2, 0x19c)
  ea:	dc652065 	st.w      	r3, (r5, 0x194)
  ee:	d805202a 	ld.w      	r0, (r5, 0xa8)
  f2:	e0000000 	bsr      	0x0	// 0 <os_sema_up>
  f6:	07d6      	br      	0xa2	// a2 <ieee80211_wnbsta_proc_event+0xa2>
  f8:	d8252063 	ld.w      	r1, (r5, 0x18c)
  fc:	ea0c0001 	movi      	r12, 1
 100:	d80100ea 	ld.b      	r0, (r1, 0xea)
 104:	c40c5c03 	ins      	r0, r12, 3, 3
 108:	dc0100ea 	st.b      	r0, (r1, 0xea)
 10c:	3102      	movi      	r1, 2
 10e:	07ba      	br      	0x82	// 82 <ieee80211_wnbsta_proc_event+0x82>
 110:	d805205d 	ld.w      	r0, (r5, 0x174)
 114:	e9000018 	bez      	r0, 0x144	// 144 <ieee80211_wnbsta_proc_event+0x144>
 118:	9030      	ld.w      	r1, (r0, 0x40)
 11a:	e9010007 	bez      	r1, 0x128	// 128 <ieee80211_wnbsta_proc_event+0x128>
 11e:	203b      	addi      	r0, 60
 120:	b840      	st.w      	r2, (r14, 0x0)
 122:	e0000000 	bsr      	0x0	// 0 <os_timer_stop>
 126:	9840      	ld.w      	r2, (r14, 0x0)
 128:	d825205d 	ld.w      	r1, (r5, 0x174)
 12c:	3301      	movi      	r3, 1
 12e:	d9810000 	ld.b      	r12, (r1, 0x0)
 132:	3000      	movi      	r0, 0
 134:	a161      	st.b      	r3, (r1, 0x1)
 136:	c5805c22 	ins      	r12, r0, 3, 2
 13a:	3300      	movi      	r3, 0
 13c:	a164      	st.b      	r3, (r1, 0x4)
 13e:	dd810000 	st.b      	r12, (r1, 0x0)
 142:	a103      	st.b      	r0, (r1, 0x3)
 144:	d8052063 	ld.w      	r0, (r5, 0x18c)
 148:	ea0c0001 	movi      	r12, 1
 14c:	d8200025 	ld.b      	r1, (r0, 0x25)
 150:	c42c5c01 	ins      	r1, r12, 1, 1
 154:	c42c5c02 	ins      	r1, r12, 2, 2
 158:	dc200025 	st.b      	r1, (r0, 0x25)
 15c:	6cd3      	mov      	r3, r4
 15e:	3108      	movi      	r1, 8
 160:	0791      	br      	0x82	// 82 <ieee80211_wnbsta_proc_event+0x82>
 162:	d805205d 	ld.w      	r0, (r5, 0x174)
 166:	e900000f 	bez      	r0, 0x184	// 184 <ieee80211_wnbsta_proc_event+0x184>
 16a:	3300      	movi      	r3, 0
 16c:	a061      	st.b      	r3, (r0, 0x1)
 16e:	9030      	ld.w      	r1, (r0, 0x40)
 170:	3300      	movi      	r3, 0
 172:	2b7f      	subi      	r3, 128
 174:	a063      	st.b      	r3, (r0, 0x3)
 176:	e9010007 	bez      	r1, 0x184	// 184 <ieee80211_wnbsta_proc_event+0x184>
 17a:	203b      	addi      	r0, 60
 17c:	b840      	st.w      	r2, (r14, 0x0)
 17e:	e0000000 	bsr      	0x0	// 0 <os_timer_stop>
 182:	9840      	ld.w      	r2, (r14, 0x0)
 184:	6cd3      	mov      	r3, r4
 186:	310a      	movi      	r1, 10
 188:	077d      	br      	0x82	// 82 <ieee80211_wnbsta_proc_event+0x82>
 18a:	6cd3      	mov      	r3, r4
 18c:	6c17      	mov      	r0, r5
 18e:	e0000000 	bsr      	0x0	// 0 <ieee80211_sta_proc_event>
 192:	1401      	addi      	r14, r14, 4
 194:	1492      	pop      	r4-r5, r15
