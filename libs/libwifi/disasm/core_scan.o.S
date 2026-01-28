
libwifi/o/core_scan.o:     file format elf32-csky-little


Disassembly of section .text.ieee80211_scan_timer_cb:

00000000 <ieee80211_scan_timer_cb>:
   0:	14d0      	push      	r15
   2:	d86000b0 	ld.b      	r3, (r0, 0xb0)
   6:	e4632001 	andi      	r3, r3, 1
   a:	e903001a 	bez      	r3, 0x3e	// 3e <ieee80211_scan_timer_cb+0x3e>
   e:	d8402065 	ld.w      	r2, (r0, 0x194)
  12:	5a62      	addi      	r3, r2, 1
  14:	d8202066 	ld.w      	r1, (r0, 0x198)
  18:	644d      	cmplt      	r3, r1
  1a:	c423008c 	subu      	r12, r3, r1
  1e:	c46c0c20 	incf      	r3, r12, 0
  22:	d8202064 	ld.w      	r1, (r0, 0x190)
  26:	64c6      	cmpne      	r1, r3
  28:	0c07      	bf      	0x36	// 36 <ieee80211_scan_timer_cb+0x36>
  2a:	6080      	addu      	r2, r0
  2c:	3109      	movi      	r1, 9
  2e:	dc22019c 	st.b      	r1, (r2, 0x19c)
  32:	dc602065 	st.w      	r3, (r0, 0x194)
  36:	d800202a 	ld.w      	r0, (r0, 0xa8)
  3a:	e0000000 	bsr      	0x0	// 0 <os_sema_up>
  3e:	1490      	pop      	r15

Disassembly of section .text.ieee80211_scan_rx:

00000000 <ieee80211_scan_rx>:
   0:	14d0      	push      	r15
   2:	6c87      	mov      	r2, r1
   4:	3100      	movi      	r1, 0
   6:	e0000000 	bsr      	0x0	// 0 <ieee80211_update_bss_info>
   a:	1490      	pop      	r15

Disassembly of section .text.ieee80211_scan:

