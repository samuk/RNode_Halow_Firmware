
libwifi/o/wnb_utils_mlme.o:     file format elf32-csky-little


Disassembly of section .text.ieee80211_wnb_pair_success_delay:

00000000 <ieee80211_wnb_pair_success_delay>:
   0:	14d0      	push      	r15
   2:	d840205c 	ld.w      	r2, (r0, 0x170)
   6:	8264      	ld.b      	r3, (r2, 0x4)
   8:	e4632019 	andi      	r3, r3, 25
   c:	3b59      	cmpnei      	r3, 25
   e:	0806      	bt      	0x1a	// 1a <ieee80211_wnb_pair_success_delay+0x1a>
  10:	3300      	movi      	r3, 0
  12:	222b      	addi      	r2, 44
  14:	3102      	movi      	r1, 2
  16:	e0000000 	bsr      	0x0	// 0 <ieee80211_iface_event>
  1a:	1490      	pop      	r15

Disassembly of section .text.ieee80211_wnb_built_mgmt:

00000000 <ieee80211_wnb_built_mgmt>:
   0:	14d4      	push      	r4-r7, r15
   2:	6d83      	mov      	r6, r0
   4:	6d07      	mov      	r4, r1
   6:	e9000005 	bez      	r0, 0x10	// 10 <ieee80211_wnb_built_mgmt+0x10>
   a:	9160      	ld.w      	r3, (r1, 0x0)
   c:	e9230007 	bnez      	r3, 0x1a	// 1a <ieee80211_wnb_built_mgmt+0x1a>
  10:	114e      	lrw      	r2, 0x0	// c8 <ieee80211_wnb_built_mgmt+0xc8>
  12:	310c      	movi      	r1, 12
  14:	110e      	lrw      	r0, 0x0	// cc <ieee80211_wnb_built_mgmt+0xcc>
  16:	e0000000 	bsr      	0x0	// 0 <assert_internal>
  1a:	8c02      	ld.h      	r0, (r4, 0x4)
  1c:	e400012f 	addi      	r0, r0, 304
  20:	e0000000 	bsr      	0x0	// 0 <alloc_skb>
  24:	6d43      	mov      	r5, r0
  26:	e9200009 	bnez      	r0, 0x38	// 38 <ieee80211_wnb_built_mgmt+0x38>
  2a:	320f      	movi      	r2, 15
  2c:	1129      	lrw      	r1, 0x0	// d0 <ieee80211_wnb_built_mgmt+0xd0>
  2e:	110a      	lrw      	r0, 0x0	// d4 <ieee80211_wnb_built_mgmt+0xd4>
  30:	e0000000 	bsr      	0x0	// 0 <hgprintf>
  34:	6c17      	mov      	r0, r5
  36:	1494      	pop      	r4-r7, r15
  38:	318c      	movi      	r1, 140
  3a:	4121      	lsli      	r1, r1, 1
  3c:	e0000000 	bsr      	0x0	// 0 <skb_reserve>
  40:	95e7      	ld.w      	r7, (r5, 0x1c)
  42:	2f0b      	subi      	r7, 12
  44:	320c      	movi      	r2, 12
  46:	3100      	movi      	r1, 0
  48:	6c1f      	mov      	r0, r7
  4a:	e0000000 	bsr      	0x0	// 0 <memset>
  4e:	8f64      	ld.h      	r3, (r7, 0x8)
  50:	8c43      	ld.h      	r2, (r4, 0x6)
  52:	9423      	ld.w      	r1, (r4, 0xc)
  54:	6cc8      	or      	r3, r2
  56:	b5ed      	st.w      	r7, (r5, 0x34)
  58:	af64      	st.h      	r3, (r7, 0x8)
  5a:	e9010006 	bez      	r1, 0x66	// 66 <ieee80211_wnb_built_mgmt+0x66>
  5e:	320c      	movi      	r2, 12
  60:	6c1f      	mov      	r0, r7
  62:	e0000000 	bsr      	0x0	// 0 <memcpy>
  66:	9420      	ld.w      	r1, (r4, 0x0)
  68:	8141      	ld.b      	r2, (r1, 0x1)
  6a:	8160      	ld.b      	r3, (r1, 0x0)
  6c:	68c8      	and      	r3, r2
  6e:	8142      	ld.b      	r2, (r1, 0x2)
  70:	68c8      	and      	r3, r2
  72:	8143      	ld.b      	r2, (r1, 0x3)
  74:	68c8      	and      	r3, r2
  76:	8144      	ld.b      	r2, (r1, 0x4)
  78:	68c8      	and      	r3, r2
  7a:	8145      	ld.b      	r2, (r1, 0x5)
  7c:	68c8      	and      	r3, r2
  7e:	eb4300ff 	cmpnei      	r3, 255
  82:	0c05      	bf      	0x8c	// 8c <ieee80211_wnb_built_mgmt+0x8c>
  84:	8f64      	ld.h      	r3, (r7, 0x8)
  86:	ec630002 	ori      	r3, r3, 2
  8a:	af64      	st.h      	r3, (r7, 0x8)
  8c:	95e7      	ld.w      	r7, (r5, 0x1c)
  8e:	33f0      	movi      	r3, 240
  90:	4361      	lsli      	r3, r3, 1
  92:	af60      	st.h      	r3, (r7, 0x0)
  94:	3300      	movi      	r3, 0
  96:	af6b      	st.h      	r3, (r7, 0x16)
  98:	af61      	st.h      	r3, (r7, 0x2)
  9a:	3206      	movi      	r2, 6
  9c:	5f0e      	addi      	r0, r7, 4
  9e:	e0000000 	bsr      	0x0	// 0 <memcpy>
  a2:	3206      	movi      	r2, 6
  a4:	5e28      	addu      	r1, r6, r2
  a6:	e4070009 	addi      	r0, r7, 10
  aa:	e0000000 	bsr      	0x0	// 0 <memcpy>
  ae:	9422      	ld.w      	r1, (r4, 0x8)
  b0:	8c42      	ld.h      	r2, (r4, 0x4)
  b2:	e4070017 	addi      	r0, r7, 24
  b6:	e0000000 	bsr      	0x0	// 0 <memcpy>
  ba:	8c22      	ld.h      	r1, (r4, 0x4)
  bc:	2117      	addi      	r1, 24
  be:	6c17      	mov      	r0, r5
  c0:	e0000000 	bsr      	0x0	// 0 <skb_put>
  c4:	07b8      	br      	0x34	// 34 <ieee80211_wnb_built_mgmt+0x34>
	...

Disassembly of section .text.ieee80211_wnb_tx_mgmt:

00000000 <ieee80211_wnb_tx_mgmt>:
   0:	14d2      	push      	r4-r5, r15
   2:	6d47      	mov      	r5, r1
   4:	6c4b      	mov      	r1, r2
   6:	6d03      	mov      	r4, r0
   8:	e0000000 	bsr      	0x0	// 0 <ieee80211_wnb_tx_mgmt>
   c:	6c83      	mov      	r2, r0
   e:	e900000d 	bez      	r0, 0x28	// 28 <ieee80211_wnb_tx_mgmt+0x28>
  12:	6c13      	mov      	r0, r4
  14:	6c57      	mov      	r1, r5
  16:	e0000000 	bsr      	0x0	// 0 <ieee80211_tx_skb>
  1a:	d8642076 	ld.w      	r3, (r4, 0x1d8)
  1e:	2300      	addi      	r3, 1
  20:	dc642076 	st.w      	r3, (r4, 0x1d8)
  24:	3000      	movi      	r0, 0
  26:	1492      	pop      	r4-r5, r15
  28:	1004      	lrw      	r0, 0x0	// 38 <ieee80211_wnb_tx_mgmt+0x38>
  2a:	3234      	movi      	r2, 52
  2c:	1024      	lrw      	r1, 0x0	// 3c <ieee80211_wnb_tx_mgmt+0x3c>
  2e:	e0000000 	bsr      	0x0	// 0 <hgprintf>
  32:	3000      	movi      	r0, 0
  34:	2800      	subi      	r0, 1
  36:	07f8      	br      	0x26	// 26 <ieee80211_wnb_tx_mgmt+0x26>
	...

