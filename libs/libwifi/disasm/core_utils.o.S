
libwifi/o/core_utils.o:     file format elf32-csky-little


Disassembly of section .text.__get_unaligned_be32:

00000000 <__get_unaligned_be32>:
   0:	8060      	ld.b      	r3, (r0, 0x0)
   2:	8041      	ld.b      	r2, (r0, 0x1)
   4:	4250      	lsli      	r2, r2, 16
   6:	4378      	lsli      	r3, r3, 24
   8:	6cc8      	or      	r3, r2
   a:	8043      	ld.b      	r2, (r0, 0x3)
   c:	8002      	ld.b      	r0, (r0, 0x2)
   e:	6cc8      	or      	r3, r2
  10:	4008      	lsli      	r0, r0, 8
  12:	6c0c      	or      	r0, r3
  14:	783c      	jmp      	r15

Disassembly of section .text.ieee80211_event_notify:

00000000 <ieee80211_event_notify>:
   0:	14d0      	push      	r15
   2:	d980202a 	ld.w      	r12, (r0, 0xa8)
   6:	d98c2015 	ld.w      	r12, (r12, 0x54)
   a:	e90c0005 	bez      	r12, 0x14	// 14 <ieee80211_event_notify+0x14>
   e:	8004      	ld.b      	r0, (r0, 0x4)
  10:	7bf1      	jsr      	r12
  12:	1490      	pop      	r15
  14:	6c33      	mov      	r0, r12
  16:	07fe      	br      	0x12	// 12 <ieee80211_event_notify+0x12>

Disassembly of section .text.ieee80211_state_text:

00000000 <ieee80211_state_text>:
   0:	3909      	cmphsi      	r1, 10
   2:	0828      	bt      	0x52	// 52 <ieee80211_state_text+0x52>
   4:	1062      	lrw      	r3, 0x0	// c <ieee80211_state_text+0xc>
   6:	d0230883 	ldr.w      	r3, (r3, r1 << 2)
   a:	780c      	jmp      	r3
   c:	00000000 	.long	0x00000000
  10:	1014      	lrw      	r0, 0x0	// 60 <ieee80211_state_text+0x60>
  12:	783c      	jmp      	r15
  14:	1014      	lrw      	r0, 0x0	// 64 <ieee80211_state_text+0x64>
  16:	07fe      	br      	0x12	// 12 <ieee80211_state_text+0x12>
  18:	1014      	lrw      	r0, 0x0	// 68 <ieee80211_state_text+0x68>
  1a:	07fc      	br      	0x12	// 12 <ieee80211_state_text+0x12>
  1c:	1014      	lrw      	r0, 0x0	// 6c <ieee80211_state_text+0x6c>
  1e:	07fa      	br      	0x12	// 12 <ieee80211_state_text+0x12>
  20:	1014      	lrw      	r0, 0x0	// 70 <ieee80211_state_text+0x70>
  22:	07f8      	br      	0x12	// 12 <ieee80211_state_text+0x12>
  24:	1014      	lrw      	r0, 0x0	// 74 <ieee80211_state_text+0x74>
  26:	07f6      	br      	0x12	// 12 <ieee80211_state_text+0x12>
  28:	1014      	lrw      	r0, 0x0	// 78 <ieee80211_state_text+0x78>
  2a:	07f4      	br      	0x12	// 12 <ieee80211_state_text+0x12>
  2c:	1014      	lrw      	r0, 0x0	// 7c <ieee80211_state_text+0x7c>
  2e:	07f2      	br      	0x12	// 12 <ieee80211_state_text+0x12>
  30:	8860      	ld.h      	r3, (r0, 0x0)
  32:	e4632001 	andi      	r3, r3, 1
  36:	e9030012 	bez      	r3, 0x5a	// 5a <ieee80211_state_text+0x5a>
  3a:	d8602063 	ld.w      	r3, (r0, 0x18c)
  3e:	1011      	lrw      	r0, 0x0	// 80 <ieee80211_state_text+0x80>
  40:	d8630025 	ld.b      	r3, (r3, 0x25)
  44:	e4632008 	andi      	r3, r3, 8
  48:	3b40      	cmpnei      	r3, 0
  4a:	106f      	lrw      	r3, 0x0	// 84 <ieee80211_state_text+0x84>
  4c:	c4030c20 	incf      	r0, r3, 0
  50:	07e1      	br      	0x12	// 12 <ieee80211_state_text+0x12>
  52:	100e      	lrw      	r0, 0x0	// 88 <ieee80211_state_text+0x88>
  54:	07df      	br      	0x12	// 12 <ieee80211_state_text+0x12>
  56:	100e      	lrw      	r0, 0x0	// 8c <ieee80211_state_text+0x8c>
  58:	07dd      	br      	0x12	// 12 <ieee80211_state_text+0x12>
  5a:	100a      	lrw      	r0, 0x0	// 80 <ieee80211_state_text+0x80>
  5c:	07db      	br      	0x12	// 12 <ieee80211_state_text+0x12>
	...

Disassembly of section .text.ieee80211_iptos_to_tid:

00000000 <ieee80211_iptos_to_tid>:
   0:	9047      	ld.w      	r2, (r0, 0x1c)
   2:	826c      	ld.b      	r3, (r2, 0xc)
   4:	4368      	lsli      	r3, r3, 8
   6:	822d      	ld.b      	r1, (r2, 0xd)
   8:	6cc4      	or      	r3, r1
   a:	74cf      	sexth      	r3, r3
   c:	eb430800 	cmpnei      	r3, 2048
  10:	0807      	bt      	0x1e	// 1e <ieee80211_iptos_to_tid+0x1e>
  12:	826f      	ld.b      	r3, (r2, 0xf)
  14:	1044      	lrw      	r2, 0x0	// 24 <ieee80211_iptos_to_tid+0x24>
  16:	4b62      	lsri      	r3, r3, 2
  18:	d0620020 	ldr.b      	r0, (r2, r3 << 0)
  1c:	783c      	jmp      	r15
  1e:	3000      	movi      	r0, 0
  20:	07fe      	br      	0x1c	// 1c <ieee80211_iptos_to_tid+0x1c>
  22:	0000      	.short	0x0000
  24:	00000000 	.long	0x00000000

Disassembly of section .text.ieee80211_hdrlen:

00000000 <ieee80211_hdrlen>:
   0:	e460200c 	andi      	r3, r0, 12
   4:	3b4c      	cmpnei      	r3, 12
   6:	0c2a      	bf      	0x5a	// 5a <ieee80211_hdrlen+0x5a>
   8:	3b48      	cmpnei      	r3, 8
   a:	0816      	bt      	0x36	// 36 <ieee80211_hdrlen+0x36>
   c:	e4602300 	andi      	r3, r0, 768
  10:	eb430300 	cmpnei      	r3, 768
  14:	321e      	movi      	r2, 30
  16:	3318      	movi      	r3, 24
  18:	c4620c20 	incf      	r3, r2, 0
  1c:	e440208c 	andi      	r2, r0, 140
  20:	eb420088 	cmpnei      	r2, 136
  24:	0805      	bt      	0x2e	// 2e <ieee80211_hdrlen+0x2e>
  26:	7403      	sexth      	r0, r0
  28:	e9800005 	blz      	r0, 0x32	// 32 <ieee80211_hdrlen+0x32>
  2c:	2301      	addi      	r3, 2
  2e:	6c0f      	mov      	r0, r3
  30:	783c      	jmp      	r15
  32:	2305      	addi      	r3, 6
  34:	07fd      	br      	0x2e	// 2e <ieee80211_hdrlen+0x2e>
  36:	e9230009 	bnez      	r3, 0x48	// 48 <ieee80211_hdrlen+0x48>
  3a:	7403      	sexth      	r0, r0
  3c:	38df      	btsti      	r0, 31
  3e:	3318      	movi      	r3, 24
  40:	301c      	movi      	r0, 28
  42:	c4600c40 	inct      	r3, r0, 0
  46:	07f4      	br      	0x2e	// 2e <ieee80211_hdrlen+0x2e>
  48:	3b44      	cmpnei      	r3, 4
  4a:	080a      	bt      	0x5e	// 5e <ieee80211_hdrlen+0x5e>
  4c:	e40020e0 	andi      	r0, r0, 224
  50:	eb4000c0 	cmpnei      	r0, 192
  54:	330a      	movi      	r3, 10
  56:	3010      	movi      	r0, 16
  58:	07f5      	br      	0x42	// 42 <ieee80211_hdrlen+0x42>
  5a:	3304      	movi      	r3, 4
  5c:	07e9      	br      	0x2e	// 2e <ieee80211_hdrlen+0x2e>
  5e:	3318      	movi      	r3, 24
  60:	07e7      	br      	0x2e	// 2e <ieee80211_hdrlen+0x2e>

Disassembly of section .text.ieee80211_get_bssid:

00000000 <ieee80211_get_bssid>:
   0:	d9801000 	ld.h      	r12, (r0, 0x0)
   4:	e46c200c 	andi      	r3, r12, 12
   8:	3b48      	cmpnei      	r3, 8
   a:	0816      	bt      	0x36	// 36 <ieee80211_get_bssid+0x36>
   c:	3917      	cmphsi      	r1, 24
   e:	0c1d      	bf      	0x48	// 48 <ieee80211_get_bssid+0x48>
  10:	e46c2300 	andi      	r3, r12, 768
  14:	eb430300 	cmpnei      	r3, 768
  18:	0c18      	bf      	0x48	// 48 <ieee80211_get_bssid+0x48>
  1a:	e46c2100 	andi      	r3, r12, 256
  1e:	e9030004 	bez      	r3, 0x26	// 26 <ieee80211_get_bssid+0x26>
  22:	2003      	addi      	r0, 4
  24:	783c      	jmp      	r15
  26:	e58c2200 	andi      	r12, r12, 512
  2a:	e90c0004 	bez      	r12, 0x32	// 32 <ieee80211_get_bssid+0x32>
  2e:	2009      	addi      	r0, 10
  30:	07fa      	br      	0x24	// 24 <ieee80211_get_bssid+0x24>
  32:	200f      	addi      	r0, 16
  34:	07f8      	br      	0x24	// 24 <ieee80211_get_bssid+0x24>
  36:	e58c20fc 	andi      	r12, r12, 252
  3a:	eb4c001c 	cmpnei      	r12, 28
  3e:	0ff2      	bf      	0x22	// 22 <ieee80211_get_bssid+0x22>
  40:	e9230006 	bnez      	r3, 0x4c	// 4c <ieee80211_get_bssid+0x4c>
  44:	3917      	cmphsi      	r1, 24
  46:	0bf6      	bt      	0x32	// 32 <ieee80211_get_bssid+0x32>
  48:	3000      	movi      	r0, 0
  4a:	07ed      	br      	0x24	// 24 <ieee80211_get_bssid+0x24>
  4c:	3b44      	cmpnei      	r3, 4
  4e:	0bfd      	bt      	0x48	// 48 <ieee80211_get_bssid+0x48>
  50:	eb4c00a4 	cmpnei      	r12, 164
  54:	0fe7      	bf      	0x22	// 22 <ieee80211_get_bssid+0x22>
  56:	eb4c0084 	cmpnei      	r12, 132
  5a:	0bf7      	bt      	0x48	// 48 <ieee80211_get_bssid+0x48>
  5c:	8a60      	ld.h      	r3, (r2, 0x0)
  5e:	e4432001 	andi      	r2, r3, 1
  62:	e922ffe6 	bnez      	r2, 0x2e	// 2e <ieee80211_get_bssid+0x2e>
  66:	e4632002 	andi      	r3, r3, 2
  6a:	e923ffdc 	bnez      	r3, 0x22	// 22 <ieee80211_get_bssid+0x22>
  6e:	07ed      	br      	0x48	// 48 <ieee80211_get_bssid+0x48>

Disassembly of section .text.ieee80211_get_ether_type:

00000000 <ieee80211_get_ether_type>:
   0:	14d1      	push      	r4, r15
   2:	9087      	ld.w      	r4, (r0, 0x1c)
   4:	8c00      	ld.h      	r0, (r4, 0x0)
   6:	e0000000 	bsr      	0x0	// 0 <ieee80211_get_ether_type>
   a:	2005      	addi      	r0, 6
   c:	6100      	addu      	r4, r0
   e:	8460      	ld.b      	r3, (r4, 0x0)
  10:	4368      	lsli      	r3, r3, 8
  12:	8401      	ld.b      	r0, (r4, 0x1)
  14:	6c0c      	or      	r0, r3
  16:	1491      	pop      	r4, r15

Disassembly of section .text.ieee80211_parse_qos:

00000000 <ieee80211_parse_qos>:
   0:	9067      	ld.w      	r3, (r0, 0x1c)
   2:	8b40      	ld.h      	r2, (r3, 0x0)
   4:	e422208c 	andi      	r1, r2, 140
   8:	eb410088 	cmpnei      	r1, 136
   c:	0815      	bt      	0x36	// 36 <ieee80211_parse_qos+0x36>
   e:	e4422300 	andi      	r2, r2, 768
  12:	eb420300 	cmpnei      	r2, 768
  16:	080e      	bt      	0x32	// 32 <ieee80211_parse_qos+0x32>
  18:	231d      	addi      	r3, 30
  1a:	8360      	ld.b      	r3, (r3, 0x0)
  1c:	e463200f 	andi      	r3, r3, 15
  20:	3b07      	cmphsi      	r3, 8
  22:	080a      	bt      	0x36	// 36 <ieee80211_parse_qos+0x36>
  24:	d840002a 	ld.b      	r2, (r0, 0x2a)
  28:	c4435c60 	ins      	r2, r3, 3, 0
  2c:	dc40002a 	st.b      	r2, (r0, 0x2a)
  30:	783c      	jmp      	r15
  32:	2317      	addi      	r3, 24
  34:	07f3      	br      	0x1a	// 1a <ieee80211_parse_qos+0x1a>
  36:	3300      	movi      	r3, 0
  38:	07f6      	br      	0x24	// 24 <ieee80211_parse_qos+0x24>

Disassembly of section .text.ieee80211_freq_to_chan:

00000000 <ieee80211_freq_to_chan>:
   0:	e900000c 	bez      	r0, 0x18	// 18 <ieee80211_freq_to_chan+0x18>
   4:	d800202b 	ld.w      	r0, (r0, 0xac)
   8:	3300      	movi      	r3, 0
   a:	e9000016 	bez      	r0, 0x36	// 36 <ieee80211_freq_to_chan+0x36>
   e:	8044      	ld.b      	r2, (r0, 0x4)
  10:	648c      	cmphs      	r3, r2
  12:	0c0a      	bf      	0x26	// 26 <ieee80211_freq_to_chan+0x26>
  14:	3000      	movi      	r0, 0
  16:	0410      	br      	0x36	// 36 <ieee80211_freq_to_chan+0x36>
  18:	3a03      	cmphsi      	r2, 4
  1a:	080e      	bt      	0x36	// 36 <ieee80211_freq_to_chan+0x36>
  1c:	2215      	addi      	r2, 22
  1e:	1068      	lrw      	r3, 0x0	// 3c <ieee80211_freq_to_chan+0x3c>
  20:	d0430880 	ldr.w      	r0, (r3, r2 << 2)
  24:	07f2      	br      	0x8	// 8 <ieee80211_freq_to_chan+0x8>
  26:	5b5e      	addi      	r2, r3, 8
  28:	4242      	lsli      	r2, r2, 2
  2a:	6080      	addu      	r2, r0
  2c:	2300      	addi      	r3, 1
  2e:	8a41      	ld.h      	r2, (r2, 0x2)
  30:	644a      	cmpne      	r2, r1
  32:	0803      	bt      	0x38	// 38 <ieee80211_freq_to_chan+0x38>
  34:	740c      	zextb      	r0, r3
  36:	783c      	jmp      	r15
  38:	74cc      	zextb      	r3, r3
  3a:	07e8      	br      	0xa	// a <ieee80211_freq_to_chan+0xa>
  3c:	00000000 	.long	0x00000000

Disassembly of section .text.ieee80211_chan_to_freq:

00000000 <ieee80211_chan_to_freq>:
   0:	e9000010 	bez      	r0, 0x20	// 20 <ieee80211_chan_to_freq+0x20>
   4:	d800202b 	ld.w      	r0, (r0, 0xac)
   8:	e900000b 	bez      	r0, 0x1e	// 1e <ieee80211_chan_to_freq+0x1e>
   c:	e9010011 	bez      	r1, 0x2e	// 2e <ieee80211_chan_to_freq+0x2e>
  10:	8064      	ld.b      	r3, (r0, 0x4)
  12:	644c      	cmphs      	r3, r1
  14:	0c0d      	bf      	0x2e	// 2e <ieee80211_chan_to_freq+0x2e>
  16:	2106      	addi      	r1, 7
  18:	4162      	lsli      	r3, r1, 2
  1a:	600c      	addu      	r0, r3
  1c:	8801      	ld.h      	r0, (r0, 0x2)
  1e:	783c      	jmp      	r15
  20:	3a03      	cmphsi      	r2, 4
  22:	0bfe      	bt      	0x1e	// 1e <ieee80211_chan_to_freq+0x1e>
  24:	2215      	addi      	r2, 22
  26:	1064      	lrw      	r3, 0x0	// 34 <ieee80211_chan_to_freq+0x34>
  28:	d0430880 	ldr.w      	r0, (r3, r2 << 2)
  2c:	07ee      	br      	0x8	// 8 <ieee80211_chan_to_freq+0x8>
  2e:	3000      	movi      	r0, 0
  30:	07f7      	br      	0x1e	// 1e <ieee80211_chan_to_freq+0x1e>
  32:	0000      	.short	0x0000
  34:	00000000 	.long	0x00000000

Disassembly of section .text.ieee80211_state:

00000000 <ieee80211_state>:
   0:	14d5      	push      	r4-r8, r15
   2:	80b2      	ld.b      	r5, (r0, 0x12)
   4:	6456      	cmpne      	r5, r1
   6:	6d03      	mov      	r4, r0
   8:	6d87      	mov      	r6, r1
   a:	0c17      	bf      	0x38	// 38 <ieee80211_state+0x38>
   c:	6c57      	mov      	r1, r5
   e:	e0000000 	bsr      	0x0	// 0 <ieee80211_state>
  12:	75d8      	zextb      	r7, r6
  14:	6e03      	mov      	r8, r0
  16:	6c5f      	mov      	r1, r7
  18:	6c13      	mov      	r0, r4
  1a:	e0000000 	bsr      	0x0	// 0 <ieee80211_state>
  1e:	6cc3      	mov      	r3, r0
  20:	6ca3      	mov      	r2, r8
  22:	8424      	ld.b      	r1, (r4, 0x4)
  24:	1006      	lrw      	r0, 0x0	// 3c <ieee80211_state+0x3c>
  26:	e0000000 	bsr      	0x0	// 0 <hgprintf>
  2a:	a4f2      	st.b      	r7, (r4, 0x12)
  2c:	6cdb      	mov      	r3, r6
  2e:	6c97      	mov      	r2, r5
  30:	310d      	movi      	r1, 13
  32:	6c13      	mov      	r0, r4
  34:	e0000000 	bsr      	0x0	// 0 <ieee80211_iface_event>
  38:	1495      	pop      	r4-r8, r15
  3a:	0000      	.short	0x0000
  3c:	00000000 	.long	0x00000000

Disassembly of section .text.ieee80211_add_extra_ie:

00000000 <ieee80211_add_extra_ie>:
   0:	14d0      	push      	r15
   2:	d9802021 	ld.w      	r12, (r0, 0x84)
   6:	e90c0003 	bez      	r12, 0xc	// c <ieee80211_add_extra_ie+0xc>
   a:	7bf1      	jsr      	r12
   c:	1490      	pop      	r15

Disassembly of section .text.ieee80211_add_customer_ie:

00000000 <ieee80211_add_customer_ie>:
   0:	14d1      	push      	r4, r15
   2:	1421      	subi      	r14, r14, 4
   4:	3300      	movi      	r3, 0
   6:	9147      	ld.w      	r2, (r1, 0x1c)
   8:	b860      	st.w      	r3, (r14, 0x0)
   a:	6d07      	mov      	r4, r1
   c:	6cfb      	mov      	r3, r14
   e:	3116      	movi      	r1, 22
  10:	e0000000 	bsr      	0x0	// 0 <ieee80211_add_customer_ie>
  14:	9820      	ld.w      	r1, (r14, 0x0)
  16:	6c83      	mov      	r2, r0
  18:	e9010007 	bez      	r1, 0x26	// 26 <ieee80211_add_customer_ie+0x26>
  1c:	e9000005 	bez      	r0, 0x26	// 26 <ieee80211_add_customer_ie+0x26>
  20:	6c13      	mov      	r0, r4
  22:	e0000000 	bsr      	0x0	// 0 <skb_put_data>
  26:	1401      	addi      	r14, r14, 4
  28:	1491      	pop      	r4, r15

Disassembly of section .text.ieee80211_set_channel:

00000000 <ieee80211_set_channel>:
   0:	14d2      	push      	r4-r5, r15
   2:	6d03      	mov      	r4, r0
   4:	6d47      	mov      	r5, r1
   6:	e901002b 	bez      	r1, 0x5c	// 5c <ieee80211_set_channel+0x5c>
   a:	d860202b 	ld.w      	r3, (r0, 0xac)
   e:	8344      	ld.b      	r2, (r3, 0x4)
  10:	6448      	cmphs      	r2, r1
  12:	0c25      	bf      	0x5c	// 5c <ieee80211_set_channel+0x5c>
  14:	595a      	addi      	r2, r1, 7
  16:	a433      	st.b      	r1, (r4, 0x13)
  18:	4242      	lsli      	r2, r2, 2
  1a:	60c8      	addu      	r3, r2
  1c:	d8002029 	ld.w      	r0, (r0, 0xa4)
  20:	8b21      	ld.h      	r1, (r3, 0x2)
  22:	904c      	ld.w      	r2, (r0, 0x30)
  24:	7bc9      	jsr      	r2
  26:	d824202b 	ld.w      	r1, (r4, 0xac)
  2a:	5d63      	subi      	r3, r5, 1
  2c:	a161      	st.b      	r3, (r1, 0x1)
  2e:	d804202a 	ld.w      	r0, (r4, 0xa8)
  32:	3300      	movi      	r3, 0
  34:	d9800048 	ld.b      	r12, (r0, 0x48)
  38:	670d      	cmplt      	r3, r12
  3a:	0803      	bt      	0x40	// 40 <ieee80211_set_channel+0x40>
  3c:	3000      	movi      	r0, 0
  3e:	1492      	pop      	r4-r5, r15
  40:	4342      	lsli      	r2, r3, 2
  42:	6080      	addu      	r2, r0
  44:	925a      	ld.w      	r2, (r2, 0x68)
  46:	e9020009 	bez      	r2, 0x58	// 58 <ieee80211_set_channel+0x58>
  4a:	d9a2202b 	ld.w      	r13, (r2, 0xac)
  4e:	6746      	cmpne      	r1, r13
  50:	0804      	bt      	0x58	// 58 <ieee80211_set_channel+0x58>
  52:	6492      	cmpne      	r4, r2
  54:	0c02      	bf      	0x58	// 58 <ieee80211_set_channel+0x58>
  56:	a2b3      	st.b      	r5, (r2, 0x13)
  58:	2300      	addi      	r3, 1
  5a:	07ef      	br      	0x38	// 38 <ieee80211_set_channel+0x38>
  5c:	3000      	movi      	r0, 0
  5e:	2800      	subi      	r0, 1
  60:	07ef      	br      	0x3e	// 3e <ieee80211_set_channel+0x3e>

Disassembly of section .text.ieee80211_switch_chan:

00000000 <ieee80211_switch_chan>:
   0:	14d3      	push      	r4-r6, r15
   2:	6d87      	mov      	r6, r1
   4:	d820003d 	ld.b      	r1, (r0, 0x3d)
   8:	6d03      	mov      	r4, r0
   a:	e4012001 	andi      	r0, r1, 1
   e:	e9200005 	bnez      	r0, 0x18	// 18 <ieee80211_switch_chan+0x18>
  12:	4b10      	lsri      	r0, r3, 16
  14:	e920000d 	bnez      	r0, 0x2e	// 2e <ieee80211_switch_chan+0x2e>
  18:	74cd      	zexth      	r3, r3
  1a:	4901      	lsri      	r0, r1, 1
  1c:	e900000b 	bez      	r0, 0x32	// 32 <ieee80211_switch_chan+0x32>
  20:	d864003d 	ld.b      	r3, (r4, 0x3d)
  24:	23fd      	addi      	r3, 254
  26:	dc64003d 	st.b      	r3, (r4, 0x3d)
  2a:	3000      	movi      	r0, 0
  2c:	1493      	pop      	r4-r6, r15
  2e:	74c1      	zexth      	r3, r0
  30:	07f5      	br      	0x1a	// 1a <ieee80211_switch_chan+0x1a>
  32:	c4225cc1 	ins      	r1, r2, 7, 1
  36:	d844202b 	ld.w      	r2, (r4, 0xac)
  3a:	dc24003d 	st.b      	r1, (r4, 0x3d)
  3e:	84b3      	ld.b      	r5, (r4, 0x13)
  40:	8204      	ld.b      	r0, (r2, 0x4)
  42:	d824003c 	ld.b      	r1, (r4, 0x3c)
  46:	ea0c0001 	movi      	r12, 1
  4a:	2500      	addi      	r5, 1
  4c:	7554      	zextb      	r5, r5
  4e:	6540      	cmphs      	r0, r5
  50:	c4ac0c20 	incf      	r5, r12, 0
  54:	6546      	cmpne      	r1, r5
  56:	0815      	bt      	0x80	// 80 <ieee80211_switch_chan+0x80>
  58:	d864003d 	ld.b      	r3, (r4, 0x3d)
  5c:	c4632482 	nor      	r2, r3, r3
  60:	c4625c00 	ins      	r3, r2, 0, 0
  64:	dc64003d 	st.b      	r3, (r4, 0x3d)
  68:	6c57      	mov      	r1, r5
  6a:	6c13      	mov      	r0, r4
  6c:	e0000000 	bsr      	0x0	// 0 <ieee80211_switch_chan>
  70:	d864003c 	ld.b      	r3, (r4, 0x3c)
  74:	654e      	cmpne      	r3, r5
  76:	0bd5      	bt      	0x20	// 20 <ieee80211_switch_chan+0x20>
  78:	e926ffd4 	bnez      	r6, 0x20	// 20 <ieee80211_switch_chan+0x20>
  7c:	3001      	movi      	r0, 1
  7e:	07d7      	br      	0x2c	// 2c <ieee80211_switch_chan+0x2c>
  80:	5d43      	subi      	r2, r5, 1
  82:	c4434042 	lsr      	r2, r3, r2
  86:	e4422001 	andi      	r2, r2, 1
  8a:	e902ffe0 	bez      	r2, 0x4a	// 4a <ieee80211_switch_chan+0x4a>
  8e:	07ed      	br      	0x68	// 68 <ieee80211_switch_chan+0x68>

Disassembly of section .text.ieee80211_sta_wpasm:

00000000 <ieee80211_sta_wpasm>:
   0:	14d0      	push      	r15
   2:	e9200004 	bnez      	r0, 0xa	// a <ieee80211_sta_wpasm+0xa>
   6:	3000      	movi      	r0, 0
   8:	1490      	pop      	r15
   a:	e0000000 	bsr      	0x0	// 0 <ieee80211_sta_get>
   e:	e900fffc 	bez      	r0, 0x6	// 6 <ieee80211_sta_wpasm+0x6>
  12:	9002      	ld.w      	r0, (r0, 0x8)
  14:	07fa      	br      	0x8	// 8 <ieee80211_sta_wpasm+0x8>

Disassembly of section .text.ieee80211_cipher_txt:

00000000 <ieee80211_cipher_txt>:
   0:	2800      	subi      	r0, 1
   2:	3817      	cmphsi      	r0, 24
   4:	0805      	bt      	0xe	// e <ieee80211_cipher_txt+0xe>
   6:	1064      	lrw      	r3, 0x0	// 14 <ieee80211_cipher_txt+0x14>
   8:	d0030880 	ldr.w      	r0, (r3, r0 << 2)
   c:	783c      	jmp      	r15
   e:	1003      	lrw      	r0, 0x0	// 18 <ieee80211_cipher_txt+0x18>
  10:	07fe      	br      	0xc	// c <ieee80211_cipher_txt+0xc>
	...

Disassembly of section .text.ieee80211_key_mgmt_txt:

00000000 <ieee80211_key_mgmt_txt>:
   0:	eb400400 	cmpnei      	r0, 1024
   4:	0c1d      	bf      	0x3e	// 3e <ieee80211_key_mgmt_txt+0x3e>
   6:	eb000400 	cmphsi      	r0, 1025
   a:	0807      	bt      	0x18	// 18 <ieee80211_key_mgmt_txt+0x18>
   c:	3842      	cmpnei      	r0, 2
   e:	0c10      	bf      	0x2e	// 2e <ieee80211_key_mgmt_txt+0x2e>
  10:	3844      	cmpnei      	r0, 4
  12:	0c18      	bf      	0x42	// 42 <ieee80211_key_mgmt_txt+0x42>
  14:	100e      	lrw      	r0, 0x0	// 4c <ieee80211_key_mgmt_txt+0x4c>
  16:	040b      	br      	0x2c	// 2c <ieee80211_key_mgmt_txt+0x2c>
  18:	eb400402 	cmpnei      	r0, 1026
  1c:	0c07      	bf      	0x2a	// 2a <ieee80211_key_mgmt_txt+0x2a>
  1e:	3380      	movi      	r3, 128
  20:	436f      	lsli      	r3, r3, 15
  22:	64c2      	cmpne      	r0, r3
  24:	0bf8      	bt      	0x14	// 14 <ieee80211_key_mgmt_txt+0x14>
  26:	100b      	lrw      	r0, 0x0	// 50 <ieee80211_key_mgmt_txt+0x50>
  28:	0402      	br      	0x2c	// 2c <ieee80211_key_mgmt_txt+0x2c>
  2a:	100b      	lrw      	r0, 0x0	// 54 <ieee80211_key_mgmt_txt+0x54>
  2c:	783c      	jmp      	r15
  2e:	3943      	cmpnei      	r1, 3
  30:	0c0b      	bf      	0x46	// 46 <ieee80211_key_mgmt_txt+0x46>
  32:	3942      	cmpnei      	r1, 2
  34:	1069      	lrw      	r3, 0x0	// 58 <ieee80211_key_mgmt_txt+0x58>
  36:	100a      	lrw      	r0, 0x0	// 5c <ieee80211_key_mgmt_txt+0x5c>
  38:	c4030c40 	inct      	r0, r3, 0
  3c:	07f8      	br      	0x2c	// 2c <ieee80211_key_mgmt_txt+0x2c>
  3e:	1009      	lrw      	r0, 0x0	// 60 <ieee80211_key_mgmt_txt+0x60>
  40:	07f6      	br      	0x2c	// 2c <ieee80211_key_mgmt_txt+0x2c>
  42:	1009      	lrw      	r0, 0x0	// 64 <ieee80211_key_mgmt_txt+0x64>
  44:	07f4      	br      	0x2c	// 2c <ieee80211_key_mgmt_txt+0x2c>
  46:	1009      	lrw      	r0, 0x0	// 68 <ieee80211_key_mgmt_txt+0x68>
  48:	07f2      	br      	0x2c	// 2c <ieee80211_key_mgmt_txt+0x2c>
	...

Disassembly of section .text.ieee80211_status:

00000000 <ieee80211_status>:
   0:	14d8      	push      	r4-r11, r15
   2:	143a      	subi      	r14, r14, 104
   4:	6dc3      	mov      	r7, r0
   6:	009b      	lrw      	r4, 0x0	// 394 <ieee80211_status+0x394>
   8:	001b      	lrw      	r0, 0x0	// 398 <ieee80211_status+0x398>
   a:	b82f      	st.w      	r1, (r14, 0x3c)
   c:	e0000000 	bsr      	0x0	// 0 <hgprintf>
  10:	6c13      	mov      	r0, r4
  12:	d8a4206f 	ld.w      	r5, (r4, 0x1bc)
  16:	e0000000 	bsr      	0x0	// 0 <os_sema_count>
  1a:	6d83      	mov      	r6, r0
  1c:	5c1e      	addi      	r0, r4, 8
  1e:	d9042072 	ld.w      	r8, (r4, 0x1c8)
  22:	e0000000 	bsr      	0x0	// 0 <os_sema_count>
  26:	b800      	st.w      	r0, (r14, 0x0)
  28:	6ce3      	mov      	r3, r8
  2a:	6c9b      	mov      	r2, r6
  2c:	6c57      	mov      	r1, r5
  2e:	0103      	lrw      	r0, 0x0	// 39c <ieee80211_status+0x39c>
  30:	e0000000 	bsr      	0x0	// 0 <hgprintf>
  34:	9471      	ld.w      	r3, (r4, 0x44)
  36:	9450      	ld.w      	r2, (r4, 0x40)
  38:	942f      	ld.w      	r1, (r4, 0x3c)
  3a:	e4c40067 	addi      	r6, r4, 104
  3e:	0106      	lrw      	r0, 0x0	// 3a0 <hgprintf+0x3a0>
  40:	e0000000 	bsr      	0x0	// 0 <hgprintf>
  44:	320c      	movi      	r2, 12
  46:	3100      	movi      	r1, 0
  48:	e404003b 	addi      	r0, r4, 60
  4c:	e0000000 	bsr      	0x0	// 0 <memset>
  50:	016a      	lrw      	r3, 0x0	// 3a4 <ieee80211_status+0x3a4>
  52:	ea080000 	movi      	r8, 0
  56:	b873      	st.w      	r3, (r14, 0x4c)
  58:	016b      	lrw      	r3, 0x0	// 3a8 <ieee80211_status+0x3a8>
  5a:	b874      	st.w      	r3, (r14, 0x50)
  5c:	016b      	lrw      	r3, 0x0	// 3ac <ieee80211_status+0x3ac>
  5e:	b875      	st.w      	r3, (r14, 0x54)
  60:	d8640048 	ld.b      	r3, (r4, 0x48)
  64:	64e1      	cmplt      	r8, r3
  66:	0807      	bt      	0x74	// 74 <ieee80211_status+0x74>
  68:	e92700a5 	bnez      	r7, 0x1b2	// 1b2 <ieee80211_status+0x1b2>
  6c:	e0000000 	bsr      	0x0	// 0 <ieee80211_bss_dump>
  70:	141a      	addi      	r14, r14, 104
  72:	1498      	pop      	r4-r11, r15
  74:	96a0      	ld.w      	r5, (r6, 0x0)
  76:	e905009a 	bez      	r5, 0x1aa	// 1aa <ieee80211_status+0x1aa>
  7a:	8d60      	ld.h      	r3, (r5, 0x0)
  7c:	b870      	st.w      	r3, (r14, 0x40)
  7e:	8566      	ld.b      	r3, (r5, 0x6)
  80:	8545      	ld.b      	r2, (r5, 0x5)
  82:	b879      	st.w      	r3, (r14, 0x64)
  84:	8567      	ld.b      	r3, (r5, 0x7)
  86:	b871      	st.w      	r3, (r14, 0x44)
  88:	e4422001 	andi      	r2, r2, 1
  8c:	856b      	ld.b      	r3, (r5, 0xb)
  8e:	3a40      	cmpnei      	r2, 0
  90:	b872      	st.w      	r3, (r14, 0x48)
  92:	9854      	ld.w      	r2, (r14, 0x50)
  94:	9873      	ld.w      	r3, (r14, 0x4c)
  96:	d9a50008 	ld.b      	r13, (r5, 0x8)
  9a:	8532      	ld.b      	r1, (r5, 0x12)
  9c:	c4430c40 	inct      	r2, r3, 0
  a0:	6c17      	mov      	r0, r5
  a2:	ddae2018 	st.w      	r13, (r14, 0x60)
  a6:	b857      	st.w      	r2, (r14, 0x5c)
  a8:	e0000000 	bsr      	0x0	// 0 <ieee80211_status>
  ac:	b816      	st.w      	r0, (r14, 0x58)
  ae:	d8252042 	ld.w      	r1, (r5, 0x108)
  b2:	d805203f 	ld.w      	r0, (r5, 0xfc)
  b6:	e0000000 	bsr      	0x0	// 0 <ieee80211_status>
  ba:	8533      	ld.b      	r1, (r5, 0x13)
  bc:	d98e2016 	ld.w      	r12, (r14, 0x58)
  c0:	d9250004 	ld.b      	r9, (r5, 0x4)
  c4:	d9450009 	ld.b      	r10, (r5, 0x9)
  c8:	d965000a 	ld.b      	r11, (r5, 0xa)
  cc:	dd8e2008 	st.w      	r12, (r14, 0x20)
  d0:	b82a      	st.w      	r1, (r14, 0x28)
  d2:	b809      	st.w      	r0, (r14, 0x24)
  d4:	d8652074 	ld.w      	r3, (r5, 0x1d0)
  d8:	b867      	st.w      	r3, (r14, 0x1c)
  da:	d8652071 	ld.w      	r3, (r5, 0x1c4)
  de:	d9ae2018 	ld.w      	r13, (r14, 0x60)
  e2:	9857      	ld.w      	r2, (r14, 0x5c)
  e4:	b866      	st.w      	r3, (r14, 0x18)
  e6:	9872      	ld.w      	r3, (r14, 0x48)
  e8:	b845      	st.w      	r2, (r14, 0x14)
  ea:	b864      	st.w      	r3, (r14, 0x10)
  ec:	dd6e2003 	st.w      	r11, (r14, 0xc)
  f0:	dd4e2002 	st.w      	r10, (r14, 0x8)
  f4:	ddae2001 	st.w      	r13, (r14, 0x4)
  f8:	9871      	ld.w      	r3, (r14, 0x44)
  fa:	b860      	st.w      	r3, (r14, 0x0)
  fc:	9850      	ld.w      	r2, (r14, 0x40)
  fe:	9879      	ld.w      	r3, (r14, 0x64)
 100:	6c67      	mov      	r1, r9
 102:	9815      	ld.w      	r0, (r14, 0x54)
 104:	e0000000 	bsr      	0x0	// 0 <hgprintf>
 108:	9600      	ld.w      	r0, (r6, 0x0)
 10a:	d9802087 	ld.w      	r12, (r0, 0x21c)
 10e:	d8602078 	ld.w      	r3, (r0, 0x1e0)
 112:	d8402076 	ld.w      	r2, (r0, 0x1d8)
 116:	d8202075 	ld.w      	r1, (r0, 0x1d4)
 11a:	dd8e2006 	st.w      	r12, (r14, 0x18)
 11e:	d980207d 	ld.w      	r12, (r0, 0x1f4)
 122:	dd8e2005 	st.w      	r12, (r14, 0x14)
 126:	d9802077 	ld.w      	r12, (r0, 0x1dc)
 12a:	dd8e2004 	st.w      	r12, (r14, 0x10)
 12e:	d980207c 	ld.w      	r12, (r0, 0x1f0)
 132:	dd8e2003 	st.w      	r12, (r14, 0xc)
 136:	d980207b 	ld.w      	r12, (r0, 0x1ec)
 13a:	dd8e2002 	st.w      	r12, (r14, 0x8)
 13e:	d980207a 	ld.w      	r12, (r0, 0x1e8)
 142:	dd8e2001 	st.w      	r12, (r14, 0x4)
 146:	d8002079 	ld.w      	r0, (r0, 0x1e4)
 14a:	b800      	st.w      	r0, (r14, 0x0)
 14c:	0306      	lrw      	r0, 0x0	// 3b0 <ieee80211_status+0x3b0>
 14e:	e0000000 	bsr      	0x0	// 0 <hgprintf>
 152:	9600      	ld.w      	r0, (r6, 0x0)
 154:	d9802085 	ld.w      	r12, (r0, 0x214)
 158:	d840207f 	ld.w      	r2, (r0, 0x1fc)
 15c:	d820207e 	ld.w      	r1, (r0, 0x1f8)
 160:	d8602080 	ld.w      	r3, (r0, 0x200)
 164:	dd8e2006 	st.w      	r12, (r14, 0x18)
 168:	d9802086 	ld.w      	r12, (r0, 0x218)
 16c:	dd8e2005 	st.w      	r12, (r14, 0x14)
 170:	d9802088 	ld.w      	r12, (r0, 0x220)
 174:	dd8e2004 	st.w      	r12, (r14, 0x10)
 178:	d9802084 	ld.w      	r12, (r0, 0x210)
 17c:	dd8e2003 	st.w      	r12, (r14, 0xc)
 180:	d9802083 	ld.w      	r12, (r0, 0x20c)
 184:	dd8e2002 	st.w      	r12, (r14, 0x8)
 188:	d9802082 	ld.w      	r12, (r0, 0x208)
 18c:	dd8e2001 	st.w      	r12, (r14, 0x4)
 190:	d8002081 	ld.w      	r0, (r0, 0x204)
 194:	b800      	st.w      	r0, (r14, 0x0)
 196:	0317      	lrw      	r0, 0x0	// 3b4 <ieee80211_status+0x3b4>
 198:	e0000000 	bsr      	0x0	// 0 <hgprintf>
 19c:	9600      	ld.w      	r0, (r6, 0x0)
 19e:	3250      	movi      	r2, 80
 1a0:	3100      	movi      	r1, 0
 1a2:	e40001d3 	addi      	r0, r0, 468
 1a6:	e0000000 	bsr      	0x0	// 0 <memset>
 1aa:	e5080000 	addi      	r8, r8, 1
 1ae:	2603      	addi      	r6, 4
 1b0:	0758      	br      	0x60	// 60 <ieee80211_status+0x60>
 1b2:	984f      	ld.w      	r2, (r14, 0x3c)
 1b4:	6c5f      	mov      	r1, r7
 1b6:	1318      	lrw      	r0, 0x0	// 394 <ieee80211_status+0x394>
 1b8:	e0000000 	bsr      	0x0	// 0 <ieee80211_deliver_dump>
 1bc:	6d83      	mov      	r6, r0
 1be:	e9400076 	bhz      	r0, 0x2aa	// 2aa <ieee80211_status+0x2aa>
 1c2:	3600      	movi      	r6, 0
 1c4:	ea08000c 	movi      	r8, 12
 1c8:	ea89007c 	lrw      	r9, 0x0	// 3b8 <ieee80211_status+0x3b8>
 1cc:	ea8a007c 	lrw      	r10, 0x0	// 3bc <ieee80211_status+0x3bc>
 1d0:	d8640048 	ld.b      	r3, (r4, 0x48)
 1d4:	64d9      	cmplt      	r6, r3
 1d6:	0899      	bt      	0x308	// 308 <ieee80211_status+0x308>
 1d8:	3600      	movi      	r6, 0
 1da:	137a      	lrw      	r3, 0x0	// 3c0 <ieee80211_status+0x3c0>
 1dc:	6ddb      	mov      	r7, r6
 1de:	b873      	st.w      	r3, (r14, 0x4c)
 1e0:	d8042022 	ld.w      	r0, (r4, 0x88)
 1e4:	e900ff44 	bez      	r0, 0x6c	// 6c <ieee80211_status+0x6c>
 1e8:	d8641026 	ld.h      	r3, (r4, 0x4c)
 1ec:	64dd      	cmplt      	r7, r3
 1ee:	0f3f      	bf      	0x6c	// 6c <ieee80211_status+0x6c>
 1f0:	6018      	addu      	r0, r6
 1f2:	d8a00025 	ld.b      	r5, (r0, 0x25)
 1f6:	e4652002 	andi      	r3, r5, 2
 1fa:	e9030055 	bez      	r3, 0x2a4	// 2a4 <ieee80211_status+0x2a4>
 1fe:	807e      	ld.b      	r3, (r0, 0x1e)
 200:	b86f      	st.w      	r3, (r14, 0x3c)
 202:	807f      	ld.b      	r3, (r0, 0x1f)
 204:	b870      	st.w      	r3, (r14, 0x40)
 206:	c4655463 	zext      	r3, r5, 3, 3
 20a:	b871      	st.w      	r3, (r14, 0x44)
 20c:	8866      	ld.h      	r3, (r0, 0xc)
 20e:	b872      	st.w      	r3, (r14, 0x48)
 210:	d860202a 	ld.w      	r3, (r0, 0xa8)
 214:	803c      	ld.b      	r1, (r0, 0x1c)
 216:	d9830004 	ld.b      	r12, (r3, 0x4)
 21a:	d863202b 	ld.w      	r3, (r3, 0xac)
 21e:	805d      	ld.b      	r2, (r0, 0x1d)
 220:	d9a30000 	ld.b      	r13, (r3, 0x0)
 224:	d9000020 	ld.b      	r8, (r0, 0x20)
 228:	d9200021 	ld.b      	r9, (r0, 0x21)
 22c:	200f      	addi      	r0, 16
 22e:	b837      	st.w      	r1, (r14, 0x5c)
 230:	b856      	st.w      	r2, (r14, 0x58)
 232:	dd8e2015 	st.w      	r12, (r14, 0x54)
 236:	ddae2014 	st.w      	r13, (r14, 0x50)
 23a:	e0000000 	bsr      	0x0	// 0 <skb_list_count>
 23e:	d8642022 	ld.w      	r3, (r4, 0x88)
 242:	60d8      	addu      	r3, r6
 244:	c425542a 	zext      	r10, r5, 1, 1
 248:	d8232028 	ld.w      	r1, (r3, 0xa0)
 24c:	d8432029 	ld.w      	r2, (r3, 0xa4)
 250:	b82d      	st.w      	r1, (r14, 0x34)
 252:	b84e      	st.w      	r2, (r14, 0x38)
 254:	d8432026 	ld.w      	r2, (r3, 0x98)
 258:	d8632027 	ld.w      	r3, (r3, 0x9c)
 25c:	b84b      	st.w      	r2, (r14, 0x2c)
 25e:	b86c      	st.w      	r3, (r14, 0x30)
 260:	9872      	ld.w      	r3, (r14, 0x48)
 262:	b866      	st.w      	r3, (r14, 0x18)
 264:	9871      	ld.w      	r3, (r14, 0x44)
 266:	c445544b 	zext      	r11, r5, 2, 2
 26a:	b865      	st.w      	r3, (r14, 0x14)
 26c:	9870      	ld.w      	r3, (r14, 0x40)
 26e:	e4a52001 	andi      	r5, r5, 1
 272:	b80a      	st.w      	r0, (r14, 0x28)
 274:	d9ae2014 	ld.w      	r13, (r14, 0x50)
 278:	d98e2015 	ld.w      	r12, (r14, 0x54)
 27c:	b860      	st.w      	r3, (r14, 0x0)
 27e:	dd6e2004 	st.w      	r11, (r14, 0x10)
 282:	dd4e2003 	st.w      	r10, (r14, 0xc)
 286:	dd2e2002 	st.w      	r9, (r14, 0x8)
 28a:	dd0e2001 	st.w      	r8, (r14, 0x4)
 28e:	986f      	ld.w      	r3, (r14, 0x3c)
 290:	9856      	ld.w      	r2, (r14, 0x58)
 292:	9837      	ld.w      	r1, (r14, 0x5c)
 294:	9813      	ld.w      	r0, (r14, 0x4c)
 296:	ddae2009 	st.w      	r13, (r14, 0x24)
 29a:	dd8e2008 	st.w      	r12, (r14, 0x20)
 29e:	b8a7      	st.w      	r5, (r14, 0x1c)
 2a0:	e0000000 	bsr      	0x0	// 0 <hgprintf>
 2a4:	2700      	addi      	r7, 1
 2a6:	26cb      	addi      	r6, 204
 2a8:	079c      	br      	0x1e0	// 1e0 <ieee80211_status+0x1e0>
 2aa:	310f      	movi      	r1, 15
 2ac:	c4208041 	divs      	r1, r0, r1
 2b0:	4145      	lsli      	r2, r1, 5
 2b2:	1205      	lrw      	r0, 0x0	// 3c4 <ieee80211_status+0x3c4>
 2b4:	e0000000 	bsr      	0x0	// 0 <hgprintf>
 2b8:	6d5f      	mov      	r5, r7
 2ba:	ea880044 	lrw      	r8, 0x0	// 3c8 <ieee80211_status+0x3c8>
 2be:	850e      	ld.b      	r0, (r5, 0xe)
 2c0:	d985000d 	ld.b      	r12, (r5, 0xd)
 2c4:	4008      	lsli      	r0, r0, 8
 2c6:	6c30      	or      	r0, r12
 2c8:	8562      	ld.b      	r3, (r5, 0x2)
 2ca:	8541      	ld.b      	r2, (r5, 0x1)
 2cc:	8520      	ld.b      	r1, (r5, 0x0)
 2ce:	b80a      	st.w      	r0, (r14, 0x28)
 2d0:	850c      	ld.b      	r0, (r5, 0xc)
 2d2:	b809      	st.w      	r0, (r14, 0x24)
 2d4:	850b      	ld.b      	r0, (r5, 0xb)
 2d6:	b808      	st.w      	r0, (r14, 0x20)
 2d8:	850a      	ld.b      	r0, (r5, 0xa)
 2da:	b807      	st.w      	r0, (r14, 0x1c)
 2dc:	8509      	ld.b      	r0, (r5, 0x9)
 2de:	b806      	st.w      	r0, (r14, 0x18)
 2e0:	8508      	ld.b      	r0, (r5, 0x8)
 2e2:	b805      	st.w      	r0, (r14, 0x14)
 2e4:	8507      	ld.b      	r0, (r5, 0x7)
 2e6:	b804      	st.w      	r0, (r14, 0x10)
 2e8:	8506      	ld.b      	r0, (r5, 0x6)
 2ea:	b803      	st.w      	r0, (r14, 0xc)
 2ec:	8505      	ld.b      	r0, (r5, 0x5)
 2ee:	b802      	st.w      	r0, (r14, 0x8)
 2f0:	8504      	ld.b      	r0, (r5, 0x4)
 2f2:	b801      	st.w      	r0, (r14, 0x4)
 2f4:	8503      	ld.b      	r0, (r5, 0x3)
 2f6:	b800      	st.w      	r0, (r14, 0x0)
 2f8:	250e      	addi      	r5, 15
 2fa:	6c23      	mov      	r0, r8
 2fc:	e0000000 	bsr      	0x0	// 0 <hgprintf>
 300:	5d7d      	subu      	r3, r5, r7
 302:	658d      	cmplt      	r3, r6
 304:	0bdd      	bt      	0x2be	// 2be <ieee80211_status+0x2be>
 306:	075e      	br      	0x1c2	// 1c2 <ieee80211_status+0x1c2>
 308:	e4a60019 	addi      	r5, r6, 26
 30c:	d0a40880 	ldr.w      	r0, (r4, r5 << 2)
 310:	e9000017 	bez      	r0, 0x33e	// 33e <ieee80211_status+0x33e>
 314:	984f      	ld.w      	r2, (r14, 0x3c)
 316:	6c5f      	mov      	r1, r7
 318:	e0000000 	bsr      	0x0	// 0 <ieee80211_stabr_dump>
 31c:	6ec3      	mov      	r11, r0
 31e:	e9000010 	bez      	r0, 0x33e	// 33e <ieee80211_status+0x33e>
 322:	d0a40881 	ldr.w      	r1, (r4, r5 << 2)
 326:	c5008042 	divs      	r2, r0, r8
 32a:	331c      	movi      	r3, 28
 32c:	7cc8      	mult      	r3, r2
 32e:	8124      	ld.b      	r1, (r1, 0x4)
 330:	6c27      	mov      	r0, r9
 332:	e0000000 	bsr      	0x0	// 0 <hgprintf>
 336:	6d5f      	mov      	r5, r7
 338:	3600      	movi      	r6, 0
 33a:	66d9      	cmplt      	r6, r11
 33c:	0803      	bt      	0x342	// 342 <ieee80211_status+0x342>
 33e:	2600      	addi      	r6, 1
 340:	0748      	br      	0x1d0	// 1d0 <ieee80211_status+0x1d0>
 342:	5d16      	addi      	r0, r5, 6
 344:	e0000000 	bsr      	0x0	// 0 <ieee80211_status>
 348:	d985000b 	ld.b      	r12, (r5, 0xb)
 34c:	d9a5000a 	ld.b      	r13, (r5, 0xa)
 350:	c50c482c 	lsli      	r12, r12, 8
 354:	6f34      	or      	r12, r13
 356:	8562      	ld.b      	r3, (r5, 0x2)
 358:	8541      	ld.b      	r2, (r5, 0x1)
 35a:	8520      	ld.b      	r1, (r5, 0x0)
 35c:	dd8e2007 	st.w      	r12, (r14, 0x1c)
 360:	e58020ff 	andi      	r12, r0, 255
 364:	dd8e2006 	st.w      	r12, (r14, 0x18)
 368:	c50055ec 	zext      	r12, r0, 15, 8
 36c:	dd8e2005 	st.w      	r12, (r14, 0x14)
 370:	c60056ec 	zext      	r12, r0, 23, 16
 374:	4818      	lsri      	r0, r0, 24
 376:	dd8e2004 	st.w      	r12, (r14, 0x10)
 37a:	b803      	st.w      	r0, (r14, 0xc)
 37c:	8505      	ld.b      	r0, (r5, 0x5)
 37e:	b802      	st.w      	r0, (r14, 0x8)
 380:	8504      	ld.b      	r0, (r5, 0x4)
 382:	b801      	st.w      	r0, (r14, 0x4)
 384:	8503      	ld.b      	r0, (r5, 0x3)
 386:	b800      	st.w      	r0, (r14, 0x0)
 388:	6c2b      	mov      	r0, r10
 38a:	e0000000 	bsr      	0x0	// 0 <hgprintf>
 38e:	260b      	addi      	r6, 12
 390:	250b      	addi      	r5, 12
 392:	07d4      	br      	0x33a	// 33a <ieee80211_status+0x33a>
	...

