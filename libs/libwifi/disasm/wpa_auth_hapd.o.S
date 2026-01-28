
libwifi/o/wpa_auth_hapd.o:     file format elf32-csky-little


Disassembly of section .text.hapd_wpa_auth_logger:

00000000 <hapd_wpa_auth_logger>:
   0:	14d0      	push      	r15
   2:	6c4f      	mov      	r1, r3
   4:	1002      	lrw      	r0, 0x0	// c <hapd_wpa_auth_logger+0xc>
   6:	e0000000 	bsr      	0x0	// 0 <hgprintf>
   a:	1490      	pop      	r15
   c:	00000000 	.long	0x00000000

Disassembly of section .text.hapd_wpa_auth_disconnect:

00000000 <hapd_wpa_auth_disconnect>:
   0:	14d4      	push      	r4-r7, r15
   2:	6d03      	mov      	r4, r0
   4:	6dc7      	mov      	r7, r1
   6:	6d8b      	mov      	r6, r2
   8:	e0000000 	bsr      	0x0	// 0 <ieee80211_sta_get>
   c:	6d43      	mov      	r5, r0
   e:	6c9b      	mov      	r2, r6
  10:	6c5f      	mov      	r1, r7
  12:	6c13      	mov      	r0, r4
  14:	e0000000 	bsr      	0x0	// 0 <ieee80211_send_disassoc>
  18:	e9050008 	bez      	r5, 0x28	// 28 <hapd_wpa_auth_disconnect+0x28>
  1c:	6cdb      	mov      	r3, r6
  1e:	3201      	movi      	r2, 1
  20:	6c57      	mov      	r1, r5
  22:	6c13      	mov      	r0, r4
  24:	e0000000 	bsr      	0x0	// 0 <ieee80211_sta_del>
  28:	1494      	pop      	r4-r7, r15

Disassembly of section .text.hapd_wpa_auth_set_eapol:

00000000 <hapd_wpa_auth_set_eapol>:
   0:	14d2      	push      	r4-r5, r15
   2:	6d4b      	mov      	r5, r2
   4:	6d03      	mov      	r4, r0
   6:	e0000000 	bsr      	0x0	// 0 <ieee80211_sta_get>
   a:	3d46      	cmpnei      	r5, 6
   c:	0807      	bt      	0x1a	// 1a <hapd_wpa_auth_set_eapol+0x1a>
   e:	6c83      	mov      	r2, r0
  10:	3300      	movi      	r3, 0
  12:	3108      	movi      	r1, 8
  14:	6c13      	mov      	r0, r4
  16:	e0000000 	bsr      	0x0	// 0 <ieee80211_iface_event>
  1a:	1492      	pop      	r4-r5, r15

Disassembly of section .text.hapd_wpa_auth_get_eapol:

00000000 <hapd_wpa_auth_get_eapol>:
   0:	3000      	movi      	r0, 0
   2:	2800      	subi      	r0, 1
   4:	783c      	jmp      	r15

Disassembly of section .text.hapd_wpa_auth_get_psk:

00000000 <hapd_wpa_auth_get_psk>:
   0:	9840      	ld.w      	r2, (r14, 0x0)
   2:	e9230009 	bnez      	r3, 0x14	// 14 <hapd_wpa_auth_get_psk+0x14>
   6:	e9020004 	bez      	r2, 0xe	// e <hapd_wpa_auth_get_psk+0xe>
   a:	3320      	movi      	r3, 32
   c:	b260      	st.w      	r3, (r2, 0x0)
   e:	e4000133 	addi      	r0, r0, 308
  12:	783c      	jmp      	r15
  14:	3000      	movi      	r0, 0
  16:	07fe      	br      	0x12	// 12 <hapd_wpa_auth_get_psk+0x12>

Disassembly of section .text.hapd_wpa_auth_get_msk:

00000000 <hapd_wpa_auth_get_msk>:
   0:	3000      	movi      	r0, 0
   2:	783c      	jmp      	r15

Disassembly of section .text.hapd_wpa_auth_set_key:

00000000 <hapd_wpa_auth_set_key>:
   0:	14d6      	push      	r4-r9, r15
   2:	1434      	subi      	r14, r14, 80
   4:	6d0f      	mov      	r4, r3
   6:	98fb      	ld.w      	r7, (r14, 0x6c)
   8:	987c      	ld.w      	r3, (r14, 0x70)
   a:	6c53      	mov      	r1, r4
   c:	b868      	st.w      	r3, (r14, 0x20)
   e:	6e0b      	mov      	r8, r2
  10:	d92e201d 	ld.w      	r9, (r14, 0x74)
  14:	6d83      	mov      	r6, r0
  16:	e0000000 	bsr      	0x0	// 0 <ieee80211_sta_get>
  1a:	dcee002c 	st.b      	r7, (r14, 0x2c)
  1e:	e4ee002d 	addi      	r7, r14, 46
  22:	6ca7      	mov      	r2, r9
  24:	9828      	ld.w      	r1, (r14, 0x20)
  26:	6d43      	mov      	r5, r0
  28:	6c1f      	mov      	r0, r7
  2a:	dd2e002d 	st.b      	r9, (r14, 0x2d)
  2e:	e0000000 	bsr      	0x0	// 0 <memcpy>
  32:	6c23      	mov      	r0, r8
  34:	e0000000 	bsr      	0x0	// 0 <wpa_alg_to_suite>
  38:	4870      	lsri      	r3, r0, 16
  3a:	dc6e0026 	st.b      	r3, (r14, 0x26)
  3e:	dc0e0024 	st.b      	r0, (r14, 0x24)
  42:	4b68      	lsri      	r3, r3, 8
  44:	c50055e0 	zext      	r0, r0, 15, 8
  48:	dc6e0027 	st.b      	r3, (r14, 0x27)
  4c:	dc0e0025 	st.b      	r0, (r14, 0x25)
  50:	e9050042 	bez      	r5, 0xd4	// d4 <hapd_wpa_auth_set_key+0xd4>
  54:	3300      	movi      	r3, 0
  56:	3208      	movi      	r2, 8
  58:	dc4e0028 	st.b      	r2, (r14, 0x28)
  5c:	dc6e002a 	st.b      	r3, (r14, 0x2a)
  60:	dc6e002b 	st.b      	r3, (r14, 0x2b)
  64:	dc6e0029 	st.b      	r3, (r14, 0x29)
  68:	320c      	movi      	r2, 12
  6a:	1909      	addi      	r1, r14, 36
  6c:	e40500ab 	addi      	r0, r5, 172
  70:	e0000000 	bsr      	0x0	// 0 <memcpy>
  74:	984a      	ld.w      	r2, (r14, 0x28)
  76:	b848      	st.w      	r2, (r14, 0x20)
  78:	8445      	ld.b      	r2, (r4, 0x5)
  7a:	b847      	st.w      	r2, (r14, 0x1c)
  7c:	8444      	ld.b      	r2, (r4, 0x4)
  7e:	b846      	st.w      	r2, (r14, 0x18)
  80:	8443      	ld.b      	r2, (r4, 0x3)
  82:	b845      	st.w      	r2, (r14, 0x14)
  84:	8442      	ld.b      	r2, (r4, 0x2)
  86:	b844      	st.w      	r2, (r14, 0x10)
  88:	8441      	ld.b      	r2, (r4, 0x1)
  8a:	b843      	st.w      	r2, (r14, 0xc)
  8c:	8440      	ld.b      	r2, (r4, 0x0)
  8e:	b842      	st.w      	r2, (r14, 0x8)
  90:	d84e002d 	ld.b      	r2, (r14, 0x2d)
  94:	d86e002c 	ld.b      	r3, (r14, 0x2c)
  98:	b840      	st.w      	r2, (r14, 0x0)
  9a:	9829      	ld.w      	r1, (r14, 0x24)
  9c:	9848      	ld.w      	r2, (r14, 0x20)
  9e:	b8e1      	st.w      	r7, (r14, 0x4)
  a0:	1015      	lrw      	r0, 0x0	// f4 <hapd_wpa_auth_set_key+0xf4>
  a2:	e0000000 	bsr      	0x0	// 0 <hgprintf>
  a6:	d84e002d 	ld.b      	r2, (r14, 0x2d)
  aa:	6c5f      	mov      	r1, r7
  ac:	3300      	movi      	r3, 0
  ae:	1013      	lrw      	r0, 0x0	// f8 <hapd_wpa_auth_set_key+0xf8>
  b0:	e0000000 	bsr      	0x0	// 0 <dump_hex>
  b4:	d86e002d 	ld.b      	r3, (r14, 0x2d)
  b8:	d8062029 	ld.w      	r0, (r6, 0xa4)
  bc:	eb480000 	cmpnei      	r8, 0
  c0:	b860      	st.w      	r3, (r14, 0x0)
  c2:	6443      	mvcv      	r1
  c4:	d9802010 	ld.w      	r12, (r0, 0x40)
  c8:	1b09      	addi      	r3, r14, 36
  ca:	6c93      	mov      	r2, r4
  cc:	7444      	zextb      	r1, r1
  ce:	7bf1      	jsr      	r12
  d0:	1414      	addi      	r14, r14, 80
  d2:	1496      	pop      	r4-r9, r15
  d4:	3300      	movi      	r3, 0
  d6:	2b7f      	subi      	r3, 128
  d8:	5e96      	addi      	r4, r6, 6
  da:	dcae002a 	st.b      	r5, (r14, 0x2a)
  de:	dcae002b 	st.b      	r5, (r14, 0x2b)
  e2:	dc6e0028 	st.b      	r3, (r14, 0x28)
  e6:	dcae0029 	st.b      	r5, (r14, 0x29)
  ea:	320c      	movi      	r2, 12
  ec:	1909      	addi      	r1, r14, 36
  ee:	e40601af 	addi      	r0, r6, 432
  f2:	07bf      	br      	0x70	// 70 <hapd_wpa_auth_set_key+0x70>
	...