Disassembly of section .text.ieee80211_wnb_encrypt:

00000000 <ieee80211_wnb_encrypt>:
   0:	14d8      	push      	r4-r11, r15
   2:	1427      	subi      	r14, r14, 28
   4:	e4c3000e 	addi      	r6, r3, 15
   8:	6dcf      	mov      	r7, r3
   a:	3300      	movi      	r3, 0
   c:	2b0f      	subi      	r3, 16
   e:	c4662024 	and      	r4, r6, r3
  12:	6ec3      	mov      	r11, r0
  14:	6c13      	mov      	r0, r4
  16:	b820      	st.w      	r1, (r14, 0x0)
  18:	6e4b      	mov      	r9, r2
  1a:	d94e0040 	ld.b      	r10, (r14, 0x40)
  1e:	e0000000 	bsr      	0x0	// 0 <_os_malloc>
  22:	6d43      	mov      	r5, r0
  24:	6c13      	mov      	r0, r4
  26:	e0000000 	bsr      	0x0	// 0 <_os_malloc>
  2a:	6d03      	mov      	r4, r0
  2c:	300c      	movi      	r0, 12
  2e:	e0000000 	bsr      	0x0	// 0 <dev_get>
  32:	6e03      	mov      	r8, r0
  34:	e9000026 	bez      	r0, 0x80	// 80 <ieee80211_wnb_encrypt+0x80>
  38:	e90b0024 	bez      	r11, 0x80	// 80 <ieee80211_wnb_encrypt+0x80>
  3c:	e9050022 	bez      	r5, 0x80	// 80 <ieee80211_wnb_encrypt+0x80>
  40:	e9040020 	bez      	r4, 0x80	// 80 <ieee80211_wnb_encrypt+0x80>
  44:	9820      	ld.w      	r1, (r14, 0x0)
  46:	6c9f      	mov      	r2, r7
  48:	6c17      	mov      	r0, r5
  4a:	e0000000 	bsr      	0x0	// 0 <memcpy>
  4e:	3302      	movi      	r3, 2
  50:	4ec4      	lsri      	r6, r6, 4
  52:	dc6e0005 	st.b      	r3, (r14, 0x5)
  56:	3300      	movi      	r3, 0
  58:	dd6e2005 	st.w      	r11, (r14, 0x14)
  5c:	b8a2      	st.w      	r5, (r14, 0x8)
  5e:	b883      	st.w      	r4, (r14, 0xc)
  60:	b8c4      	st.w      	r6, (r14, 0x10)
  62:	dc6e0004 	st.b      	r3, (r14, 0x4)
  66:	1901      	addi      	r1, r14, 4
  68:	6c23      	mov      	r0, r8
  6a:	e90a0013 	bez      	r10, 0x90	// 90 <ieee80211_wnb_encrypt+0x90>
  6e:	e0000000 	bsr      	0x0	// 0 <sysaes_encrypt>
  72:	e9200007 	bnez      	r0, 0x80	// 80 <ieee80211_wnb_encrypt+0x80>
  76:	6c9f      	mov      	r2, r7
  78:	6c53      	mov      	r1, r4
  7a:	6c27      	mov      	r0, r9
  7c:	e0000000 	bsr      	0x0	// 0 <memcpy>
  80:	6c17      	mov      	r0, r5
  82:	e0000000 	bsr      	0x0	// 0 <_os_free>
  86:	6c13      	mov      	r0, r4
  88:	e0000000 	bsr      	0x0	// 0 <_os_free>
  8c:	1407      	addi      	r14, r14, 28
  8e:	1498      	pop      	r4-r11, r15
  90:	e0000000 	bsr      	0x0	// 0 <sysaes_decrypt>
  94:	07ef      	br      	0x72	// 72 <ieee80211_wnb_encrypt+0x72>

Disassembly of section .text.ieee80211_wnb_customer_id:

00000000 <ieee80211_wnb_customer_id>:
   0:	3000      	movi      	r0, 0
   2:	783c      	jmp      	r15

Disassembly of section .text.ieee80211_wnb_dev_identify:

00000000 <ieee80211_wnb_dev_identify>:
   0:	14d2      	push      	r4-r5, r15
   2:	8081      	ld.b      	r4, (r0, 0x1)
   4:	8060      	ld.b      	r3, (r0, 0x0)
   6:	4488      	lsli      	r4, r4, 8
   8:	6d0c      	or      	r4, r3
   a:	6d43      	mov      	r5, r0
   c:	e0000000 	bsr      	0x0	// 0 <sysctrl_efuse_get_customer_id>
  10:	5c63      	subi      	r3, r4, 1
  12:	74cd      	zexth      	r3, r3
  14:	eb03fffd 	cmphsi      	r3, 65534
  18:	0815      	bt      	0x42	// 42 <ieee80211_wnb_dev_identify+0x42>
  1a:	5863      	subi      	r3, r0, 1
  1c:	74cd      	zexth      	r3, r3
  1e:	eb03fffd 	cmphsi      	r3, 65534
  22:	0810      	bt      	0x42	// 42 <ieee80211_wnb_dev_identify+0x42>
  24:	6502      	cmpne      	r0, r4
  26:	0810      	bt      	0x46	// 46 <ieee80211_wnb_dev_identify+0x46>
  28:	8543      	ld.b      	r2, (r5, 0x3)
  2a:	8562      	ld.b      	r3, (r5, 0x2)
  2c:	4248      	lsli      	r2, r2, 8
  2e:	6c8c      	or      	r2, r3
  30:	8564      	ld.b      	r3, (r5, 0x4)
  32:	4370      	lsli      	r3, r3, 16
  34:	6c8c      	or      	r2, r3
  36:	8565      	ld.b      	r3, (r5, 0x5)
  38:	4378      	lsli      	r3, r3, 24
  3a:	6cc8      	or      	r3, r2
  3c:	3b40      	cmpnei      	r3, 0
  3e:	6403      	mvcv      	r0
  40:	1492      	pop      	r4-r5, r15
  42:	3001      	movi      	r0, 1
  44:	07fe      	br      	0x40	// 40 <ieee80211_wnb_dev_identify+0x40>
  46:	3000      	movi      	r0, 0
  48:	07fc      	br      	0x40	// 40 <ieee80211_wnb_dev_identify+0x40>

Disassembly of section .text.ieee80211_wnb_set_key:

00000000 <ieee80211_wnb_set_key>:
   0:	14d5      	push      	r4-r8, r15
   2:	142c      	subi      	r14, r14, 48
   4:	6d43      	mov      	r5, r0
   6:	6d87      	mov      	r6, r1
   8:	6d0b      	mov      	r4, r2
   a:	3100      	movi      	r1, 0
   c:	322c      	movi      	r2, 44
   e:	d90e0048 	ld.b      	r8, (r14, 0x48)
  12:	1801      	addi      	r0, r14, 4
  14:	6dcf      	mov      	r7, r3
  16:	e0000000 	bsr      	0x0	// 0 <memset>
  1a:	3320      	movi      	r3, 32
  1c:	dc6e000d 	st.b      	r3, (r14, 0xd)
  20:	3220      	movi      	r2, 32
  22:	6c5f      	mov      	r1, r7
  24:	e40e000d 	addi      	r0, r14, 14
  28:	e9080038 	bez      	r8, 0x98	// 98 <ieee80211_wnb_set_key+0x98>
  2c:	e0000000 	bsr      	0x0	// 0 <memcpy>
  30:	3200      	movi      	r2, 0
  32:	1b01      	addi      	r3, r14, 4
  34:	5b28      	addu      	r1, r3, r2
  36:	d0470023 	ldr.b      	r3, (r7, r2 << 0)
  3a:	2201      	addi      	r2, 2
  3c:	e463201f 	andi      	r3, r3, 31
  40:	eb420020 	cmpnei      	r2, 32
  44:	d0670023 	ldr.b      	r3, (r7, r3 << 0)
  48:	a16a      	st.b      	r3, (r1, 0xa)
  4a:	0bf4      	bt      	0x32	// 32 <ieee80211_wnb_set_key+0x32>
  4c:	3300      	movi      	r3, 0
  4e:	b861      	st.w      	r3, (r14, 0x4)
  50:	e9040027 	bez      	r4, 0x9e	// 9e <ieee80211_wnb_set_key+0x9e>
  54:	8460      	ld.b      	r3, (r4, 0x0)
  56:	e4632001 	andi      	r3, r3, 1
  5a:	e9230022 	bnez      	r3, 0x9e	// 9e <ieee80211_wnb_set_key+0x9e>
  5e:	3208      	movi      	r2, 8
  60:	d8052063 	ld.w      	r0, (r5, 0x18c)
  64:	dc4e0008 	st.b      	r2, (r14, 0x8)
  68:	dc6e000a 	st.b      	r3, (r14, 0xa)
  6c:	dc6e000b 	st.b      	r3, (r14, 0xb)
  70:	dc6e0009 	st.b      	r3, (r14, 0x9)
  74:	320c      	movi      	r2, 12
  76:	1901      	addi      	r1, r14, 4
  78:	20ab      	addi      	r0, 172
  7a:	e0000000 	bsr      	0x0	// 0 <memcpy>
  7e:	d86e000d 	ld.b      	r3, (r14, 0xd)
  82:	d8052029 	ld.w      	r0, (r5, 0xa4)
  86:	b860      	st.w      	r3, (r14, 0x0)
  88:	d9802010 	ld.w      	r12, (r0, 0x40)
  8c:	1b01      	addi      	r3, r14, 4
  8e:	6c93      	mov      	r2, r4
  90:	6c5b      	mov      	r1, r6
  92:	7bf1      	jsr      	r12
  94:	140c      	addi      	r14, r14, 48
  96:	1495      	pop      	r4-r8, r15
  98:	e0000000 	bsr      	0x0	// 0 <memcpy>
  9c:	07d8      	br      	0x4c	// 4c <ieee80211_wnb_set_key+0x4c>
  9e:	8d60      	ld.h      	r3, (r5, 0x0)
  a0:	e4632002 	andi      	r3, r3, 2
  a4:	e9030013 	bez      	r3, 0xca	// ca <ieee80211_wnb_set_key+0xca>
  a8:	5d96      	addi      	r4, r5, 6
  aa:	3380      	movi      	r3, 128
  ac:	3200      	movi      	r2, 0
  ae:	dc6e0008 	st.b      	r3, (r14, 0x8)
  b2:	4b68      	lsri      	r3, r3, 8
  b4:	dc4e000a 	st.b      	r2, (r14, 0xa)
  b8:	dc4e000b 	st.b      	r2, (r14, 0xb)
  bc:	dc6e0009 	st.b      	r3, (r14, 0x9)
  c0:	320c      	movi      	r2, 12
  c2:	1901      	addi      	r1, r14, 4
  c4:	e40501af 	addi      	r0, r5, 432
  c8:	07d9      	br      	0x7a	// 7a <ieee80211_wnb_set_key+0x7a>
  ca:	d8852063 	ld.w      	r4, (r5, 0x18c)
  ce:	3380      	movi      	r3, 128
  d0:	241b      	addi      	r4, 28
  d2:	4361      	lsli      	r3, r3, 1
  d4:	07ec      	br      	0xac	// ac <ieee80211_wnb_set_key+0xac>

Disassembly of section .text.ieee80211_wnb_pair_auto_role:

00000000 <ieee80211_wnb_pair_auto_role>:
   0:	14d0      	push      	r15
   2:	8062      	ld.b      	r3, (r0, 0x2)
   4:	c48354c3 	zext      	r3, r3, 6, 4
   8:	2b00      	subi      	r3, 1
   a:	815c      	ld.b      	r2, (r1, 0x1c)
   c:	648e      	cmpne      	r3, r2
   e:	0809      	bt      	0x20	// 20 <ieee80211_wnb_pair_auto_role+0x20>
  10:	1005      	lrw      	r0, 0x0	// 24 <ieee80211_wnb_pair_auto_role+0x24>
  12:	32a8      	movi      	r2, 168
  14:	1025      	lrw      	r1, 0x0	// 28 <ieee80211_wnb_pair_auto_role+0x28>
  16:	e0000000 	bsr      	0x0	// 0 <hgprintf>
  1a:	3000      	movi      	r0, 0
  1c:	2800      	subi      	r0, 1
  1e:	1490      	pop      	r15
  20:	3000      	movi      	r0, 0
  22:	07fe      	br      	0x1e	// 1e <ieee80211_wnb_pair_auto_role+0x1e>
	...

Disassembly of section .text.ieee80211_wnb_send_probe_request:

00000000 <ieee80211_wnb_send_probe_request>:
   0:	14d3      	push      	r4-r6, r15
   2:	1426      	subi      	r14, r14, 24
   4:	6d43      	mov      	r5, r0
   6:	3206      	movi      	r2, 6
   8:	6d87      	mov      	r6, r1
   a:	6c3b      	mov      	r0, r14
   c:	103c      	lrw      	r1, 0x0	// 7c <ieee80211_wnb_send_probe_request+0x7c>
   e:	e0000000 	bsr      	0x0	// 0 <memcpy>
  12:	3210      	movi      	r2, 16
  14:	3100      	movi      	r1, 0
  16:	1802      	addi      	r0, r14, 8
  18:	e0000000 	bsr      	0x0	// 0 <memset>
  1c:	3324      	movi      	r3, 36
  1e:	3024      	movi      	r0, 36
  20:	ddce2002 	st.w      	r14, (r14, 0x8)
  24:	dc6e1006 	st.h      	r3, (r14, 0xc)
  28:	e0000000 	bsr      	0x0	// 0 <_os_zalloc>
  2c:	6d03      	mov      	r4, r0
  2e:	e9000024 	bez      	r0, 0x76	// 76 <ieee80211_wnb_send_probe_request+0x76>
  32:	8060      	ld.b      	r3, (r0, 0x0)
  34:	3209      	movi      	r2, 9
  36:	c4625cc0 	ins      	r3, r2, 6, 0
  3a:	a060      	st.b      	r3, (r0, 0x0)
  3c:	3300      	movi      	r3, 0
  3e:	a061      	st.b      	r3, (r0, 0x1)
  40:	d865202b 	ld.w      	r3, (r5, 0xac)
  44:	8533      	ld.b      	r1, (r5, 0x13)
  46:	8340      	ld.b      	r2, (r3, 0x0)
  48:	6c17      	mov      	r0, r5
  4a:	e0000000 	bsr      	0x0	// 0 <ieee80211_chan_to_freq>
  4e:	9623      	ld.w      	r1, (r6, 0xc)
  50:	ac01      	st.h      	r0, (r4, 0x2)
  52:	e9010006 	bez      	r1, 0x5e	// 5e <ieee80211_wnb_send_probe_request+0x5e>
  56:	3220      	movi      	r2, 32
  58:	5c0e      	addi      	r0, r4, 4
  5a:	e0000000 	bsr      	0x0	// 0 <strncpy>
  5e:	1a02      	addi      	r2, r14, 8
  60:	3100      	movi      	r1, 0
  62:	6c17      	mov      	r0, r5
  64:	b884      	st.w      	r4, (r14, 0x10)
  66:	e0000000 	bsr      	0x0	// 0 <ieee80211_wnb_send_probe_request>
  6a:	6c13      	mov      	r0, r4
  6c:	e0000000 	bsr      	0x0	// 0 <_os_free>
  70:	3000      	movi      	r0, 0
  72:	1406      	addi      	r14, r14, 24
  74:	1493      	pop      	r4-r6, r15
  76:	3000      	movi      	r0, 0
  78:	280b      	subi      	r0, 12
  7a:	07fc      	br      	0x72	// 72 <ieee80211_wnb_send_probe_request+0x72>
  7c:	00000000 	.long	0x00000000