Disassembly of section .text.ieee80211_ie_parse_wpa_rsn:

00000000 <ieee80211_ie_parse_wpa_rsn>:
   0:	14d8      	push      	r4-r11, r15
   2:	1424      	subi      	r14, r14, 16
   4:	3903      	cmphsi      	r1, 4
   6:	6d43      	mov      	r5, r0
   8:	6d0b      	mov      	r4, r2
   a:	0cb2      	bf      	0x16e	// 16e <ieee80211_ie_parse_wpa_rsn+0x16e>
   c:	e90200b1 	bez      	r2, 0x16e	// 16e <ieee80211_ie_parse_wpa_rsn+0x16e>
  10:	8061      	ld.b      	r3, (r0, 0x1)
  12:	4368      	lsli      	r3, r3, 8
  14:	8040      	ld.b      	r2, (r0, 0x0)
  16:	6cc8      	or      	r3, r2
  18:	74cf      	sexth      	r3, r3
  1a:	3b41      	cmpnei      	r3, 1
  1c:	08a9      	bt      	0x16e	// 16e <ieee80211_ie_parse_wpa_rsn+0x16e>
  1e:	2903      	subi      	r1, 4
  20:	3903      	cmphsi      	r1, 4
  22:	2001      	addi      	r0, 2
  24:	0ca5      	bf      	0x16e	// 16e <ieee80211_ie_parse_wpa_rsn+0x16e>
  26:	3310      	movi      	r3, 16
  28:	b461      	st.w      	r3, (r4, 0x4)
  2a:	e0000000 	bsr      	0x0	// 0 <ieee80211_ie_parse_wpa_rsn>
  2e:	1272      	lrw      	r3, 0xfac0a	// 174 <ieee80211_ie_parse_wpa_rsn+0x174>
  30:	64c2      	cmpne      	r0, r3
  32:	0c4a      	bf      	0xc6	// c6 <ieee80211_ie_parse_wpa_rsn+0xc6>
  34:	640c      	cmphs      	r3, r0
  36:	0c3b      	bf      	0xac	// ac <ieee80211_ie_parse_wpa_rsn+0xac>
  38:	ea03fac0 	movi      	r3, 64192
  3c:	c4834903 	rotli      	r3, r3, 4
  40:	64c2      	cmpne      	r0, r3
  42:	0c3d      	bf      	0xbc	// bc <ieee80211_ie_parse_wpa_rsn+0xbc>
  44:	126d      	lrw      	r3, 0xfac02	// 178 <ieee80211_ie_parse_wpa_rsn+0x178>
  46:	64c2      	cmpne      	r0, r3
  48:	0c3d      	bf      	0xc2	// c2 <ieee80211_ie_parse_wpa_rsn+0xc2>
  4a:	8567      	ld.b      	r3, (r5, 0x7)
  4c:	8546      	ld.b      	r2, (r5, 0x6)
  4e:	4368      	lsli      	r3, r3, 8
  50:	2507      	addi      	r5, 8
  52:	3600      	movi      	r6, 0
  54:	ea080080 	movi      	r8, 128
  58:	6cc8      	or      	r3, r2
  5a:	b4c2      	st.w      	r6, (r4, 0x8)
  5c:	6dd7      	mov      	r7, r5
  5e:	ea890046 	lrw      	r9, 0xfac0a	// 174 <ieee80211_ie_parse_wpa_rsn+0x174>
  62:	c4484828 	lsli      	r8, r8, 2
  66:	ea0a0001 	movi      	r10, 1
  6a:	ea8b0045 	lrw      	r11, 0x50f202	// 17c <ieee80211_ie_parse_wpa_rsn+0x17c>
  6e:	ea02a1e4 	movi      	r2, 41444
  72:	c4e24902 	rotli      	r2, r2, 7
  76:	1221      	lrw      	r1, 0xfac02	// 178 <ieee80211_ie_parse_wpa_rsn+0x178>
  78:	ea8c0042 	lrw      	r12, 0xfac04	// 180 <ieee80211_ie_parse_wpa_rsn+0x180>
  7c:	64da      	cmpne      	r6, r3
  7e:	0827      	bt      	0xcc	// cc <ieee80211_ie_parse_wpa_rsn+0xcc>
  80:	46c2      	lsli      	r6, r6, 2
  82:	6158      	addu      	r5, r6
  84:	3600      	movi      	r6, 0
  86:	85e1      	ld.b      	r7, (r5, 0x1)
  88:	8560      	ld.b      	r3, (r5, 0x0)
  8a:	47e8      	lsli      	r7, r7, 8
  8c:	6dcc      	or      	r7, r3
  8e:	2501      	addi      	r5, 2
  90:	b4c3      	st.w      	r6, (r4, 0xc)
  92:	ea88003d 	lrw      	r8, 0xfac08	// 184 <ieee80211_ie_parse_wpa_rsn+0x184>
  96:	ea89003d 	lrw      	r9, 0xfac12	// 188 <ieee80211_ie_parse_wpa_rsn+0x188>
  9a:	ea8a0039 	lrw      	r10, 0x50f202	// 17c <ieee80211_ie_parse_wpa_rsn+0x17c>
  9e:	ea8b0037 	lrw      	r11, 0xfac02	// 178 <ieee80211_ie_parse_wpa_rsn+0x178>
  a2:	65da      	cmpne      	r6, r7
  a4:	0849      	bt      	0x136	// 136 <ieee80211_ie_parse_wpa_rsn+0x136>
  a6:	3000      	movi      	r0, 0
  a8:	1404      	addi      	r14, r14, 16
  aa:	1498      	pop      	r4-r11, r15
  ac:	ea03a1e4 	movi      	r3, 41444
  b0:	c4e34903 	rotli      	r3, r3, 7
  b4:	64c2      	cmpne      	r0, r3
  b6:	0c03      	bf      	0xbc	// bc <ieee80211_ie_parse_wpa_rsn+0xbc>
  b8:	1171      	lrw      	r3, 0x50f202	// 17c <ieee80211_ie_parse_wpa_rsn+0x17c>
  ba:	07c6      	br      	0x46	// 46 <ieee80211_ie_parse_wpa_rsn+0x46>
  bc:	3301      	movi      	r3, 1
  be:	b461      	st.w      	r3, (r4, 0x4)
  c0:	07c5      	br      	0x4a	// 4a <ieee80211_ie_parse_wpa_rsn+0x4a>
  c2:	3308      	movi      	r3, 8
  c4:	07fd      	br      	0xbe	// be <ieee80211_ie_parse_wpa_rsn+0xbe>
  c6:	3380      	movi      	r3, 128
  c8:	4362      	lsli      	r3, r3, 2
  ca:	07fa      	br      	0xbe	// be <ieee80211_ie_parse_wpa_rsn+0xbe>
  cc:	6c1f      	mov      	r0, r7
  ce:	dd8e2003 	st.w      	r12, (r14, 0xc)
  d2:	b822      	st.w      	r1, (r14, 0x8)
  d4:	b841      	st.w      	r2, (r14, 0x4)
  d6:	b860      	st.w      	r3, (r14, 0x0)
  d8:	e0000000 	bsr      	0x0	// 0 <ieee80211_ie_parse_wpa_rsn>
  dc:	6642      	cmpne      	r0, r9
  de:	9860      	ld.w      	r3, (r14, 0x0)
  e0:	9841      	ld.w      	r2, (r14, 0x4)
  e2:	9822      	ld.w      	r1, (r14, 0x8)
  e4:	d98e2003 	ld.w      	r12, (r14, 0xc)
  e8:	0c24      	bf      	0x130	// 130 <ieee80211_ie_parse_wpa_rsn+0x130>
  ea:	6424      	cmphs      	r9, r0
  ec:	0c11      	bf      	0x10e	// 10e <ieee80211_ie_parse_wpa_rsn+0x10e>
  ee:	6442      	cmpne      	r0, r1
  f0:	0c17      	bf      	0x11e	// 11e <ieee80211_ie_parse_wpa_rsn+0x11e>
  f2:	6702      	cmpne      	r0, r12
  f4:	0c1c      	bf      	0x12c	// 12c <ieee80211_ie_parse_wpa_rsn+0x12c>
  f6:	ea0dfac0 	movi      	r13, 64192
  fa:	c48d490d 	rotli      	r13, r13, 4
  fe:	6742      	cmpne      	r0, r13
 100:	0803      	bt      	0x106	// 106 <ieee80211_ie_parse_wpa_rsn+0x106>
 102:	dd442002 	st.w      	r10, (r4, 0x8)
 106:	2600      	addi      	r6, 1
 108:	2703      	addi      	r7, 4
 10a:	7599      	zexth      	r6, r6
 10c:	07b8      	br      	0x7c	// 7c <ieee80211_ie_parse_wpa_rsn+0x7c>
 10e:	66c2      	cmpne      	r0, r11
 110:	0c07      	bf      	0x11e	// 11e <ieee80211_ie_parse_wpa_rsn+0x11e>
 112:	ea8d001f 	lrw      	r13, 0x50f204	// 18c <ieee80211_ie_parse_wpa_rsn+0x18c>
 116:	6742      	cmpne      	r0, r13
 118:	0c0a      	bf      	0x12c	// 12c <ieee80211_ie_parse_wpa_rsn+0x12c>
 11a:	6482      	cmpne      	r0, r2
 11c:	07f2      	br      	0x100	// 100 <ieee80211_ie_parse_wpa_rsn+0x100>
 11e:	9402      	ld.w      	r0, (r4, 0x8)
 120:	3850      	cmpnei      	r0, 16
 122:	0ff2      	bf      	0x106	// 106 <ieee80211_ie_parse_wpa_rsn+0x106>
 124:	ec000008 	ori      	r0, r0, 8
 128:	b402      	st.w      	r0, (r4, 0x8)
 12a:	07ee      	br      	0x106	// 106 <ieee80211_ie_parse_wpa_rsn+0x106>
 12c:	3010      	movi      	r0, 16
 12e:	07fd      	br      	0x128	// 128 <ieee80211_ie_parse_wpa_rsn+0x128>
 130:	dd042002 	st.w      	r8, (r4, 0x8)
 134:	07e9      	br      	0x106	// 106 <ieee80211_ie_parse_wpa_rsn+0x106>
 136:	6c17      	mov      	r0, r5
 138:	e0000000 	bsr      	0x0	// 0 <ieee80211_ie_parse_wpa_rsn>
 13c:	6602      	cmpne      	r0, r8
 13e:	0c11      	bf      	0x160	// 160 <ieee80211_ie_parse_wpa_rsn+0x160>
 140:	6420      	cmphs      	r8, r0
 142:	0c0b      	bf      	0x158	// 158 <ieee80211_ie_parse_wpa_rsn+0x158>
 144:	66c2      	cmpne      	r0, r11
 146:	0805      	bt      	0x150	// 150 <ieee80211_ie_parse_wpa_rsn+0x150>
 148:	9463      	ld.w      	r3, (r4, 0xc)
 14a:	ec630002 	ori      	r3, r3, 2
 14e:	b463      	st.w      	r3, (r4, 0xc)
 150:	2600      	addi      	r6, 1
 152:	2503      	addi      	r5, 4
 154:	7599      	zexth      	r6, r6
 156:	07a6      	br      	0xa2	// a2 <ieee80211_ie_parse_wpa_rsn+0xa2>
 158:	6642      	cmpne      	r0, r9
 15a:	0c07      	bf      	0x168	// 168 <ieee80211_ie_parse_wpa_rsn+0x168>
 15c:	6682      	cmpne      	r0, r10
 15e:	07f4      	br      	0x146	// 146 <ieee80211_ie_parse_wpa_rsn+0x146>
 160:	9463      	ld.w      	r3, (r4, 0xc)
 162:	ec630400 	ori      	r3, r3, 1024
 166:	07f4      	br      	0x14e	// 14e <ieee80211_ie_parse_wpa_rsn+0x14e>
 168:	9463      	ld.w      	r3, (r4, 0xc)
 16a:	3bb6      	bseti      	r3, 22
 16c:	07f1      	br      	0x14e	// 14e <ieee80211_ie_parse_wpa_rsn+0x14e>
 16e:	3000      	movi      	r0, 0
 170:	2815      	subi      	r0, 22
 172:	079b      	br      	0xa8	// a8 <ieee80211_ie_parse_wpa_rsn+0xa8>
 174:	000fac0a 	.long	0x000fac0a
 178:	000fac02 	.long	0x000fac02
 17c:	0050f202 	.long	0x0050f202
 180:	000fac04 	.long	0x000fac04
 184:	000fac08 	.long	0x000fac08
 188:	ac12      	.short	0xac12
 18a:	000f      	.short	0x000f
 18c:	0050f204 	.long	0x0050f204