00000000 <ieee80211_scan>:
   0:	14d3      	push      	r4-r6, r15
   2:	6d47      	mov      	r5, r1
   4:	6d8b      	mov      	r6, r2
   6:	e0000000 	bsr      	0x0	// 0 <ieee80211_iface_get>
   a:	6d03      	mov      	r4, r0
   c:	e90000f2 	bez      	r0, 0x1f0	// 1f0 <ieee80211_scan+0x1f0>
  10:	d86000b0 	ld.b      	r3, (r0, 0xb0)
  14:	e4632002 	andi      	r3, r3, 2
  18:	e90300ec 	bez      	r3, 0x1f0	// 1f0 <ieee80211_scan+0x1f0>
  1c:	e90500b6 	bez      	r5, 0x188	// 188 <ieee80211_scan+0x188>
  20:	e0000000 	bsr      	0x0	// 0 <ieee80211_is_pairing>
  24:	6d43      	mov      	r5, r0
  26:	e92000e8 	bnez      	r0, 0x1f6	// 1f6 <ieee80211_scan+0x1f6>
  2a:	e9060090 	bez      	r6, 0x14a	// 14a <ieee80211_scan+0x14a>
  2e:	3220      	movi      	r2, 32
  30:	5e2e      	addi      	r1, r6, 4
  32:	e40400bb 	addi      	r0, r4, 188
  36:	e0000000 	bsr      	0x0	// 0 <strncpy>
  3a:	d8460027 	ld.b      	r2, (r6, 0x27)
  3e:	d86400b0 	ld.b      	r3, (r4, 0xb0)
  42:	c4625c02 	ins      	r3, r2, 2, 2
  46:	dc6400b0 	st.b      	r3, (r4, 0xb0)
  4a:	9660      	ld.w      	r3, (r6, 0x0)
  4c:	dc64202e 	st.w      	r3, (r4, 0xb8)
  50:	d8460026 	ld.b      	r2, (r6, 0x26)
  54:	3a40      	cmpnei      	r2, 0
  56:	3102      	movi      	r1, 2
  58:	c4410c20 	incf      	r2, r1, 0
  5c:	dc44105b 	st.h      	r2, (r4, 0xb6)
  60:	d8460025 	ld.b      	r2, (r6, 0x25)
  64:	3a40      	cmpnei      	r2, 0
  66:	3114      	movi      	r1, 20
  68:	c4410c20 	incf      	r2, r1, 0
  6c:	dc44105a 	st.h      	r2, (r4, 0xb4)
  70:	e903006b 	bez      	r3, 0x146	// 146 <ieee80211_scan+0x146>
  74:	c40355e2 	zext      	r2, r3, 15, 0
  78:	e9220065 	bnez      	r2, 0x142	// 142 <ieee80211_scan+0x142>
  7c:	5370      	asri      	r3, r3, 16
  7e:	3211      	movi      	r2, 17
  80:	e42320ff 	andi      	r1, r3, 255
  84:	e9210004 	bnez      	r1, 0x8c	// 8c <ieee80211_scan+0x8c>
  88:	5368      	asri      	r3, r3, 8
  8a:	2207      	addi      	r2, 8
  8c:	e423200f 	andi      	r1, r3, 15
  90:	e9210004 	bnez      	r1, 0x98	// 98 <ieee80211_scan+0x98>
  94:	5364      	asri      	r3, r3, 4
  96:	2203      	addi      	r2, 4
  98:	e4232003 	andi      	r1, r3, 3
  9c:	e9210004 	bnez      	r1, 0xa4	// a4 <ieee80211_scan+0xa4>
  a0:	5362      	asri      	r3, r3, 2
  a2:	2201      	addi      	r2, 2
  a4:	e4632001 	andi      	r3, r3, 1
  a8:	3b40      	cmpnei      	r3, 0
  aa:	c4420c21 	incf      	r2, r2, 1
  ae:	7488      	zextb      	r2, r2
  b0:	dc44003c 	st.b      	r2, (r4, 0x3c)
  b4:	8473      	ld.b      	r3, (r4, 0x13)
  b6:	d824003c 	ld.b      	r1, (r4, 0x3c)
  ba:	644e      	cmpne      	r3, r1
  bc:	dc6400b2 	st.b      	r3, (r4, 0xb2)
  c0:	0c04      	bf      	0xc8	// c8 <ieee80211_scan+0xc8>
  c2:	6c13      	mov      	r0, r4
  c4:	e0000000 	bsr      	0x0	// 0 <ieee80211_set_channel>
  c8:	3201      	movi      	r2, 1
  ca:	d86400b0 	ld.b      	r3, (r4, 0xb0)
  ce:	c4625c03 	ins      	r3, r2, 3, 3
  d2:	dc6400b0 	st.b      	r3, (r4, 0xb0)
  d6:	3300      	movi      	r3, 0
  d8:	dc6400b1 	st.b      	r3, (r4, 0xb1)
  dc:	d864003d 	ld.b      	r3, (r4, 0x3d)
  e0:	c4625c00 	ins      	r3, r2, 0, 0
  e4:	d844105b 	ld.h      	r2, (r4, 0xb6)
  e8:	c4625cc1 	ins      	r3, r2, 7, 1
  ec:	dc64003d 	st.b      	r3, (r4, 0x3d)
  f0:	e906000c 	bez      	r6, 0x108	// 108 <ieee80211_scan+0x108>
  f4:	d8660027 	ld.b      	r3, (r6, 0x27)
  f8:	e4632002 	andi      	r3, r3, 2
  fc:	e9030006 	bez      	r3, 0x108	// 108 <ieee80211_scan+0x108>
 100:	d804202a 	ld.w      	r0, (r4, 0xa8)
 104:	e0000000 	bsr      	0x0	// 0 <ieee80211_bss_flush>
 108:	e40400df 	addi      	r0, r4, 224
 10c:	e0000000 	bsr      	0x0	// 0 <os_timer_stop>
 110:	d8442065 	ld.w      	r2, (r4, 0x194)
 114:	5a62      	addi      	r3, r2, 1
 116:	d8242066 	ld.w      	r1, (r4, 0x198)
 11a:	644d      	cmplt      	r3, r1
 11c:	5b05      	subu      	r0, r3, r1
 11e:	c4600c20 	incf      	r3, r0, 0
 122:	d8242064 	ld.w      	r1, (r4, 0x190)
 126:	644e      	cmpne      	r3, r1
 128:	0c07      	bf      	0x136	// 136 <ieee80211_scan+0x136>
 12a:	6090      	addu      	r2, r4
 12c:	3108      	movi      	r1, 8
 12e:	dc22019c 	st.b      	r1, (r2, 0x19c)
 132:	dc642065 	st.w      	r3, (r4, 0x194)
 136:	d804202a 	ld.w      	r0, (r4, 0xa8)
 13a:	e0000000 	bsr      	0x0	// 0 <os_sema_up>
 13e:	6c17      	mov      	r0, r5
 140:	1493      	pop      	r4-r6, r15
 142:	3201      	movi      	r2, 1
 144:	079e      	br      	0x80	// 80 <ieee80211_scan+0x80>
 146:	8453      	ld.b      	r2, (r4, 0x13)
 148:	07b4      	br      	0xb0	// b0 <ieee80211_scan+0xb0>
 14a:	d86400b0 	ld.b      	r3, (r4, 0xb0)
 14e:	c4665c02 	ins      	r3, r6, 2, 2
 152:	dc6400b0 	st.b      	r3, (r4, 0xb0)
 156:	d864202b 	ld.w      	r3, (r4, 0xac)
 15a:	9365      	ld.w      	r3, (r3, 0x14)
 15c:	dc64202e 	st.w      	r3, (r4, 0xb8)
 160:	3302      	movi      	r3, 2
 162:	dc64105b 	st.h      	r3, (r4, 0xb6)
 166:	3314      	movi      	r3, 20
 168:	dc64105a 	st.h      	r3, (r4, 0xb4)
 16c:	d86400b0 	ld.b      	r3, (r4, 0xb0)
 170:	c4665c03 	ins      	r3, r6, 3, 3
 174:	dc6400b0 	st.b      	r3, (r4, 0xb0)
 178:	8473      	ld.b      	r3, (r4, 0x13)
 17a:	dcc400b1 	st.b      	r6, (r4, 0xb1)
 17e:	dcc400bc 	st.b      	r6, (r4, 0xbc)
 182:	dc64003c 	st.b      	r3, (r4, 0x3c)
 186:	0797      	br      	0xb4	// b4 <ieee80211_scan+0xb4>
 188:	d8402065 	ld.w      	r2, (r0, 0x194)
 18c:	5a62      	addi      	r3, r2, 1
 18e:	d8202066 	ld.w      	r1, (r0, 0x198)
 192:	644d      	cmplt      	r3, r1
 194:	5b05      	subu      	r0, r3, r1
 196:	c4600c20 	incf      	r3, r0, 0
 19a:	d8242064 	ld.w      	r1, (r4, 0x190)
 19e:	644e      	cmpne      	r3, r1
 1a0:	0c07      	bf      	0x1ae	// 1ae <ieee80211_scan+0x1ae>
 1a2:	6090      	addu      	r2, r4
 1a4:	310a      	movi      	r1, 10
 1a6:	dc22019c 	st.b      	r1, (r2, 0x19c)
 1aa:	dc642065 	st.w      	r3, (r4, 0x194)
 1ae:	d804202a 	ld.w      	r0, (r4, 0xa8)
 1b2:	e0000000 	bsr      	0x0	// 0 <os_sema_up>
 1b6:	3500      	movi      	r5, 0
 1b8:	d86400b0 	ld.b      	r3, (r4, 0xb0)
 1bc:	c4655c02 	ins      	r3, r5, 2, 2
 1c0:	dc6400b0 	st.b      	r3, (r4, 0xb0)
 1c4:	d864202b 	ld.w      	r3, (r4, 0xac)
 1c8:	9365      	ld.w      	r3, (r3, 0x14)
 1ca:	dc64202e 	st.w      	r3, (r4, 0xb8)
 1ce:	3302      	movi      	r3, 2
 1d0:	dc64105b 	st.h      	r3, (r4, 0xb6)
 1d4:	3314      	movi      	r3, 20
 1d6:	dc64105a 	st.h      	r3, (r4, 0xb4)
 1da:	d86400b0 	ld.b      	r3, (r4, 0xb0)
 1de:	c4655c03 	ins      	r3, r5, 3, 3
 1e2:	dca400b1 	st.b      	r5, (r4, 0xb1)
 1e6:	dc6400b0 	st.b      	r3, (r4, 0xb0)
 1ea:	dca400bc 	st.b      	r5, (r4, 0xbc)
 1ee:	07a8      	br      	0x13e	// 13e <ieee80211_scan+0x13e>
 1f0:	3500      	movi      	r5, 0
 1f2:	2d15      	subi      	r5, 22
 1f4:	07a5      	br      	0x13e	// 13e <ieee80211_scan+0x13e>
 1f6:	3500      	movi      	r5, 0
 1f8:	2d0f      	subi      	r5, 16
 1fa:	07a2      	br      	0x13e	// 13e <ieee80211_scan+0x13e>