Disassembly of section .text.ieee80211_wnb_pairing_request:

00000000 <ieee80211_wnb_pairing_request>:
   0:	14d4      	push      	r4-r7, r15
   2:	1424      	subi      	r14, r14, 16
   4:	6d43      	mov      	r5, r0
   6:	e0000000 	bsr      	0x0	// 0 <sysctrl_efuse_get_customer_id>
   a:	6dc3      	mov      	r7, r0
   c:	3210      	movi      	r2, 16
   e:	3100      	movi      	r1, 0
  10:	6c3b      	mov      	r0, r14
  12:	e0000000 	bsr      	0x0	// 0 <memset>
  16:	d845205c 	ld.w      	r2, (r5, 0x170)
  1a:	334e      	movi      	r3, 78
  1c:	dc6e1002 	st.h      	r3, (r14, 0x4)
  20:	8264      	ld.b      	r3, (r2, 0x4)
  22:	e4632018 	andi      	r3, r3, 24
  26:	3b58      	cmpnei      	r3, 24
  28:	0807      	bt      	0x36	// 36 <ieee80211_wnb_pairing_request+0x36>
  2a:	3300      	movi      	r3, 0
  2c:	222b      	addi      	r2, 44
  2e:	3102      	movi      	r1, 2
  30:	6c17      	mov      	r0, r5
  32:	e0000000 	bsr      	0x0	// 0 <ieee80211_iface_event>
  36:	304e      	movi      	r0, 78
  38:	e0000000 	bsr      	0x0	// 0 <_os_zalloc>
  3c:	6d03      	mov      	r4, r0
  3e:	e9000040 	bez      	r0, 0xbe	// be <ieee80211_wnb_pairing_request+0xbe>
  42:	d865205c 	ld.w      	r3, (r5, 0x170)
  46:	8365      	ld.b      	r3, (r3, 0x5)
  48:	e923000a 	bnez      	r3, 0x5c	// 5c <ieee80211_wnb_pairing_request+0x5c>
  4c:	d865202b 	ld.w      	r3, (r5, 0xac)
  50:	3202      	movi      	r2, 2
  52:	9365      	ld.w      	r3, (r3, 0x14)
  54:	3101      	movi      	r1, 1
  56:	6c17      	mov      	r0, r5
  58:	e0000000 	bsr      	0x0	// 0 <ieee80211_switch_chan>
  5c:	3600      	movi      	r6, 0
  5e:	8460      	ld.b      	r3, (r4, 0x0)
  60:	3202      	movi      	r2, 2
  62:	a4c1      	st.b      	r6, (r4, 0x1)
  64:	c4625cc0 	ins      	r3, r2, 6, 0
  68:	a460      	st.b      	r3, (r4, 0x0)
  6a:	d865202b 	ld.w      	r3, (r5, 0xac)
  6e:	8533      	ld.b      	r1, (r5, 0x13)
  70:	8340      	ld.b      	r2, (r3, 0x0)
  72:	6c17      	mov      	r0, r5
  74:	e0000000 	bsr      	0x0	// 0 <ieee80211_chan_to_freq>
  78:	8562      	ld.b      	r3, (r5, 0x2)
  7a:	c48354c3 	zext      	r3, r3, 6, 4
  7e:	dce40026 	st.b      	r7, (r4, 0x26)
  82:	2b00      	subi      	r3, 1
  84:	4fe8      	lsri      	r7, r7, 8
  86:	a464      	st.b      	r3, (r4, 0x4)
  88:	dce40027 	st.b      	r7, (r4, 0x27)
  8c:	dcc4002a 	st.b      	r6, (r4, 0x2a)
  90:	dcc4002b 	st.b      	r6, (r4, 0x2b)
  94:	dcc40028 	st.b      	r6, (r4, 0x28)
  98:	dcc40029 	st.b      	r6, (r4, 0x29)
  9c:	d865205c 	ld.w      	r3, (r5, 0x170)
  a0:	ac01      	st.h      	r0, (r4, 0x2)
  a2:	232b      	addi      	r3, 44
  a4:	6cbb      	mov      	r2, r14
  a6:	3100      	movi      	r1, 0
  a8:	6c17      	mov      	r0, r5
  aa:	b860      	st.w      	r3, (r14, 0x0)
  ac:	b882      	st.w      	r4, (r14, 0x8)
  ae:	e0000000 	bsr      	0x0	// 0 <ieee80211_wnb_pairing_request>
  b2:	6c13      	mov      	r0, r4
  b4:	e0000000 	bsr      	0x0	// 0 <_os_free>
  b8:	3000      	movi      	r0, 0
  ba:	1404      	addi      	r14, r14, 16
  bc:	1494      	pop      	r4-r7, r15
  be:	1005      	lrw      	r0, 0x0	// d0 <ieee80211_wnb_pairing_request+0xd0>
  c0:	32ff      	movi      	r2, 255
  c2:	1025      	lrw      	r1, 0x0	// d4 <ieee80211_wnb_pairing_request+0xd4>
  c4:	e0000000 	bsr      	0x0	// 0 <hgprintf>
  c8:	3000      	movi      	r0, 0
  ca:	2800      	subi      	r0, 1
  cc:	07f7      	br      	0xba	// ba <ieee80211_wnb_pairing_request+0xba>
	...

Disassembly of section .text.ieee80211_wnb_unpair_request:

00000000 <ieee80211_wnb_unpair_request>:
   0:	14d5      	push      	r4-r8, r15
   2:	142d      	subi      	r14, r14, 52
   4:	6d43      	mov      	r5, r0
   6:	6d07      	mov      	r4, r1
   8:	e0000000 	bsr      	0x0	// 0 <ieee80211_sta_get>
   c:	6d83      	mov      	r6, r0
   e:	e900007e 	bez      	r0, 0x10a	// 10a <ieee80211_wnb_unpair_request+0x10a>
  12:	e500001b 	addi      	r8, r0, 28
  16:	3206      	movi      	r2, 6
  18:	6c63      	mov      	r1, r8
  1a:	6c13      	mov      	r0, r4
  1c:	e0000000 	bsr      	0x0	// 0 <memcmp>
  20:	6dc3      	mov      	r7, r0
  22:	e9200074 	bnez      	r0, 0x10a	// 10a <ieee80211_wnb_unpair_request+0x10a>
  26:	d8c60025 	ld.b      	r6, (r6, 0x25)
  2a:	e4c62008 	andi      	r6, r6, 8
  2e:	e9060035 	bez      	r6, 0x98	// 98 <ieee80211_wnb_unpair_request+0x98>
  32:	6c43      	mov      	r1, r0
  34:	3210      	movi      	r2, 16
  36:	1809      	addi      	r0, r14, 36
  38:	e0000000 	bsr      	0x0	// 0 <memset>
  3c:	1e07      	addi      	r6, r14, 28
  3e:	3306      	movi      	r3, 6
  40:	1805      	addi      	r0, r14, 20
  42:	3206      	movi      	r2, 6
  44:	6c53      	mov      	r1, r4
  46:	dc6e1014 	st.h      	r3, (r14, 0x28)
  4a:	b8cb      	st.w      	r6, (r14, 0x2c)
  4c:	b809      	st.w      	r0, (r14, 0x24)
  4e:	e0000000 	bsr      	0x0	// 0 <memcpy>
  52:	3303      	movi      	r3, 3
  54:	b6e0      	st.w      	r7, (r6, 0x0)
  56:	aee2      	st.h      	r7, (r6, 0x4)
  58:	c4e35cc0 	ins      	r7, r3, 6, 0
  5c:	d865202b 	ld.w      	r3, (r5, 0xac)
  60:	a6e0      	st.b      	r7, (r6, 0x0)
  62:	8340      	ld.b      	r2, (r3, 0x0)
  64:	8533      	ld.b      	r1, (r5, 0x13)
  66:	6c17      	mov      	r0, r5
  68:	e0000000 	bsr      	0x0	// 0 <ieee80211_chan_to_freq>
  6c:	3301      	movi      	r3, 1
  6e:	ae62      	st.h      	r3, (r6, 0x4)
  70:	d8652076 	ld.w      	r3, (r5, 0x1d8)
  74:	2300      	addi      	r3, 1
  76:	ae01      	st.h      	r0, (r6, 0x2)
  78:	dc652076 	st.w      	r3, (r5, 0x1d8)
  7c:	1909      	addi      	r1, r14, 36
  7e:	6c17      	mov      	r0, r5
  80:	e0000000 	bsr      	0x0	// 0 <ieee80211_wnb_unpair_request>
  84:	6d83      	mov      	r6, r0
  86:	6c17      	mov      	r0, r5
  88:	e0000000 	bsr      	0x0	// 0 <ieee80211_sta_disconnect>
  8c:	3301      	movi      	r3, 1
  8e:	6ca3      	mov      	r2, r8
  90:	310a      	movi      	r1, 10
  92:	6c17      	mov      	r0, r5
  94:	e0000000 	bsr      	0x0	// 0 <ieee80211_iface_event>
  98:	8562      	ld.b      	r3, (r5, 0x2)
  9a:	e4632070 	andi      	r3, r3, 112
  9e:	3b50      	cmpnei      	r3, 16
  a0:	081b      	bt      	0xd6	// d6 <ieee80211_wnb_unpair_request+0xd6>
  a2:	d8052063 	ld.w      	r0, (r5, 0x18c)
  a6:	3700      	movi      	r7, 0
  a8:	d86000ea 	ld.b      	r3, (r0, 0xea)
  ac:	c4675c03 	ins      	r3, r7, 3, 3
  b0:	dc6000ea 	st.b      	r3, (r0, 0xea)
  b4:	3206      	movi      	r2, 6
  b6:	6c5f      	mov      	r1, r7
  b8:	20ec      	addi      	r0, 237
  ba:	e0000000 	bsr      	0x0	// 0 <memset>
  be:	3220      	movi      	r2, 32
  c0:	6c5f      	mov      	r1, r7
  c2:	e4050112 	addi      	r0, r5, 275
  c6:	e0000000 	bsr      	0x0	// 0 <memset>
  ca:	3220      	movi      	r2, 32
  cc:	6c5f      	mov      	r1, r7
  ce:	e4050133 	addi      	r0, r5, 308
  d2:	e0000000 	bsr      	0x0	// 0 <memset>
  d6:	3300      	movi      	r3, 0
  d8:	6c93      	mov      	r2, r4
  da:	311c      	movi      	r1, 28
  dc:	6c17      	mov      	r0, r5
  de:	e0000000 	bsr      	0x0	// 0 <ieee80211_iface_event>
  e2:	8445      	ld.b      	r2, (r4, 0x5)
  e4:	b844      	st.w      	r2, (r14, 0x10)
  e6:	8444      	ld.b      	r2, (r4, 0x4)
  e8:	b843      	st.w      	r2, (r14, 0xc)
  ea:	8443      	ld.b      	r2, (r4, 0x3)
  ec:	b842      	st.w      	r2, (r14, 0x8)
  ee:	8442      	ld.b      	r2, (r4, 0x2)
  f0:	b841      	st.w      	r2, (r14, 0x4)
  f2:	8441      	ld.b      	r2, (r4, 0x1)
  f4:	b840      	st.w      	r2, (r14, 0x0)
  f6:	328c      	movi      	r2, 140
  f8:	8460      	ld.b      	r3, (r4, 0x0)
  fa:	4241      	lsli      	r2, r2, 1
  fc:	102d      	lrw      	r1, 0x0	// 130 <ieee80211_wnb_unpair_request+0x130>
  fe:	100e      	lrw      	r0, 0x0	// 134 <ieee80211_wnb_unpair_request+0x134>
 100:	e0000000 	bsr      	0x0	// 0 <hgprintf>
 104:	6c1b      	mov      	r0, r6
 106:	140d      	addi      	r14, r14, 52
 108:	1495      	pop      	r4-r8, r15
 10a:	8445      	ld.b      	r2, (r4, 0x5)
 10c:	b844      	st.w      	r2, (r14, 0x10)
 10e:	8444      	ld.b      	r2, (r4, 0x4)
 110:	b843      	st.w      	r2, (r14, 0xc)
 112:	8443      	ld.b      	r2, (r4, 0x3)
 114:	b842      	st.w      	r2, (r14, 0x8)
 116:	8442      	ld.b      	r2, (r4, 0x2)
 118:	b841      	st.w      	r2, (r14, 0x4)
 11a:	8441      	ld.b      	r2, (r4, 0x1)
 11c:	b840      	st.w      	r2, (r14, 0x0)
 11e:	328d      	movi      	r2, 141
 120:	8460      	ld.b      	r3, (r4, 0x0)
 122:	4241      	lsli      	r2, r2, 1
 124:	1023      	lrw      	r1, 0x0	// 130 <ieee80211_wnb_unpair_request+0x130>
 126:	1005      	lrw      	r0, 0x0	// 138 <ieee80211_wnb_unpair_request+0x138>
 128:	e0000000 	bsr      	0x0	// 0 <hgprintf>
 12c:	3600      	movi      	r6, 0
 12e:	07eb      	br      	0x104	// 104 <ieee80211_wnb_unpair_request+0x104>
	...

Disassembly of section .text.ieee80211_wnb_send_disassoc:

00000000 <ieee80211_wnb_send_disassoc>:
   0:	14d2      	push      	r4-r5, r15
   2:	1426      	subi      	r14, r14, 24
   4:	6d03      	mov      	r4, r0
   6:	6d47      	mov      	r5, r1
   8:	3210      	movi      	r2, 16
   a:	3100      	movi      	r1, 0
   c:	1802      	addi      	r0, r14, 8
   e:	e0000000 	bsr      	0x0	// 0 <memset>
  12:	3306      	movi      	r3, 6
  14:	b8a2      	st.w      	r5, (r14, 0x8)
  16:	dc6e1006 	st.h      	r3, (r14, 0xc)
  1a:	3500      	movi      	r5, 0
  1c:	3303      	movi      	r3, 3
  1e:	b8a0      	st.w      	r5, (r14, 0x0)
  20:	dc6e0000 	st.b      	r3, (r14, 0x0)
  24:	d864202b 	ld.w      	r3, (r4, 0xac)
  28:	ddce2004 	st.w      	r14, (r14, 0x10)
  2c:	dcae1002 	st.h      	r5, (r14, 0x4)
  30:	8340      	ld.b      	r2, (r3, 0x0)
  32:	8433      	ld.b      	r1, (r4, 0x13)
  34:	6c13      	mov      	r0, r4
  36:	e0000000 	bsr      	0x0	// 0 <ieee80211_chan_to_freq>
  3a:	dc0e1001 	st.h      	r0, (r14, 0x2)
  3e:	1a02      	addi      	r2, r14, 8
  40:	6c57      	mov      	r1, r5
  42:	6c13      	mov      	r0, r4
  44:	dcae1002 	st.h      	r5, (r14, 0x4)
  48:	e0000000 	bsr      	0x0	// 0 <ieee80211_wnb_send_disassoc>
  4c:	1406      	addi      	r14, r14, 24
  4e:	1492      	pop      	r4-r5, r15

Disassembly of section .text.ieee80211_wnb_build_hdr:

00000000 <ieee80211_wnb_build_hdr>:
   0:	14d3      	push      	r4-r6, r15
   2:	6d43      	mov      	r5, r0
   4:	8002      	ld.b      	r0, (r0, 0x2)
   6:	6d0b      	mov      	r4, r2
   8:	d9825000 	ld.hs      	r12, (r2, 0x0)
   c:	e4002070 	andi      	r0, r0, 112
  10:	6d87      	mov      	r6, r1
  12:	3280      	movi      	r2, 128
  14:	3180      	movi      	r1, 128
  16:	eb400020 	cmpnei      	r0, 32
  1a:	4242      	lsli      	r2, r2, 2
  1c:	4121      	lsli      	r1, r1, 1
  1e:	c4410c40 	inct      	r2, r1, 0
  22:	6cb0      	or      	r2, r12
  24:	ac40      	st.h      	r2, (r4, 0x0)
  26:	5c0e      	addi      	r0, r4, 4
  28:	e9030015 	bez      	r3, 0x52	// 52 <ieee80211_wnb_build_hdr+0x52>
  2c:	e423001b 	addi      	r1, r3, 28
  30:	3206      	movi      	r2, 6
  32:	e0000000 	bsr      	0x0	// 0 <memcpy>
  36:	3206      	movi      	r2, 6
  38:	5d28      	addu      	r1, r5, r2
  3a:	e4040009 	addi      	r0, r4, 10
  3e:	e0000000 	bsr      	0x0	// 0 <memcpy>
  42:	3206      	movi      	r2, 6
  44:	9627      	ld.w      	r1, (r6, 0x1c)
  46:	e404000f 	addi      	r0, r4, 16
  4a:	e0000000 	bsr      	0x0	// 0 <memcpy>
  4e:	3018      	movi      	r0, 24
  50:	1493      	pop      	r4-r6, r15
  52:	1022      	lrw      	r1, 0x0	// 58 <ieee80211_wnb_build_hdr+0x58>
  54:	07ee      	br      	0x30	// 30 <ieee80211_wnb_build_hdr+0x30>
  56:	0000      	.short	0x0000
  58:	00000000 	.long	0x00000000

Disassembly of section .text.ieee80211_wnb_accept_frame:

00000000 <ieee80211_wnb_accept_frame>:
   0:	14d0      	push      	r15
   2:	9062      	ld.w      	r3, (r0, 0x8)
   4:	9327      	ld.w      	r1, (r3, 0x1c)
   6:	8164      	ld.b      	r3, (r1, 0x4)
   8:	e4632001 	andi      	r3, r3, 1
   c:	e923000c 	bnez      	r3, 0x24	// 24 <ieee80211_wnb_accept_frame+0x24>
  10:	8960      	ld.h      	r3, (r1, 0x0)
  12:	e46320fc 	andi      	r3, r3, 252
  16:	3b5c      	cmpnei      	r3, 28
  18:	64c3      	mvcv      	r3
  1a:	74cc      	zextb      	r3, r3
  1c:	e9030006 	bez      	r3, 0x28	// 28 <ieee80211_wnb_accept_frame+0x28>
  20:	6c0f      	mov      	r0, r3
  22:	1490      	pop      	r15
  24:	3301      	movi      	r3, 1
  26:	07fd      	br      	0x20	// 20 <ieee80211_wnb_accept_frame+0x20>
  28:	3206      	movi      	r2, 6
  2a:	9000      	ld.w      	r0, (r0, 0x0)
  2c:	2103      	addi      	r1, 4
  2e:	6008      	addu      	r0, r2
  30:	e0000000 	bsr      	0x0	// 0 <memcmp>
  34:	3840      	cmpnei      	r0, 0
  36:	64c3      	mvcv      	r3
  38:	74cc      	zextb      	r3, r3
  3a:	07f3      	br      	0x20	// 20 <ieee80211_wnb_accept_frame+0x20>

Disassembly of section .text.ieee80211_wnb_rx_pair:

00000000 <ieee80211_wnb_rx_pair>:
   0:	14d8      	push      	r4-r11, r15
   2:	142c      	subi      	r14, r14, 48
   4:	9062      	ld.w      	r3, (r0, 0x8)
   6:	6d43      	mov      	r5, r0
   8:	9387      	ld.w      	r4, (r3, 0x1c)
   a:	90c0      	ld.w      	r6, (r0, 0x0)
   c:	e404003d 	addi      	r0, r4, 62
  10:	e0000000 	bsr      	0x0	// 0 <ieee80211_wnb_rx_pair>
  14:	e9000086 	bez      	r0, 0x120	// 120 <ieee80211_wnb_rx_pair+0x120>
  18:	6c1b      	mov      	r0, r6
  1a:	e0000000 	bsr      	0x0	// 0 <ieee80211_is_pairing>
  1e:	e9000081 	bez      	r0, 0x120	// 120 <ieee80211_wnb_rx_pair+0x120>
  22:	8445      	ld.b      	r2, (r4, 0x5)
  24:	8464      	ld.b      	r3, (r4, 0x4)
  26:	68c8      	and      	r3, r2
  28:	8446      	ld.b      	r2, (r4, 0x6)
  2a:	68c8      	and      	r3, r2
  2c:	8447      	ld.b      	r2, (r4, 0x7)
  2e:	68c8      	and      	r3, r2
  30:	8448      	ld.b      	r2, (r4, 0x8)
  32:	68c8      	and      	r3, r2
  34:	8449      	ld.b      	r2, (r4, 0x9)
  36:	68c8      	and      	r3, r2
  38:	eb4300ff 	cmpnei      	r3, 255
  3c:	0c08      	bf      	0x4c	// 4c <ieee80211_wnb_rx_pair+0x4c>
  3e:	3206      	movi      	r2, 6
  40:	5c2e      	addi      	r1, r4, 4
  42:	5e08      	addu      	r0, r6, r2
  44:	e0000000 	bsr      	0x0	// 0 <memcmp>
  48:	e920006c 	bnez      	r0, 0x120	// 120 <ieee80211_wnb_rx_pair+0x120>
  4c:	d8c6205c 	ld.w      	r6, (r6, 0x170)
  50:	d986002c 	ld.b      	r12, (r6, 0x2c)
  54:	d966002d 	ld.b      	r11, (r6, 0x2d)
  58:	d946002e 	ld.b      	r10, (r6, 0x2e)
  5c:	c56c2023 	and      	r3, r12, r11
  60:	d926002f 	ld.b      	r9, (r6, 0x2f)
  64:	68e8      	and      	r3, r10
  66:	d9060030 	ld.b      	r8, (r6, 0x30)
  6a:	68e4      	and      	r3, r9
  6c:	d8e60031 	ld.b      	r7, (r6, 0x31)
  70:	68e0      	and      	r3, r8
  72:	68dc      	and      	r3, r7
  74:	eb4300ff 	cmpnei      	r3, 255
  78:	0c0e      	bf      	0x94	// 94 <ieee80211_wnb_rx_pair+0x94>
  7a:	3206      	movi      	r2, 6
  7c:	e426002b 	addi      	r1, r6, 44
  80:	e4040009 	addi      	r0, r4, 10
  84:	dd8e2007 	st.w      	r12, (r14, 0x1c)
  88:	e0000000 	bsr      	0x0	// 0 <memcmp>
  8c:	d98e2007 	ld.w      	r12, (r14, 0x1c)
  90:	e9200048 	bnez      	r0, 0x120	// 120 <ieee80211_wnb_rx_pair+0x120>
  94:	d8644018 	ld.bs      	r3, (r4, 0x18)
  98:	e9830081 	blz      	r3, 0x19a	// 19a <ieee80211_wnb_rx_pair+0x19a>
  9c:	eb4c00ff 	cmpnei      	r12, 255
  a0:	0810      	bt      	0xc0	// c0 <ieee80211_wnb_rx_pair+0xc0>
  a2:	eb4b00ff 	cmpnei      	r11, 255
  a6:	080d      	bt      	0xc0	// c0 <ieee80211_wnb_rx_pair+0xc0>
  a8:	eb4a00ff 	cmpnei      	r10, 255
  ac:	080a      	bt      	0xc0	// c0 <ieee80211_wnb_rx_pair+0xc0>
  ae:	eb4900ff 	cmpnei      	r9, 255
  b2:	0807      	bt      	0xc0	// c0 <ieee80211_wnb_rx_pair+0xc0>
  b4:	eb4800ff 	cmpnei      	r8, 255
  b8:	0804      	bt      	0xc0	// c0 <ieee80211_wnb_rx_pair+0xc0>
  ba:	eb4700ff 	cmpnei      	r7, 255
  be:	0cc4      	bf      	0x246	// 246 <ieee80211_wnb_rx_pair+0x246>
  c0:	95c2      	ld.w      	r6, (r5, 0x8)
  c2:	3210      	movi      	r2, 16
  c4:	9687      	ld.w      	r4, (r6, 0x1c)
  c6:	3100      	movi      	r1, 0
  c8:	1808      	addi      	r0, r14, 32
  ca:	95a0      	ld.w      	r5, (r5, 0x0)
  cc:	e0000000 	bsr      	0x0	// 0 <memset>
  d0:	e4640009 	addi      	r3, r4, 10
  d4:	b868      	st.w      	r3, (r14, 0x20)
  d6:	8e54      	ld.h      	r2, (r6, 0x28)
  d8:	334e      	movi      	r3, 78
  da:	e4e40017 	addi      	r7, r4, 24
  de:	6c53      	mov      	r1, r4
  e0:	6c17      	mov      	r0, r5
  e2:	dc6e1012 	st.h      	r3, (r14, 0x24)
  e6:	b8ea      	st.w      	r7, (r14, 0x28)
  e8:	e0000000 	bsr      	0x0	// 0 <ieee80211_wnb_rx_pair>
  ec:	85c2      	ld.b      	r6, (r5, 0x2)
  ee:	e900001b 	bez      	r0, 0x124	// 124 <ieee80211_wnb_rx_pair+0x124>
  f2:	846f      	ld.b      	r3, (r4, 0xf)
  f4:	b866      	st.w      	r3, (r14, 0x18)
  f6:	846e      	ld.b      	r3, (r4, 0xe)
  f8:	b865      	st.w      	r3, (r14, 0x14)
  fa:	846d      	ld.b      	r3, (r4, 0xd)
  fc:	b864      	st.w      	r3, (r14, 0x10)
  fe:	846c      	ld.b      	r3, (r4, 0xc)
 100:	b863      	st.w      	r3, (r14, 0xc)
 102:	846b      	ld.b      	r3, (r4, 0xb)
 104:	b862      	st.w      	r3, (r14, 0x8)
 106:	846a      	ld.b      	r3, (r4, 0xa)
 108:	b861      	st.w      	r3, (r14, 0x4)
 10a:	8764      	ld.b      	r3, (r7, 0x4)
 10c:	c48654c6 	zext      	r6, r6, 6, 4
 110:	b860      	st.w      	r3, (r14, 0x0)
 112:	ea020157 	movi      	r2, 343
 116:	5e63      	subi      	r3, r6, 1
 118:	1230      	lrw      	r1, 0x0	// 258 <ieee80211_wnb_rx_pair+0x258>
 11a:	1211      	lrw      	r0, 0x0	// 25c <ieee80211_wnb_rx_pair+0x25c>
 11c:	e0000000 	bsr      	0x0	// 0 <hgprintf>
 120:	140c      	addi      	r14, r14, 48
 122:	1498      	pop      	r4-r11, r15
 124:	e4c62070 	andi      	r6, r6, 112
 128:	eb460020 	cmpnei      	r6, 32
 12c:	0817      	bt      	0x15a	// 15a <ieee80211_wnb_rx_pair+0x15a>
 12e:	dc07004c 	st.b      	r0, (r7, 0x4c)
 132:	d865203f 	ld.w      	r3, (r5, 0xfc)
 136:	3b44      	cmpnei      	r3, 4
 138:	c4000503 	mvc      	r3
 13c:	6c9b      	mov      	r2, r6
 13e:	e4250112 	addi      	r1, r5, 275
 142:	a765      	st.b      	r3, (r7, 0x5)
 144:	e4040043 	addi      	r0, r4, 68
 148:	e0000000 	bsr      	0x0	// 0 <memcpy>
 14c:	6c9b      	mov      	r2, r6
 14e:	e4250133 	addi      	r1, r5, 308
 152:	e404001d 	addi      	r0, r4, 30
 156:	e0000000 	bsr      	0x0	// 0 <memcpy>
 15a:	8562      	ld.b      	r3, (r5, 0x2)
 15c:	c48354c3 	zext      	r3, r3, 6, 4
 160:	2b00      	subi      	r3, 1
 162:	a764      	st.b      	r3, (r7, 0x4)
 164:	8478      	ld.b      	r3, (r4, 0x18)
 166:	3601      	movi      	r6, 1
 168:	c4665c07 	ins      	r3, r6, 7, 7
 16c:	a478      	st.b      	r3, (r4, 0x18)
 16e:	d865202b 	ld.w      	r3, (r5, 0xac)
 172:	8533      	ld.b      	r1, (r5, 0x13)
 174:	8340      	ld.b      	r2, (r3, 0x0)
 176:	6c17      	mov      	r0, r5
 178:	e0000000 	bsr      	0x0	// 0 <ieee80211_chan_to_freq>
 17c:	af01      	st.h      	r0, (r7, 0x2)
 17e:	1a08      	addi      	r2, r14, 32
 180:	3100      	movi      	r1, 0
 182:	6c17      	mov      	r0, r5
 184:	e0000000 	bsr      	0x0	// 0 <ieee80211_wnb_rx_pair>
 188:	e920ffcc 	bnez      	r0, 0x120	// 120 <ieee80211_wnb_rx_pair+0x120>
 18c:	d865205c 	ld.w      	r3, (r5, 0x170)
 190:	8344      	ld.b      	r2, (r3, 0x4)
 192:	c4465c04 	ins      	r2, r6, 4, 4
 196:	a344      	st.b      	r2, (r3, 0x4)
 198:	07c4      	br      	0x120	// 120 <ieee80211_wnb_rx_pair+0x120>
 19a:	9562      	ld.w      	r3, (r5, 0x8)
 19c:	9580      	ld.w      	r4, (r5, 0x0)
 19e:	93c7      	ld.w      	r6, (r3, 0x1c)
 1a0:	3206      	movi      	r2, 6
 1a2:	5e2e      	addi      	r1, r6, 4
 1a4:	5c08      	addu      	r0, r4, r2
 1a6:	e0000000 	bsr      	0x0	// 0 <memcmp>
 1aa:	e9000009 	bez      	r0, 0x1bc	// 1bc <ieee80211_wnb_rx_pair+0x1bc>
 1ae:	ea020179 	movi      	r2, 377
 1b2:	112c      	lrw      	r1, 0x0	// 260 <ieee80211_wnb_rx_pair+0x260>
 1b4:	110c      	lrw      	r0, 0x0	// 264 <ieee80211_wnb_rx_pair+0x264>
 1b6:	e0000000 	bsr      	0x0	// 0 <hgprintf>
 1ba:	07b3      	br      	0x120	// 120 <ieee80211_wnb_rx_pair+0x120>
 1bc:	8462      	ld.b      	r3, (r4, 0x2)
 1be:	e4632070 	andi      	r3, r3, 112
 1c2:	3b50      	cmpnei      	r3, 16
 1c4:	082b      	bt      	0x21a	// 21a <ieee80211_wnb_rx_pair+0x21a>
 1c6:	d8042063 	ld.w      	r0, (r4, 0x18c)
 1ca:	3206      	movi      	r2, 6
 1cc:	e4260009 	addi      	r1, r6, 10
 1d0:	e4a40112 	addi      	r5, r4, 275
 1d4:	20ec      	addi      	r0, 237
 1d6:	e0000000 	bsr      	0x0	// 0 <memcpy>
 1da:	3220      	movi      	r2, 32
 1dc:	e4260043 	addi      	r1, r6, 68
 1e0:	6c17      	mov      	r0, r5
 1e2:	e0000000 	bsr      	0x0	// 0 <strncpy>
 1e6:	3220      	movi      	r2, 32
 1e8:	e426001d 	addi      	r1, r6, 30
 1ec:	e4040133 	addi      	r0, r4, 308
 1f0:	e0000000 	bsr      	0x0	// 0 <memcpy>
 1f4:	867d      	ld.b      	r3, (r6, 0x1d)
 1f6:	3b40      	cmpnei      	r3, 0
 1f8:	3204      	movi      	r2, 4
 1fa:	3302      	movi      	r3, 2
 1fc:	c4620c20 	incf      	r3, r2, 0
 200:	dc64203f 	st.w      	r3, (r4, 0xfc)
 204:	d8660064 	ld.b      	r3, (r6, 0x64)
 208:	ea020183 	movi      	r2, 387
 20c:	b8a0      	st.w      	r5, (r14, 0x0)
 20e:	e4e60017 	addi      	r7, r6, 24
 212:	1034      	lrw      	r1, 0x0	// 260 <ieee80211_wnb_rx_pair+0x260>
 214:	1015      	lrw      	r0, 0x0	// 268 <ieee80211_wnb_rx_pair+0x268>
 216:	e0000000 	bsr      	0x0	// 0 <hgprintf>
 21a:	d844205c 	ld.w      	r2, (r4, 0x170)
 21e:	3101      	movi      	r1, 1
 220:	8264      	ld.b      	r3, (r2, 0x4)
 222:	c4615c03 	ins      	r3, r1, 3, 3
 226:	a264      	st.b      	r3, (r2, 0x4)
 228:	e4632018 	andi      	r3, r3, 24
 22c:	3b58      	cmpnei      	r3, 24
 22e:	0b79      	bt      	0x120	// 120 <ieee80211_wnb_rx_pair+0x120>
 230:	3000      	movi      	r0, 0
 232:	b800      	st.w      	r0, (r14, 0x0)
 234:	6cd3      	mov      	r3, r4
 236:	104e      	lrw      	r2, 0x0	// 26c <ieee80211_wnb_rx_pair+0x26c>
 238:	ea01f424 	movi      	r1, 62500
 23c:	c4614901 	rotli      	r1, r1, 3
 240:	e0000000 	bsr      	0x0	// 0 <eloop_register_timeout>
 244:	076e      	br      	0x120	// 120 <ieee80211_wnb_rx_pair+0x120>
 246:	3206      	movi      	r2, 6
 248:	e4240009 	addi      	r1, r4, 10
 24c:	e406002b 	addi      	r0, r6, 44
 250:	e0000000 	bsr      	0x0	// 0 <memcpy>
 254:	0736      	br      	0xc0	// c0 <ieee80211_wnb_rx_pair+0xc0>
	...