Disassembly of section .text.ieee80211_ie_parse_s1g_operation:

00000000 <ieee80211_ie_parse_s1g_operation>:
   0:	14d1      	push      	r4, r15
   2:	8023      	ld.b      	r1, (r0, 0x3)
   4:	8001      	ld.b      	r0, (r0, 0x1)
   6:	6d0b      	mov      	r4, r2
   8:	e0000000 	bsr      	0x0	// 0 <ieee80211_s1g_operation_get_freq>
   c:	e9000005 	bez      	r0, 0x16	// 16 <ieee80211_ie_parse_s1g_operation+0x16>
  10:	b400      	st.w      	r0, (r4, 0x0)
  12:	3000      	movi      	r0, 0
  14:	1491      	pop      	r4, r15
  16:	3000      	movi      	r0, 0
  18:	2800      	subi      	r0, 1
  1a:	07fd      	br      	0x14	// 14 <ieee80211_ie_parse_s1g_operation+0x14>

Disassembly of section .text.ieee80211_sband_ioctl:

00000000 <ieee80211_sband_ioctl>:
   0:	14d0      	push      	r15
   2:	d980202b 	ld.w      	r12, (r0, 0xac)
   6:	d98c2019 	ld.w      	r12, (r12, 0x64)
   a:	e90c0004 	bez      	r12, 0x12	// 12 <ieee80211_sband_ioctl+0x12>
   e:	7bf1      	jsr      	r12
  10:	1490      	pop      	r15
  12:	ea00020b 	movi      	r0, 523
  16:	6c02      	nor      	r0, r0
  18:	07fc      	br      	0x10	// 10 <ieee80211_sband_ioctl+0x10>

Disassembly of section .text.ieee80211_lmac_notify:

00000000 <ieee80211_lmac_notify>:
   0:	14d4      	push      	r4-r7, r15
   2:	1421      	subi      	r14, r14, 4
   4:	3954      	cmpnei      	r1, 20
   6:	6d87      	mov      	r6, r1
   8:	6d0b      	mov      	r4, r2
   a:	0c6d      	bf      	0xe4	// e4 <ieee80211_lmac_notify+0xe4>
   c:	395a      	cmpnei      	r1, 26
   e:	0c67      	bf      	0xdc	// dc <ieee80211_lmac_notify+0xdc>
  10:	3942      	cmpnei      	r1, 2
  12:	0892      	bt      	0x136	// 136 <ieee80211_lmac_notify+0x136>
  14:	8261      	ld.b      	r3, (r2, 0x1)
  16:	8220      	ld.b      	r1, (r2, 0x0)
  18:	4368      	lsli      	r3, r3, 8
  1a:	6cc4      	or      	r3, r1
  1c:	8222      	ld.b      	r1, (r2, 0x2)
  1e:	4130      	lsli      	r1, r1, 16
  20:	6cc4      	or      	r3, r1
  22:	8223      	ld.b      	r1, (r2, 0x3)
  24:	4138      	lsli      	r1, r1, 24
  26:	6c4c      	or      	r1, r3
  28:	ea03927c 	movi      	r3, 37500
  2c:	c4834903 	rotli      	r3, r3, 4
  30:	644c      	cmphs      	r3, r1
  32:	0840      	bt      	0xb2	// b2 <ieee80211_lmac_notify+0xb2>
  34:	350a      	movi      	r5, 10
  36:	c4a18025 	divu      	r5, r1, r5
  3a:	1275      	lrw      	r3, 0x0	// 18c <ieee80211_lmac_notify+0x18c>
  3c:	d8230048 	ld.b      	r1, (r3, 0x48)
  40:	3300      	movi      	r3, 0
  42:	748c      	zextb      	r2, r3
  44:	6448      	cmphs      	r2, r1
  46:	0833      	bt      	0xac	// ac <ieee80211_lmac_notify+0xac>
  48:	4342      	lsli      	r2, r3, 2
  4a:	ea8c0051 	lrw      	r12, 0x0	// 18c <ieee80211_lmac_notify+0x18c>
  4e:	60b0      	addu      	r2, r12
  50:	929a      	ld.w      	r4, (r2, 0x68)
  52:	e9040043 	bez      	r4, 0xd8	// d8 <ieee80211_lmac_notify+0xd8>
  56:	d8442029 	ld.w      	r2, (r4, 0xa4)
  5a:	6482      	cmpne      	r0, r2
  5c:	083e      	bt      	0xd8	// d8 <ieee80211_lmac_notify+0xd8>
  5e:	d844202b 	ld.w      	r2, (r4, 0xac)
  62:	8240      	ld.b      	r2, (r2, 0x0)
  64:	658a      	cmpne      	r2, r6
  66:	0839      	bt      	0xd8	// d8 <ieee80211_lmac_notify+0xd8>
  68:	8462      	ld.b      	r3, (r4, 0x2)
  6a:	3201      	movi      	r2, 1
  6c:	c4625c00 	ins      	r3, r2, 0, 0
  70:	a462      	st.b      	r3, (r4, 0x2)
  72:	8464      	ld.b      	r3, (r4, 0x4)
  74:	b860      	st.w      	r3, (r14, 0x0)
  76:	ea020245 	movi      	r2, 581
  7a:	6cd7      	mov      	r3, r5
  7c:	1225      	lrw      	r1, 0x0	// 190 <ieee80211_lmac_notify+0x190>
  7e:	1206      	lrw      	r0, 0x0	// 194 <ieee80211_lmac_notify+0x194>
  80:	e0000000 	bsr      	0x0	// 0 <hgprintf>
  84:	6c9b      	mov      	r2, r6
  86:	6c57      	mov      	r1, r5
  88:	6c13      	mov      	r0, r4
  8a:	e0000000 	bsr      	0x0	// 0 <ieee80211_lmac_notify>
  8e:	6cc3      	mov      	r3, r0
  90:	8453      	ld.b      	r2, (r4, 0x13)
  92:	3124      	movi      	r1, 36
  94:	6c13      	mov      	r0, r4
  96:	e0000000 	bsr      	0x0	// 0 <ieee80211_iface_event>
  9a:	6c57      	mov      	r1, r5
  9c:	6c9b      	mov      	r2, r6
  9e:	6c13      	mov      	r0, r4
  a0:	e0000000 	bsr      	0x0	// 0 <ieee80211_lmac_notify>
  a4:	6c43      	mov      	r1, r0
  a6:	6c13      	mov      	r0, r4
  a8:	e0000000 	bsr      	0x0	// 0 <ieee80211_lmac_notify>
  ac:	3000      	movi      	r0, 0
  ae:	1401      	addi      	r14, r14, 4
  b0:	1494      	pop      	r4-r7, r15
  b2:	eb01c350 	cmphsi      	r1, 50001
  b6:	0c06      	bf      	0xc2	// c2 <ieee80211_lmac_notify+0xc2>
  b8:	350a      	movi      	r5, 10
  ba:	c4a18025 	divu      	r5, r1, r5
  be:	3601      	movi      	r6, 1
  c0:	07bd      	br      	0x3a	// 3a <ieee80211_lmac_notify+0x3a>
  c2:	eb014e20 	cmphsi      	r1, 20001
  c6:	0c06      	bf      	0xd2	// d2 <ieee80211_lmac_notify+0xd2>
  c8:	350a      	movi      	r5, 10
  ca:	c4a18025 	divu      	r5, r1, r5
  ce:	3600      	movi      	r6, 0
  d0:	07b5      	br      	0x3a	// 3a <ieee80211_lmac_notify+0x3a>
  d2:	6d47      	mov      	r5, r1
  d4:	3603      	movi      	r6, 3
  d6:	07b2      	br      	0x3a	// 3a <ieee80211_lmac_notify+0x3a>
  d8:	2300      	addi      	r3, 1
  da:	07b4      	br      	0x42	// 42 <ieee80211_lmac_notify+0x42>
  dc:	110f      	lrw      	r0, 0x0	// 198 <ieee80211_lmac_notify+0x198>
  de:	e0000000 	bsr      	0x0	// 0 <hgprintf>
  e2:	07e5      	br      	0xac	// ac <ieee80211_lmac_notify+0xac>
  e4:	110e      	lrw      	r0, 0x0	// 19c <ieee80211_lmac_notify+0x19c>
  e6:	e0000000 	bsr      	0x0	// 0 <hgprintf>
  ea:	84a0      	ld.b      	r5, (r4, 0x0)
  ec:	3400      	movi      	r4, 0
  ee:	11c8      	lrw      	r6, 0x0	// 18c <ieee80211_lmac_notify+0x18c>
  f0:	6dd3      	mov      	r7, r4
  f2:	d8660048 	ld.b      	r3, (r6, 0x48)
  f6:	64d1      	cmplt      	r4, r3
  f8:	0fda      	bf      	0xac	// ac <ieee80211_lmac_notify+0xac>
  fa:	1145      	lrw      	r2, 0x0	// 18c <ieee80211_lmac_notify+0x18c>
  fc:	4462      	lsli      	r3, r4, 2
  fe:	60c8      	addu      	r3, r2
 100:	935a      	ld.w      	r2, (r3, 0x68)
 102:	e9020018 	bez      	r2, 0x132	// 132 <ieee80211_lmac_notify+0x132>
 106:	8265      	ld.b      	r3, (r2, 0x5)
 108:	e4232005 	andi      	r1, r3, 5
 10c:	3945      	cmpnei      	r1, 5
 10e:	0812      	bt      	0x132	// 132 <ieee80211_lmac_notify+0x132>
 110:	3d56      	cmpnei      	r5, 22
 112:	dca20026 	st.b      	r5, (r2, 0x26)
 116:	0c08      	bf      	0x126	// 126 <ieee80211_lmac_notify+0x126>
 118:	c4675c02 	ins      	r3, r7, 2, 2
 11c:	a265      	st.b      	r3, (r2, 0x5)
 11e:	3100      	movi      	r1, 0
 120:	3001      	movi      	r0, 1
 122:	e0000000 	bsr      	0x0	// 0 <system_resume>
 126:	6c57      	mov      	r1, r5
 128:	c6005020 	bmaski      	r0, 17
 12c:	2012      	addi      	r0, 19
 12e:	e0000000 	bsr      	0x0	// 0 <sys_event_new>
 132:	2400      	addi      	r4, 1
 134:	07df      	br      	0xf2	// f2 <ieee80211_lmac_notify+0xf2>
 136:	395b      	cmpnei      	r1, 27
 138:	0c27      	bf      	0x186	// 186 <ieee80211_lmac_notify+0x186>
 13a:	391b      	cmphsi      	r1, 28
 13c:	081c      	bt      	0x174	// 174 <ieee80211_lmac_notify+0x174>
 13e:	3947      	cmpnei      	r1, 7
 140:	0bb6      	bt      	0xac	// ac <ieee80211_lmac_notify+0xac>
 142:	361d      	movi      	r6, 29
 144:	3500      	movi      	r5, 0
 146:	10f2      	lrw      	r7, 0x0	// 18c <ieee80211_lmac_notify+0x18c>
 148:	d8670048 	ld.b      	r3, (r7, 0x48)
 14c:	64d5      	cmplt      	r5, r3
 14e:	0faf      	bf      	0xac	// ac <ieee80211_lmac_notify+0xac>
 150:	4562      	lsli      	r3, r5, 2
 152:	104f      	lrw      	r2, 0x0	// 18c <ieee80211_lmac_notify+0x18c>
 154:	60c8      	addu      	r3, r2
 156:	931a      	ld.w      	r0, (r3, 0x68)
 158:	e900000c 	bez      	r0, 0x170	// 170 <ieee80211_lmac_notify+0x170>
 15c:	8065      	ld.b      	r3, (r0, 0x5)
 15e:	e4632001 	andi      	r3, r3, 1
 162:	e9030007 	bez      	r3, 0x170	// 170 <ieee80211_lmac_notify+0x170>
 166:	3300      	movi      	r3, 0
 168:	6c93      	mov      	r2, r4
 16a:	6c5b      	mov      	r1, r6
 16c:	e0000000 	bsr      	0x0	// 0 <ieee80211_iface_event>
 170:	2500      	addi      	r5, 1
 172:	07eb      	br      	0x148	// 148 <ieee80211_lmac_notify+0x148>
 174:	395e      	cmpnei      	r1, 30
 176:	0c06      	bf      	0x182	// 182 <ieee80211_lmac_notify+0x182>
 178:	eb410022 	cmpnei      	r1, 34
 17c:	0b98      	bt      	0xac	// ac <ieee80211_lmac_notify+0xac>
 17e:	3619      	movi      	r6, 25
 180:	07e2      	br      	0x144	// 144 <ieee80211_lmac_notify+0x144>
 182:	361f      	movi      	r6, 31
 184:	07e0      	br      	0x144	// 144 <ieee80211_lmac_notify+0x144>
 186:	361e      	movi      	r6, 30
 188:	07de      	br      	0x144	// 144 <ieee80211_lmac_notify+0x144>
	...

Disassembly of section .text.ieee80211_check_tim:

00000000 <ieee80211_check_tim>:
   0:	e900001e 	bez      	r0, 0x3c	// 3c <ieee80211_check_tim+0x3c>
   4:	3903      	cmphsi      	r1, 4
   6:	0c1c      	bf      	0x3e	// 3e <ieee80211_check_tim+0x3e>
   8:	d9800002 	ld.b      	r12, (r0, 0x2)
   c:	c4625543 	zext      	r3, r2, 10, 3
  10:	e58c20fe 	andi      	r12, r12, 254
  14:	670c      	cmphs      	r3, r12
  16:	0c14      	bf      	0x3e	// 3e <ieee80211_check_tim+0x3e>
  18:	2903      	subi      	r1, 4
  1a:	6070      	addu      	r1, r12
  1c:	7444      	zextb      	r1, r1
  1e:	64c4      	cmphs      	r1, r3
  20:	0c0f      	bf      	0x3e	// 3e <ieee80211_check_tim+0x3e>
  22:	60f2      	subu      	r3, r12
  24:	74cc      	zextb      	r3, r3
  26:	600c      	addu      	r0, r3
  28:	e4222007 	andi      	r1, r2, 7
  2c:	3201      	movi      	r2, 1
  2e:	8063      	ld.b      	r3, (r0, 0x3)
  30:	7084      	lsl      	r2, r1
  32:	688c      	and      	r2, r3
  34:	3a40      	cmpnei      	r2, 0
  36:	c4000500 	mvc      	r0
  3a:	7400      	zextb      	r0, r0
  3c:	783c      	jmp      	r15
  3e:	3000      	movi      	r0, 0
  40:	07fe      	br      	0x3c	// 3c <ieee80211_check_tim+0x3c>

Disassembly of section .text._ieee80211_is_robust_mgmt_frame:

00000000 <_ieee80211_is_robust_mgmt_frame>:
   0:	8860      	ld.h      	r3, (r0, 0x0)
   2:	e44320fc 	andi      	r2, r3, 252
   6:	eb4200a0 	cmpnei      	r2, 160
   a:	0c18      	bf      	0x3a	// 3a <_ieee80211_is_robust_mgmt_frame+0x3a>
   c:	eb4200c0 	cmpnei      	r2, 192
  10:	0c15      	bf      	0x3a	// 3a <_ieee80211_is_robust_mgmt_frame+0x3a>
  12:	eb4200d0 	cmpnei      	r2, 208
  16:	0810      	bt      	0x36	// 36 <_ieee80211_is_robust_mgmt_frame+0x36>
  18:	3280      	movi      	r2, 128
  1a:	4247      	lsli      	r2, r2, 7
  1c:	68c8      	and      	r3, r2
  1e:	e923000e 	bnez      	r3, 0x3a	// 3a <_ieee80211_is_robust_mgmt_frame+0x3a>
  22:	8078      	ld.b      	r3, (r0, 0x18)
  24:	3b15      	cmphsi      	r3, 22
  26:	080c      	bt      	0x3e	// 3e <_ieee80211_is_robust_mgmt_frame+0x3e>
  28:	1008      	lrw      	r0, 0x308890	// 48 <_ieee80211_is_robust_mgmt_frame+0x48>
  2a:	700d      	lsr      	r0, r3
  2c:	6c02      	nor      	r0, r0
  2e:	e4002001 	andi      	r0, r0, 1
  32:	7400      	zextb      	r0, r0
  34:	783c      	jmp      	r15
  36:	3000      	movi      	r0, 0
  38:	07fe      	br      	0x34	// 34 <_ieee80211_is_robust_mgmt_frame+0x34>
  3a:	3001      	movi      	r0, 1
  3c:	07fc      	br      	0x34	// 34 <_ieee80211_is_robust_mgmt_frame+0x34>
  3e:	eb43007f 	cmpnei      	r3, 127
  42:	c4000500 	mvc      	r0
  46:	07f6      	br      	0x32	// 32 <_ieee80211_is_robust_mgmt_frame+0x32>
  48:	8890      	.short	0x8890
  4a:	0030      	.short	0x0030