Disassembly of section .text.ieee80211_scan_delay:

00000000 <ieee80211_scan_delay>:
   0:	14d3      	push      	r4-r6, r15
   2:	80c5      	ld.b      	r6, (r0, 0x5)
   4:	e4c62081 	andi      	r6, r6, 129
   8:	3e41      	cmpnei      	r6, 1
   a:	6d03      	mov      	r4, r0
   c:	082a      	bt      	0x60	// 60 <ieee80211_scan_delay+0x60>
   e:	d8a000b1 	ld.b      	r5, (r0, 0xb1)
  12:	e0000000 	bsr      	0x0	// 0 <ieee80211_is_pairing>
  16:	e9200025 	bnez      	r0, 0x60	// 60 <ieee80211_scan_delay+0x60>
  1a:	d864003d 	ld.b      	r3, (r4, 0x3d)
  1e:	d844105b 	ld.h      	r2, (r4, 0xb6)
  22:	c4625cc1 	ins      	r3, r2, 7, 1
  26:	dc64003d 	st.b      	r3, (r4, 0x3d)
  2a:	d86400b0 	ld.b      	r3, (r4, 0xb0)
  2e:	c4665c00 	ins      	r3, r6, 0, 0
  32:	dc6400b0 	st.b      	r3, (r4, 0xb0)
  36:	d8644002 	ld.bs      	r3, (r4, 0x2)
  3a:	e9a30006 	bhsz      	r3, 0x46	// 46 <ieee80211_scan_delay+0x46>
  3e:	d86400b1 	ld.b      	r3, (r4, 0xb1)
  42:	3b03      	cmphsi      	r3, 4
  44:	080f      	bt      	0x62	// 62 <ieee80211_scan_delay+0x62>
  46:	3332      	movi      	r3, 50
  48:	5d22      	addi      	r1, r5, 1
  4a:	7c4c      	mult      	r1, r3
  4c:	eb211388 	cmplti      	r1, 5001
  50:	ea031388 	movi      	r3, 5000
  54:	c4230c20 	incf      	r1, r3, 0
  58:	e40400df 	addi      	r0, r4, 224
  5c:	e0000000 	bsr      	0x0	// 0 <os_timer_start>
  60:	1493      	pop      	r4-r6, r15
  62:	ea011388 	movi      	r1, 5000
  66:	07f9      	br      	0x58	// 58 <ieee80211_scan_delay+0x58>