Disassembly of section .text.ieee80211_wnb_rx_wakeup_frame:

00000000 <ieee80211_wnb_rx_wakeup_frame>:
   0:	14d2      	push      	r4-r5, r15
   2:	9062      	ld.w      	r3, (r0, 0x8)
   4:	3206      	movi      	r2, 6
   6:	9387      	ld.w      	r4, (r3, 0x1c)
   8:	90a0      	ld.w      	r5, (r0, 0x0)
   a:	5d08      	addu      	r0, r5, r2
   c:	5c2e      	addi      	r1, r4, 4
   e:	e0000000 	bsr      	0x0	// 0 <memcmp>
  12:	6c83      	mov      	r2, r0
  14:	e9200009 	bnez      	r0, 0x26	// 26 <ieee80211_wnb_rx_wakeup_frame+0x26>
  18:	847c      	ld.b      	r3, (r4, 0x1c)
  1a:	e424001f 	addi      	r1, r4, 32
  1e:	6c17      	mov      	r0, r5
  20:	e0000000 	bsr      	0x0	// 0 <ieee80211_wakeup_sta>
  24:	1492      	pop      	r4-r5, r15
  26:	3000      	movi      	r0, 0
  28:	2800      	subi      	r0, 1
  2a:	07fd      	br      	0x24	// 24 <ieee80211_wnb_rx_wakeup_frame+0x24>

Disassembly of section .text.ieee80211_wnb_send_wakeup_frame:

00000000 <ieee80211_wnb_send_wakeup_frame>:
   0:	14d4      	push      	r4-r7, r15
   2:	1428      	subi      	r14, r14, 32
   4:	6dcb      	mov      	r7, r2
   6:	3210      	movi      	r2, 16
   8:	6d03      	mov      	r4, r0
   a:	6d47      	mov      	r5, r1
   c:	c44e0020 	addu      	r0, r14, r2
  10:	3100      	movi      	r1, 0
  12:	6d8f      	mov      	r6, r3
  14:	e0000000 	bsr      	0x0	// 0 <memset>
  18:	e465001b 	addi      	r3, r5, 28
  1c:	b864      	st.w      	r3, (r14, 0x10)
  1e:	320e      	movi      	r2, 14
  20:	330e      	movi      	r3, 14
  22:	3100      	movi      	r1, 0
  24:	6c3b      	mov      	r0, r14
  26:	dc6e100a 	st.h      	r3, (r14, 0x14)
  2a:	ddce2006 	st.w      	r14, (r14, 0x18)
  2e:	e0000000 	bsr      	0x0	// 0 <memset>
  32:	6c5f      	mov      	r1, r7
  34:	3206      	movi      	r2, 6
  36:	1802      	addi      	r0, r14, 8
  38:	e0000000 	bsr      	0x0	// 0 <memcpy>
  3c:	d84e0000 	ld.b      	r2, (r14, 0x0)
  40:	3312      	movi      	r3, 18
  42:	c4435cc0 	ins      	r2, r3, 6, 0
  46:	d864202b 	ld.w      	r3, (r4, 0xac)
  4a:	dc4e0000 	st.b      	r2, (r14, 0x0)
  4e:	8340      	ld.b      	r2, (r3, 0x0)
  50:	8433      	ld.b      	r1, (r4, 0x13)
  52:	6c13      	mov      	r0, r4
  54:	e0000000 	bsr      	0x0	// 0 <ieee80211_chan_to_freq>
  58:	dc0e1001 	st.h      	r0, (r14, 0x2)
  5c:	1a04      	addi      	r2, r14, 16
  5e:	6c57      	mov      	r1, r5
  60:	6c13      	mov      	r0, r4
  62:	dcce0004 	st.b      	r6, (r14, 0x4)
  66:	e0000000 	bsr      	0x0	// 0 <ieee80211_wnb_send_wakeup_frame>
  6a:	1408      	addi      	r14, r14, 32
  6c:	1494      	pop      	r4-r7, r15

Disassembly of section .text.ieee80211_wnb_wakeup_sta:

00000000 <ieee80211_wnb_wakeup_sta>:
   0:	14d3      	push      	r4-r6, r15
   2:	1422      	subi      	r14, r14, 8
   4:	1c01      	addi      	r4, r14, 4
   6:	ea0c0000 	movi      	r12, 0
   a:	b880      	st.w      	r4, (r14, 0x0)
   c:	6d47      	mov      	r5, r1
   e:	6d8f      	mov      	r6, r3
  10:	dd8e2001 	st.w      	r12, (r14, 0x4)
  14:	e0000000 	bsr      	0x0	// 0 <ieee80211_wakeup_target>
  18:	e960000b 	blsz      	r0, 0x2e	// 2e <ieee80211_wnb_wakeup_sta+0x2e>
  1c:	9420      	ld.w      	r1, (r4, 0x0)
  1e:	e9010008 	bez      	r1, 0x2e	// 2e <ieee80211_wnb_wakeup_sta+0x2e>
  22:	74da      	sextb      	r3, r6
  24:	6c97      	mov      	r2, r5
  26:	d801202a 	ld.w      	r0, (r1, 0xa8)
  2a:	e0000000 	bsr      	0x0	// 0 <ieee80211_wnb_wakeup_sta>
  2e:	1402      	addi      	r14, r14, 8
  30:	1493      	pop      	r4-r6, r15