Disassembly of section .text.ieee80211_setup_wmm_ac_param:

00000000 <ieee80211_setup_wmm_ac_param>:
   0:	14d0      	push      	r15
   2:	1422      	subi      	r14, r14, 8
   4:	d9810000 	ld.b      	r12, (r1, 0x0)
   8:	e46c200f 	andi      	r3, r12, 15
   c:	dc6e0006 	st.b      	r3, (r14, 0x6)
  10:	d9a10001 	ld.b      	r13, (r1, 0x1)
  14:	c48c5483 	zext      	r3, r12, 4, 4
  18:	dc6e0007 	st.b      	r3, (r14, 0x7)
  1c:	e44d200f 	andi      	r2, r13, 15
  20:	3301      	movi      	r3, 1
  22:	c48d484d 	lsri      	r13, r13, 4
  26:	c4434022 	lsl      	r2, r3, r2
  2a:	70f4      	lsl      	r3, r13
  2c:	2a00      	subi      	r2, 1
  2e:	2b00      	subi      	r3, 1
  30:	dc4e1001 	st.h      	r2, (r14, 0x2)
  34:	dc6e1002 	st.h      	r3, (r14, 0x4)
  38:	8163      	ld.b      	r3, (r1, 0x3)
  3a:	8142      	ld.b      	r2, (r1, 0x2)
  3c:	4368      	lsli      	r3, r3, 8
  3e:	6cc8      	or      	r3, r2
  40:	8044      	ld.b      	r2, (r0, 0x4)
  42:	2a00      	subi      	r2, 1
  44:	c4ac54cc 	zext      	r12, r12, 6, 5
  48:	4250      	lsli      	r2, r2, 16
  4a:	dc6e1000 	st.h      	r3, (r14, 0x0)
  4e:	6cb0      	or      	r2, r12
  50:	6cfb      	mov      	r3, r14
  52:	313c      	movi      	r1, 60
  54:	d8002029 	ld.w      	r0, (r0, 0xa4)
  58:	e0000000 	bsr      	0x0	// 0 <lmac_ioctl>
  5c:	1402      	addi      	r14, r14, 8
  5e:	1490      	pop      	r15

Disassembly of section .text.ieee80211_setup_wmm_param:

00000000 <ieee80211_setup_wmm_param>:
   0:	14d3      	push      	r4-r6, r15
   2:	6d83      	mov      	r6, r0
   4:	6d07      	mov      	r4, r1
   6:	e4a1000f 	addi      	r5, r1, 16
   a:	6c53      	mov      	r1, r4
   c:	6c1b      	mov      	r0, r6
   e:	2403      	addi      	r4, 4
  10:	e0000000 	bsr      	0x0	// 0 <ieee80211_setup_wmm_param>
  14:	6552      	cmpne      	r4, r5
  16:	0bfa      	bt      	0xa	// a <ieee80211_setup_wmm_param+0xa>
  18:	1493      	pop      	r4-r6, r15

Disassembly of section .text.ieee80211_vif_sta_count:

00000000 <ieee80211_vif_sta_count>:
   0:	14c3      	push      	r4-r6
   2:	8820      	ld.h      	r1, (r0, 0x0)
   4:	e4612002 	andi      	r3, r1, 2
   8:	6c83      	mov      	r2, r0
   a:	e9030029 	bez      	r3, 0x5c	// 5c <ieee80211_vif_sta_count+0x5c>
   e:	d880202a 	ld.w      	r4, (r0, 0xa8)
  12:	3300      	movi      	r3, 0
  14:	d8a41026 	ld.h      	r5, (r4, 0x4c)
  18:	6c0f      	mov      	r0, r3
  1a:	6f4f      	mov      	r13, r3
  1c:	6575      	cmplt      	r13, r5
  1e:	080c      	bt      	0x36	// 36 <ieee80211_vif_sta_count+0x36>
  20:	e4212001 	andi      	r1, r1, 1
  24:	e9010008 	bez      	r1, 0x34	// 34 <ieee80211_vif_sta_count+0x34>
  28:	d8622063 	ld.w      	r3, (r2, 0x18c)
  2c:	d8030025 	ld.b      	r0, (r3, 0x25)
  30:	c4605460 	zext      	r0, r0, 3, 3
  34:	1483      	pop      	r4-r6
  36:	d9842022 	ld.w      	r12, (r4, 0x88)
  3a:	630c      	addu      	r12, r3
  3c:	d8cc202a 	ld.w      	r6, (r12, 0xa8)
  40:	658a      	cmpne      	r2, r6
  42:	0809      	bt      	0x54	// 54 <ieee80211_vif_sta_count+0x54>
  44:	d98c0025 	ld.b      	r12, (r12, 0x25)
  48:	e58c2008 	andi      	r12, r12, 8
  4c:	eb4c0000 	cmpnei      	r12, 0
  50:	c4000c41 	inct      	r0, r0, 1
  54:	e5ad0000 	addi      	r13, r13, 1
  58:	23cb      	addi      	r3, 204
  5a:	07e1      	br      	0x1c	// 1c <ieee80211_vif_sta_count+0x1c>
  5c:	6c0f      	mov      	r0, r3
  5e:	07e1      	br      	0x20	// 20 <ieee80211_vif_sta_count+0x20>

Disassembly of section .text.ieee80211_is_pairing:

00000000 <ieee80211_is_pairing>:
   0:	d800205c 	ld.w      	r0, (r0, 0x170)
   4:	e9000005 	bez      	r0, 0xe	// e <ieee80211_is_pairing+0xe>
   8:	8004      	ld.b      	r0, (r0, 0x4)
   a:	e4002001 	andi      	r0, r0, 1
   e:	783c      	jmp      	r15

Disassembly of section .text.ieee80211_del_gtk:

00000000 <ieee80211_del_gtk>:
   0:	14d2      	push      	r4-r5, r15
   2:	1421      	subi      	r14, r14, 4
   4:	d86001b9 	ld.b      	r3, (r0, 0x1b9)
   8:	6d03      	mov      	r4, r0
   a:	e9030016 	bez      	r3, 0x36	// 36 <ieee80211_del_gtk+0x36>
   e:	32c1      	movi      	r2, 193
  10:	8064      	ld.b      	r3, (r0, 0x4)
  12:	4242      	lsli      	r2, r2, 2
  14:	102a      	lrw      	r1, 0x0	// 3c <ieee80211_del_gtk+0x3c>
  16:	100b      	lrw      	r0, 0x0	// 40 <ieee80211_del_gtk+0x40>
  18:	e0000000 	bsr      	0x0	// 0 <hgprintf>
  1c:	3500      	movi      	r5, 0
  1e:	d8042029 	ld.w      	r0, (r4, 0xa4)
  22:	b8a0      	st.w      	r5, (r14, 0x0)
  24:	d9802010 	ld.w      	r12, (r0, 0x40)
  28:	e46401af 	addi      	r3, r4, 432
  2c:	5c56      	addi      	r2, r4, 6
  2e:	3101      	movi      	r1, 1
  30:	7bf1      	jsr      	r12
  32:	dca401b9 	st.b      	r5, (r4, 0x1b9)
  36:	1401      	addi      	r14, r14, 4
  38:	1492      	pop      	r4-r5, r15
	...

Disassembly of section .text.ieee80211_is_assoc:

00000000 <ieee80211_is_assoc>:
   0:	8860      	ld.h      	r3, (r0, 0x0)
   2:	e46320f3 	andi      	r3, r3, 243
   6:	eb430020 	cmpnei      	r3, 32
   a:	8058      	ld.b      	r2, (r0, 0x18)
   c:	0c08      	bf      	0x1c	// 1c <ieee80211_is_assoc+0x1c>
   e:	eb030020 	cmphsi      	r3, 33
  12:	0807      	bt      	0x20	// 20 <ieee80211_is_assoc+0x20>
  14:	e9030004 	bez      	r3, 0x1c	// 1c <ieee80211_is_assoc+0x1c>
  18:	3b50      	cmpnei      	r3, 16
  1a:	0811      	bt      	0x3c	// 3c <ieee80211_is_assoc+0x3c>
  1c:	3001      	movi      	r0, 1
  1e:	783c      	jmp      	r15
  20:	eb4300b0 	cmpnei      	r3, 176
  24:	0ffc      	bf      	0x1c	// 1c <ieee80211_is_assoc+0x1c>
  26:	eb4300e0 	cmpnei      	r3, 224
  2a:	0c04      	bf      	0x32	// 32 <ieee80211_is_assoc+0x32>
  2c:	eb430030 	cmpnei      	r3, 48
  30:	07f5      	br      	0x1a	// 1a <ieee80211_is_assoc+0x1a>
  32:	e462207f 	andi      	r3, r2, 127
  36:	3b41      	cmpnei      	r3, 1
  38:	6403      	mvcv      	r0
  3a:	07f2      	br      	0x1e	// 1e <ieee80211_is_assoc+0x1e>
  3c:	3000      	movi      	r0, 0
  3e:	07f0      	br      	0x1e	// 1e <ieee80211_is_assoc+0x1e>

Disassembly of section .text.ieee80211_check_ap_running:

00000000 <ieee80211_check_ap_running>:
   0:	14c3      	push      	r4-r6
   2:	1079      	lrw      	r3, 0x0	// 64 <ieee80211_check_ap_running+0x64>
   4:	3200      	movi      	r2, 0
   6:	d8830048 	ld.b      	r4, (r3, 0x48)
   a:	6f4f      	mov      	r13, r3
   c:	6509      	cmplt      	r2, r4
   e:	0803      	bt      	0x14	// 14 <ieee80211_check_ap_running+0x14>
  10:	3000      	movi      	r0, 0
  12:	1483      	pop      	r4-r6
  14:	e4620019 	addi      	r3, r2, 26
  18:	d06d088c 	ldr.w      	r12, (r13, r3 << 2)
  1c:	e90c001e 	bez      	r12, 0x58	// 58 <ieee80211_check_ap_running+0x58>
  20:	e9010004 	bez      	r1, 0x28	// 28 <ieee80211_check_ap_running+0x28>
  24:	6432      	cmpne      	r12, r0
  26:	0c19      	bf      	0x58	// 58 <ieee80211_check_ap_running+0x58>
  28:	d86c0005 	ld.b      	r3, (r12, 0x5)
  2c:	e4632081 	andi      	r3, r3, 129
  30:	3b41      	cmpnei      	r3, 1
  32:	0813      	bt      	0x58	// 58 <ieee80211_check_ap_running+0x58>
  34:	d8ac2029 	ld.w      	r5, (r12, 0xa4)
  38:	d8c02029 	ld.w      	r6, (r0, 0xa4)
  3c:	6596      	cmpne      	r5, r6
  3e:	080d      	bt      	0x58	// 58 <ieee80211_check_ap_running+0x58>
  40:	d8ac202b 	ld.w      	r5, (r12, 0xac)
  44:	d8c0202b 	ld.w      	r6, (r0, 0xac)
  48:	6596      	cmpne      	r5, r6
  4a:	0807      	bt      	0x58	// 58 <ieee80211_check_ap_running+0x58>
  4c:	d98c1000 	ld.h      	r12, (r12, 0x0)
  50:	e58c2002 	andi      	r12, r12, 2
  54:	e92c0005 	bnez      	r12, 0x5e	// 5e <ieee80211_check_ap_running+0x5e>
  58:	2200      	addi      	r2, 1
  5a:	748a      	sextb      	r2, r2
  5c:	07d8      	br      	0xc	// c <ieee80211_check_ap_running+0xc>
  5e:	6c0f      	mov      	r0, r3
  60:	07d9      	br      	0x12	// 12 <ieee80211_check_ap_running+0x12>
  62:	0000      	.short	0x0000
  64:	00000000 	.long	0x00000000