Disassembly of section .text.ieee80211_scan_init:

00000000 <ieee80211_scan_init>:
   0:	14d1      	push      	r4, r15
   2:	6d03      	mov      	r4, r0
   4:	6cc3      	mov      	r3, r0
   6:	3200      	movi      	r2, 0
   8:	1038      	lrw      	r1, 0x0	// 68 <ieee80211_scan_init+0x68>
   a:	20df      	addi      	r0, 224
   c:	e0000000 	bsr      	0x0	// 0 <os_timer_init>
  10:	3300      	movi      	r3, 0
  12:	d84400b0 	ld.b      	r2, (r4, 0xb0)
  16:	c4435c02 	ins      	r2, r3, 2, 2
  1a:	dc4400b0 	st.b      	r2, (r4, 0xb0)
  1e:	d844202b 	ld.w      	r2, (r4, 0xac)
  22:	9245      	ld.w      	r2, (r2, 0x14)
  24:	dc44202e 	st.w      	r2, (r4, 0xb8)
  28:	3202      	movi      	r2, 2
  2a:	dc44105b 	st.h      	r2, (r4, 0xb6)
  2e:	3214      	movi      	r2, 20
  30:	dc44105a 	st.h      	r2, (r4, 0xb4)
  34:	d84400b0 	ld.b      	r2, (r4, 0xb0)
  38:	c4435c03 	ins      	r2, r3, 3, 3
  3c:	dc6400b1 	st.b      	r3, (r4, 0xb1)
  40:	dc6400bc 	st.b      	r3, (r4, 0xbc)
  44:	d8642024 	ld.w      	r3, (r4, 0x90)
  48:	dc4400b0 	st.b      	r2, (r4, 0xb0)
  4c:	e9230005 	bnez      	r3, 0x56	// 56 <ieee80211_scan_init+0x56>
  50:	1067      	lrw      	r3, 0x0	// 6c <ieee80211_scan_init+0x6c>
  52:	dc642024 	st.w      	r3, (r4, 0x90)
  56:	d86400b0 	ld.b      	r3, (r4, 0xb0)
  5a:	3201      	movi      	r2, 1
  5c:	c4625c01 	ins      	r3, r2, 1, 1
  60:	dc6400b0 	st.b      	r3, (r4, 0xb0)
  64:	1491      	pop      	r4, r15
	...