Disassembly of section .text.hapd_wpa_auth_get_seqnum:

00000000 <hapd_wpa_auth_get_seqnum>:
   0:	3000      	movi      	r0, 0
   2:	783c      	jmp      	r15

Disassembly of section .text.hapd_wpa_auth_send_eapol:

00000000 <hapd_wpa_auth_send_eapol>:
   0:	14d0      	push      	r15
   2:	1421      	subi      	r14, r14, 4
   4:	b860      	st.w      	r3, (r14, 0x0)
   6:	6ccb      	mov      	r3, r2
   8:	ea02888e 	movi      	r2, 34958
   c:	e0000000 	bsr      	0x0	// 0 <wpa_ether_send>
  10:	1401      	addi      	r14, r14, 4
  12:	1490      	pop      	r15

Disassembly of section .text.hapd_wpa_auth_for_each_sta:

00000000 <hapd_wpa_auth_for_each_sta>:
   0:	14d4      	push      	r4-r7, r15
   2:	d860202a 	ld.w      	r3, (r0, 0xa8)
   6:	6d03      	mov      	r4, r0
   8:	d8632068 	ld.w      	r3, (r3, 0x1a0)
   c:	6d87      	mov      	r6, r1
   e:	6dcb      	mov      	r7, r2
  10:	93a0      	ld.w      	r5, (r3, 0x0)
  12:	d824202a 	ld.w      	r1, (r4, 0xa8)
  16:	e421019f 	addi      	r1, r1, 416
  1a:	644e      	cmpne      	r3, r1
  1c:	0803      	bt      	0x22	// 22 <hapd_wpa_auth_for_each_sta+0x22>
  1e:	3000      	movi      	r0, 0
  20:	1494      	pop      	r4-r7, r15
  22:	d843202a 	ld.w      	r2, (r3, 0xa8)
  26:	6492      	cmpne      	r4, r2
  28:	0806      	bt      	0x34	// 34 <hapd_wpa_auth_for_each_sta+0x34>
  2a:	9302      	ld.w      	r0, (r3, 0x8)
  2c:	e9000004 	bez      	r0, 0x34	// 34 <hapd_wpa_auth_for_each_sta+0x34>
  30:	6c5f      	mov      	r1, r7
  32:	7bd9      	jsr      	r6
  34:	6cd7      	mov      	r3, r5
  36:	95a0      	ld.w      	r5, (r5, 0x0)
  38:	07ed      	br      	0x12	// 12 <hapd_wpa_auth_for_each_sta+0x12>