Disassembly of section .text.ieee80211_scan_do_action:

00000000 <ieee80211_scan_do_action>:
   0:	14d3      	push      	r4-r6, r15
   2:	1427      	subi      	r14, r14, 28
   4:	d86000b0 	ld.b      	r3, (r0, 0xb0)
   8:	748c      	zextb      	r2, r3
   a:	e5822002 	andi      	r12, r2, 2
   e:	6d03      	mov      	r4, r0
  10:	e90c003f 	bez      	r12, 0x8e	// 8e <ieee80211_scan_do_action+0x8e>
  14:	3949      	cmpnei      	r1, 9
  16:	0c57      	bf      	0xc4	// c4 <ieee80211_scan_do_action+0xc4>
  18:	394a      	cmpnei      	r1, 10
  1a:	0c3c      	bf      	0x92	// 92 <ieee80211_scan_do_action+0x92>
  1c:	3948      	cmpnei      	r1, 8
  1e:	0838      	bt      	0x8e	// 8e <ieee80211_scan_do_action+0x8e>
  20:	3501      	movi      	r5, 1
  22:	c4655c00 	ins      	r3, r5, 0, 0
  26:	dc6000b0 	st.b      	r3, (r0, 0xb0)
  2a:	d8604002 	ld.bs      	r3, (r0, 0x2)
  2e:	e9a3000f 	bhsz      	r3, 0x4c	// 4c <ieee80211_scan_do_action+0x4c>
  32:	d860003c 	ld.b      	r3, (r0, 0x3c)
  36:	3b41      	cmpnei      	r3, 1
  38:	0c0a      	bf      	0x4c	// 4c <ieee80211_scan_do_action+0x4c>
  3a:	1302      	lrw      	r0, 0x0	// 1c0 <ieee80211_scan_do_action+0x1c0>
  3c:	e0000000 	bsr      	0x0	// 0 <hgprintf>
  40:	dca4003c 	st.b      	r5, (r4, 0x3c)
  44:	6c57      	mov      	r1, r5
  46:	6c13      	mov      	r0, r4
  48:	e0000000 	bsr      	0x0	// 0 <ieee80211_set_channel>
  4c:	d8442065 	ld.w      	r2, (r4, 0x194)
  50:	5a62      	addi      	r3, r2, 1
  52:	d8242066 	ld.w      	r1, (r4, 0x198)
  56:	644d      	cmplt      	r3, r1
  58:	5b05      	subu      	r0, r3, r1
  5a:	c4600c20 	incf      	r3, r0, 0
  5e:	d8242064 	ld.w      	r1, (r4, 0x190)
  62:	644e      	cmpne      	r3, r1
  64:	0c07      	bf      	0x72	// 72 <ieee80211_scan_do_action+0x72>
  66:	6090      	addu      	r2, r4
  68:	3109      	movi      	r1, 9
  6a:	dc22019c 	st.b      	r1, (r2, 0x19c)
  6e:	dc642065 	st.w      	r3, (r4, 0x194)
  72:	d804202a 	ld.w      	r0, (r4, 0xa8)
  76:	e0000000 	bsr      	0x0	// 0 <os_sema_up>
  7a:	3300      	movi      	r3, 0
  7c:	3105      	movi      	r1, 5
  7e:	6c8f      	mov      	r2, r3
  80:	6c13      	mov      	r0, r4
  82:	e0000000 	bsr      	0x0	// 0 <ieee80211_iface_event>
  86:	3103      	movi      	r1, 3
  88:	6c13      	mov      	r0, r4
  8a:	e0000000 	bsr      	0x0	// 0 <ieee80211_state>
  8e:	1407      	addi      	r14, r14, 28
  90:	1493      	pop      	r4-r6, r15
  92:	e4422001 	andi      	r2, r2, 1
  96:	e902fffc 	bez      	r2, 0x8e	// 8e <ieee80211_scan_do_action+0x8e>
  9a:	6c8f      	mov      	r2, r3
  9c:	3500      	movi      	r5, 0
  9e:	c4455c00 	ins      	r2, r5, 0, 0
  a2:	dc4000b0 	st.b      	r2, (r0, 0xb0)
  a6:	20df      	addi      	r0, 224
  a8:	e0000000 	bsr      	0x0	// 0 <os_timer_stop>
  ac:	d82400b2 	ld.b      	r1, (r4, 0xb2)
  b0:	6c13      	mov      	r0, r4
  b2:	e0000000 	bsr      	0x0	// 0 <ieee80211_set_channel>
  b6:	3300      	movi      	r3, 0
  b8:	6c8f      	mov      	r2, r3
  ba:	3106      	movi      	r1, 6
  bc:	6c13      	mov      	r0, r4
  be:	e0000000 	bsr      	0x0	// 0 <ieee80211_iface_event>
  c2:	07e6      	br      	0x8e	// 8e <ieee80211_scan_do_action+0x8e>
  c4:	e4422001 	andi      	r2, r2, 1
  c8:	e902ffe3 	bez      	r2, 0x8e	// 8e <ieee80211_scan_do_action+0x8e>
  cc:	e0000000 	bsr      	0x0	// 0 <ieee80211_is_pairing>
  d0:	e4c400df 	addi      	r6, r4, 224
  d4:	e9000012 	bez      	r0, 0xf8	// f8 <ieee80211_scan_do_action+0xf8>
  d8:	d86400b0 	ld.b      	r3, (r4, 0xb0)
  dc:	3500      	movi      	r5, 0
  de:	c4655c00 	ins      	r3, r5, 0, 0
  e2:	dc6400b0 	st.b      	r3, (r4, 0xb0)
  e6:	6c1b      	mov      	r0, r6
  e8:	e0000000 	bsr      	0x0	// 0 <os_timer_stop>
  ec:	6cd7      	mov      	r3, r5
  ee:	6c97      	mov      	r2, r5
  f0:	3106      	movi      	r1, 6
  f2:	6c13      	mov      	r0, r4
  f4:	e0000000 	bsr      	0x0	// 0 <ieee80211_iface_event>
  f8:	d864202e 	ld.w      	r3, (r4, 0xb8)
  fc:	d844105b 	ld.h      	r2, (r4, 0xb6)
 100:	3100      	movi      	r1, 0
 102:	6c13      	mov      	r0, r4
 104:	e0000000 	bsr      	0x0	// 0 <ieee80211_switch_chan>
 108:	e9000036 	bez      	r0, 0x174	// 174 <ieee80211_scan_do_action+0x174>
 10c:	d86400b0 	ld.b      	r3, (r4, 0xb0)
 110:	3500      	movi      	r5, 0
 112:	c4655c00 	ins      	r3, r5, 0, 0
 116:	dc6400b0 	st.b      	r3, (r4, 0xb0)
 11a:	d86400b1 	ld.b      	r3, (r4, 0xb1)
 11e:	2300      	addi      	r3, 1
 120:	dc6400b1 	st.b      	r3, (r4, 0xb1)
 124:	6c1b      	mov      	r0, r6
 126:	e0000000 	bsr      	0x0	// 0 <os_timer_stop>
 12a:	d82400b2 	ld.b      	r1, (r4, 0xb2)
 12e:	6c13      	mov      	r0, r4
 130:	e0000000 	bsr      	0x0	// 0 <ieee80211_set_channel>
 134:	d86400b0 	ld.b      	r3, (r4, 0xb0)
 138:	e4432008 	andi      	r2, r3, 8
 13c:	e902ffbd 	bez      	r2, 0xb6	// b6 <ieee80211_scan_do_action+0xb6>
 140:	c4655c02 	ins      	r3, r5, 2, 2
 144:	dc6400b0 	st.b      	r3, (r4, 0xb0)
 148:	d864202b 	ld.w      	r3, (r4, 0xac)
 14c:	9365      	ld.w      	r3, (r3, 0x14)
 14e:	dc64202e 	st.w      	r3, (r4, 0xb8)
 152:	3302      	movi      	r3, 2
 154:	dc64105b 	st.h      	r3, (r4, 0xb6)
 158:	3314      	movi      	r3, 20
 15a:	dc64105a 	st.h      	r3, (r4, 0xb4)
 15e:	d86400b0 	ld.b      	r3, (r4, 0xb0)
 162:	c4655c03 	ins      	r3, r5, 3, 3
 166:	dca400b1 	st.b      	r5, (r4, 0xb1)
 16a:	dc6400b0 	st.b      	r3, (r4, 0xb0)
 16e:	dca400bc 	st.b      	r5, (r4, 0xbc)
 172:	07a2      	br      	0xb6	// b6 <ieee80211_scan_do_action+0xb6>
 174:	d82400b0 	ld.b      	r1, (r4, 0xb0)
 178:	e4212004 	andi      	r1, r1, 4
 17c:	e921001c 	bnez      	r1, 0x1b4	// 1b4 <ieee80211_scan_do_action+0x1b4>
 180:	321c      	movi      	r2, 28
 182:	6c3b      	mov      	r0, r14
 184:	e0000000 	bsr      	0x0	// 0 <memset>
 188:	106f      	lrw      	r3, 0x0	// 1c4 <ieee80211_scan_do_action+0x1c4>
 18a:	b862      	st.w      	r3, (r14, 0x8)
 18c:	d864202b 	ld.w      	r3, (r4, 0xac)
 190:	8360      	ld.b      	r3, (r3, 0x0)
 192:	dc6e0004 	st.b      	r3, (r14, 0x4)
 196:	d86400bc 	ld.b      	r3, (r4, 0xbc)
 19a:	e9030008 	bez      	r3, 0x1aa	// 1aa <ieee80211_scan_do_action+0x1aa>
 19e:	e40400bb 	addi      	r0, r4, 188
 1a2:	b803      	st.w      	r0, (r14, 0xc)
 1a4:	e0000000 	bsr      	0x0	// 0 <strlen>
 1a8:	b805      	st.w      	r0, (r14, 0x14)
 1aa:	d8642024 	ld.w      	r3, (r4, 0x90)
 1ae:	6c7b      	mov      	r1, r14
 1b0:	6c13      	mov      	r0, r4
 1b2:	7bcd      	jsr      	r3
 1b4:	d824105a 	ld.h      	r1, (r4, 0xb4)
 1b8:	6c1b      	mov      	r0, r6
 1ba:	e0000000 	bsr      	0x0	// 0 <os_timer_start>
 1be:	0768      	br      	0x8e	// 8e <ieee80211_scan_do_action+0x8e>
	...
