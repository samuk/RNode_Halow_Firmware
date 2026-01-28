
libwifi/o/wpa_wpa.o:     file format elf32-csky-little


Disassembly of section .text.is_zero_ether_addr:

00000000 <is_zero_ether_addr>:
   0:	8040      	ld.b      	r2, (r0, 0x0)
   2:	e9220013 	bnez      	r2, 0x28	// 28 <is_zero_ether_addr+0x28>
   6:	8061      	ld.b      	r3, (r0, 0x1)
   8:	e9230012 	bnez      	r3, 0x2c	// 2c <is_zero_ether_addr+0x2c>
   c:	8042      	ld.b      	r2, (r0, 0x2)
   e:	e922000b 	bnez      	r2, 0x24	// 24 <is_zero_ether_addr+0x24>
  12:	8063      	ld.b      	r3, (r0, 0x3)
  14:	e923000c 	bnez      	r3, 0x2c	// 2c <is_zero_ether_addr+0x2c>
  18:	8044      	ld.b      	r2, (r0, 0x4)
  1a:	e9220005 	bnez      	r2, 0x24	// 24 <is_zero_ether_addr+0x24>
  1e:	8065      	ld.b      	r3, (r0, 0x5)
  20:	3b40      	cmpnei      	r3, 0
  22:	64c3      	mvcv      	r3
  24:	740c      	zextb      	r0, r3
  26:	783c      	jmp      	r15
  28:	3300      	movi      	r3, 0
  2a:	07fd      	br      	0x24	// 24 <is_zero_ether_addr+0x24>
  2c:	6ccb      	mov      	r3, r2
  2e:	07fb      	br      	0x24	// 24 <is_zero_ether_addr+0x24>

Disassembly of section .text.unlikely.wpa_sm_set_rekey_offload:

00000000 <wpa_sm_set_rekey_offload>:
   0:	14d0      	push      	r15
   2:	1422      	subi      	r14, r14, 8
   4:	d9a020cd 	ld.w      	r13, (r0, 0x334)
   8:	d98d200d 	ld.w      	r12, (r13, 0x34)
   c:	e90c0011 	bez      	r12, 0x2e	// 2e <wpa_sm_set_rekey_offload+0x2e>
  10:	e46002cf 	addi      	r3, r0, 720
  14:	b861      	st.w      	r3, (r14, 0x4)
  16:	d8602052 	ld.w      	r3, (r0, 0x148)
  1a:	b860      	st.w      	r3, (r14, 0x0)
  1c:	d8402053 	ld.w      	r2, (r0, 0x14c)
  20:	e4600047 	addi      	r3, r0, 72
  24:	e4200067 	addi      	r1, r0, 104
  28:	d80d2000 	ld.w      	r0, (r13, 0x0)
  2c:	7bf1      	jsr      	r12
  2e:	1402      	addi      	r14, r14, 8
  30:	1490      	pop      	r15

Disassembly of section .text.wpa_sm_start_preauth:

00000000 <wpa_sm_start_preauth>:
   0:	783c      	jmp      	r15

Disassembly of section .text.wpa_supplicant_key_mgmt_set_pmk:

00000000 <wpa_supplicant_key_mgmt_set_pmk>:
   0:	14d0      	push      	r15
   2:	6c43      	mov      	r1, r0
   4:	9051      	ld.w      	r2, (r0, 0x44)
   6:	d80020cd 	ld.w      	r0, (r0, 0x334)
   a:	906e      	ld.w      	r3, (r0, 0x38)
   c:	e9030004 	bez      	r3, 0x14	// 14 <wpa_supplicant_key_mgmt_set_pmk+0x14>
  10:	9000      	ld.w      	r0, (r0, 0x0)
  12:	7bcd      	jsr      	r3
  14:	3000      	movi      	r0, 0
  16:	1490      	pop      	r15

Disassembly of section .text.wpa_sm_get_bssid.isra.5:

00000000 <wpa_sm_get_bssid.isra.5>:
   0:	14d2      	push      	r4-r5, r15
   2:	9060      	ld.w      	r3, (r0, 0x0)
   4:	6d03      	mov      	r4, r0
   6:	9366      	ld.w      	r3, (r3, 0x18)
   8:	6d47      	mov      	r5, r1
   a:	e9230007 	bnez      	r3, 0x18	// 18 <wpa_sm_get_bssid.isra.5+0x18>
   e:	1046      	lrw      	r2, 0x0	// 24 <wpa_sm_get_bssid.isra.5+0x24>
  10:	31cf      	movi      	r1, 207
  12:	1006      	lrw      	r0, 0x0	// 28 <wpa_sm_get_bssid.isra.5+0x28>
  14:	e0000000 	bsr      	0x0	// 0 <assert_internal>
  18:	9460      	ld.w      	r3, (r4, 0x0)
  1a:	6c57      	mov      	r1, r5
  1c:	9346      	ld.w      	r2, (r3, 0x18)
  1e:	9300      	ld.w      	r0, (r3, 0x0)
  20:	7bc9      	jsr      	r2
  22:	1492      	pop      	r4-r5, r15
	...

Disassembly of section .text.unlikely.wpa_sm_set_key.isra.9:

00000000 <wpa_sm_set_key.isra.9>:
   0:	14d8      	push      	r4-r11, r15
   2:	1426      	subi      	r14, r14, 24
   4:	6d8b      	mov      	r6, r2
   6:	984f      	ld.w      	r2, (r14, 0x3c)
   8:	6dcb      	mov      	r7, r2
   a:	9850      	ld.w      	r2, (r14, 0x40)
   c:	6e0b      	mov      	r8, r2
   e:	9851      	ld.w      	r2, (r14, 0x44)
  10:	6e4b      	mov      	r9, r2
  12:	9852      	ld.w      	r2, (r14, 0x48)
  14:	6e8b      	mov      	r10, r2
  16:	9853      	ld.w      	r2, (r14, 0x4c)
  18:	6ecb      	mov      	r11, r2
  1a:	9040      	ld.w      	r2, (r0, 0x0)
  1c:	6d03      	mov      	r4, r0
  1e:	9245      	ld.w      	r2, (r2, 0x14)
  20:	6d47      	mov      	r5, r1
  22:	e9220009 	bnez      	r2, 0x34	// 34 <wpa_sm_set_key.isra.9+0x34>
  26:	104d      	lrw      	r2, 0x0	// 58 <wpa_sm_set_key.isra.9+0x58>
  28:	31c8      	movi      	r1, 200
  2a:	100d      	lrw      	r0, 0x0	// 5c <wpa_sm_set_key.isra.9+0x5c>
  2c:	b865      	st.w      	r3, (r14, 0x14)
  2e:	e0000000 	bsr      	0x0	// 0 <assert_internal>
  32:	9865      	ld.w      	r3, (r14, 0x14)
  34:	9400      	ld.w      	r0, (r4, 0x0)
  36:	dd6e2004 	st.w      	r11, (r14, 0x10)
  3a:	dd4e2003 	st.w      	r10, (r14, 0xc)
  3e:	dd2e2002 	st.w      	r9, (r14, 0x8)
  42:	dd0e2001 	st.w      	r8, (r14, 0x4)
  46:	b8e0      	st.w      	r7, (r14, 0x0)
  48:	d9802005 	ld.w      	r12, (r0, 0x14)
  4c:	6c9b      	mov      	r2, r6
  4e:	6c57      	mov      	r1, r5
  50:	9000      	ld.w      	r0, (r0, 0x0)
  52:	7bf1      	jsr      	r12
  54:	1406      	addi      	r14, r14, 24
  56:	1498      	pop      	r4-r11, r15
	...

Disassembly of section .text.unlikely.wpa_sm_set_state.isra.11:

00000000 <wpa_sm_set_state.isra.11>:
   0:	14d2      	push      	r4-r5, r15
   2:	9060      	ld.w      	r3, (r0, 0x0)
   4:	6d03      	mov      	r4, r0
   6:	9362      	ld.w      	r3, (r3, 0x8)
   8:	6d47      	mov      	r5, r1
   a:	e9230007 	bnez      	r3, 0x18	// 18 <wpa_sm_set_state.isra.11+0x18>
   e:	1046      	lrw      	r2, 0x0	// 24 <wpa_sm_set_state.isra.11+0x24>
  10:	31b3      	movi      	r1, 179
  12:	1006      	lrw      	r0, 0x0	// 28 <wpa_sm_set_state.isra.11+0x28>
  14:	e0000000 	bsr      	0x0	// 0 <assert_internal>
  18:	9460      	ld.w      	r3, (r4, 0x0)
  1a:	6c57      	mov      	r1, r5
  1c:	9342      	ld.w      	r2, (r3, 0x8)
  1e:	9300      	ld.w      	r0, (r3, 0x0)
  20:	7bc9      	jsr      	r2
  22:	1492      	pop      	r4-r5, r15
	...

Disassembly of section .text.unlikely.wpa_sm_cancel_auth_timeout.isra.12:

00000000 <wpa_sm_cancel_auth_timeout.isra.12>:
   0:	14d1      	push      	r4, r15
   2:	9060      	ld.w      	r3, (r0, 0x0)
   4:	6d03      	mov      	r4, r0
   6:	9369      	ld.w      	r3, (r3, 0x24)
   8:	e9230007 	bnez      	r3, 0x16	// 16 <wpa_sm_cancel_auth_timeout.isra.12+0x16>
   c:	1045      	lrw      	r2, 0x0	// 20 <wpa_sm_cancel_auth_timeout.isra.12+0x20>
   e:	31e2      	movi      	r1, 226
  10:	1005      	lrw      	r0, 0x0	// 24 <wpa_sm_cancel_auth_timeout.isra.12+0x24>
  12:	e0000000 	bsr      	0x0	// 0 <assert_internal>
  16:	9460      	ld.w      	r3, (r4, 0x0)
  18:	9349      	ld.w      	r2, (r3, 0x24)
  1a:	9300      	ld.w      	r0, (r3, 0x0)
  1c:	7bc9      	jsr      	r2
  1e:	1491      	pop      	r4, r15
	...

Disassembly of section .text.unlikely.wpa_sm_deauthenticate.isra.13:

00000000 <wpa_sm_deauthenticate.isra.13>:
   0:	14d2      	push      	r4-r5, r15
   2:	9060      	ld.w      	r3, (r0, 0x0)
   4:	6d03      	mov      	r4, r0
   6:	9364      	ld.w      	r3, (r3, 0x10)
   8:	6d47      	mov      	r5, r1
   a:	e9230007 	bnez      	r3, 0x18	// 18 <wpa_sm_deauthenticate.isra.13+0x18>
   e:	1046      	lrw      	r2, 0x0	// 24 <wpa_sm_deauthenticate.isra.13+0x24>
  10:	31bf      	movi      	r1, 191
  12:	1006      	lrw      	r0, 0x0	// 28 <wpa_sm_deauthenticate.isra.13+0x28>
  14:	e0000000 	bsr      	0x0	// 0 <assert_internal>
  18:	9460      	ld.w      	r3, (r4, 0x0)
  1a:	6c57      	mov      	r1, r5
  1c:	9344      	ld.w      	r2, (r3, 0x10)
  1e:	9300      	ld.w      	r0, (r3, 0x0)
  20:	7bc9      	jsr      	r2
  22:	1492      	pop      	r4-r5, r15
	...

Disassembly of section .text.unlikely.wpa_report_ie_mismatch:

00000000 <wpa_report_ie_mismatch>:
   0:	14d3      	push      	r4-r6, r15
   2:	1426      	subi      	r14, r14, 24
   4:	6d8f      	mov      	r6, r3
   6:	986a      	ld.w      	r3, (r14, 0x28)
   8:	d9820005 	ld.b      	r12, (r2, 0x5)
   c:	b864      	st.w      	r3, (r14, 0x10)
   e:	986c      	ld.w      	r3, (r14, 0x30)
  10:	6d03      	mov      	r4, r0
  12:	b865      	st.w      	r3, (r14, 0x14)
  14:	8200      	ld.b      	r0, (r2, 0x0)
  16:	8261      	ld.b      	r3, (r2, 0x1)
  18:	dd8e2003 	st.w      	r12, (r14, 0xc)
  1c:	d9820004 	ld.b      	r12, (r2, 0x4)
  20:	dd8e2002 	st.w      	r12, (r14, 0x8)
  24:	d9820003 	ld.b      	r12, (r2, 0x3)
  28:	dd8e2001 	st.w      	r12, (r14, 0x4)
  2c:	8242      	ld.b      	r2, (r2, 0x2)
  2e:	b840      	st.w      	r2, (r14, 0x0)
  30:	6c83      	mov      	r2, r0
  32:	1102      	lrw      	r0, 0x0	// b8 <wpa_report_ie_mismatch+0xb8>
  34:	98ab      	ld.w      	r5, (r14, 0x2c)
  36:	e0000000 	bsr      	0x0	// 0 <hgprintf>
  3a:	d82420ff 	ld.w      	r1, (r4, 0x3fc)
  3e:	e9010037 	bez      	r1, 0xac	// ac <wpa_report_ie_mismatch+0xac>
  42:	3300      	movi      	r3, 0
  44:	d8442102 	ld.w      	r2, (r4, 0x408)
  48:	101d      	lrw      	r0, 0x0	// bc <dump_hex+0xbc>
  4a:	e0000000 	bsr      	0x0	// 0 <dump_hex>
  4e:	e906000f 	bez      	r6, 0x6c	// 6c <wpa_report_ie_mismatch+0x6c>
  52:	d86420ff 	ld.w      	r3, (r4, 0x3fc)
  56:	e9230005 	bnez      	r3, 0x60	// 60 <wpa_report_ie_mismatch+0x60>
  5a:	101a      	lrw      	r0, 0x0	// c0 <hgprintf+0xc0>
  5c:	e0000000 	bsr      	0x0	// 0 <hgprintf>
  60:	3300      	movi      	r3, 0
  62:	9844      	ld.w      	r2, (r14, 0x10)
  64:	6c5b      	mov      	r1, r6
  66:	1018      	lrw      	r0, 0x0	// c4 <wpa_report_ie_mismatch+0xc4>
  68:	e0000000 	bsr      	0x0	// 0 <dump_hex>
  6c:	d8242100 	ld.w      	r1, (r4, 0x400)
  70:	e9010021 	bez      	r1, 0xb2	// b2 <wpa_report_ie_mismatch+0xb2>
  74:	3300      	movi      	r3, 0
  76:	d8442103 	ld.w      	r2, (r4, 0x40c)
  7a:	1014      	lrw      	r0, 0x0	// c8 <dump_hex+0xc8>
  7c:	e0000000 	bsr      	0x0	// 0 <dump_hex>
  80:	e905000f 	bez      	r5, 0x9e	// 9e <wpa_report_ie_mismatch+0x9e>
  84:	d8642100 	ld.w      	r3, (r4, 0x400)
  88:	e9230005 	bnez      	r3, 0x92	// 92 <wpa_report_ie_mismatch+0x92>
  8c:	1010      	lrw      	r0, 0x0	// cc <hgprintf+0xcc>
  8e:	e0000000 	bsr      	0x0	// 0 <hgprintf>
  92:	3300      	movi      	r3, 0
  94:	9845      	ld.w      	r2, (r14, 0x14)
  96:	6c57      	mov      	r1, r5
  98:	100e      	lrw      	r0, 0x0	// d0 <wpa_report_ie_mismatch+0xd0>
  9a:	e0000000 	bsr      	0x0	// 0 <dump_hex>
  9e:	3111      	movi      	r1, 17
  a0:	e4040333 	addi      	r0, r4, 820
  a4:	e0000000 	bsr      	0x0	// 0 <wpa_report_ie_mismatch>
  a8:	1406      	addi      	r14, r14, 24
  aa:	1493      	pop      	r4-r6, r15
  ac:	e906ffe0 	bez      	r6, 0x6c	// 6c <wpa_report_ie_mismatch+0x6c>
  b0:	07d5      	br      	0x5a	// 5a <wpa_report_ie_mismatch+0x5a>
  b2:	e905fff6 	bez      	r5, 0x9e	// 9e <wpa_report_ie_mismatch+0x9e>
  b6:	07eb      	br      	0x8c	// 8c <wpa_report_ie_mismatch+0x8c>
	...

Disassembly of section .text.wpa_sm_get_state.isra.14:

00000000 <wpa_sm_get_state.isra.14>:
   0:	14d1      	push      	r4, r15
   2:	9060      	ld.w      	r3, (r0, 0x0)
   4:	6d03      	mov      	r4, r0
   6:	9363      	ld.w      	r3, (r3, 0xc)
   8:	e9230007 	bnez      	r3, 0x16	// 16 <wpa_sm_get_state.isra.14+0x16>
   c:	1045      	lrw      	r2, 0x0	// 20 <wpa_sm_get_state.isra.14+0x20>
   e:	31b9      	movi      	r1, 185
  10:	1005      	lrw      	r0, 0x0	// 24 <wpa_sm_get_state.isra.14+0x24>
  12:	e0000000 	bsr      	0x0	// 0 <assert_internal>
  16:	9460      	ld.w      	r3, (r4, 0x0)
  18:	9343      	ld.w      	r2, (r3, 0xc)
  1a:	9300      	ld.w      	r0, (r3, 0x0)
  1c:	7bc9      	jsr      	r2
  1e:	1491      	pop      	r4, r15
	...

Disassembly of section .text.unlikely.wpa_supplicant_rsc_relaxation.part.15:

00000000 <wpa_supplicant_rsc_relaxation.part.15>:
   0:	14d1      	push      	r4, r15
   2:	1425      	subi      	r14, r14, 20
   4:	d9800005 	ld.b      	r12, (r0, 0x5)
   8:	d9a00006 	ld.b      	r13, (r0, 0x6)
   c:	8087      	ld.b      	r4, (r0, 0x7)
   e:	e90c0005 	bez      	r12, 0x18	// 18 <wpa_supplicant_rsc_relaxation.part.15+0x18>
  12:	8060      	ld.b      	r3, (r0, 0x0)
  14:	e9030007 	bez      	r3, 0x22	// 22 <wpa_supplicant_rsc_relaxation.part.15+0x22>
  18:	e92d0005 	bnez      	r13, 0x22	// 22 <wpa_supplicant_rsc_relaxation.part.15+0x22>
  1c:	74d0      	zextb      	r3, r4
  1e:	e9030016 	bez      	r3, 0x4a	// 4a <wpa_supplicant_rsc_relaxation.part.15+0x4a>
  22:	8062      	ld.b      	r3, (r0, 0x2)
  24:	8041      	ld.b      	r2, (r0, 0x1)
  26:	8020      	ld.b      	r1, (r0, 0x0)
  28:	b884      	st.w      	r4, (r14, 0x10)
  2a:	ddae2003 	st.w      	r13, (r14, 0xc)
  2e:	dd8e2002 	st.w      	r12, (r14, 0x8)
  32:	d9800004 	ld.b      	r12, (r0, 0x4)
  36:	dd8e2001 	st.w      	r12, (r14, 0x4)
  3a:	8003      	ld.b      	r0, (r0, 0x3)
  3c:	b800      	st.w      	r0, (r14, 0x0)
  3e:	1005      	lrw      	r0, 0x0	// 50 <wpa_supplicant_rsc_relaxation.part.15+0x50>
  40:	e0000000 	bsr      	0x0	// 0 <hgprintf>
  44:	3001      	movi      	r0, 1
  46:	1405      	addi      	r14, r14, 20
  48:	1491      	pop      	r4, r15
  4a:	6c0f      	mov      	r0, r3
  4c:	07fd      	br      	0x46	// 46 <wpa_supplicant_rsc_relaxation.part.15+0x46>
  4e:	0000      	.short	0x0000
  50:	0000      	.short	0x0000
	...

Disassembly of section .text.unlikely.wpa_supplicant_check_group_cipher.isra.16:

00000000 <wpa_supplicant_check_group_cipher.isra.16>:
   0:	14d5      	push      	r4-r8, r15
   2:	6dcf      	mov      	r7, r3
   4:	9866      	ld.w      	r3, (r14, 0x18)
   6:	6e0f      	mov      	r8, r3
   8:	6d03      	mov      	r4, r0
   a:	6d47      	mov      	r5, r1
   c:	6d8b      	mov      	r6, r2
   e:	e0000000 	bsr      	0x0	// 0 <wpa_cipher_to_alg>
  12:	dc082000 	st.w      	r0, (r8, 0x0)
  16:	e9200009 	bnez      	r0, 0x28	// 28 <wpa_supplicant_check_group_cipher.isra.16+0x28>
  1a:	6c53      	mov      	r1, r4
  1c:	100f      	lrw      	r0, 0x0	// 58 <wpa_supplicant_check_group_cipher.isra.16+0x58>
  1e:	e0000000 	bsr      	0x0	// 0 <hgprintf>
  22:	3000      	movi      	r0, 0
  24:	2800      	subi      	r0, 1
  26:	1495      	pop      	r4-r8, r15
  28:	6c13      	mov      	r0, r4
  2a:	e0000000 	bsr      	0x0	// 0 <wpa_cipher_rsc_len>
  2e:	b700      	st.w      	r0, (r7, 0x0)
  30:	6c13      	mov      	r0, r4
  32:	e0000000 	bsr      	0x0	// 0 <wpa_cipher_key_len>
  36:	6542      	cmpne      	r0, r5
  38:	0803      	bt      	0x3e	// 3e <wpa_supplicant_check_group_cipher.isra.16+0x3e>
  3a:	6419      	cmplt      	r6, r0
  3c:	0c0b      	bf      	0x52	// 52 <wpa_supplicant_check_group_cipher.isra.16+0x52>
  3e:	6c13      	mov      	r0, r4
  40:	e0000000 	bsr      	0x0	// 0 <wpa_cipher_txt>
  44:	6c43      	mov      	r1, r0
  46:	6cdb      	mov      	r3, r6
  48:	6c97      	mov      	r2, r5
  4a:	1005      	lrw      	r0, 0x0	// 5c <wpa_supplicant_check_group_cipher.isra.16+0x5c>
  4c:	e0000000 	bsr      	0x0	// 0 <hgprintf>
  50:	07e9      	br      	0x22	// 22 <wpa_supplicant_check_group_cipher.isra.16+0x22>
  52:	3000      	movi      	r0, 0
  54:	07e9      	br      	0x26	// 26 <wpa_supplicant_check_group_cipher.isra.16+0x26>
	...

Disassembly of section .text.unlikely.wpa_supplicant_install_gtk.constprop.20:

00000000 <wpa_supplicant_install_gtk.constprop.20>:
   0:	14d5      	push      	r4-r8, r15
   2:	142d      	subi      	r14, r14, 52
   4:	d86020c1 	ld.w      	r3, (r0, 0x304)
   8:	91ec      	ld.w      	r7, (r1, 0x30)
   a:	65ce      	cmpne      	r3, r7
   c:	6d43      	mov      	r5, r0
   e:	6d07      	mov      	r4, r1
  10:	6e0b      	mov      	r8, r2
  12:	e4c1000f 	addi      	r6, r1, 16
  16:	0809      	bt      	0x28	// 28 <wpa_supplicant_install_gtk.constprop.20+0x28>
  18:	6c9f      	mov      	r2, r7
  1a:	6c5b      	mov      	r1, r6
  1c:	e40002e3 	addi      	r0, r0, 740
  20:	e0000000 	bsr      	0x0	// 0 <memcmp>
  24:	e9000044 	bez      	r0, 0xac	// ac <wpa_supplicant_install_gtk.constprop.20+0xac>
  28:	d86520ca 	ld.w      	r3, (r5, 0x328)
  2c:	64de      	cmpne      	r7, r3
  2e:	0809      	bt      	0x40	// 40 <wpa_supplicant_install_gtk.constprop.20+0x40>
  30:	6c9f      	mov      	r2, r7
  32:	6c5b      	mov      	r1, r6
  34:	e4050307 	addi      	r0, r5, 776
  38:	e0000000 	bsr      	0x0	// 0 <memcmp>
  3c:	e9000038 	bez      	r0, 0xac	// ac <wpa_supplicant_install_gtk.constprop.20+0xac>
  40:	6cdf      	mov      	r3, r7
  42:	9441      	ld.w      	r2, (r4, 0x4)
  44:	9423      	ld.w      	r1, (r4, 0xc)
  46:	1109      	lrw      	r0, 0x0	// e8 <wpa_supplicant_install_gtk.constprop.20+0xe8>
  48:	e0000000 	bsr      	0x0	// 0 <hgprintf>
  4c:	d86520f3 	ld.w      	r3, (r5, 0x3cc)
  50:	3b48      	cmpnei      	r3, 8
  52:	082f      	bt      	0xb0	// b0 <wpa_supplicant_install_gtk.constprop.20+0xb0>
  54:	3210      	movi      	r2, 16
  56:	6c5b      	mov      	r1, r6
  58:	1805      	addi      	r0, r14, 20
  5a:	e0000000 	bsr      	0x0	// 0 <memcpy>
  5e:	946a      	ld.w      	r3, (r4, 0x28)
  60:	b869      	st.w      	r3, (r14, 0x24)
  62:	946b      	ld.w      	r3, (r4, 0x2c)
  64:	b86a      	st.w      	r3, (r14, 0x28)
  66:	9468      	ld.w      	r3, (r4, 0x20)
  68:	b86b      	st.w      	r3, (r14, 0x2c)
  6a:	9469      	ld.w      	r3, (r4, 0x24)
  6c:	b86c      	st.w      	r3, (r14, 0x30)
  6e:	1a05      	addi      	r2, r14, 20
  70:	d9a520f2 	ld.w      	r13, (r5, 0x3c8)
  74:	eb4d0001 	cmpnei      	r13, 1
  78:	d984200c 	ld.w      	r12, (r4, 0x30)
  7c:	9422      	ld.w      	r1, (r4, 0x8)
  7e:	9463      	ld.w      	r3, (r4, 0xc)
  80:	e4050333 	addi      	r0, r5, 820
  84:	dd8e2004 	st.w      	r12, (r14, 0x10)
  88:	b843      	st.w      	r2, (r14, 0xc)
  8a:	b822      	st.w      	r1, (r14, 0x8)
  8c:	dd0e2001 	st.w      	r8, (r14, 0x4)
  90:	0812      	bt      	0xb4	// b4 <wpa_supplicant_install_gtk.constprop.20+0xb4>
  92:	ddae2000 	st.w      	r13, (r14, 0x0)
  96:	3200      	movi      	r2, 0
  98:	9420      	ld.w      	r1, (r4, 0x0)
  9a:	e0000000 	bsr      	0x0	// 0 <wpa_supplicant_install_gtk.constprop.20>
  9e:	e9a0001a 	bhsz      	r0, 0xd2	// d2 <wpa_supplicant_install_gtk.constprop.20+0xd2>
  a2:	1013      	lrw      	r0, 0x0	// ec <hgprintf+0xec>
  a4:	e0000000 	bsr      	0x0	// 0 <hgprintf>
  a8:	3000      	movi      	r0, 0
  aa:	2800      	subi      	r0, 1
  ac:	140d      	addi      	r14, r14, 52
  ae:	1495      	pop      	r4-r8, r15
  b0:	6c9b      	mov      	r2, r6
  b2:	07df      	br      	0x70	// 70 <wpa_supplicant_install_gtk.constprop.20+0x70>
  b4:	9441      	ld.w      	r2, (r4, 0x4)
  b6:	b840      	st.w      	r2, (r14, 0x0)
  b8:	9420      	ld.w      	r1, (r4, 0x0)
  ba:	104e      	lrw      	r2, 0x0	// f0 <wpa_supplicant_install_gtk.constprop.20+0xf0>
  bc:	e0000000 	bsr      	0x0	// 0 <wpa_supplicant_install_gtk.constprop.20>
  c0:	e9a00009 	bhsz      	r0, 0xd2	// d2 <wpa_supplicant_install_gtk.constprop.20+0xd2>
  c4:	9463      	ld.w      	r3, (r4, 0xc)
  c6:	944c      	ld.w      	r2, (r4, 0x30)
  c8:	9420      	ld.w      	r1, (r4, 0x0)
  ca:	100b      	lrw      	r0, 0x0	// f4 <wpa_supplicant_install_gtk.constprop.20+0xf4>
  cc:	e0000000 	bsr      	0x0	// 0 <hgprintf>
  d0:	07ec      	br      	0xa8	// a8 <wpa_supplicant_install_gtk.constprop.20+0xa8>
  d2:	944c      	ld.w      	r2, (r4, 0x30)
  d4:	dc4520c1 	st.w      	r2, (r5, 0x304)
  d8:	6c5b      	mov      	r1, r6
  da:	e40502e3 	addi      	r0, r5, 740
  de:	e0000000 	bsr      	0x0	// 0 <memcpy>
  e2:	3000      	movi      	r0, 0
  e4:	07e4      	br      	0xac	// ac <wpa_supplicant_install_gtk.constprop.20+0xac>
	...

Disassembly of section .text.unlikely.wpa_sm_mlme_setprotection.isra.10.constprop.21:

00000000 <wpa_sm_mlme_setprotection.isra.10.constprop.21>:
   0:	14d3      	push      	r4-r6, r15
   2:	9060      	ld.w      	r3, (r0, 0x0)
   4:	6d03      	mov      	r4, r0
   6:	936b      	ld.w      	r3, (r3, 0x2c)
   8:	6d47      	mov      	r5, r1
   a:	6d8b      	mov      	r6, r2
   c:	e9230008 	bnez      	r3, 0x1c	// 1c <wpa_sm_mlme_setprotection.isra.10.constprop.21+0x1c>
  10:	1048      	lrw      	r2, 0x0	// 30 <wpa_sm_mlme_setprotection.isra.10.constprop.21+0x30>
  12:	ea010107 	movi      	r1, 263
  16:	1008      	lrw      	r0, 0x0	// 34 <assert_internal+0x34>
  18:	e0000000 	bsr      	0x0	// 0 <assert_internal>
  1c:	9400      	ld.w      	r0, (r4, 0x0)
  1e:	3301      	movi      	r3, 1
  20:	d980200b 	ld.w      	r12, (r0, 0x2c)
  24:	6c9b      	mov      	r2, r6
  26:	6c57      	mov      	r1, r5
  28:	9000      	ld.w      	r0, (r0, 0x0)
  2a:	7bf1      	jsr      	r12
  2c:	1493      	pop      	r4-r6, r15
	...

Disassembly of section .text.unlikely.wpa_supplicant_key_neg_complete:

00000000 <wpa_supplicant_key_neg_complete>:
   0:	14d8      	push      	r4-r11, r15
   2:	1427      	subi      	r14, r14, 28
   4:	8165      	ld.b      	r3, (r1, 0x5)
   6:	6d03      	mov      	r4, r0
   8:	d80020f2 	ld.w      	r0, (r0, 0x3c8)
   c:	6d8b      	mov      	r6, r2
   e:	d9010001 	ld.b      	r8, (r1, 0x1)
  12:	d9210002 	ld.b      	r9, (r1, 0x2)
  16:	d9410003 	ld.b      	r10, (r1, 0x3)
  1a:	d9610004 	ld.b      	r11, (r1, 0x4)
  1e:	6d47      	mov      	r5, r1
  20:	81e0      	ld.b      	r7, (r1, 0x0)
  22:	b866      	st.w      	r3, (r14, 0x18)
  24:	e0000000 	bsr      	0x0	// 0 <wpa_cipher_txt>
  28:	b805      	st.w      	r0, (r14, 0x14)
  2a:	d80420f3 	ld.w      	r0, (r4, 0x3cc)
  2e:	e0000000 	bsr      	0x0	// 0 <wpa_cipher_txt>
  32:	9845      	ld.w      	r2, (r14, 0x14)
  34:	9866      	ld.w      	r3, (r14, 0x18)
  36:	6c5f      	mov      	r1, r7
  38:	b804      	st.w      	r0, (r14, 0x10)
  3a:	b843      	st.w      	r2, (r14, 0xc)
  3c:	b862      	st.w      	r3, (r14, 0x8)
  3e:	6ca3      	mov      	r2, r8
  40:	6ce7      	mov      	r3, r9
  42:	100d      	lrw      	r0, 0x0	// 74 <wpa_supplicant_key_neg_complete+0x74>
  44:	e4840333 	addi      	r4, r4, 820
  48:	dd6e2001 	st.w      	r11, (r14, 0x4)
  4c:	dd4e2000 	st.w      	r10, (r14, 0x0)
  50:	e0000000 	bsr      	0x0	// 0 <hgprintf>
  54:	6c13      	mov      	r0, r4
  56:	e0000000 	bsr      	0x0	// 0 <wpa_supplicant_key_neg_complete>
  5a:	3109      	movi      	r1, 9
  5c:	6c13      	mov      	r0, r4
  5e:	e0000000 	bsr      	0x0	// 0 <wpa_supplicant_key_neg_complete>
  62:	e9060007 	bez      	r6, 0x70	// 70 <wpa_supplicant_key_neg_complete+0x70>
  66:	3203      	movi      	r2, 3
  68:	6c57      	mov      	r1, r5
  6a:	6c13      	mov      	r0, r4
  6c:	e0000000 	bsr      	0x0	// 0 <wpa_supplicant_key_neg_complete>
  70:	1407      	addi      	r14, r14, 28
  72:	1498      	pop      	r4-r11, r15
  74:	00000000 	.long	0x00000000

Disassembly of section .text.wpa_sm_alloc_eapol.isra.7.constprop.22:

00000000 <wpa_sm_alloc_eapol.isra.7.constprop.22>:
   0:	14d4      	push      	r4-r7, r15
   2:	1422      	subi      	r14, r14, 8
   4:	6dcf      	mov      	r7, r3
   6:	9060      	ld.w      	r3, (r0, 0x0)
   8:	6d03      	mov      	r4, r0
   a:	936a      	ld.w      	r3, (r3, 0x28)
   c:	6d47      	mov      	r5, r1
   e:	6d8b      	mov      	r6, r2
  10:	e9230007 	bnez      	r3, 0x1e	// 1e <wpa_sm_alloc_eapol.isra.7.constprop.22+0x1e>
  14:	1049      	lrw      	r2, 0x0	// 38 <wpa_sm_alloc_eapol.isra.7.constprop.22+0x38>
  16:	31ea      	movi      	r1, 234
  18:	1009      	lrw      	r0, 0x0	// 3c <wpa_sm_alloc_eapol.isra.7.constprop.22+0x3c>
  1a:	e0000000 	bsr      	0x0	// 0 <assert_internal>
  1e:	9400      	ld.w      	r0, (r4, 0x0)
  20:	b8e1      	st.w      	r7, (r14, 0x4)
  22:	b8c0      	st.w      	r6, (r14, 0x0)
  24:	d980200a 	ld.w      	r12, (r0, 0x28)
  28:	6cd7      	mov      	r3, r5
  2a:	3200      	movi      	r2, 0
  2c:	3103      	movi      	r1, 3
  2e:	9000      	ld.w      	r0, (r0, 0x0)
  30:	7bf1      	jsr      	r12
  32:	1402      	addi      	r14, r14, 8
  34:	1494      	pop      	r4-r7, r15
	...

Disassembly of section .text.inc_byte_array:

00000000 <inc_byte_array>:
   0:	2900      	subi      	r1, 1
   2:	6040      	addu      	r1, r0
   4:	5961      	subu      	r3, r1, r0
   6:	e9830009 	blz      	r3, 0x18	// 18 <inc_byte_array+0x18>
   a:	8160      	ld.b      	r3, (r1, 0x0)
   c:	2300      	addi      	r3, 1
   e:	74cc      	zextb      	r3, r3
  10:	a160      	st.b      	r3, (r1, 0x0)
  12:	2900      	subi      	r1, 1
  14:	e903fff8 	bez      	r3, 0x4	// 4 <inc_byte_array+0x4>
  18:	783c      	jmp      	r15

Disassembly of section .text.wpa_eapol_key_send:

00000000 <wpa_eapol_key_send>:
   0:	14d8      	push      	r4-r11, r15
   2:	1425      	subi      	r14, r14, 20
   4:	6d0f      	mov      	r4, r3
   6:	9870      	ld.w      	r3, (r14, 0x40)
   8:	b863      	st.w      	r3, (r14, 0xc)
   a:	6dc3      	mov      	r7, r0
   c:	9871      	ld.w      	r3, (r14, 0x44)
   e:	6d87      	mov      	r6, r1
  10:	9031      	ld.w      	r1, (r0, 0x44)
  12:	d80020f4 	ld.w      	r0, (r0, 0x3d0)
  16:	6e0b      	mov      	r8, r2
  18:	98af      	ld.w      	r5, (r14, 0x3c)
  1a:	b864      	st.w      	r3, (r14, 0x10)
  1c:	d94e101c 	ld.h      	r10, (r14, 0x38)
  20:	e0000000 	bsr      	0x0	// 0 <wpa_mic_len>
  24:	6ec3      	mov      	r11, r0
  26:	6c13      	mov      	r0, r4
  28:	e0000000 	bsr      	0x0	// 0 <wpa_eapol_key_send>
  2c:	e9000011 	bez      	r0, 0x4e	// 4e <wpa_eapol_key_send+0x4e>
  30:	e52703ab 	addi      	r9, r7, 940
  34:	6c27      	mov      	r0, r9
  36:	e0000000 	bsr      	0x0	// 0 <wpa_eapol_key_send>
  3a:	e900000a 	bez      	r0, 0x4e	// 4e <wpa_eapol_key_send+0x4e>
  3e:	6c67      	mov      	r1, r9
  40:	e4070333 	addi      	r0, r7, 820
  44:	e0000000 	bsr      	0x0	// 0 <wpa_eapol_key_send>
  48:	38df      	btsti      	r0, 31
  4a:	c4890c20 	incf      	r4, r9, 0
  4e:	e90b0020 	bez      	r11, 0x8e	// 8e <wpa_eapol_key_send+0x8e>
  52:	9864      	ld.w      	r3, (r14, 0x10)
  54:	e903001d 	bez      	r3, 0x8e	// 8e <wpa_eapol_key_send+0x8e>
  58:	e9060018 	bez      	r6, 0x88	// 88 <wpa_eapol_key_send+0x88>
  5c:	d8262040 	ld.w      	r1, (r6, 0x100)
  60:	e9010014 	bez      	r1, 0x88	// 88 <wpa_eapol_key_send+0x88>
  64:	b862      	st.w      	r3, (r14, 0x8)
  66:	9863      	ld.w      	r3, (r14, 0xc)
  68:	b861      	st.w      	r3, (r14, 0x4)
  6a:	b8a0      	st.w      	r5, (r14, 0x0)
  6c:	6ce3      	mov      	r3, r8
  6e:	d84720f4 	ld.w      	r2, (r7, 0x3d0)
  72:	6c1b      	mov      	r0, r6
  74:	e0000000 	bsr      	0x0	// 0 <wpa_eapol_key_mic>
  78:	e900000b 	bez      	r0, 0x8e	// 8e <wpa_eapol_key_send+0x8e>
  7c:	d84720f4 	ld.w      	r2, (r7, 0x3d0)
  80:	6c63      	mov      	r1, r8
  82:	1012      	lrw      	r0, 0x0	// c8 <wpa_eapol_key_send+0xc8>
  84:	e0000000 	bsr      	0x0	// 0 <hgprintf>
  88:	3400      	movi      	r4, 0
  8a:	2c00      	subi      	r4, 1
  8c:	0417      	br      	0xba	// ba <wpa_eapol_key_send+0xba>
  8e:	d86720cd 	ld.w      	r3, (r7, 0x334)
  92:	9367      	ld.w      	r3, (r3, 0x1c)
  94:	e9230007 	bnez      	r3, 0xa2	// a2 <wpa_eapol_key_send+0xa2>
  98:	104d      	lrw      	r2, 0x0	// cc <wpa_eapol_key_send+0xcc>
  9a:	31d6      	movi      	r1, 214
  9c:	100d      	lrw      	r0, 0x0	// d0 <wpa_eapol_key_send+0xd0>
  9e:	e0000000 	bsr      	0x0	// 0 <assert_internal>
  a2:	d80720cd 	ld.w      	r0, (r7, 0x334)
  a6:	9863      	ld.w      	r3, (r14, 0xc)
  a8:	b860      	st.w      	r3, (r14, 0x0)
  aa:	d9802007 	ld.w      	r12, (r0, 0x1c)
  ae:	6c53      	mov      	r1, r4
  b0:	6cd7      	mov      	r3, r5
  b2:	6cab      	mov      	r2, r10
  b4:	9000      	ld.w      	r0, (r0, 0x0)
  b6:	7bf1      	jsr      	r12
  b8:	6d03      	mov      	r4, r0
  ba:	6c17      	mov      	r0, r5
  bc:	e0000000 	bsr      	0x0	// 0 <_os_free>
  c0:	6c13      	mov      	r0, r4
  c2:	1405      	addi      	r14, r14, 20
  c4:	1498      	pop      	r4-r11, r15
	...

Disassembly of section .text.wpa_sm_key_request:

00000000 <wpa_sm_key_request>:
   0:	14d8      	push      	r4-r11, r15
   2:	1429      	subi      	r14, r14, 36
   4:	6d03      	mov      	r4, r0
   6:	d80020f4 	ld.w      	r0, (r0, 0x3d0)
   a:	6d87      	mov      	r6, r1
   c:	6dcb      	mov      	r7, r2
   e:	e0000000 	bsr      	0x0	// 0 <wpa_use_akm_defined>
  12:	e9200016 	bnez      	r0, 0x3e	// 3e <wpa_sm_key_request+0x3e>
  16:	d86420f2 	ld.w      	r3, (r4, 0x3c8)
  1a:	3b48      	cmpnei      	r3, 8
  1c:	c4000508 	mvc      	r8
  20:	e5080000 	addi      	r8, r8, 1
  24:	e4a40333 	addi      	r5, r4, 820
  28:	1907      	addi      	r1, r14, 28
  2a:	6c17      	mov      	r0, r5
  2c:	e0000000 	bsr      	0x0	// 0 <wpa_sm_key_request>
  30:	e9a0000a 	bhsz      	r0, 0x44	// 44 <wpa_sm_key_request+0x44>
  34:	111d      	lrw      	r0, 0x0	// 128 <hgprintf+0x128>
  36:	e0000000 	bsr      	0x0	// 0 <hgprintf>
  3a:	1409      	addi      	r14, r14, 36
  3c:	1498      	pop      	r4-r11, r15
  3e:	ea080000 	movi      	r8, 0
  42:	07f1      	br      	0x24	// 24 <wpa_sm_key_request+0x24>
  44:	9431      	ld.w      	r1, (r4, 0x44)
  46:	d80420f4 	ld.w      	r0, (r4, 0x3d0)
  4a:	e0000000 	bsr      	0x0	// 0 <wpa_mic_len>
  4e:	e420004e 	addi      	r1, r0, 79
  52:	6e83      	mov      	r10, r0
  54:	1b06      	addi      	r3, r14, 24
  56:	1a05      	addi      	r2, r14, 20
  58:	7445      	zexth      	r1, r1
  5a:	6c17      	mov      	r0, r5
  5c:	e0000000 	bsr      	0x0	// 0 <wpa_sm_key_request>
  60:	6e43      	mov      	r9, r0
  62:	e900ffec 	bez      	r0, 0x3a	// 3a <wpa_sm_key_request+0x3a>
  66:	d86420f1 	ld.w      	r3, (r4, 0x3c4)
  6a:	3b42      	cmpnei      	r3, 2
  6c:	9846      	ld.w      	r2, (r14, 0x18)
  6e:	0c06      	bf      	0x7a	// 7a <wpa_sm_key_request+0x7a>
  70:	3b48      	cmpnei      	r3, 8
  72:	3102      	movi      	r1, 2
  74:	33fe      	movi      	r3, 254
  76:	c4610c20 	incf      	r3, r1, 0
  7a:	a260      	st.b      	r3, (r2, 0x0)
  7c:	d86420a0 	ld.w      	r3, (r4, 0x280)
  80:	e923004b 	bnez      	r3, 0x116	// 116 <wpa_sm_key_request+0x116>
  84:	eca80800 	ori      	r5, r8, 2048
  88:	e9060004 	bez      	r6, 0x90	// 90 <wpa_sm_key_request+0x90>
  8c:	eca50400 	ori      	r5, r5, 1024
  90:	e9070004 	bez      	r7, 0x98	// 98 <wpa_sm_key_request+0x98>
  94:	eca50008 	ori      	r5, r5, 8
  98:	c50555e3 	zext      	r3, r5, 15, 8
  9c:	a261      	st.b      	r3, (r2, 0x1)
  9e:	a2a2      	st.b      	r5, (r2, 0x2)
  a0:	9846      	ld.w      	r2, (r14, 0x18)
  a2:	3300      	movi      	r3, 0
  a4:	a263      	st.b      	r3, (r2, 0x3)
  a6:	e56402db 	addi      	r11, r4, 732
  aa:	9806      	ld.w      	r0, (r14, 0x18)
  ac:	a264      	st.b      	r3, (r2, 0x4)
  ae:	6c6f      	mov      	r1, r11
  b0:	3208      	movi      	r2, 8
  b2:	2004      	addi      	r0, 5
  b4:	b864      	st.w      	r3, (r14, 0x10)
  b6:	e0000000 	bsr      	0x0	// 0 <memcpy>
  ba:	6c2f      	mov      	r0, r11
  bc:	3108      	movi      	r1, 8
  be:	e0000000 	bsr      	0x0	// 0 <wpa_sm_key_request>
  c2:	d96e2006 	ld.w      	r11, (r14, 0x18)
  c6:	e56b004c 	addi      	r11, r11, 77
  ca:	62ac      	addu      	r10, r11
  cc:	9864      	ld.w      	r3, (r14, 0x10)
  ce:	e4a52100 	andi      	r5, r5, 256
  d2:	dc6a0000 	st.b      	r3, (r10, 0x0)
  d6:	dc6a0001 	st.b      	r3, (r10, 0x1)
  da:	3d40      	cmpnei      	r5, 0
  dc:	3300      	movi      	r3, 0
  de:	c5630c20 	incf      	r11, r3, 0
  e2:	9865      	ld.w      	r3, (r14, 0x14)
  e4:	b860      	st.w      	r3, (r14, 0x0)
  e6:	6c9f      	mov      	r2, r7
  e8:	d86420a0 	ld.w      	r3, (r4, 0x280)
  ec:	6c5b      	mov      	r1, r6
  ee:	1010      	lrw      	r0, 0x0	// 12c <wpa_sm_key_request+0x12c>
  f0:	e0000000 	bsr      	0x0	// 0 <hgprintf>
  f4:	9865      	ld.w      	r3, (r14, 0x14)
  f6:	b862      	st.w      	r3, (r14, 0x8)
  f8:	ea03888e 	movi      	r3, 34958
  fc:	b860      	st.w      	r3, (r14, 0x0)
  fe:	dd6e2003 	st.w      	r11, (r14, 0xc)
 102:	dd2e2001 	st.w      	r9, (r14, 0x4)
 106:	1b07      	addi      	r3, r14, 28
 108:	6ca3      	mov      	r2, r8
 10a:	e4240047 	addi      	r1, r4, 72
 10e:	6c13      	mov      	r0, r4
 110:	e0000000 	bsr      	0x0	// 0 <wpa_sm_key_request>
 114:	0793      	br      	0x3a	// 3a <wpa_sm_key_request+0x3a>
 116:	e92a0005 	bnez      	r10, 0x120	// 120 <wpa_sm_key_request+0x120>
 11a:	eca80a00 	ori      	r5, r8, 2560
 11e:	07b5      	br      	0x88	// 88 <wpa_sm_key_request+0x88>
 120:	eca80b00 	ori      	r5, r8, 2816
 124:	07b2      	br      	0x88	// 88 <wpa_sm_key_request+0x88>
	...

Disassembly of section .text.wpa_sm_rekey_ptk:

00000000 <wpa_sm_rekey_ptk>:
   0:	14d0      	push      	r15
   2:	3201      	movi      	r2, 1
   4:	3100      	movi      	r1, 0
   6:	e0000000 	bsr      	0x0	// 0 <wpa_sm_rekey_ptk>
   a:	1490      	pop      	r15

Disassembly of section .text.wpa_supplicant_send_2_of_4:

00000000 <wpa_supplicant_send_2_of_4>:
   0:	14d8      	push      	r4-r11, r15
   2:	142a      	subi      	r14, r14, 40
   4:	6dcf      	mov      	r7, r3
   6:	9873      	ld.w      	r3, (r14, 0x4c)
   8:	b865      	st.w      	r3, (r14, 0x14)
   a:	9874      	ld.w      	r3, (r14, 0x50)
   c:	b864      	st.w      	r3, (r14, 0x10)
   e:	9876      	ld.w      	r3, (r14, 0x58)
  10:	b866      	st.w      	r3, (r14, 0x18)
  12:	9864      	ld.w      	r3, (r14, 0x10)
  14:	6d03      	mov      	r4, r0
  16:	6e47      	mov      	r9, r1
  18:	6ecb      	mov      	r11, r2
  1a:	98d5      	ld.w      	r6, (r14, 0x54)
  1c:	e9230009 	bnez      	r3, 0x2e	// 2e <wpa_supplicant_send_2_of_4+0x2e>
  20:	111c      	lrw      	r0, 0x0	// 110 <hgprintf+0x110>
  22:	e0000000 	bsr      	0x0	// 0 <hgprintf>
  26:	3000      	movi      	r0, 0
  28:	2800      	subi      	r0, 1
  2a:	140a      	addi      	r14, r14, 40
  2c:	1498      	pop      	r4-r11, r15
  2e:	9031      	ld.w      	r1, (r0, 0x44)
  30:	d80020f4 	ld.w      	r0, (r0, 0x3d0)
  34:	e0000000 	bsr      	0x0	// 0 <wpa_mic_len>
  38:	e420004e 	addi      	r1, r0, 79
  3c:	7559      	zexth      	r5, r6
  3e:	6054      	addu      	r1, r5
  40:	6e83      	mov      	r10, r0
  42:	1b09      	addi      	r3, r14, 36
  44:	1a08      	addi      	r2, r14, 32
  46:	7445      	zexth      	r1, r1
  48:	e4040333 	addi      	r0, r4, 820
  4c:	e0000000 	bsr      	0x0	// 0 <wpa_supplicant_send_2_of_4>
  50:	6e03      	mov      	r8, r0
  52:	e9200005 	bnez      	r0, 0x5c	// 5c <wpa_supplicant_send_2_of_4+0x5c>
  56:	e0000000 	bsr      	0x0	// 0 <_os_free>
  5a:	07e6      	br      	0x26	// 26 <wpa_supplicant_send_2_of_4+0x26>
  5c:	d86420f1 	ld.w      	r3, (r4, 0x3c4)
  60:	3b42      	cmpnei      	r3, 2
  62:	9849      	ld.w      	r2, (r14, 0x24)
  64:	0c06      	bf      	0x70	// 70 <wpa_supplicant_send_2_of_4+0x70>
  66:	3b48      	cmpnei      	r3, 8
  68:	31fe      	movi      	r1, 254
  6a:	3302      	movi      	r3, 2
  6c:	c4610c40 	inct      	r3, r1, 0
  70:	a260      	st.b      	r3, (r2, 0x0)
  72:	74dd      	zexth      	r3, r7
  74:	e90a0044 	bez      	r10, 0xfc	// fc <wpa_supplicant_send_2_of_4+0xfc>
  78:	ec630108 	ori      	r3, r3, 264
  7c:	4b28      	lsri      	r1, r3, 8
  7e:	a221      	st.b      	r1, (r2, 0x1)
  80:	a262      	st.b      	r3, (r2, 0x2)
  82:	d86420f1 	ld.w      	r3, (r4, 0x3c4)
  86:	3b42      	cmpnei      	r3, 2
  88:	0c03      	bf      	0x8e	// 8e <wpa_supplicant_send_2_of_4+0x8e>
  8a:	3b48      	cmpnei      	r3, 8
  8c:	083b      	bt      	0x102	// 102 <wpa_supplicant_send_2_of_4+0x102>
  8e:	9869      	ld.w      	r3, (r14, 0x24)
  90:	3200      	movi      	r2, 0
  92:	a343      	st.b      	r2, (r3, 0x3)
  94:	a344      	st.b      	r2, (r3, 0x4)
  96:	9869      	ld.w      	r3, (r14, 0x24)
  98:	e42b0004 	addi      	r1, r11, 5
  9c:	3208      	movi      	r2, 8
  9e:	5b12      	addi      	r0, r3, 5
  a0:	b867      	st.w      	r3, (r14, 0x1c)
  a2:	e0000000 	bsr      	0x0	// 0 <memcpy>
  a6:	9867      	ld.w      	r3, (r14, 0x1c)
  a8:	e563004c 	addi      	r11, r3, 77
  ac:	c54b0023 	addu      	r3, r11, r10
  b0:	4da8      	lsri      	r5, r5, 8
  b2:	e40a0001 	addi      	r0, r10, 2
  b6:	a3a0      	st.b      	r5, (r3, 0x0)
  b8:	a3c1      	st.b      	r6, (r3, 0x1)
  ba:	6c9b      	mov      	r2, r6
  bc:	9824      	ld.w      	r1, (r14, 0x10)
  be:	602c      	addu      	r0, r11
  c0:	e0000000 	bsr      	0x0	// 0 <memcpy>
  c4:	3000      	movi      	r0, 0
  c6:	e0000000 	bsr      	0x0	// 0 <_os_free>
  ca:	9809      	ld.w      	r0, (r14, 0x24)
  cc:	9825      	ld.w      	r1, (r14, 0x14)
  ce:	3220      	movi      	r2, 32
  d0:	200c      	addi      	r0, 13
  d2:	e0000000 	bsr      	0x0	// 0 <memcpy>
  d6:	1010      	lrw      	r0, 0x0	// 114 <hgprintf+0x114>
  d8:	e0000000 	bsr      	0x0	// 0 <hgprintf>
  dc:	9868      	ld.w      	r3, (r14, 0x20)
  de:	b862      	st.w      	r3, (r14, 0x8)
  e0:	ea03888e 	movi      	r3, 34958
  e4:	b860      	st.w      	r3, (r14, 0x0)
  e6:	dd6e2003 	st.w      	r11, (r14, 0xc)
  ea:	dd0e2001 	st.w      	r8, (r14, 0x4)
  ee:	6ce7      	mov      	r3, r9
  f0:	6c9f      	mov      	r2, r7
  f2:	9826      	ld.w      	r1, (r14, 0x18)
  f4:	6c13      	mov      	r0, r4
  f6:	e0000000 	bsr      	0x0	// 0 <wpa_supplicant_send_2_of_4>
  fa:	0798      	br      	0x2a	// 2a <wpa_supplicant_send_2_of_4+0x2a>
  fc:	ec631008 	ori      	r3, r3, 4104
 100:	07be      	br      	0x7c	// 7c <wpa_supplicant_send_2_of_4+0x7c>
 102:	9869      	ld.w      	r3, (r14, 0x24)
 104:	d84b0003 	ld.b      	r2, (r11, 0x3)
 108:	a343      	st.b      	r2, (r3, 0x3)
 10a:	d84b0004 	ld.b      	r2, (r11, 0x4)
 10e:	07c3      	br      	0x94	// 94 <wpa_supplicant_send_2_of_4+0x94>
	...

Disassembly of section .text.wpa_supplicant_send_4_of_4:

00000000 <wpa_supplicant_send_4_of_4>:
   0:	14d7      	push      	r4-r10, r15
   2:	1427      	subi      	r14, r14, 28
   4:	6d43      	mov      	r5, r0
   6:	6dc7      	mov      	r7, r1
   8:	6d8f      	mov      	r6, r3
   a:	9031      	ld.w      	r1, (r0, 0x44)
   c:	9870      	ld.w      	r3, (r14, 0x40)
   e:	d80020f4 	ld.w      	r0, (r0, 0x3d0)
  12:	6e4b      	mov      	r9, r2
  14:	b864      	st.w      	r3, (r14, 0x10)
  16:	d88e101e 	ld.h      	r4, (r14, 0x3c)
  1a:	e0000000 	bsr      	0x0	// 0 <wpa_mic_len>
  1e:	e420004e 	addi      	r1, r0, 79
  22:	6e03      	mov      	r8, r0
  24:	1b06      	addi      	r3, r14, 24
  26:	1a05      	addi      	r2, r14, 20
  28:	7445      	zexth      	r1, r1
  2a:	e4050333 	addi      	r0, r5, 820
  2e:	e0000000 	bsr      	0x0	// 0 <wpa_supplicant_send_4_of_4>
  32:	6e83      	mov      	r10, r0
  34:	e900004c 	bez      	r0, 0xcc	// cc <wpa_supplicant_send_4_of_4+0xcc>
  38:	d86520f1 	ld.w      	r3, (r5, 0x3c4)
  3c:	3b42      	cmpnei      	r3, 2
  3e:	9846      	ld.w      	r2, (r14, 0x18)
  40:	0c06      	bf      	0x4c	// 4c <wpa_supplicant_send_4_of_4+0x4c>
  42:	3b48      	cmpnei      	r3, 8
  44:	31fe      	movi      	r1, 254
  46:	3302      	movi      	r3, 2
  48:	c4610c40 	inct      	r3, r1, 0
  4c:	a260      	st.b      	r3, (r2, 0x0)
  4e:	e4642200 	andi      	r3, r4, 512
  52:	6cd8      	or      	r3, r6
  54:	e9080032 	bez      	r8, 0xb8	// b8 <wpa_supplicant_send_4_of_4+0xb8>
  58:	ec630108 	ori      	r3, r3, 264
  5c:	4b28      	lsri      	r1, r3, 8
  5e:	a221      	st.b      	r1, (r2, 0x1)
  60:	a262      	st.b      	r3, (r2, 0x2)
  62:	d86520f1 	ld.w      	r3, (r5, 0x3c4)
  66:	3b42      	cmpnei      	r3, 2
  68:	0c03      	bf      	0x6e	// 6e <wpa_supplicant_send_4_of_4+0x6e>
  6a:	3b48      	cmpnei      	r3, 8
  6c:	0829      	bt      	0xbe	// be <wpa_supplicant_send_4_of_4+0xbe>
  6e:	9866      	ld.w      	r3, (r14, 0x18)
  70:	3200      	movi      	r2, 0
  72:	a343      	st.b      	r2, (r3, 0x3)
  74:	a344      	st.b      	r2, (r3, 0x4)
  76:	9886      	ld.w      	r4, (r14, 0x18)
  78:	5c12      	addi      	r0, r4, 5
  7a:	244c      	addi      	r4, 77
  7c:	3208      	movi      	r2, 8
  7e:	e4290004 	addi      	r1, r9, 5
  82:	6210      	addu      	r8, r4
  84:	e0000000 	bsr      	0x0	// 0 <memcpy>
  88:	3300      	movi      	r3, 0
  8a:	dc680000 	st.b      	r3, (r8, 0x0)
  8e:	dc680001 	st.b      	r3, (r8, 0x1)
  92:	1011      	lrw      	r0, 0x0	// d4 <hgprintf+0xd4>
  94:	e0000000 	bsr      	0x0	// 0 <hgprintf>
  98:	9865      	ld.w      	r3, (r14, 0x14)
  9a:	b862      	st.w      	r3, (r14, 0x8)
  9c:	ea03888e 	movi      	r3, 34958
  a0:	b860      	st.w      	r3, (r14, 0x0)
  a2:	b883      	st.w      	r4, (r14, 0xc)
  a4:	dd4e2001 	st.w      	r10, (r14, 0x4)
  a8:	6cdf      	mov      	r3, r7
  aa:	6c9b      	mov      	r2, r6
  ac:	9824      	ld.w      	r1, (r14, 0x10)
  ae:	6c17      	mov      	r0, r5
  b0:	e0000000 	bsr      	0x0	// 0 <wpa_supplicant_send_4_of_4>
  b4:	1407      	addi      	r14, r14, 28
  b6:	1497      	pop      	r4-r10, r15
  b8:	ec631008 	ori      	r3, r3, 4104
  bc:	07d0      	br      	0x5c	// 5c <wpa_supplicant_send_4_of_4+0x5c>
  be:	9866      	ld.w      	r3, (r14, 0x18)
  c0:	d8490003 	ld.b      	r2, (r9, 0x3)
  c4:	a343      	st.b      	r2, (r3, 0x3)
  c6:	d8490004 	ld.b      	r2, (r9, 0x4)
  ca:	07d5      	br      	0x74	// 74 <wpa_supplicant_send_4_of_4+0x74>
  cc:	3000      	movi      	r0, 0
  ce:	2800      	subi      	r0, 1
  d0:	07f2      	br      	0xb4	// b4 <wpa_supplicant_send_4_of_4+0xb4>
  d2:	0000      	.short	0x0000
  d4:	00000000 	.long	0x00000000

Disassembly of section .text.wpa_sm_aborted_cached:

00000000 <wpa_sm_aborted_cached>:
   0:	783c      	jmp      	r15

Disassembly of section .text.wpa_sm_rx_eapol:

00000000 <wpa_sm_rx_eapol>:
   0:	14d8      	push      	r4-r11, r15
   2:	153f      	subi      	r14, r14, 252
   4:	6d03      	mov      	r4, r0
   6:	6d47      	mov      	r5, r1
   8:	9031      	ld.w      	r1, (r0, 0x44)
   a:	d80020f4 	ld.w      	r0, (r0, 0x3d0)
   e:	6e0f      	mov      	r8, r3
  10:	6d8b      	mov      	r6, r2
  12:	e0000000 	bsr      	0x0	// 0 <wpa_mic_len>
  16:	6cc3      	mov      	r3, r0
  18:	2352      	addi      	r3, 83
  1a:	64e0      	cmphs      	r8, r3
  1c:	b809      	st.w      	r0, (r14, 0x24)
  1e:	e84006ee 	bf      	0xdfa	// dfa <wpa_sm_rx_eapol+0xdfa>
  22:	8661      	ld.b      	r3, (r6, 0x1)
  24:	3b43      	cmpnei      	r3, 3
  26:	e86006e3 	bt      	0xdec	// dec <wpa_sm_rx_eapol+0xdec>
  2a:	86e2      	ld.b      	r7, (r6, 0x2)
  2c:	47e8      	lsli      	r7, r7, 8
  2e:	8643      	ld.b      	r2, (r6, 0x3)
  30:	6dc8      	or      	r7, r2
  32:	e5081003 	subi      	r8, r8, 4
  36:	65e0      	cmphs      	r8, r7
  38:	e84006da 	bf      	0xdec	// dec <wpa_sm_rx_eapol+0xdec>
  3c:	e500004e 	addi      	r8, r0, 79
  40:	661c      	cmphs      	r7, r8
  42:	e84006d5 	bf      	0xdec	// dec <wpa_sm_rx_eapol+0xdec>
  46:	5f6e      	addi      	r3, r7, 4
  48:	6c4f      	mov      	r1, r3
  4a:	6c1b      	mov      	r0, r6
  4c:	b86a      	st.w      	r3, (r14, 0x28)
  4e:	e0000000 	bsr      	0x0	// 0 <os_memdup>
  52:	6ec3      	mov      	r11, r0
  54:	e900001d 	bez      	r0, 0x8e	// 8e <wpa_sm_rx_eapol+0x8e>
  58:	8064      	ld.b      	r3, (r0, 0x4)
  5a:	eb4300fe 	cmpnei      	r3, 254
  5e:	0c04      	bf      	0x66	// 66 <wpa_sm_rx_eapol+0x66>
  60:	3b42      	cmpnei      	r3, 2
  62:	e86006c9 	bt      	0xdf4	// df4 <wpa_sm_rx_eapol+0xdf4>
  66:	e46b0050 	addi      	r3, r11, 81
  6a:	9849      	ld.w      	r2, (r14, 0x24)
  6c:	b86b      	st.w      	r3, (r14, 0x2c)
  6e:	60c8      	addu      	r3, r2
  70:	c5070082 	subu      	r2, r7, r8
  74:	d9230000 	ld.b      	r9, (r3, 0x0)
  78:	c5094829 	lsli      	r9, r9, 8
  7c:	8361      	ld.b      	r3, (r3, 0x1)
  7e:	6e4c      	or      	r9, r3
  80:	6648      	cmphs      	r2, r9
  82:	6da7      	mov      	r6, r9
  84:	0809      	bt      	0x96	// 96 <wpa_sm_rx_eapol+0x96>
  86:	6c67      	mov      	r1, r9
  88:	020e      	lrw      	r0, 0x0	// 34c <wpa_sm_rx_eapol+0x34c>
  8a:	e0000000 	bsr      	0x0	// 0 <hgprintf>
  8e:	3500      	movi      	r5, 0
  90:	2d00      	subi      	r5, 1
  92:	e80003e0 	br      	0x852	// 852 <wpa_sm_rx_eapol+0x852>
  96:	d90b0005 	ld.b      	r8, (r11, 0x5)
  9a:	d86b0006 	ld.b      	r3, (r11, 0x6)
  9e:	c5084828 	lsli      	r8, r8, 8
  a2:	6e0c      	or      	r8, r3
  a4:	e5482007 	andi      	r10, r8, 7
  a8:	e46a1000 	subi      	r3, r10, 1
  ac:	74cd      	zexth      	r3, r3
  ae:	3b02      	cmphsi      	r3, 3
  b0:	0c0c      	bf      	0xc8	// c8 <wpa_sm_rx_eapol+0xc8>
  b2:	d80420f4 	ld.w      	r0, (r4, 0x3d0)
  b6:	e0000000 	bsr      	0x0	// 0 <wpa_use_akm_defined>
  ba:	e9200007 	bnez      	r0, 0xc8	// c8 <wpa_sm_rx_eapol+0xc8>
  be:	6c6b      	mov      	r1, r10
  c0:	021b      	lrw      	r0, 0x0	// 350 <wpa_sm_rx_eapol+0x350>
  c2:	e0000000 	bsr      	0x0	// 0 <hgprintf>
  c6:	07e4      	br      	0x8e	// 8e <wpa_sm_rx_eapol+0x8e>
  c8:	d80420f4 	ld.w      	r0, (r4, 0x3d0)
  cc:	e0000000 	bsr      	0x0	// 0 <wpa_use_akm_defined>
  d0:	e9000007 	bez      	r0, 0xde	// de <wpa_sm_rx_eapol+0xde>
  d4:	e90a0005 	bez      	r10, 0xde	// de <wpa_sm_rx_eapol+0xde>
  d8:	6c6b      	mov      	r1, r10
  da:	0300      	lrw      	r0, 0x0	// 354 <wpa_sm_rx_eapol+0x354>
  dc:	07f3      	br      	0xc2	// c2 <wpa_sm_rx_eapol+0xc2>
  de:	d80420f4 	ld.w      	r0, (r4, 0x3d0)
  e2:	ea03ac6c 	movi      	r3, 44140
  e6:	c4a34903 	rotli      	r3, r3, 5
  ea:	68c0      	and      	r3, r0
  ec:	e903000d 	bez      	r3, 0x106	// 106 <wpa_sm_rx_eapol+0x106>
  f0:	eb4a0003 	cmpnei      	r10, 3
  f4:	0c23      	bf      	0x13a	// 13a <wpa_use_akm_defined+0x13a>
  f6:	e0000000 	bsr      	0x0	// 0 <wpa_use_akm_defined>
  fa:	e9200020 	bnez      	r0, 0x13a	// 13a <wpa_sm_rx_eapol+0x13a>
  fe:	0308      	lrw      	r0, 0x0	// 358 <hgprintf+0x358>
 100:	e0000000 	bsr      	0x0	// 0 <hgprintf>
 104:	07c5      	br      	0x8e	// 8e <wpa_sm_rx_eapol+0x8e>
 106:	d86420f2 	ld.w      	r3, (r4, 0x3c8)
 10a:	3b50      	cmpnei      	r3, 16
 10c:	082b      	bt      	0x162	// 162 <wpa_sm_rx_eapol+0x162>
 10e:	e0000000 	bsr      	0x0	// 0 <wpa_use_akm_defined>
 112:	e9200028 	bnez      	r0, 0x162	// 162 <wpa_sm_rx_eapol+0x162>
 116:	eb4a0002 	cmpnei      	r10, 2
 11a:	0c24      	bf      	0x162	// 162 <wpa_sm_rx_eapol+0x162>
 11c:	6c6b      	mov      	r1, r10
 11e:	030f      	lrw      	r0, 0x0	// 35c <wpa_sm_rx_eapol+0x35c>
 120:	e0000000 	bsr      	0x0	// 0 <hgprintf>
 124:	d86420f3 	ld.w      	r3, (r4, 0x3cc)
 128:	3b50      	cmpnei      	r3, 16
 12a:	0c17      	bf      	0x158	// 158 <wpa_sm_rx_eapol+0x158>
 12c:	e4682008 	andi      	r3, r8, 8
 130:	e9230014 	bnez      	r3, 0x158	// 158 <wpa_sm_rx_eapol+0x158>
 134:	0314      	lrw      	r0, 0x0	// 360 <hgprintf+0x360>
 136:	e0000000 	bsr      	0x0	// 0 <hgprintf>
 13a:	d86420b6 	ld.w      	r3, (r4, 0x2d8)
 13e:	e9030023 	bez      	r3, 0x184	// 184 <wpa_sm_rx_eapol+0x184>
 142:	3208      	movi      	r2, 8
 144:	e42402cf 	addi      	r1, r4, 720
 148:	e40b0008 	addi      	r0, r11, 9
 14c:	e0000000 	bsr      	0x0	// 0 <memcmp>
 150:	e940001a 	bhz      	r0, 0x184	// 184 <wpa_sm_rx_eapol+0x184>
 154:	031b      	lrw      	r0, 0x0	// 364 <wpa_sm_rx_eapol+0x364>
 156:	07d5      	br      	0x100	// 100 <wpa_sm_rx_eapol+0x100>
 158:	eb4a0003 	cmpnei      	r10, 3
 15c:	0b99      	bt      	0x8e	// 8e <wpa_sm_rx_eapol+0x8e>
 15e:	031c      	lrw      	r0, 0x0	// 368 <wpa_sm_rx_eapol+0x368>
 160:	07eb      	br      	0x136	// 136 <wpa_sm_rx_eapol+0x136>
 162:	d86420f2 	ld.w      	r3, (r4, 0x3c8)
 166:	eb430040 	cmpnei      	r3, 64
 16a:	0be8      	bt      	0x13a	// 13a <wpa_sm_rx_eapol+0x13a>
 16c:	d80420f4 	ld.w      	r0, (r4, 0x3d0)
 170:	e0000000 	bsr      	0x0	// 0 <wpa_use_akm_defined>
 174:	e920ffe3 	bnez      	r0, 0x13a	// 13a <wpa_sm_rx_eapol+0x13a>
 178:	eb4a0002 	cmpnei      	r10, 2
 17c:	0fdf      	bf      	0x13a	// 13a <wpa_sm_rx_eapol+0x13a>
 17e:	6c6b      	mov      	r1, r10
 180:	131b      	lrw      	r0, 0x0	// 36c <wpa_sm_rx_eapol+0x36c>
 182:	07a0      	br      	0xc2	// c2 <wpa_sm_rx_eapol+0xc2>
 184:	3380      	movi      	r3, 128
 186:	4366      	lsli      	r3, r3, 6
 188:	68e0      	and      	r3, r8
 18a:	e9030004 	bez      	r3, 0x192	// 192 <wpa_sm_rx_eapol+0x192>
 18e:	1319      	lrw      	r0, 0x0	// 370 <wpa_sm_rx_eapol+0x370>
 190:	07b8      	br      	0x100	// 100 <wpa_sm_rx_eapol+0x100>
 192:	e4682080 	andi      	r3, r8, 128
 196:	e9230004 	bnez      	r3, 0x19e	// 19e <wpa_sm_rx_eapol+0x19e>
 19a:	1317      	lrw      	r0, 0x0	// 374 <wpa_sm_rx_eapol+0x374>
 19c:	07b2      	br      	0x100	// 100 <wpa_sm_rx_eapol+0x100>
 19e:	e4682800 	andi      	r3, r8, 2048
 1a2:	e9030004 	bez      	r3, 0x1aa	// 1aa <wpa_sm_rx_eapol+0x1aa>
 1a6:	1315      	lrw      	r0, 0x0	// 378 <wpa_sm_rx_eapol+0x378>
 1a8:	07ac      	br      	0x100	// 100 <wpa_sm_rx_eapol+0x100>
 1aa:	e4482100 	andi      	r2, r8, 256
 1ae:	b84b      	st.w      	r2, (r14, 0x2c)
 1b0:	e9020062 	bez      	r2, 0x274	// 274 <wpa_sm_rx_eapol+0x274>
 1b4:	9431      	ld.w      	r1, (r4, 0x44)
 1b6:	d80420f4 	ld.w      	r0, (r4, 0x3d0)
 1ba:	b86c      	st.w      	r3, (r14, 0x30)
 1bc:	e0000000 	bsr      	0x0	// 0 <wpa_mic_len>
 1c0:	6c83      	mov      	r2, r0
 1c2:	6dc3      	mov      	r7, r0
 1c4:	e42b0050 	addi      	r1, r11, 81
 1c8:	181f      	addi      	r0, r14, 124
 1ca:	e0000000 	bsr      	0x0	// 0 <memcpy>
 1ce:	d84420a1 	ld.w      	r2, (r4, 0x284)
 1d2:	986c      	ld.w      	r3, (r14, 0x30)
 1d4:	e9020028 	bez      	r2, 0x224	// 224 <wpa_sm_rx_eapol+0x224>
 1d8:	6c4f      	mov      	r1, r3
 1da:	6c9f      	mov      	r2, r7
 1dc:	e40b0050 	addi      	r0, r11, 81
 1e0:	e0000000 	bsr      	0x0	// 0 <memset>
 1e4:	e4640163 	addi      	r3, r4, 356
 1e8:	b86c      	st.w      	r3, (r14, 0x30)
 1ea:	e46b0050 	addi      	r3, r11, 81
 1ee:	b862      	st.w      	r3, (r14, 0x8)
 1f0:	986a      	ld.w      	r3, (r14, 0x28)
 1f2:	b861      	st.w      	r3, (r14, 0x4)
 1f4:	dd6e2000 	st.w      	r11, (r14, 0x0)
 1f8:	6ceb      	mov      	r3, r10
 1fa:	d84420f4 	ld.w      	r2, (r4, 0x3d0)
 1fe:	d8242099 	ld.w      	r1, (r4, 0x264)
 202:	e4040163 	addi      	r0, r4, 356
 206:	e0000000 	bsr      	0x0	// 0 <wpa_eapol_key_mic>
 20a:	e980000a 	blz      	r0, 0x21e	// 21e <wpa_sm_rx_eapol+0x21e>
 20e:	6c9f      	mov      	r2, r7
 210:	e42b0050 	addi      	r1, r11, 81
 214:	181f      	addi      	r0, r14, 124
 216:	e0000000 	bsr      	0x0	// 0 <memcmp>
 21a:	e900000b 	bez      	r0, 0x230	// 230 <wpa_sm_rx_eapol+0x230>
 21e:	1218      	lrw      	r0, 0x0	// 37c <hgprintf+0x37c>
 220:	e0000000 	bsr      	0x0	// 0 <hgprintf>
 224:	d86420a0 	ld.w      	r3, (r4, 0x280)
 228:	e9230043 	bnez      	r3, 0x2ae	// 2ae <wpa_sm_rx_eapol+0x2ae>
 22c:	1215      	lrw      	r0, 0x0	// 380 <wpa_sm_rx_eapol+0x380>
 22e:	0769      	br      	0x100	// 100 <wpa_sm_rx_eapol+0x100>
 230:	3701      	movi      	r7, 1
 232:	328e      	movi      	r2, 142
 234:	dc0420a1 	st.w      	r0, (r4, 0x284)
 238:	b80a      	st.w      	r0, (r14, 0x28)
 23a:	709c      	lsl      	r2, r7
 23c:	e4240163 	addi      	r1, r4, 356
 240:	dce420a0 	st.w      	r7, (r4, 0x280)
 244:	e4040047 	addi      	r0, r4, 72
 248:	e0000000 	bsr      	0x0	// 0 <memcpy>
 24c:	986a      	ld.w      	r3, (r14, 0x28)
 24e:	328e      	movi      	r2, 142
 250:	709c      	lsl      	r2, r7
 252:	6c4f      	mov      	r1, r3
 254:	e4040163 	addi      	r0, r4, 356
 258:	e0000000 	bsr      	0x0	// 0 <memset>
 25c:	dce420b3 	st.w      	r7, (r4, 0x2cc)
 260:	3208      	movi      	r2, 8
 262:	e42b0008 	addi      	r1, r11, 9
 266:	e40402cf 	addi      	r0, r4, 720
 26a:	e0000000 	bsr      	0x0	// 0 <memcpy>
 26e:	3301      	movi      	r3, 1
 270:	dc6420b6 	st.w      	r3, (r4, 0x2d8)
 274:	e46b0003 	addi      	r3, r11, 4
 278:	b86a      	st.w      	r3, (r14, 0x28)
 27a:	9869      	ld.w      	r3, (r14, 0x24)
 27c:	5be6      	addi      	r7, r3, 2
 27e:	e46b0050 	addi      	r3, r11, 81
 282:	60dc      	addu      	r3, r7
 284:	6dcf      	mov      	r7, r3
 286:	d86420f1 	ld.w      	r3, (r4, 0x3c4)
 28a:	3b42      	cmpnei      	r3, 2
 28c:	0c03      	bf      	0x292	// 292 <wpa_sm_rx_eapol+0x292>
 28e:	3b48      	cmpnei      	r3, 8
 290:	08ca      	bt      	0x424	// 424 <wpa_sm_rx_eapol+0x424>
 292:	3380      	movi      	r3, 128
 294:	4365      	lsli      	r3, r3, 5
 296:	68e0      	and      	r3, r8
 298:	e90300c6 	bez      	r3, 0x424	// 424 <wpa_sm_rx_eapol+0x424>
 29c:	9869      	ld.w      	r3, (r14, 0x24)
 29e:	e90300c3 	bez      	r3, 0x424	// 424 <wpa_sm_rx_eapol+0x424>
 2a2:	e4682100 	andi      	r3, r8, 256
 2a6:	e9230026 	bnez      	r3, 0x2f2	// 2f2 <wpa_sm_rx_eapol+0x2f2>
 2aa:	1117      	lrw      	r0, 0x0	// 384 <wpa_sm_rx_eapol+0x384>
 2ac:	072a      	br      	0x100	// 100 <wpa_sm_rx_eapol+0x100>
 2ae:	6c9f      	mov      	r2, r7
 2b0:	3100      	movi      	r1, 0
 2b2:	e40b0050 	addi      	r0, r11, 81
 2b6:	e0000000 	bsr      	0x0	// 0 <memset>
 2ba:	e46b0050 	addi      	r3, r11, 81
 2be:	b862      	st.w      	r3, (r14, 0x8)
 2c0:	986a      	ld.w      	r3, (r14, 0x28)
 2c2:	b861      	st.w      	r3, (r14, 0x4)
 2c4:	dd6e2000 	st.w      	r11, (r14, 0x0)
 2c8:	6ceb      	mov      	r3, r10
 2ca:	d84420f4 	ld.w      	r2, (r4, 0x3d0)
 2ce:	d8242052 	ld.w      	r1, (r4, 0x148)
 2d2:	e4040047 	addi      	r0, r4, 72
 2d6:	e0000000 	bsr      	0x0	// 0 <wpa_eapol_key_mic>
 2da:	e980000a 	blz      	r0, 0x2ee	// 2ee <wpa_sm_rx_eapol+0x2ee>
 2de:	6c9f      	mov      	r2, r7
 2e0:	e42b0050 	addi      	r1, r11, 81
 2e4:	181f      	addi      	r0, r14, 124
 2e6:	e0000000 	bsr      	0x0	// 0 <memcmp>
 2ea:	e900ffbb 	bez      	r0, 0x260	// 260 <wpa_sm_rx_eapol+0x260>
 2ee:	1107      	lrw      	r0, 0x0	// 388 <wpa_sm_rx_eapol+0x388>
 2f0:	0708      	br      	0x100	// 100 <wpa_sm_rx_eapol+0x100>
 2f2:	d86420a0 	ld.w      	r3, (r4, 0x280)
 2f6:	e9230004 	bnez      	r3, 0x2fe	// 2fe <wpa_sm_rx_eapol+0x2fe>
 2fa:	1105      	lrw      	r0, 0x0	// 38c <wpa_sm_rx_eapol+0x38c>
 2fc:	0702      	br      	0x100	// 100 <wpa_sm_rx_eapol+0x100>
 2fe:	eb4a0001 	cmpnei      	r10, 1
 302:	0849      	bt      	0x394	// 394 <wpa_sm_rx_eapol+0x394>
 304:	d8642053 	ld.w      	r3, (r4, 0x14c)
 308:	3b50      	cmpnei      	r3, 16
 30a:	0845      	bt      	0x394	// 394 <wpa_sm_rx_eapol+0x394>
 30c:	6c8f      	mov      	r2, r3
 30e:	e42b0030 	addi      	r1, r11, 49
 312:	181f      	addi      	r0, r14, 124
 314:	b86a      	st.w      	r3, (r14, 0x28)
 316:	e0000000 	bsr      	0x0	// 0 <memcpy>
 31a:	986a      	ld.w      	r3, (r14, 0x28)
 31c:	6c8f      	mov      	r2, r3
 31e:	e4240067 	addi      	r1, r4, 104
 322:	1823      	addi      	r0, r14, 140
 324:	e0000000 	bsr      	0x0	// 0 <memcpy>
 328:	3280      	movi      	r2, 128
 32a:	dd2e2000 	st.w      	r9, (r14, 0x0)
 32e:	6cdf      	mov      	r3, r7
 330:	4241      	lsli      	r2, r2, 1
 332:	3120      	movi      	r1, 32
 334:	181f      	addi      	r0, r14, 124
 336:	e0000000 	bsr      	0x0	// 0 <rc4_skip>
 33a:	e9000075 	bez      	r0, 0x424	// 424 <wpa_sm_rx_eapol+0x424>
 33e:	3220      	movi      	r2, 32
 340:	3100      	movi      	r1, 0
 342:	181f      	addi      	r0, r14, 124
 344:	e0000000 	bsr      	0x0	// 0 <memset>
 348:	1012      	lrw      	r0, 0x0	// 390 <wpa_sm_rx_eapol+0x390>
 34a:	06db      	br      	0x100	// 100 <wpa_sm_rx_eapol+0x100>
	...
 394:	e46a1001 	subi      	r3, r10, 2
 398:	74cd      	zexth      	r3, r3
 39a:	3b01      	cmphsi      	r3, 2
 39c:	080c      	bt      	0x3b4	// 3b4 <wpa_sm_rx_eapol+0x3b4>
 39e:	d8242053 	ld.w      	r1, (r4, 0x14c)
 3a2:	021e      	lrw      	r0, 0x0	// 624 <hgprintf+0x624>
 3a4:	e0000000 	bsr      	0x0	// 0 <hgprintf>
 3a8:	eb090007 	cmphsi      	r9, 8
 3ac:	080d      	bt      	0x3c6	// 3c6 <wpa_sm_rx_eapol+0x3c6>
 3ae:	6c67      	mov      	r1, r9
 3b0:	0301      	lrw      	r0, 0x0	// 628 <wpa_sm_rx_eapol+0x628>
 3b2:	0688      	br      	0xc2	// c2 <wpa_sm_rx_eapol+0xc2>
 3b4:	d80420f4 	ld.w      	r0, (r4, 0x3d0)
 3b8:	e0000000 	bsr      	0x0	// 0 <wpa_use_aes_key_wrap>
 3bc:	e920fff1 	bnez      	r0, 0x39e	// 39e <wpa_sm_rx_eapol+0x39e>
 3c0:	6c6b      	mov      	r1, r10
 3c2:	0304      	lrw      	r0, 0x0	// 62c <wpa_sm_rx_eapol+0x62c>
 3c4:	067f      	br      	0xc2	// c2 <wpa_sm_rx_eapol+0xc2>
 3c6:	e4692007 	andi      	r3, r9, 7
 3ca:	e923fff2 	bnez      	r3, 0x3ae	// 3ae <wpa_sm_rx_eapol+0x3ae>
 3ce:	e4c91007 	subi      	r6, r9, 8
 3d2:	6c1b      	mov      	r0, r6
 3d4:	e0000000 	bsr      	0x0	// 0 <_os_malloc>
 3d8:	6e43      	mov      	r9, r0
 3da:	e9200004 	bnez      	r0, 0x3e2	// 3e2 <wpa_sm_rx_eapol+0x3e2>
 3de:	030a      	lrw      	r0, 0x0	// 630 <wpa_sm_rx_eapol+0x630>
 3e0:	0690      	br      	0x100	// 100 <wpa_sm_rx_eapol+0x100>
 3e2:	b800      	st.w      	r0, (r14, 0x0)
 3e4:	6cdf      	mov      	r3, r7
 3e6:	4e43      	lsri      	r2, r6, 3
 3e8:	d8242053 	ld.w      	r1, (r4, 0x14c)
 3ec:	e4040067 	addi      	r0, r4, 104
 3f0:	e0000000 	bsr      	0x0	// 0 <aes_unwrap>
 3f4:	e9000007 	bez      	r0, 0x402	// 402 <wpa_sm_rx_eapol+0x402>
 3f8:	6c27      	mov      	r0, r9
 3fa:	e0000000 	bsr      	0x0	// 0 <_os_free>
 3fe:	0311      	lrw      	r0, 0x0	// 634 <wpa_sm_rx_eapol+0x634>
 400:	0680      	br      	0x100	// 100 <wpa_sm_rx_eapol+0x100>
 402:	6c9b      	mov      	r2, r6
 404:	6c67      	mov      	r1, r9
 406:	6c1f      	mov      	r0, r7
 408:	e0000000 	bsr      	0x0	// 0 <memcpy>
 40c:	6c27      	mov      	r0, r9
 40e:	e0000000 	bsr      	0x0	// 0 <_os_free>
 412:	9869      	ld.w      	r3, (r14, 0x24)
 414:	e44b0003 	addi      	r2, r11, 4
 418:	234c      	addi      	r3, 77
 41a:	60c8      	addu      	r3, r2
 41c:	c50655e2 	zext      	r2, r6, 15, 8
 420:	a340      	st.b      	r2, (r3, 0x0)
 422:	a3c1      	st.b      	r6, (r3, 0x1)
 424:	e4682008 	andi      	r3, r8, 8
 428:	e90302d8 	bez      	r3, 0x9d8	// 9d8 <wpa_sm_rx_eapol+0x9d8>
 42c:	e4682030 	andi      	r3, r8, 48
 430:	e9030004 	bez      	r3, 0x438	// 438 <wpa_sm_rx_eapol+0x438>
 434:	031e      	lrw      	r0, 0x0	// 638 <wpa_sm_rx_eapol+0x638>
 436:	0665      	br      	0x100	// 100 <wpa_sm_rx_eapol+0x100>
 438:	3388      	movi      	r3, 136
 43a:	4365      	lsli      	r3, r3, 5
 43c:	6a0c      	and      	r8, r3
 43e:	e4640333 	addi      	r3, r4, 820
 442:	b869      	st.w      	r3, (r14, 0x24)
 444:	3107      	movi      	r1, 7
 446:	e908020e 	bez      	r8, 0x862	// 862 <wpa_sm_rx_eapol+0x862>
 44a:	6c0f      	mov      	r0, r3
 44c:	e0000000 	bsr      	0x0	// 0 <wpa_sm_rx_eapol>
 450:	d80403b1 	ld.b      	r0, (r4, 0x3b1)
 454:	b802      	st.w      	r0, (r14, 0x8)
 456:	d80403b0 	ld.b      	r0, (r4, 0x3b0)
 45a:	b801      	st.w      	r0, (r14, 0x4)
 45c:	d80403af 	ld.b      	r0, (r4, 0x3af)
 460:	d86403ae 	ld.b      	r3, (r4, 0x3ae)
 464:	d84403ad 	ld.b      	r2, (r4, 0x3ad)
 468:	d82403ac 	ld.b      	r1, (r4, 0x3ac)
 46c:	b800      	st.w      	r0, (r14, 0x0)
 46e:	dd4e2003 	st.w      	r10, (r14, 0xc)
 472:	1313      	lrw      	r0, 0x0	// 63c <hgprintf+0x63c>
 474:	e0000000 	bsr      	0x0	// 0 <hgprintf>
 478:	d8ab0005 	ld.b      	r5, (r11, 0x5)
 47c:	45a8      	lsli      	r5, r5, 8
 47e:	d86b0006 	ld.b      	r3, (r11, 0x6)
 482:	1a1f      	addi      	r2, r14, 124
 484:	6c5b      	mov      	r1, r6
 486:	6c1f      	mov      	r0, r7
 488:	6d4c      	or      	r5, r3
 48a:	e0000000 	bsr      	0x0	// 0 <wpa_supplicant_parse_ies>
 48e:	e9800045 	blz      	r0, 0x518	// 518 <wpa_sm_rx_eapol+0x518>
 492:	9964      	ld.w      	r3, (r14, 0x90)
 494:	e903000b 	bez      	r3, 0x4aa	// 4aa <wpa_sm_rx_eapol+0x4aa>
 498:	3380      	movi      	r3, 128
 49a:	4365      	lsli      	r3, r3, 5
 49c:	68d4      	and      	r3, r5
 49e:	e9230006 	bnez      	r3, 0x4aa	// 4aa <wpa_sm_rx_eapol+0x4aa>
 4a2:	1308      	lrw      	r0, 0x0	// 640 <hgprintf+0x640>
 4a4:	e0000000 	bsr      	0x0	// 0 <hgprintf>
 4a8:	0438      	br      	0x518	// 518 <wpa_sm_rx_eapol+0x518>
 4aa:	d86420ff 	ld.w      	r3, (r4, 0x3fc)
 4ae:	e4c403ab 	addi      	r6, r4, 940
 4b2:	e923001a 	bnez      	r3, 0x4e6	// 4e6 <wpa_sm_rx_eapol+0x4e6>
 4b6:	d8642100 	ld.w      	r3, (r4, 0x400)
 4ba:	e9230016 	bnez      	r3, 0x4e6	// 4e6 <wpa_sm_rx_eapol+0x4e6>
 4be:	d86420cd 	ld.w      	r3, (r4, 0x334)
 4c2:	9368      	ld.w      	r3, (r3, 0x20)
 4c4:	e9230007 	bnez      	r3, 0x4d2	// 4d2 <wpa_sm_rx_eapol+0x4d2>
 4c8:	125f      	lrw      	r2, 0x0	// 644 <wpa_sm_rx_eapol+0x644>
 4ca:	31dc      	movi      	r1, 220
 4cc:	121f      	lrw      	r0, 0x0	// 648 <wpa_sm_rx_eapol+0x648>
 4ce:	e0000000 	bsr      	0x0	// 0 <assert_internal>
 4d2:	d86420cd 	ld.w      	r3, (r4, 0x334)
 4d6:	9348      	ld.w      	r2, (r3, 0x20)
 4d8:	9300      	ld.w      	r0, (r3, 0x0)
 4da:	7bc9      	jsr      	r2
 4dc:	e9a00005 	bhsz      	r0, 0x4e6	// 4e6 <wpa_sm_rx_eapol+0x4e6>
 4e0:	121b      	lrw      	r0, 0x0	// 64c <hgprintf+0x64c>
 4e2:	e0000000 	bsr      	0x0	// 0 <hgprintf>
 4e6:	981f      	ld.w      	r0, (r14, 0x7c)
 4e8:	e920001e 	bnez      	r0, 0x524	// 524 <wpa_sm_rx_eapol+0x524>
 4ec:	9961      	ld.w      	r3, (r14, 0x84)
 4ee:	e9230032 	bnez      	r3, 0x552	// 552 <wpa_sm_rx_eapol+0x552>
 4f2:	d86420ff 	ld.w      	r3, (r4, 0x3fc)
 4f6:	e9230006 	bnez      	r3, 0x502	// 502 <wpa_sm_rx_eapol+0x502>
 4fa:	d8642100 	ld.w      	r3, (r4, 0x400)
 4fe:	e903002a 	bez      	r3, 0x552	// 552 <wpa_sm_rx_eapol+0x552>
 502:	9962      	ld.w      	r3, (r14, 0x88)
 504:	9940      	ld.w      	r2, (r14, 0x80)
 506:	b862      	st.w      	r3, (r14, 0x8)
 508:	3300      	movi      	r3, 0
 50a:	b840      	st.w      	r2, (r14, 0x0)
 50c:	b861      	st.w      	r3, (r14, 0x4)
 50e:	6c9b      	mov      	r2, r6
 510:	1230      	lrw      	r1, 0x0	// 650 <wpa_sm_rx_eapol+0x650>
 512:	6c13      	mov      	r0, r4
 514:	e0000000 	bsr      	0x0	// 0 <wpa_sm_rx_eapol>
 518:	3101      	movi      	r1, 1
 51a:	9809      	ld.w      	r0, (r14, 0x24)
 51c:	e0000000 	bsr      	0x0	// 0 <wpa_sm_rx_eapol>
 520:	e80003a3 	br      	0xc66	// c66 <wpa_sm_rx_eapol+0xc66>
 524:	d82420ff 	ld.w      	r1, (r4, 0x3fc)
 528:	e9010015 	bez      	r1, 0x552	// 552 <wpa_sm_rx_eapol+0x552>
 52c:	9940      	ld.w      	r2, (r14, 0x80)
 52e:	d8642102 	ld.w      	r3, (r4, 0x408)
 532:	64ca      	cmpne      	r2, r3
 534:	0c0b      	bf      	0x54a	// 54a <wpa_sm_rx_eapol+0x54a>
 536:	9962      	ld.w      	r3, (r14, 0x88)
 538:	b862      	st.w      	r3, (r14, 0x8)
 53a:	9961      	ld.w      	r3, (r14, 0x84)
 53c:	b861      	st.w      	r3, (r14, 0x4)
 53e:	9960      	ld.w      	r3, (r14, 0x80)
 540:	b860      	st.w      	r3, (r14, 0x0)
 542:	6c9b      	mov      	r2, r6
 544:	987f      	ld.w      	r3, (r14, 0x7c)
 546:	1224      	lrw      	r1, 0x0	// 654 <wpa_sm_rx_eapol+0x654>
 548:	07e5      	br      	0x512	// 512 <wpa_sm_rx_eapol+0x512>
 54a:	e0000000 	bsr      	0x0	// 0 <memcmp>
 54e:	e920fff4 	bnez      	r0, 0x536	// 536 <wpa_sm_rx_eapol+0x536>
 552:	9961      	ld.w      	r3, (r14, 0x84)
 554:	e9030015 	bez      	r3, 0x57e	// 57e <wpa_sm_rx_eapol+0x57e>
 558:	d8242100 	ld.w      	r1, (r4, 0x400)
 55c:	e9010011 	bez      	r1, 0x57e	// 57e <wpa_sm_rx_eapol+0x57e>
 560:	111e      	lrw      	r0, 0x1300860	// 658 <wpa_sm_rx_eapol+0x658>
 562:	d84420f4 	ld.w      	r2, (r4, 0x3d0)
 566:	6880      	and      	r2, r0
 568:	3a40      	cmpnei      	r2, 0
 56a:	9942      	ld.w      	r2, (r14, 0x88)
 56c:	b840      	st.w      	r2, (r14, 0x0)
 56e:	c4000500 	mvc      	r0
 572:	d8442103 	ld.w      	r2, (r4, 0x40c)
 576:	e0000000 	bsr      	0x0	// 0 <wpa_compare_rsn_ie>
 57a:	e920ffde 	bnez      	r0, 0x536	// 536 <wpa_sm_rx_eapol+0x536>
 57e:	d86420f1 	ld.w      	r3, (r4, 0x3c4)
 582:	3b41      	cmpnei      	r3, 1
 584:	e860043e 	bt      	0xe00	// e00 <wpa_sm_rx_eapol+0xe00>
 588:	9961      	ld.w      	r3, (r14, 0x84)
 58a:	e903043b 	bez      	r3, 0xe00	// e00 <wpa_sm_rx_eapol+0xe00>
 58e:	d8442100 	ld.w      	r2, (r4, 0x400)
 592:	e9220437 	bnez      	r2, 0xe00	// e00 <wpa_sm_rx_eapol+0xe00>
 596:	d84420f6 	ld.w      	r2, (r4, 0x3d8)
 59a:	e9020433 	bez      	r2, 0xe00	// e00 <wpa_sm_rx_eapol+0xe00>
 59e:	9942      	ld.w      	r2, (r14, 0x88)
 5a0:	b861      	st.w      	r3, (r14, 0x4)
 5a2:	9960      	ld.w      	r3, (r14, 0x80)
 5a4:	b842      	st.w      	r2, (r14, 0x8)
 5a6:	b860      	st.w      	r3, (r14, 0x0)
 5a8:	6c9b      	mov      	r2, r6
 5aa:	987f      	ld.w      	r3, (r14, 0x7c)
 5ac:	112c      	lrw      	r1, 0x0	// 65c <wpa_sm_rx_eapol+0x65c>
 5ae:	07b2      	br      	0x512	// 512 <wpa_sm_rx_eapol+0x512>
 5b0:	d80403b1 	ld.b      	r0, (r4, 0x3b1)
 5b4:	b802      	st.w      	r0, (r14, 0x8)
 5b6:	d80403b0 	ld.b      	r0, (r4, 0x3b0)
 5ba:	b801      	st.w      	r0, (r14, 0x4)
 5bc:	d80403af 	ld.b      	r0, (r4, 0x3af)
 5c0:	b800      	st.w      	r0, (r14, 0x0)
 5c2:	d86403ae 	ld.b      	r3, (r4, 0x3ae)
 5c6:	d84403ad 	ld.b      	r2, (r4, 0x3ad)
 5ca:	d82403ac 	ld.b      	r1, (r4, 0x3ac)
 5ce:	1105      	lrw      	r0, 0x0	// 660 <hgprintf+0x660>
 5d0:	e0000000 	bsr      	0x0	// 0 <hgprintf>
 5d4:	07a2      	br      	0x518	// 518 <wpa_sm_rx_eapol+0x518>
 5d6:	e4640047 	addi      	r3, r4, 72
 5da:	b861      	st.w      	r3, (r14, 0x4)
 5dc:	b8a0      	st.w      	r5, (r14, 0x0)
 5de:	6ceb      	mov      	r3, r10
 5e0:	e44b0003 	addi      	r2, r11, 4
 5e4:	6c5b      	mov      	r1, r6
 5e6:	6c13      	mov      	r0, r4
 5e8:	e0000000 	bsr      	0x0	// 0 <wpa_sm_rx_eapol>
 5ec:	e980ff96 	blz      	r0, 0x518	// 518 <wpa_sm_rx_eapol+0x518>
 5f0:	3301      	movi      	r3, 1
 5f2:	dc6420b3 	st.w      	r3, (r4, 0x2cc)
 5f6:	e4652040 	andi      	r3, r5, 64
 5fa:	e903009e 	bez      	r3, 0x736	// 736 <wpa_sm_rx_eapol+0x736>
 5fe:	d8642058 	ld.w      	r3, (r4, 0x160)
 602:	e923009a 	bnez      	r3, 0x736	// 736 <wpa_sm_rx_eapol+0x736>
 606:	d80420f2 	ld.w      	r0, (r4, 0x3c8)
 60a:	3841      	cmpnei      	r0, 1
 60c:	0c95      	bf      	0x736	// 736 <wpa_sm_rx_eapol+0x736>
 60e:	e0000000 	bsr      	0x0	// 0 <wpa_cipher_valid_pairwise>
 612:	d82420f2 	ld.w      	r1, (r4, 0x3c8)
 616:	e9200029 	bnez      	r0, 0x668	// 668 <wpa_sm_rx_eapol+0x668>
 61a:	1013      	lrw      	r0, 0x0	// 664 <hgprintf+0x664>
 61c:	e0000000 	bsr      	0x0	// 0 <hgprintf>
 620:	077c      	br      	0x518	// 518 <wpa_sm_rx_eapol+0x518>
	...
 656:	0000      	.short	0x0000
 658:	01300860 	.long	0x01300860
	...
 668:	6c07      	mov      	r0, r1
 66a:	e0000000 	bsr      	0x0	// 0 <wpa_cipher_to_alg>
 66e:	6dc3      	mov      	r7, r0
 670:	d80420f2 	ld.w      	r0, (r4, 0x3c8)
 674:	e0000000 	bsr      	0x0	// 0 <wpa_cipher_key_len>
 678:	6e83      	mov      	r10, r0
 67a:	e960ff4f 	blsz      	r0, 0x518	// 518 <wpa_sm_rx_eapol+0x518>
 67e:	d9242054 	ld.w      	r9, (r4, 0x150)
 682:	6426      	cmpne      	r9, r0
 684:	0b4a      	bt      	0x518	// 518 <wpa_sm_rx_eapol+0x518>
 686:	d80420f2 	ld.w      	r0, (r4, 0x3c8)
 68a:	e0000000 	bsr      	0x0	// 0 <wpa_cipher_rsc_len>
 68e:	d86420f1 	ld.w      	r3, (r4, 0x3c4)
 692:	3b42      	cmpnei      	r3, 2
 694:	0c34      	bf      	0x6fc	// 6fc <wpa_sm_rx_eapol+0x6fc>
 696:	3b48      	cmpnei      	r3, 8
 698:	0c32      	bf      	0x6fc	// 6fc <wpa_sm_rx_eapol+0x6fc>
 69a:	e46b0040 	addi      	r3, r11, 65
 69e:	e58400a7 	addi      	r12, r4, 168
 6a2:	dd2e2004 	st.w      	r9, (r14, 0x10)
 6a6:	ea090001 	movi      	r9, 1
 6aa:	dd8e2003 	st.w      	r12, (r14, 0xc)
 6ae:	b802      	st.w      	r0, (r14, 0x8)
 6b0:	b861      	st.w      	r3, (r14, 0x4)
 6b2:	dd2e2000 	st.w      	r9, (r14, 0x0)
 6b6:	3300      	movi      	r3, 0
 6b8:	6c9b      	mov      	r2, r6
 6ba:	6c5f      	mov      	r1, r7
 6bc:	e4040333 	addi      	r0, r4, 820
 6c0:	dd8e200a 	st.w      	r12, (r14, 0x28)
 6c4:	e0000000 	bsr      	0x0	// 0 <wpa_sm_rx_eapol>
 6c8:	d98e200a 	ld.w      	r12, (r14, 0x28)
 6cc:	e9a0001a 	bhsz      	r0, 0x700	// 700 <wpa_sm_rx_eapol+0x700>
 6d0:	d84403b1 	ld.b      	r2, (r4, 0x3b1)
 6d4:	b844      	st.w      	r2, (r14, 0x10)
 6d6:	d84403b0 	ld.b      	r2, (r4, 0x3b0)
 6da:	b843      	st.w      	r2, (r14, 0xc)
 6dc:	d84403af 	ld.b      	r2, (r4, 0x3af)
 6e0:	b842      	st.w      	r2, (r14, 0x8)
 6e2:	d84403ae 	ld.b      	r2, (r4, 0x3ae)
 6e6:	b841      	st.w      	r2, (r14, 0x4)
 6e8:	d84403ad 	ld.b      	r2, (r4, 0x3ad)
 6ec:	b840      	st.w      	r2, (r14, 0x0)
 6ee:	d86403ac 	ld.b      	r3, (r4, 0x3ac)
 6f2:	6cab      	mov      	r2, r10
 6f4:	6c5f      	mov      	r1, r7
 6f6:	0116      	lrw      	r0, 0x0	// a18 <wpa_sm_rx_eapol+0xa18>
 6f8:	e80003b3 	br      	0xe5e	// e5e <wpa_sm_rx_eapol+0xe5e>
 6fc:	0177      	lrw      	r3, 0x0	// a1c <wpa_sm_rx_eapol+0xa1c>
 6fe:	07d0      	br      	0x69e	// 69e <wpa_sm_rx_eapol+0x69e>
 700:	3220      	movi      	r2, 32
 702:	3100      	movi      	r1, 0
 704:	6c33      	mov      	r0, r12
 706:	e0000000 	bsr      	0x0	// 0 <memset>
 70a:	d86420de 	ld.w      	r3, (r4, 0x378)
 70e:	3700      	movi      	r7, 0
 710:	dce42054 	st.w      	r7, (r4, 0x150)
 714:	dd242058 	st.w      	r9, (r4, 0x160)
 718:	e903000f 	bez      	r3, 0x736	// 736 <wpa_sm_rx_eapol+0x736>
 71c:	6c9f      	mov      	r2, r7
 71e:	6c53      	mov      	r1, r4
 720:	011f      	lrw      	r0, 0x0	// a20 <wpa_sm_rx_eapol+0xa20>
 722:	e0000000 	bsr      	0x0	// 0 <eloop_cancel_timeout>
 726:	b8e0      	st.w      	r7, (r14, 0x0)
 728:	6cd3      	mov      	r3, r4
 72a:	0241      	lrw      	r2, 0x0	// a20 <wpa_sm_rx_eapol+0xa20>
 72c:	6c5f      	mov      	r1, r7
 72e:	d80420de 	ld.w      	r0, (r4, 0x378)
 732:	e0000000 	bsr      	0x0	// 0 <eloop_register_timeout>
 736:	e4a52200 	andi      	r5, r5, 512
 73a:	e9050008 	bez      	r5, 0x74a	// 74a <wpa_sm_rx_eapol+0x74a>
 73e:	3201      	movi      	r2, 1
 740:	6c5b      	mov      	r1, r6
 742:	e4040333 	addi      	r0, r4, 820
 746:	e0000000 	bsr      	0x0	// 0 <wpa_sm_rx_eapol>
 74a:	3108      	movi      	r1, 8
 74c:	e4040333 	addi      	r0, r4, 820
 750:	e0000000 	bsr      	0x0	// 0 <wpa_sm_rx_eapol>
 754:	d86420f3 	ld.w      	r3, (r4, 0x3cc)
 758:	eb434000 	cmpnei      	r3, 16384
 75c:	0c61      	bf      	0x81e	// 81e <wpa_sm_rx_eapol+0x81e>
 75e:	d94e2024 	ld.w      	r10, (r14, 0x90)
 762:	e92a0008 	bnez      	r10, 0x772	// 772 <wpa_sm_rx_eapol+0x772>
 766:	d86420f1 	ld.w      	r3, (r4, 0x3c4)
 76a:	3b42      	cmpnei      	r3, 2
 76c:	0859      	bt      	0x81e	// 81e <wpa_sm_rx_eapol+0x81e>
 76e:	0211      	lrw      	r0, 0x0	// a24 <wpa_sm_rx_eapol+0xa24>
 770:	069a      	br      	0x4a4	// 4a4 <wpa_sm_rx_eapol+0x4a4>
 772:	e52e0047 	addi      	r9, r14, 72
 776:	99e5      	ld.w      	r7, (r14, 0x94)
 778:	3234      	movi      	r2, 52
 77a:	3100      	movi      	r1, 0
 77c:	6c27      	mov      	r0, r9
 77e:	e0000000 	bsr      	0x0	// 0 <memset>
 782:	6c9f      	mov      	r2, r7
 784:	3301      	movi      	r3, 1
 786:	6c6b      	mov      	r1, r10
 788:	0217      	lrw      	r0, 0x0	// a28 <wpa_sm_rx_eapol+0xa28>
 78a:	2f01      	subi      	r7, 2
 78c:	e0000000 	bsr      	0x0	// 0 <dump_key>
 790:	eb070020 	cmphsi      	r7, 33
 794:	e8600369 	bt      	0xe66	// e66 <wpa_sm_rx_eapol+0xe66>
 798:	d86a0000 	ld.b      	r3, (r10, 0x0)
 79c:	e4432003 	andi      	r2, r3, 3
 7a0:	e4632004 	andi      	r3, r3, 4
 7a4:	dc492003 	st.w      	r2, (r9, 0xc)
 7a8:	e9030009 	bez      	r3, 0x7ba	// 7ba <wpa_sm_rx_eapol+0x7ba>
 7ac:	d86420f2 	ld.w      	r3, (r4, 0x3c8)
 7b0:	3b41      	cmpnei      	r3, 1
 7b2:	0c56      	bf      	0x85e	// 85e <wpa_sm_rx_eapol+0x85e>
 7b4:	0301      	lrw      	r0, 0x0	// a2c <wpa_sm_rx_eapol+0xa2c>
 7b6:	e0000000 	bsr      	0x0	// 0 <hgprintf>
 7ba:	6c9f      	mov      	r2, r7
 7bc:	e42a0001 	addi      	r1, r10, 2
 7c0:	1816      	addi      	r0, r14, 88
 7c2:	dd092001 	st.w      	r8, (r9, 0x4)
 7c6:	e0000000 	bsr      	0x0	// 0 <memcpy>
 7ca:	d86420e1 	ld.w      	r3, (r4, 0x384)
 7ce:	dce9200c 	st.w      	r7, (r9, 0x30)
 7d2:	e50b0040 	addi      	r8, r11, 65
 7d6:	e903000f 	bez      	r3, 0x7f4	// 7f4 <wpa_sm_rx_eapol+0x7f4>
 7da:	d80420f3 	ld.w      	r0, (r4, 0x3cc)
 7de:	e0000000 	bsr      	0x0	// 0 <wpa_cipher_rsc_len>
 7e2:	3846      	cmpnei      	r0, 6
 7e4:	0808      	bt      	0x7f4	// 7f4 <wpa_sm_rx_eapol+0x7f4>
 7e6:	6c23      	mov      	r0, r8
 7e8:	e0000000 	bsr      	0x0	// 0 <wpa_sm_rx_eapol>
 7ec:	3840      	cmpnei      	r0, 0
 7ee:	0373      	lrw      	r3, 0x0	// a1c <wpa_sm_rx_eapol+0xa1c>
 7f0:	c5030c40 	inct      	r8, r3, 0
 7f4:	d80420f3 	ld.w      	r0, (r4, 0x3cc)
 7f8:	eb404000 	cmpnei      	r0, 16384
 7fc:	0c11      	bf      	0x81e	// 81e <wpa_sm_rx_eapol+0x81e>
 7fe:	dd2e2000 	st.w      	r9, (r14, 0x0)
 802:	1b14      	addi      	r3, r14, 80
 804:	6c9f      	mov      	r2, r7
 806:	6c5f      	mov      	r1, r7
 808:	e0000000 	bsr      	0x0	// 0 <wpa_sm_rx_eapol>
 80c:	e920032d 	bnez      	r0, 0xe66	// e66 <wpa_sm_rx_eapol+0xe66>
 810:	6ca3      	mov      	r2, r8
 812:	6c67      	mov      	r1, r9
 814:	6c13      	mov      	r0, r4
 816:	e0000000 	bsr      	0x0	// 0 <wpa_sm_rx_eapol>
 81a:	e9200326 	bnez      	r0, 0xe66	// e66 <wpa_sm_rx_eapol+0xe66>
 81e:	d86420f3 	ld.w      	r3, (r4, 0x3cc)
 822:	eb434000 	cmpnei      	r3, 16384
 826:	0c04      	bf      	0x82e	// 82e <wpa_sm_rx_eapol+0x82e>
 828:	9964      	ld.w      	r3, (r14, 0x90)
 82a:	e9030007 	bez      	r3, 0x838	// 838 <wpa_sm_rx_eapol+0x838>
 82e:	6c97      	mov      	r2, r5
 830:	6c5b      	mov      	r1, r6
 832:	6c13      	mov      	r0, r4
 834:	e0000000 	bsr      	0x0	// 0 <wpa_sm_rx_eapol>
 838:	9964      	ld.w      	r3, (r14, 0x90)
 83a:	e9030005 	bez      	r3, 0x844	// 844 <wpa_sm_rx_eapol+0x844>
 83e:	6c13      	mov      	r0, r4
 840:	e0000000 	bsr      	0x0	// 0 <wpa_sm_rx_eapol>
 844:	d8640288 	ld.b      	r3, (r4, 0x288)
 848:	3501      	movi      	r5, 1
 84a:	c4655c00 	ins      	r3, r5, 0, 0
 84e:	dc640288 	st.b      	r3, (r4, 0x288)
 852:	6c2f      	mov      	r0, r11
 854:	e0000000 	bsr      	0x0	// 0 <_os_free>
 858:	6c17      	mov      	r0, r5
 85a:	151f      	addi      	r14, r14, 252
 85c:	1498      	pop      	r4-r11, r15
 85e:	6e0f      	mov      	r8, r3
 860:	07ad      	br      	0x7ba	// 7ba <wpa_sm_rx_eapol+0x7ba>
 862:	e4040333 	addi      	r0, r4, 820
 866:	e0000000 	bsr      	0x0	// 0 <wpa_sm_rx_eapol>
 86a:	8562      	ld.b      	r3, (r5, 0x2)
 86c:	8541      	ld.b      	r2, (r5, 0x1)
 86e:	8520      	ld.b      	r1, (r5, 0x0)
 870:	dd4e2003 	st.w      	r10, (r14, 0xc)
 874:	8505      	ld.b      	r0, (r5, 0x5)
 876:	b802      	st.w      	r0, (r14, 0x8)
 878:	8504      	ld.b      	r0, (r5, 0x4)
 87a:	b801      	st.w      	r0, (r14, 0x4)
 87c:	8503      	ld.b      	r0, (r5, 0x3)
 87e:	b800      	st.w      	r0, (r14, 0x0)
 880:	130c      	lrw      	r0, 0x0	// a30 <wpa_sm_rx_eapol+0xa30>
 882:	e0000000 	bsr      	0x0	// 0 <hgprintf>
 886:	3280      	movi      	r2, 128
 888:	6c63      	mov      	r1, r8
 88a:	181f      	addi      	r0, r14, 124
 88c:	e0000000 	bsr      	0x0	// 0 <memset>
 890:	d86420f1 	ld.w      	r3, (r4, 0x3c4)
 894:	3b42      	cmpnei      	r3, 2
 896:	0c88      	bf      	0x9a6	// 9a6 <wpa_sm_rx_eapol+0x9a6>
 898:	3b48      	cmpnei      	r3, 8
 89a:	0c86      	bf      	0x9a6	// 9a6 <wpa_sm_rx_eapol+0x9a6>
 89c:	d86420b3 	ld.w      	r3, (r4, 0x2cc)
 8a0:	e5040288 	addi      	r8, r4, 649
 8a4:	e923008d 	bnez      	r3, 0x9be	// 9be <wpa_sm_rx_eapol+0x9be>
 8a8:	3300      	movi      	r3, 0
 8aa:	b868      	st.w      	r3, (r14, 0x20)
 8ac:	b867      	st.w      	r3, (r14, 0x1c)
 8ae:	b866      	st.w      	r3, (r14, 0x18)
 8b0:	d86420f2 	ld.w      	r3, (r4, 0x3c8)
 8b4:	e5240163 	addi      	r9, r4, 356
 8b8:	e4e403ab 	addi      	r7, r4, 940
 8bc:	e4cb0010 	addi      	r6, r11, 17
 8c0:	b865      	st.w      	r3, (r14, 0x14)
 8c2:	d86420f4 	ld.w      	r3, (r4, 0x3d0)
 8c6:	b864      	st.w      	r3, (r14, 0x10)
 8c8:	dd2e2003 	st.w      	r9, (r14, 0xc)
 8cc:	b8c2      	st.w      	r6, (r14, 0x8)
 8ce:	dd0e2001 	st.w      	r8, (r14, 0x4)
 8d2:	b8e0      	st.w      	r7, (r14, 0x0)
 8d4:	e464039c 	addi      	r3, r4, 925
 8d8:	1257      	lrw      	r2, 0x0	// a34 <wpa_sm_rx_eapol+0xa34>
 8da:	6c13      	mov      	r0, r4
 8dc:	9431      	ld.w      	r1, (r4, 0x44)
 8de:	e0000000 	bsr      	0x0	// 0 <wpa_pmk_to_ptk>
 8e2:	e9800069 	blz      	r0, 0x9b4	// 9b4 <wpa_sm_rx_eapol+0x9b4>
 8e6:	d84420f2 	ld.w      	r2, (r4, 0x3c8)
 8ea:	3a48      	cmpnei      	r2, 8
 8ec:	083d      	bt      	0x966	// 966 <wpa_sm_rx_eapol+0x966>
 8ee:	d86401d4 	ld.b      	r3, (r4, 0x1d4)
 8f2:	b870      	st.w      	r3, (r14, 0x40)
 8f4:	d86401d5 	ld.b      	r3, (r4, 0x1d5)
 8f8:	b86a      	st.w      	r3, (r14, 0x28)
 8fa:	d86401d6 	ld.b      	r3, (r4, 0x1d6)
 8fe:	b86b      	st.w      	r3, (r14, 0x2c)
 900:	d86401d7 	ld.b      	r3, (r4, 0x1d7)
 904:	d9a401d9 	ld.b      	r13, (r4, 0x1d9)
 908:	d98401da 	ld.b      	r12, (r4, 0x1da)
 90c:	b86c      	st.w      	r3, (r14, 0x30)
 90e:	e42401db 	addi      	r1, r4, 476
 912:	d86401d8 	ld.b      	r3, (r4, 0x1d8)
 916:	e40401d3 	addi      	r0, r4, 468
 91a:	b86d      	st.w      	r3, (r14, 0x34)
 91c:	ddae200f 	st.w      	r13, (r14, 0x3c)
 920:	dd8e200e 	st.w      	r12, (r14, 0x38)
 924:	d8a401db 	ld.b      	r5, (r4, 0x1db)
 928:	e0000000 	bsr      	0x0	// 0 <memcpy>
 92c:	9870      	ld.w      	r3, (r14, 0x40)
 92e:	dc6401dc 	st.b      	r3, (r4, 0x1dc)
 932:	d86e0028 	ld.b      	r3, (r14, 0x28)
 936:	dc6401dd 	st.b      	r3, (r4, 0x1dd)
 93a:	d86e002c 	ld.b      	r3, (r14, 0x2c)
 93e:	dc6401de 	st.b      	r3, (r4, 0x1de)
 942:	d86e0030 	ld.b      	r3, (r14, 0x30)
 946:	dc6401df 	st.b      	r3, (r4, 0x1df)
 94a:	d9ae200f 	ld.w      	r13, (r14, 0x3c)
 94e:	d86e0034 	ld.b      	r3, (r14, 0x34)
 952:	d98e200e 	ld.w      	r12, (r14, 0x38)
 956:	dc6401e0 	st.b      	r3, (r4, 0x1e0)
 95a:	dda401e1 	st.b      	r13, (r4, 0x1e1)
 95e:	dd8401e2 	st.b      	r12, (r4, 0x1e2)
 962:	dca401e3 	st.b      	r5, (r4, 0x1e3)
 966:	d86420fc 	ld.w      	r3, (r4, 0x3f0)
 96a:	3501      	movi      	r5, 1
 96c:	b862      	st.w      	r3, (r14, 0x8)
 96e:	d86420fb 	ld.w      	r3, (r4, 0x3ec)
 972:	b861      	st.w      	r3, (r14, 0x4)
 974:	dca420a1 	st.w      	r5, (r4, 0x284)
 978:	dd2e2003 	st.w      	r9, (r14, 0xc)
 97c:	dd0e2000 	st.w      	r8, (r14, 0x0)
 980:	6ceb      	mov      	r3, r10
 982:	e44b0003 	addi      	r2, r11, 4
 986:	6c5f      	mov      	r1, r7
 988:	6c13      	mov      	r0, r4
 98a:	e0000000 	bsr      	0x0	// 0 <wpa_sm_rx_eapol>
 98e:	e9800013 	blz      	r0, 0x9b4	// 9b4 <wpa_sm_rx_eapol+0x9b4>
 992:	3000      	movi      	r0, 0
 994:	e0000000 	bsr      	0x0	// 0 <_os_free>
 998:	3220      	movi      	r2, 32
 99a:	6c5b      	mov      	r1, r6
 99c:	e40402a8 	addi      	r0, r4, 681
 9a0:	e0000000 	bsr      	0x0	// 0 <memcpy>
 9a4:	0757      	br      	0x852	// 852 <wpa_sm_rx_eapol+0x852>
 9a6:	1a1f      	addi      	r2, r14, 124
 9a8:	6c5b      	mov      	r1, r6
 9aa:	6c1f      	mov      	r0, r7
 9ac:	e0000000 	bsr      	0x0	// 0 <wpa_supplicant_parse_ies>
 9b0:	e9a0ff76 	bhsz      	r0, 0x89c	// 89c <wpa_sm_rx_eapol+0x89c>
 9b4:	3000      	movi      	r0, 0
 9b6:	e0000000 	bsr      	0x0	// 0 <_os_free>
 9ba:	e800fdaf 	br      	0x518	// 518 <wpa_sm_rx_eapol+0x518>
 9be:	3120      	movi      	r1, 32
 9c0:	6c23      	mov      	r0, r8
 9c2:	e0000000 	bsr      	0x0	// 0 <os_random_bytes>
 9c6:	e9000006 	bez      	r0, 0x9d2	// 9d2 <wpa_sm_rx_eapol+0x9d2>
 9ca:	101c      	lrw      	r0, 0x0	// a38 <hgprintf+0xa38>
 9cc:	e0000000 	bsr      	0x0	// 0 <hgprintf>
 9d0:	07f2      	br      	0x9b4	// 9b4 <wpa_sm_rx_eapol+0x9b4>
 9d2:	dc0420b3 	st.w      	r0, (r4, 0x2cc)
 9d6:	0769      	br      	0x8a8	// 8a8 <wpa_sm_rx_eapol+0x8a8>
 9d8:	9869      	ld.w      	r3, (r14, 0x24)
 9da:	e9030009 	bez      	r3, 0x9ec	// 9ec <wpa_sm_rx_eapol+0x9ec>
 9de:	986b      	ld.w      	r3, (r14, 0x2c)
 9e0:	e923000b 	bnez      	r3, 0x9f6	// 9f6 <wpa_sm_rx_eapol+0x9f6>
 9e4:	1016      	lrw      	r0, 0x0	// a3c <hgprintf+0xa3c>
 9e6:	e0000000 	bsr      	0x0	// 0 <hgprintf>
 9ea:	053e      	br      	0xc66	// c66 <wpa_sm_rx_eapol+0xc66>
 9ec:	3380      	movi      	r3, 128
 9ee:	4365      	lsli      	r3, r3, 5
 9f0:	6a0c      	and      	r8, r3
 9f2:	e908fff9 	bez      	r8, 0x9e4	// 9e4 <wpa_sm_rx_eapol+0x9e4>
 9f6:	d8640288 	ld.b      	r3, (r4, 0x288)
 9fa:	e4632001 	andi      	r3, r3, 1
 9fe:	e4440333 	addi      	r2, r4, 820
 a02:	b84a      	st.w      	r2, (r14, 0x28)
 a04:	e9230020 	bnez      	r3, 0xa44	// a44 <wpa_sm_rx_eapol+0xa44>
 a08:	100e      	lrw      	r0, 0x0	// a40 <hgprintf+0xa40>
 a0a:	e0000000 	bsr      	0x0	// 0 <hgprintf>
 a0e:	3101      	movi      	r1, 1
 a10:	980a      	ld.w      	r0, (r14, 0x28)
 a12:	e800fd85 	br      	0x51c	// 51c <wpa_sm_rx_eapol+0x51c>
	...
 a42:	0000      	.short	0x0000
 a44:	e52e0047 	addi      	r9, r14, 72
 a48:	3234      	movi      	r2, 52
 a4a:	3100      	movi      	r1, 0
 a4c:	6c27      	mov      	r0, r9
 a4e:	e0000000 	bsr      	0x0	// 0 <memset>
 a52:	e4040333 	addi      	r0, r4, 820
 a56:	e0000000 	bsr      	0x0	// 0 <wpa_sm_rx_eapol>
 a5a:	8562      	ld.b      	r3, (r5, 0x2)
 a5c:	8541      	ld.b      	r2, (r5, 0x1)
 a5e:	8520      	ld.b      	r1, (r5, 0x0)
 a60:	dd4e2003 	st.w      	r10, (r14, 0xc)
 a64:	b809      	st.w      	r0, (r14, 0x24)
 a66:	8505      	ld.b      	r0, (r5, 0x5)
 a68:	b802      	st.w      	r0, (r14, 0x8)
 a6a:	8504      	ld.b      	r0, (r5, 0x4)
 a6c:	b801      	st.w      	r0, (r14, 0x4)
 a6e:	8503      	ld.b      	r0, (r5, 0x3)
 a70:	b800      	st.w      	r0, (r14, 0x0)
 a72:	011f      	lrw      	r0, 0x0	// d70 <wpa_sm_rx_eapol+0xd70>
 a74:	e0000000 	bsr      	0x0	// 0 <hgprintf>
 a78:	d90b0005 	ld.b      	r8, (r11, 0x5)
 a7c:	d86b0006 	ld.b      	r3, (r11, 0x6)
 a80:	c5084828 	lsli      	r8, r8, 8
 a84:	6e0c      	or      	r8, r3
 a86:	d86420f1 	ld.w      	r3, (r4, 0x3c4)
 a8a:	3b42      	cmpnei      	r3, 2
 a8c:	0c03      	bf      	0xa92	// a92 <wpa_sm_rx_eapol+0xa92>
 a8e:	3b48      	cmpnei      	r3, 8
 a90:	08ee      	bt      	0xc6c	// c6c <wpa_sm_rx_eapol+0xc6c>
 a92:	1a1f      	addi      	r2, r14, 124
 a94:	6c5b      	mov      	r1, r6
 a96:	6c1f      	mov      	r0, r7
 a98:	e0000000 	bsr      	0x0	// 0 <wpa_supplicant_parse_ies>
 a9c:	e9a00005 	bhsz      	r0, 0xaa6	// aa6 <wpa_sm_rx_eapol+0xaa6>
 aa0:	3500      	movi      	r5, 0
 aa2:	2d00      	subi      	r5, 1
 aa4:	0442      	br      	0xb28	// b28 <wpa_sm_rx_eapol+0xb28>
 aa6:	9964      	ld.w      	r3, (r14, 0x90)
 aa8:	e903000b 	bez      	r3, 0xabe	// abe <wpa_sm_rx_eapol+0xabe>
 aac:	3380      	movi      	r3, 128
 aae:	4365      	lsli      	r3, r3, 5
 ab0:	68e0      	and      	r3, r8
 ab2:	e9230008 	bnez      	r3, 0xac2	// ac2 <wpa_sm_rx_eapol+0xac2>
 ab6:	020f      	lrw      	r0, 0x0	// d74 <hgprintf+0xd74>
 ab8:	e0000000 	bsr      	0x0	// 0 <hgprintf>
 abc:	07f2      	br      	0xaa0	// aa0 <wpa_sm_rx_eapol+0xaa0>
 abe:	0210      	lrw      	r0, 0x0	// d78 <wpa_sm_rx_eapol+0xd78>
 ac0:	07fc      	br      	0xab8	// ab8 <wpa_sm_rx_eapol+0xab8>
 ac2:	9945      	ld.w      	r2, (r14, 0x94)
 ac4:	2a01      	subi      	r2, 2
 ac6:	dc49200c 	st.w      	r2, (r9, 0x30)
 aca:	1b14      	addi      	r3, r14, 80
 acc:	dd2e2000 	st.w      	r9, (r14, 0x0)
 ad0:	6c4b      	mov      	r1, r2
 ad2:	d80420f3 	ld.w      	r0, (r4, 0x3cc)
 ad6:	e0000000 	bsr      	0x0	// 0 <wpa_sm_rx_eapol>
 ada:	6d43      	mov      	r5, r0
 adc:	e920ffe2 	bnez      	r0, 0xaa0	// aa0 <wpa_sm_rx_eapol+0xaa0>
 ae0:	9944      	ld.w      	r2, (r14, 0x90)
 ae2:	8260      	ld.b      	r3, (r2, 0x0)
 ae4:	e4632003 	andi      	r3, r3, 3
 ae8:	dc692003 	st.w      	r3, (r9, 0xc)
 aec:	8260      	ld.b      	r3, (r2, 0x0)
 aee:	e4632004 	andi      	r3, r3, 4
 af2:	e9030009 	bez      	r3, 0xb04	// b04 <wpa_sm_rx_eapol+0xb04>
 af6:	d86420f2 	ld.w      	r3, (r4, 0x3c8)
 afa:	3b41      	cmpnei      	r3, 1
 afc:	0c05      	bf      	0xb06	// b06 <wpa_sm_rx_eapol+0xb06>
 afe:	021f      	lrw      	r0, 0x0	// d7c <wpa_sm_rx_eapol+0xd7c>
 b00:	e0000000 	bsr      	0x0	// 0 <hgprintf>
 b04:	6cd7      	mov      	r3, r5
 b06:	9945      	ld.w      	r2, (r14, 0x94)
 b08:	2a01      	subi      	r2, 2
 b0a:	eb020020 	cmphsi      	r2, 33
 b0e:	dc692001 	st.w      	r3, (r9, 0x4)
 b12:	0c06      	bf      	0xb1e	// b1e <wpa_sm_rx_eapol+0xb1e>
 b14:	6c4b      	mov      	r1, r2
 b16:	0304      	lrw      	r0, 0x0	// d80 <wpa_sm_rx_eapol+0xd80>
 b18:	e0000000 	bsr      	0x0	// 0 <hgprintf>
 b1c:	07c2      	br      	0xaa0	// aa0 <wpa_sm_rx_eapol+0xaa0>
 b1e:	9924      	ld.w      	r1, (r14, 0x90)
 b20:	2101      	addi      	r1, 2
 b22:	1816      	addi      	r0, r14, 88
 b24:	e0000000 	bsr      	0x0	// 0 <memcpy>
 b28:	3108      	movi      	r1, 8
 b2a:	e4040333 	addi      	r0, r4, 820
 b2e:	e0000000 	bsr      	0x0	// 0 <wpa_sm_rx_eapol>
 b32:	e925ff6e 	bnez      	r5, 0xa0e	// a0e <wpa_sm_rx_eapol+0xa0e>
 b36:	d86420e1 	ld.w      	r3, (r4, 0x384)
 b3a:	e4ab0040 	addi      	r5, r11, 65
 b3e:	e903000f 	bez      	r3, 0xb5c	// b5c <wpa_sm_rx_eapol+0xb5c>
 b42:	d80420f3 	ld.w      	r0, (r4, 0x3cc)
 b46:	e0000000 	bsr      	0x0	// 0 <wpa_cipher_rsc_len>
 b4a:	3846      	cmpnei      	r0, 6
 b4c:	0808      	bt      	0xb5c	// b5c <wpa_sm_rx_eapol+0xb5c>
 b4e:	6c17      	mov      	r0, r5
 b50:	e0000000 	bsr      	0x0	// 0 <wpa_sm_rx_eapol>
 b54:	3840      	cmpnei      	r0, 0
 b56:	0373      	lrw      	r3, 0x0	// d84 <wpa_sm_rx_eapol+0xd84>
 b58:	c4a30c40 	inct      	r5, r3, 0
 b5c:	6c97      	mov      	r2, r5
 b5e:	1912      	addi      	r1, r14, 72
 b60:	6c13      	mov      	r0, r4
 b62:	e0000000 	bsr      	0x0	// 0 <wpa_sm_rx_eapol>
 b66:	e920ff54 	bnez      	r0, 0xa0e	// a0e <wpa_sm_rx_eapol+0xa0e>
 b6a:	9431      	ld.w      	r1, (r4, 0x44)
 b6c:	d80420f4 	ld.w      	r0, (r4, 0x3d0)
 b70:	e0000000 	bsr      	0x0	// 0 <wpa_mic_len>
 b74:	e420004e 	addi      	r1, r0, 79
 b78:	6d43      	mov      	r5, r0
 b7a:	1b1f      	addi      	r3, r14, 124
 b7c:	1a11      	addi      	r2, r14, 68
 b7e:	7445      	zexth      	r1, r1
 b80:	e4040333 	addi      	r0, r4, 820
 b84:	e0000000 	bsr      	0x0	// 0 <wpa_sm_rx_eapol>
 b88:	6d83      	mov      	r6, r0
 b8a:	e900ff42 	bez      	r0, 0xa0e	// a0e <wpa_sm_rx_eapol+0xa0e>
 b8e:	d86420f1 	ld.w      	r3, (r4, 0x3c4)
 b92:	3b42      	cmpnei      	r3, 2
 b94:	985f      	ld.w      	r2, (r14, 0x7c)
 b96:	0c06      	bf      	0xba2	// ba2 <wpa_sm_rx_eapol+0xba2>
 b98:	3b48      	cmpnei      	r3, 8
 b9a:	31fe      	movi      	r1, 254
 b9c:	3302      	movi      	r3, 2
 b9e:	c4610c40 	inct      	r3, r1, 0
 ba2:	a260      	st.b      	r3, (r2, 0x0)
 ba4:	e4682030 	andi      	r3, r8, 48
 ba8:	6ce8      	or      	r3, r10
 baa:	e9050110 	bez      	r5, 0xdca	// dca <wpa_sm_rx_eapol+0xdca>
 bae:	ec630300 	ori      	r3, r3, 768
 bb2:	4b28      	lsri      	r1, r3, 8
 bb4:	a221      	st.b      	r1, (r2, 0x1)
 bb6:	a262      	st.b      	r3, (r2, 0x2)
 bb8:	d86420f1 	ld.w      	r3, (r4, 0x3c4)
 bbc:	3b42      	cmpnei      	r3, 2
 bbe:	0c03      	bf      	0xbc4	// bc4 <wpa_sm_rx_eapol+0xbc4>
 bc0:	3b48      	cmpnei      	r3, 8
 bc2:	0907      	bt      	0xdd0	// dd0 <wpa_sm_rx_eapol+0xdd0>
 bc4:	987f      	ld.w      	r3, (r14, 0x7c)
 bc6:	3200      	movi      	r2, 0
 bc8:	a343      	st.b      	r2, (r3, 0x3)
 bca:	a344      	st.b      	r2, (r3, 0x4)
 bcc:	98ff      	ld.w      	r7, (r14, 0x7c)
 bce:	5f12      	addi      	r0, r7, 5
 bd0:	274c      	addi      	r7, 77
 bd2:	3208      	movi      	r2, 8
 bd4:	e42b0008 	addi      	r1, r11, 9
 bd8:	615c      	addu      	r5, r7
 bda:	e0000000 	bsr      	0x0	// 0 <memcpy>
 bde:	3300      	movi      	r3, 0
 be0:	a560      	st.b      	r3, (r5, 0x0)
 be2:	a561      	st.b      	r3, (r5, 0x1)
 be4:	e4a403ab 	addi      	r5, r4, 940
 be8:	1308      	lrw      	r0, 0x0	// d88 <hgprintf+0xd88>
 bea:	e0000000 	bsr      	0x0	// 0 <hgprintf>
 bee:	9871      	ld.w      	r3, (r14, 0x44)
 bf0:	b862      	st.w      	r3, (r14, 0x8)
 bf2:	ea03888e 	movi      	r3, 34958
 bf6:	b860      	st.w      	r3, (r14, 0x0)
 bf8:	b8e3      	st.w      	r7, (r14, 0xc)
 bfa:	b8c1      	st.w      	r6, (r14, 0x4)
 bfc:	6cd7      	mov      	r3, r5
 bfe:	6cab      	mov      	r2, r10
 c00:	e4240047 	addi      	r1, r4, 72
 c04:	6c13      	mov      	r0, r4
 c06:	e0000000 	bsr      	0x0	// 0 <wpa_sm_rx_eapol>
 c0a:	e980ff02 	blz      	r0, 0xa0e	// a0e <wpa_sm_rx_eapol+0xa0e>
 c0e:	9869      	ld.w      	r3, (r14, 0x24)
 c10:	3b49      	cmpnei      	r3, 9
 c12:	08e6      	bt      	0xdde	// dde <wpa_sm_rx_eapol+0xdde>
 c14:	d80420f3 	ld.w      	r0, (r4, 0x3cc)
 c18:	d8a403ac 	ld.b      	r5, (r4, 0x3ac)
 c1c:	d8c403ad 	ld.b      	r6, (r4, 0x3ad)
 c20:	d8e403ae 	ld.b      	r7, (r4, 0x3ae)
 c24:	d90403af 	ld.b      	r8, (r4, 0x3af)
 c28:	d92403b0 	ld.b      	r9, (r4, 0x3b0)
 c2c:	d94403b1 	ld.b      	r10, (r4, 0x3b1)
 c30:	e0000000 	bsr      	0x0	// 0 <wpa_cipher_txt>
 c34:	b803      	st.w      	r0, (r14, 0xc)
 c36:	6c57      	mov      	r1, r5
 c38:	6cdf      	mov      	r3, r7
 c3a:	6c9b      	mov      	r2, r6
 c3c:	1214      	lrw      	r0, 0x0	// d8c <wpa_sm_rx_eapol+0xd8c>
 c3e:	dd4e2002 	st.w      	r10, (r14, 0x8)
 c42:	dd2e2001 	st.w      	r9, (r14, 0x4)
 c46:	dd0e2000 	st.w      	r8, (r14, 0x0)
 c4a:	e0000000 	bsr      	0x0	// 0 <hgprintf>
 c4e:	e4040333 	addi      	r0, r4, 820
 c52:	e0000000 	bsr      	0x0	// 0 <wpa_sm_rx_eapol>
 c56:	9829      	ld.w      	r1, (r14, 0x24)
 c58:	e4040333 	addi      	r0, r4, 820
 c5c:	e0000000 	bsr      	0x0	// 0 <wpa_sm_rx_eapol>
 c60:	6c13      	mov      	r0, r4
 c62:	e0000000 	bsr      	0x0	// 0 <wpa_sm_rx_eapol>
 c66:	3501      	movi      	r5, 1
 c68:	e800fdf5 	br      	0x852	// 852 <wpa_sm_rx_eapol+0x852>
 c6c:	d9ab0007 	ld.b      	r13, (r11, 0x7)
 c70:	eb4a0002 	cmpnei      	r10, 2
 c74:	c50d482d 	lsli      	r13, r13, 8
 c78:	d86b0008 	ld.b      	r3, (r11, 0x8)
 c7c:	6f4c      	or      	r13, r3
 c7e:	0832      	bt      	0xce2	// ce2 <wpa_sm_rx_eapol+0xce2>
 c80:	3e07      	cmphsi      	r6, 8
 c82:	0804      	bt      	0xc8a	// c8a <wpa_sm_rx_eapol+0xc8a>
 c84:	6c5b      	mov      	r1, r6
 c86:	1203      	lrw      	r0, 0x0	// d90 <wpa_sm_rx_eapol+0xd90>
 c88:	0748      	br      	0xb18	// b18 <wpa_sm_rx_eapol+0xb18>
 c8a:	e5861007 	subi      	r12, r6, 8
 c8e:	6770      	cmphs      	r12, r13
 c90:	0f08      	bf      	0xaa0	// aa0 <wpa_sm_rx_eapol+0xaa0>
 c92:	dd2e2000 	st.w      	r9, (r14, 0x0)
 c96:	1b14      	addi      	r3, r14, 80
 c98:	6cb3      	mov      	r2, r12
 c9a:	6c77      	mov      	r1, r13
 c9c:	d80420f3 	ld.w      	r0, (r4, 0x3cc)
 ca0:	dd8e200c 	st.w      	r12, (r14, 0x30)
 ca4:	ddae200b 	st.w      	r13, (r14, 0x2c)
 ca8:	e0000000 	bsr      	0x0	// 0 <wpa_sm_rx_eapol>
 cac:	6d43      	mov      	r5, r0
 cae:	e920fef9 	bnez      	r0, 0xaa0	// aa0 <wpa_sm_rx_eapol+0xaa0>
 cb2:	eb4a0001 	cmpnei      	r10, 1
 cb6:	d9ae200b 	ld.w      	r13, (r14, 0x2c)
 cba:	c48854a3 	zext      	r3, r8, 5, 4
 cbe:	dda9200c 	st.w      	r13, (r9, 0x30)
 cc2:	dc692003 	st.w      	r3, (r9, 0xc)
 cc6:	d98e200c 	ld.w      	r12, (r14, 0x30)
 cca:	0830      	bt      	0xd2a	// d2a <wpa_sm_rx_eapol+0xd2a>
 ccc:	d9242053 	ld.w      	r9, (r4, 0x14c)
 cd0:	eb490010 	cmpnei      	r9, 16
 cd4:	086a      	bt      	0xda8	// da8 <wpa_sm_rx_eapol+0xda8>
 cd6:	eb060020 	cmphsi      	r6, 33
 cda:	0c06      	bf      	0xce6	// ce6 <wpa_sm_rx_eapol+0xce6>
 cdc:	6c5b      	mov      	r1, r6
 cde:	110e      	lrw      	r0, 0x0	// d94 <wpa_sm_rx_eapol+0xd94>
 ce0:	071c      	br      	0xb18	// b18 <wpa_sm_rx_eapol+0xb18>
 ce2:	6f1b      	mov      	r12, r6
 ce4:	07d5      	br      	0xc8e	// c8e <wpa_sm_rx_eapol+0xc8e>
 ce6:	6ca7      	mov      	r2, r9
 ce8:	e42b0030 	addi      	r1, r11, 49
 cec:	181f      	addi      	r0, r14, 124
 cee:	e0000000 	bsr      	0x0	// 0 <memcpy>
 cf2:	6ca7      	mov      	r2, r9
 cf4:	e4240067 	addi      	r1, r4, 104
 cf8:	1823      	addi      	r0, r14, 140
 cfa:	e0000000 	bsr      	0x0	// 0 <memcpy>
 cfe:	6c9b      	mov      	r2, r6
 d00:	6c5f      	mov      	r1, r7
 d02:	1816      	addi      	r0, r14, 88
 d04:	e0000000 	bsr      	0x0	// 0 <memcpy>
 d08:	3280      	movi      	r2, 128
 d0a:	b8c0      	st.w      	r6, (r14, 0x0)
 d0c:	1b16      	addi      	r3, r14, 88
 d0e:	4241      	lsli      	r2, r2, 1
 d10:	3120      	movi      	r1, 32
 d12:	181f      	addi      	r0, r14, 124
 d14:	e0000000 	bsr      	0x0	// 0 <rc4_skip>
 d18:	e900004b 	bez      	r0, 0xdae	// dae <wpa_sm_rx_eapol+0xdae>
 d1c:	3220      	movi      	r2, 32
 d1e:	6c57      	mov      	r1, r5
 d20:	181f      	addi      	r0, r14, 124
 d22:	e0000000 	bsr      	0x0	// 0 <memset>
 d26:	101d      	lrw      	r0, 0x0	// d98 <wpa_sm_rx_eapol+0xd98>
 d28:	06c8      	br      	0xab8	// ab8 <wpa_sm_rx_eapol+0xab8>
 d2a:	eb4a0002 	cmpnei      	r10, 2
 d2e:	083d      	bt      	0xda8	// da8 <wpa_sm_rx_eapol+0xda8>
 d30:	e46c2007 	andi      	r3, r12, 7
 d34:	e9030005 	bez      	r3, 0xd3e	// d3e <wpa_sm_rx_eapol+0xd3e>
 d38:	6c73      	mov      	r1, r12
 d3a:	1019      	lrw      	r0, 0x0	// d9c <wpa_sm_rx_eapol+0xd9c>
 d3c:	06ee      	br      	0xb18	// b18 <wpa_sm_rx_eapol+0xb18>
 d3e:	eb0c0020 	cmphsi      	r12, 33
 d42:	0c07      	bf      	0xd50	// d50 <wpa_sm_rx_eapol+0xd50>
 d44:	6cb3      	mov      	r2, r12
 d46:	6c5b      	mov      	r1, r6
 d48:	1016      	lrw      	r0, 0x0	// da0 <wpa_sm_rx_eapol+0xda0>
 d4a:	e0000000 	bsr      	0x0	// 0 <hgprintf>
 d4e:	06a9      	br      	0xaa0	// aa0 <wpa_sm_rx_eapol+0xaa0>
 d50:	1b16      	addi      	r3, r14, 88
 d52:	b860      	st.w      	r3, (r14, 0x0)
 d54:	c46c4842 	lsri      	r2, r12, 3
 d58:	6cdf      	mov      	r3, r7
 d5a:	d8242053 	ld.w      	r1, (r4, 0x14c)
 d5e:	e4040067 	addi      	r0, r4, 104
 d62:	e0000000 	bsr      	0x0	// 0 <aes_unwrap>
 d66:	e9000024 	bez      	r0, 0xdae	// dae <wpa_sm_rx_eapol+0xdae>
 d6a:	100f      	lrw      	r0, 0x0	// da4 <wpa_sm_rx_eapol+0xda4>
 d6c:	06a6      	br      	0xab8	// ab8 <wpa_sm_rx_eapol+0xab8>
	...
 da6:	0000      	.short	0x0000
 da8:	6c6b      	mov      	r1, r10
 daa:	1111      	lrw      	r0, 0x0	// e6c <wpa_sm_rx_eapol+0xe6c>
 dac:	06b6      	br      	0xb18	// b18 <wpa_sm_rx_eapol+0xb18>
 dae:	e4682040 	andi      	r3, r8, 64
 db2:	e903000a 	bez      	r3, 0xdc6	// dc6 <wpa_sm_rx_eapol+0xdc6>
 db6:	d86420f2 	ld.w      	r3, (r4, 0x3c8)
 dba:	3b41      	cmpnei      	r3, 1
 dbc:	0c05      	bf      	0xdc6	// dc6 <wpa_sm_rx_eapol+0xdc6>
 dbe:	110d      	lrw      	r0, 0x0	// e70 <wpa_sm_rx_eapol+0xe70>
 dc0:	e0000000 	bsr      	0x0	// 0 <hgprintf>
 dc4:	3300      	movi      	r3, 0
 dc6:	b873      	st.w      	r3, (r14, 0x4c)
 dc8:	06b0      	br      	0xb28	// b28 <wpa_sm_rx_eapol+0xb28>
 dca:	ec631200 	ori      	r3, r3, 4608
 dce:	06f2      	br      	0xbb2	// bb2 <wpa_sm_rx_eapol+0xbb2>
 dd0:	987f      	ld.w      	r3, (r14, 0x7c)
 dd2:	d84b0007 	ld.b      	r2, (r11, 0x7)
 dd6:	a343      	st.b      	r2, (r3, 0x3)
 dd8:	d84b0008 	ld.b      	r2, (r11, 0x8)
 ddc:	06f7      	br      	0xbca	// bca <wpa_sm_rx_eapol+0xbca>
 dde:	e4482200 	andi      	r2, r8, 512
 de2:	6c57      	mov      	r1, r5
 de4:	6c13      	mov      	r0, r4
 de6:	e0000000 	bsr      	0x0	// 0 <wpa_sm_rx_eapol>
 dea:	073b      	br      	0xc60	// c60 <wpa_sm_rx_eapol+0xc60>
 dec:	3500      	movi      	r5, 0
 dee:	6ed7      	mov      	r11, r5
 df0:	e800fd31 	br      	0x852	// 852 <wpa_sm_rx_eapol+0x852>
 df4:	3500      	movi      	r5, 0
 df6:	e800fd2e 	br      	0x852	// 852 <wpa_sm_rx_eapol+0x852>
 dfa:	3500      	movi      	r5, 0
 dfc:	e800fd2e 	br      	0x858	// 858 <wpa_sm_rx_eapol+0x858>
 e00:	3220      	movi      	r2, 32
 e02:	e42b0010 	addi      	r1, r11, 17
 e06:	e40402a8 	addi      	r0, r4, 681
 e0a:	e0000000 	bsr      	0x0	// 0 <memcmp>
 e0e:	6e03      	mov      	r8, r0
 e10:	e920fbd0 	bnez      	r0, 0x5b0	// 5b0 <wpa_sm_rx_eapol+0x5b0>
 e14:	d8eb0007 	ld.b      	r7, (r11, 0x7)
 e18:	d84b0008 	ld.b      	r2, (r11, 0x8)
 e1c:	47e8      	lsli      	r7, r7, 8
 e1e:	d80420f2 	ld.w      	r0, (r4, 0x3c8)
 e22:	6dc8      	or      	r7, r2
 e24:	e0000000 	bsr      	0x0	// 0 <wpa_cipher_key_len>
 e28:	641e      	cmpne      	r7, r0
 e2a:	e840fbd6 	bf      	0x5d6	// 5d6 <wpa_sm_rx_eapol+0x5d6>
 e2e:	d80420f2 	ld.w      	r0, (r4, 0x3c8)
 e32:	e0000000 	bsr      	0x0	// 0 <wpa_cipher_txt>
 e36:	d84403b1 	ld.b      	r2, (r4, 0x3b1)
 e3a:	b844      	st.w      	r2, (r14, 0x10)
 e3c:	d84403b0 	ld.b      	r2, (r4, 0x3b0)
 e40:	b843      	st.w      	r2, (r14, 0xc)
 e42:	d84403af 	ld.b      	r2, (r4, 0x3af)
 e46:	b842      	st.w      	r2, (r14, 0x8)
 e48:	d84403ae 	ld.b      	r2, (r4, 0x3ae)
 e4c:	b841      	st.w      	r2, (r14, 0x4)
 e4e:	d84403ad 	ld.b      	r2, (r4, 0x3ad)
 e52:	b840      	st.w      	r2, (r14, 0x0)
 e54:	6c43      	mov      	r1, r0
 e56:	d86403ac 	ld.b      	r3, (r4, 0x3ac)
 e5a:	6c9f      	mov      	r2, r7
 e5c:	1006      	lrw      	r0, 0x0	// e74 <wpa_sm_rx_eapol+0xe74>
 e5e:	e0000000 	bsr      	0x0	// 0 <hgprintf>
 e62:	e800fb5b 	br      	0x518	// 518 <wpa_sm_rx_eapol+0x518>
 e66:	1005      	lrw      	r0, 0x0	// e78 <wpa_sm_rx_eapol+0xe78>
 e68:	e800fb1e 	br      	0x4a4	// 4a4 <wpa_sm_rx_eapol+0x4a4>
	...

Disassembly of section .text.wpa_sm_init:

00000000 <wpa_sm_init>:
   0:	14d1      	push      	r4, r15
   2:	6d03      	mov      	r4, r0
   4:	ea000414 	movi      	r0, 1044
   8:	e0000000 	bsr      	0x0	// 0 <_os_zalloc>
   c:	e900001f 	bez      	r0, 0x4a	// 4a <wpa_sm_init+0x4a>
  10:	ea02a8c0 	movi      	r2, 43200
  14:	dc4020ed 	st.w      	r2, (r0, 0x3b4)
  18:	3246      	movi      	r2, 70
  1a:	3301      	movi      	r3, 1
  1c:	dc4020ee 	st.w      	r2, (r0, 0x3b8)
  20:	323c      	movi      	r2, 60
  22:	dc6020b3 	st.w      	r3, (r0, 0x2cc)
  26:	dc4020ef 	st.w      	r2, (r0, 0x3bc)
  2a:	dc6020f6 	st.w      	r3, (r0, 0x3d8)
  2e:	3202      	movi      	r2, 2
  30:	3310      	movi      	r3, 16
  32:	dc8020cd 	st.w      	r4, (r0, 0x334)
  36:	dc4020f1 	st.w      	r2, (r0, 0x3c4)
  3a:	dc6020f2 	st.w      	r3, (r0, 0x3c8)
  3e:	dc6020f3 	st.w      	r3, (r0, 0x3cc)
  42:	dc4020f4 	st.w      	r2, (r0, 0x3d0)
  46:	dc6020f5 	st.w      	r3, (r0, 0x3d4)
  4a:	1491      	pop      	r4, r15

Disassembly of section .text.wpa_sm_notify_assoc:

00000000 <wpa_sm_notify_assoc>:
   0:	14d2      	push      	r4-r5, r15
   2:	6d03      	mov      	r4, r0
   4:	e9000031 	bez      	r0, 0x66	// 66 <wpa_sm_notify_assoc+0x66>
   8:	3206      	movi      	r2, 6
   a:	e40003ab 	addi      	r0, r0, 940
   e:	e0000000 	bsr      	0x0	// 0 <memcpy>
  12:	3208      	movi      	r2, 8
  14:	3100      	movi      	r1, 0
  16:	e40402cf 	addi      	r0, r4, 720
  1a:	e0000000 	bsr      	0x0	// 0 <memset>
  1e:	3500      	movi      	r5, 0
  20:	3301      	movi      	r3, 1
  22:	328e      	movi      	r2, 142
  24:	708c      	lsl      	r2, r3
  26:	dc6420b3 	st.w      	r3, (r4, 0x2cc)
  2a:	6c57      	mov      	r1, r5
  2c:	dca420b6 	st.w      	r5, (r4, 0x2d8)
  30:	dca420a0 	st.w      	r5, (r4, 0x280)
  34:	e4040047 	addi      	r0, r4, 72
  38:	e0000000 	bsr      	0x0	// 0 <memset>
  3c:	328e      	movi      	r2, 142
  3e:	4241      	lsli      	r2, r2, 1
  40:	6c57      	mov      	r1, r5
  42:	dca420a1 	st.w      	r5, (r4, 0x284)
  46:	e4040163 	addi      	r0, r4, 356
  4a:	e0000000 	bsr      	0x0	// 0 <memset>
  4e:	3224      	movi      	r2, 36
  50:	6c57      	mov      	r1, r5
  52:	e40402e3 	addi      	r0, r4, 740
  56:	e0000000 	bsr      	0x0	// 0 <memset>
  5a:	3224      	movi      	r2, 36
  5c:	6c57      	mov      	r1, r5
  5e:	e4040307 	addi      	r0, r4, 776
  62:	e0000000 	bsr      	0x0	// 0 <memset>
  66:	1492      	pop      	r4-r5, r15

Disassembly of section .text.wpa_sm_set_pmk:

00000000 <wpa_sm_set_pmk>:
   0:	14d0      	push      	r15
   2:	6cc3      	mov      	r3, r0
   4:	e9000005 	bez      	r0, 0xe	// e <wpa_sm_set_pmk+0xe>
   8:	b351      	st.w      	r2, (r3, 0x44)
   a:	e0000000 	bsr      	0x0	// 0 <memcpy>
   e:	1490      	pop      	r15

Disassembly of section .text.wpa_sm_set_fast_reauth:

00000000 <wpa_sm_set_fast_reauth>:
   0:	e9000004 	bez      	r0, 0x8	// 8 <wpa_sm_set_fast_reauth+0x8>
   4:	dc2020cf 	st.w      	r1, (r0, 0x33c)
   8:	783c      	jmp      	r15

Disassembly of section .text.wpa_sm_set_config:

00000000 <wpa_sm_set_config>:
   0:	14d2      	push      	r4-r5, r15
   2:	6d03      	mov      	r4, r0
   4:	6d47      	mov      	r5, r1
   6:	e9000027 	bez      	r0, 0x54	// 54 <wpa_sm_set_config+0x54>
   a:	e9010029 	bez      	r1, 0x5c	// 5c <wpa_sm_set_config+0x5c>
   e:	9160      	ld.w      	r3, (r1, 0x0)
  10:	dc6020d0 	st.w      	r3, (r0, 0x340)
  14:	9161      	ld.w      	r3, (r1, 0x4)
  16:	dc6020d1 	st.w      	r3, (r0, 0x344)
  1a:	9162      	ld.w      	r3, (r1, 0x8)
  1c:	dc6020d2 	st.w      	r3, (r0, 0x348)
  20:	9163      	ld.w      	r3, (r1, 0xc)
  22:	dc6020d3 	st.w      	r3, (r0, 0x34c)
  26:	9164      	ld.w      	r3, (r1, 0x10)
  28:	9125      	ld.w      	r1, (r1, 0x14)
  2a:	dc6020d4 	st.w      	r3, (r0, 0x350)
  2e:	e9010014 	bez      	r1, 0x56	// 56 <wpa_sm_set_config+0x56>
  32:	9546      	ld.w      	r2, (r5, 0x18)
  34:	e4000353 	addi      	r0, r0, 852
  38:	e0000000 	bsr      	0x0	// 0 <memcpy>
  3c:	9566      	ld.w      	r3, (r5, 0x18)
  3e:	dc6420dd 	st.w      	r3, (r4, 0x374)
  42:	9567      	ld.w      	r3, (r5, 0x1c)
  44:	dc6420de 	st.w      	r3, (r4, 0x378)
  48:	9568      	ld.w      	r3, (r5, 0x20)
  4a:	dc6420e0 	st.w      	r3, (r4, 0x380)
  4e:	9569      	ld.w      	r3, (r5, 0x24)
  50:	dc6420e1 	st.w      	r3, (r4, 0x384)
  54:	1492      	pop      	r4-r5, r15
  56:	dc2020dd 	st.w      	r1, (r0, 0x374)
  5a:	07f4      	br      	0x42	// 42 <wpa_sm_set_config+0x42>
  5c:	dc2420d0 	st.w      	r1, (r4, 0x340)
  60:	dc2420d1 	st.w      	r1, (r4, 0x344)
  64:	dc2420d2 	st.w      	r1, (r4, 0x348)
  68:	dc2420d3 	st.w      	r1, (r4, 0x34c)
  6c:	dc2420d4 	st.w      	r1, (r4, 0x350)
  70:	dc2420dd 	st.w      	r1, (r4, 0x374)
  74:	dc2420de 	st.w      	r1, (r4, 0x378)
  78:	dc2420e0 	st.w      	r1, (r4, 0x380)
  7c:	dc2420e1 	st.w      	r1, (r4, 0x384)
  80:	07ea      	br      	0x54	// 54 <wpa_sm_set_config+0x54>

Disassembly of section .text.wpa_sm_set_own_addr:

00000000 <wpa_sm_set_own_addr>:
   0:	14d0      	push      	r15
   2:	e9000007 	bez      	r0, 0x10	// 10 <wpa_sm_set_own_addr+0x10>
   6:	3206      	movi      	r2, 6
   8:	e400039c 	addi      	r0, r0, 925
   c:	e0000000 	bsr      	0x0	// 0 <memcpy>
  10:	1490      	pop      	r15

Disassembly of section .text.wpa_sm_set_param:

00000000 <wpa_sm_set_param>:
   0:	e9000031 	bez      	r0, 0x62	// 62 <wpa_sm_set_param+0x62>
   4:	390a      	cmphsi      	r1, 11
   6:	080b      	bt      	0x1c	// 1c <wpa_sm_set_param+0x1c>
   8:	1062      	lrw      	r3, 0x0	// 10 <wpa_sm_set_param+0x10>
   a:	d0230883 	ldr.w      	r3, (r3, r1 << 2)
   e:	780c      	jmp      	r3
  10:	00000000 	.long	0x00000000
  14:	e9020027 	bez      	r2, 0x62	// 62 <wpa_sm_set_param+0x62>
  18:	dc4020ed 	st.w      	r2, (r0, 0x3b4)
  1c:	3000      	movi      	r0, 0
  1e:	783c      	jmp      	r15
  20:	5a63      	subi      	r3, r2, 1
  22:	eb030063 	cmphsi      	r3, 100
  26:	081e      	bt      	0x62	// 62 <wpa_sm_set_param+0x62>
  28:	dc4020ee 	st.w      	r2, (r0, 0x3b8)
  2c:	07f8      	br      	0x1c	// 1c <wpa_sm_set_param+0x1c>
  2e:	e902001a 	bez      	r2, 0x62	// 62 <wpa_sm_set_param+0x62>
  32:	dc4020ef 	st.w      	r2, (r0, 0x3bc)
  36:	07f3      	br      	0x1c	// 1c <wpa_sm_set_param+0x1c>
  38:	dc4020f1 	st.w      	r2, (r0, 0x3c4)
  3c:	07f0      	br      	0x1c	// 1c <wpa_sm_set_param+0x1c>
  3e:	dc4020f2 	st.w      	r2, (r0, 0x3c8)
  42:	07ed      	br      	0x1c	// 1c <wpa_sm_set_param+0x1c>
  44:	dc4020f3 	st.w      	r2, (r0, 0x3cc)
  48:	07ea      	br      	0x1c	// 1c <wpa_sm_set_param+0x1c>
  4a:	dc4020f4 	st.w      	r2, (r0, 0x3d0)
  4e:	07e7      	br      	0x1c	// 1c <wpa_sm_set_param+0x1c>
  50:	dc4020f6 	st.w      	r2, (r0, 0x3d8)
  54:	07e4      	br      	0x1c	// 1c <wpa_sm_set_param+0x1c>
  56:	dc4020f7 	st.w      	r2, (r0, 0x3dc)
  5a:	07e1      	br      	0x1c	// 1c <wpa_sm_set_param+0x1c>
  5c:	dc4020f8 	st.w      	r2, (r0, 0x3e0)
  60:	07de      	br      	0x1c	// 1c <wpa_sm_set_param+0x1c>
  62:	3000      	movi      	r0, 0
  64:	2800      	subi      	r0, 1
  66:	07dc      	br      	0x1e	// 1e <wpa_sm_set_param+0x1e>

Disassembly of section .text.wpa_sm_pmf_enabled:

00000000 <wpa_sm_pmf_enabled>:
   0:	14d0      	push      	r15
   2:	142a      	subi      	r14, r14, 40
   4:	d84020f7 	ld.w      	r2, (r0, 0x3dc)
   8:	6cc3      	mov      	r3, r0
   a:	e9020012 	bez      	r2, 0x2e	// 2e <wpa_sm_pmf_enabled+0x2e>
   e:	d8002100 	ld.w      	r0, (r0, 0x400)
  12:	e900000e 	bez      	r0, 0x2e	// 2e <wpa_sm_pmf_enabled+0x2e>
  16:	6cbb      	mov      	r2, r14
  18:	d8232103 	ld.w      	r1, (r3, 0x40c)
  1c:	e0000000 	bsr      	0x0	// 0 <wpa_parse_wpa_ie_rsn>
  20:	e9800007 	blz      	r0, 0x2e	// 2e <wpa_sm_pmf_enabled+0x2e>
  24:	9866      	ld.w      	r3, (r14, 0x18)
  26:	e46320c0 	andi      	r3, r3, 192
  2a:	e9230005 	bnez      	r3, 0x34	// 34 <wpa_sm_pmf_enabled+0x34>
  2e:	3000      	movi      	r0, 0
  30:	140a      	addi      	r14, r14, 40
  32:	1490      	pop      	r15
  34:	3001      	movi      	r0, 1
  36:	07fd      	br      	0x30	// 30 <wpa_sm_pmf_enabled+0x30>

Disassembly of section .text.wpa_sm_set_assoc_wpa_ie_default:

00000000 <wpa_sm_set_assoc_wpa_ie_default>:
   0:	14d4      	push      	r4-r7, r15
   2:	6d43      	mov      	r5, r0
   4:	6dc7      	mov      	r7, r1
   6:	6d8b      	mov      	r6, r2
   8:	e9200005 	bnez      	r0, 0x12	// 12 <wpa_sm_set_assoc_wpa_ie_default+0x12>
   c:	3000      	movi      	r0, 0
   e:	2800      	subi      	r0, 1
  10:	1494      	pop      	r4-r7, r15
  12:	9240      	ld.w      	r2, (r2, 0x0)
  14:	e0000000 	bsr      	0x0	// 0 <wpa_gen_wpa_ie>
  18:	6c43      	mov      	r1, r0
  1a:	e980fff9 	blz      	r0, 0xc	// c <wpa_sm_set_assoc_wpa_ie_default+0xc>
  1e:	d88520fb 	ld.w      	r4, (r5, 0x3ec)
  22:	b600      	st.w      	r0, (r6, 0x0)
  24:	e924000c 	bnez      	r4, 0x3c	// 3c <wpa_sm_set_assoc_wpa_ie_default+0x3c>
  28:	6c1f      	mov      	r0, r7
  2a:	e0000000 	bsr      	0x0	// 0 <os_memdup>
  2e:	dc0520fb 	st.w      	r0, (r5, 0x3ec)
  32:	e900ffed 	bez      	r0, 0xc	// c <wpa_sm_set_assoc_wpa_ie_default+0xc>
  36:	9660      	ld.w      	r3, (r6, 0x0)
  38:	dc6520fc 	st.w      	r3, (r5, 0x3f0)
  3c:	3000      	movi      	r0, 0
  3e:	07e9      	br      	0x10	// 10 <wpa_sm_set_assoc_wpa_ie_default+0x10>

Disassembly of section .text.wpa_sm_set_assoc_wpa_ie:

00000000 <wpa_sm_set_assoc_wpa_ie>:
   0:	14d4      	push      	r4-r7, r15
   2:	6d43      	mov      	r5, r0
   4:	6dc7      	mov      	r7, r1
   6:	6d8b      	mov      	r6, r2
   8:	e9200005 	bnez      	r0, 0x12	// 12 <wpa_sm_set_assoc_wpa_ie+0x12>
   c:	3000      	movi      	r0, 0
   e:	2800      	subi      	r0, 1
  10:	1494      	pop      	r4-r7, r15
  12:	3400      	movi      	r4, 0
  14:	d80020fb 	ld.w      	r0, (r0, 0x3ec)
  18:	e0000000 	bsr      	0x0	// 0 <_os_free>
  1c:	dc8520fb 	st.w      	r4, (r5, 0x3ec)
  20:	6cd3      	mov      	r3, r4
  22:	e9070004 	bez      	r7, 0x2a	// 2a <wpa_sm_set_assoc_wpa_ie+0x2a>
  26:	e9260006 	bnez      	r6, 0x32	// 32 <wpa_sm_set_assoc_wpa_ie+0x32>
  2a:	dc6520fc 	st.w      	r3, (r5, 0x3f0)
  2e:	3000      	movi      	r0, 0
  30:	07f0      	br      	0x10	// 10 <wpa_sm_set_assoc_wpa_ie+0x10>
  32:	6c5b      	mov      	r1, r6
  34:	6c1f      	mov      	r0, r7
  36:	e0000000 	bsr      	0x0	// 0 <os_memdup>
  3a:	dc0520fb 	st.w      	r0, (r5, 0x3ec)
  3e:	e900ffe7 	bez      	r0, 0xc	// c <wpa_sm_set_assoc_wpa_ie+0xc>
  42:	dcc520fc 	st.w      	r6, (r5, 0x3f0)
  46:	6c13      	mov      	r0, r4
  48:	07e4      	br      	0x10	// 10 <wpa_sm_set_assoc_wpa_ie+0x10>

Disassembly of section .text.wpa_sm_set_ap_wpa_ie:

00000000 <wpa_sm_set_ap_wpa_ie>:
   0:	14d4      	push      	r4-r7, r15
   2:	6d43      	mov      	r5, r0
   4:	6dc7      	mov      	r7, r1
   6:	6d8b      	mov      	r6, r2
   8:	e9200005 	bnez      	r0, 0x12	// 12 <wpa_sm_set_ap_wpa_ie+0x12>
   c:	3000      	movi      	r0, 0
   e:	2800      	subi      	r0, 1
  10:	1494      	pop      	r4-r7, r15
  12:	3400      	movi      	r4, 0
  14:	d80020ff 	ld.w      	r0, (r0, 0x3fc)
  18:	e0000000 	bsr      	0x0	// 0 <_os_free>
  1c:	dc8520ff 	st.w      	r4, (r5, 0x3fc)
  20:	6cd3      	mov      	r3, r4
  22:	e9070004 	bez      	r7, 0x2a	// 2a <wpa_sm_set_ap_wpa_ie+0x2a>
  26:	e9260006 	bnez      	r6, 0x32	// 32 <wpa_sm_set_ap_wpa_ie+0x32>
  2a:	dc652102 	st.w      	r3, (r5, 0x408)
  2e:	3000      	movi      	r0, 0
  30:	07f0      	br      	0x10	// 10 <wpa_sm_set_ap_wpa_ie+0x10>
  32:	6c5b      	mov      	r1, r6
  34:	6c1f      	mov      	r0, r7
  36:	e0000000 	bsr      	0x0	// 0 <os_memdup>
  3a:	dc0520ff 	st.w      	r0, (r5, 0x3fc)
  3e:	e900ffe7 	bez      	r0, 0xc	// c <wpa_sm_set_ap_wpa_ie+0xc>
  42:	dcc52102 	st.w      	r6, (r5, 0x408)
  46:	6c13      	mov      	r0, r4
  48:	07e4      	br      	0x10	// 10 <wpa_sm_set_ap_wpa_ie+0x10>

Disassembly of section .text.wpa_sm_set_ap_rsn_ie:

00000000 <wpa_sm_set_ap_rsn_ie>:
   0:	14d4      	push      	r4-r7, r15
   2:	6d43      	mov      	r5, r0
   4:	6dc7      	mov      	r7, r1
   6:	6d8b      	mov      	r6, r2
   8:	e9200005 	bnez      	r0, 0x12	// 12 <wpa_sm_set_ap_rsn_ie+0x12>
   c:	3000      	movi      	r0, 0
   e:	2800      	subi      	r0, 1
  10:	1494      	pop      	r4-r7, r15
  12:	3400      	movi      	r4, 0
  14:	d8002100 	ld.w      	r0, (r0, 0x400)
  18:	e0000000 	bsr      	0x0	// 0 <_os_free>
  1c:	dc852100 	st.w      	r4, (r5, 0x400)
  20:	6cd3      	mov      	r3, r4
  22:	e9070004 	bez      	r7, 0x2a	// 2a <wpa_sm_set_ap_rsn_ie+0x2a>
  26:	e9260006 	bnez      	r6, 0x32	// 32 <wpa_sm_set_ap_rsn_ie+0x32>
  2a:	dc652103 	st.w      	r3, (r5, 0x40c)
  2e:	3000      	movi      	r0, 0
  30:	07f0      	br      	0x10	// 10 <wpa_sm_set_ap_rsn_ie+0x10>
  32:	6c5b      	mov      	r1, r6
  34:	6c1f      	mov      	r0, r7
  36:	e0000000 	bsr      	0x0	// 0 <os_memdup>
  3a:	dc052100 	st.w      	r0, (r5, 0x400)
  3e:	e900ffe7 	bez      	r0, 0xc	// c <wpa_sm_set_ap_rsn_ie+0xc>
  42:	dcc52103 	st.w      	r6, (r5, 0x40c)
  46:	6c13      	mov      	r0, r4
  48:	07e4      	br      	0x10	// 10 <wpa_sm_set_ap_rsn_ie+0x10>

Disassembly of section .text.wpa_sm_parse_own_wpa_ie:

00000000 <wpa_sm_parse_own_wpa_ie>:
   0:	14d0      	push      	r15
   2:	6cc3      	mov      	r3, r0
   4:	6c87      	mov      	r2, r1
   6:	e9000010 	bez      	r0, 0x26	// 26 <wpa_sm_parse_own_wpa_ie+0x26>
   a:	d80020fb 	ld.w      	r0, (r0, 0x3ec)
   e:	e900000c 	bez      	r0, 0x26	// 26 <wpa_sm_parse_own_wpa_ie+0x26>
  12:	d82320fc 	ld.w      	r1, (r3, 0x3f0)
  16:	e0000000 	bsr      	0x0	// 0 <wpa_parse_wpa_ie>
  1a:	3300      	movi      	r3, 0
  1c:	2b01      	subi      	r3, 2
  1e:	3840      	cmpnei      	r0, 0
  20:	c4030c40 	inct      	r0, r3, 0
  24:	1490      	pop      	r15
  26:	3000      	movi      	r0, 0
  28:	2800      	subi      	r0, 1
  2a:	07fd      	br      	0x24	// 24 <wpa_sm_parse_own_wpa_ie+0x24>

Disassembly of section .text.wpa_sm_drop_sa:

00000000 <wpa_sm_drop_sa>:
   0:	14d3      	push      	r4-r6, r15
   2:	3400      	movi      	r4, 0
   4:	368e      	movi      	r6, 142
   6:	6d43      	mov      	r5, r0
   8:	6c53      	mov      	r1, r4
   a:	46c1      	lsli      	r6, r6, 1
   c:	dc8020a0 	st.w      	r4, (r0, 0x280)
  10:	dc8020a1 	st.w      	r4, (r0, 0x284)
  14:	b091      	st.w      	r4, (r0, 0x44)
  16:	3240      	movi      	r2, 64
  18:	e0000000 	bsr      	0x0	// 0 <memset>
  1c:	6c9b      	mov      	r2, r6
  1e:	6c53      	mov      	r1, r4
  20:	e4050047 	addi      	r0, r5, 72
  24:	e0000000 	bsr      	0x0	// 0 <memset>
  28:	6c9b      	mov      	r2, r6
  2a:	6c53      	mov      	r1, r4
  2c:	3624      	movi      	r6, 36
  2e:	e4050163 	addi      	r0, r5, 356
  32:	e0000000 	bsr      	0x0	// 0 <memset>
  36:	6c9b      	mov      	r2, r6
  38:	6c53      	mov      	r1, r4
  3a:	e40502e3 	addi      	r0, r5, 740
  3e:	e0000000 	bsr      	0x0	// 0 <memset>
  42:	6c9b      	mov      	r2, r6
  44:	6c53      	mov      	r1, r4
  46:	e4050307 	addi      	r0, r5, 776
  4a:	e0000000 	bsr      	0x0	// 0 <memset>
  4e:	1493      	pop      	r4-r6, r15

Disassembly of section .text.wpa_sm_deinit:

00000000 <wpa_sm_deinit>:
   0:	14d2      	push      	r4-r5, r15
   2:	6d03      	mov      	r4, r0
   4:	e900002b 	bez      	r0, 0x5a	// 5a <wpa_sm_deinit+0x5a>
   8:	6c43      	mov      	r1, r0
   a:	3200      	movi      	r2, 0
   c:	1014      	lrw      	r0, 0x0	// 5c <wpa_sm_deinit+0x5c>
   e:	e0000000 	bsr      	0x0	// 0 <eloop_cancel_timeout>
  12:	3200      	movi      	r2, 0
  14:	6c53      	mov      	r1, r4
  16:	1013      	lrw      	r0, 0x0	// 60 <wpa_sm_deinit+0x60>
  18:	e0000000 	bsr      	0x0	// 0 <eloop_cancel_timeout>
  1c:	3500      	movi      	r5, 0
  1e:	d80420fb 	ld.w      	r0, (r4, 0x3ec)
  22:	e0000000 	bsr      	0x0	// 0 <_os_free>
  26:	d80420ff 	ld.w      	r0, (r4, 0x3fc)
  2a:	dca420fb 	st.w      	r5, (r4, 0x3ec)
  2e:	e0000000 	bsr      	0x0	// 0 <_os_free>
  32:	d8042100 	ld.w      	r0, (r4, 0x400)
  36:	dca420ff 	st.w      	r5, (r4, 0x3fc)
  3a:	e0000000 	bsr      	0x0	// 0 <_os_free>
  3e:	6c13      	mov      	r0, r4
  40:	dca42100 	st.w      	r5, (r4, 0x400)
  44:	e0000000 	bsr      	0x0	// 0 <wpa_sm_deinit>
  48:	d80420cd 	ld.w      	r0, (r4, 0x334)
  4c:	e0000000 	bsr      	0x0	// 0 <_os_free>
  50:	dca420cd 	st.w      	r5, (r4, 0x334)
  54:	6c13      	mov      	r0, r4
  56:	e0000000 	bsr      	0x0	// 0 <_os_free>
  5a:	1492      	pop      	r4-r5, r15
	...

Disassembly of section .text.wpa_sm_notify_disassoc:

00000000 <wpa_sm_notify_disassoc>:
   0:	14d1      	push      	r4, r15
   2:	6d03      	mov      	r4, r0
   4:	e9000026 	bez      	r0, 0x50	// 50 <wpa_sm_notify_disassoc+0x50>
   8:	6c43      	mov      	r1, r0
   a:	3200      	movi      	r2, 0
   c:	1012      	lrw      	r0, 0x0	// 54 <wpa_sm_notify_disassoc+0x54>
   e:	e0000000 	bsr      	0x0	// 0 <eloop_cancel_timeout>
  12:	3200      	movi      	r2, 0
  14:	6c53      	mov      	r1, r4
  16:	1011      	lrw      	r0, 0x0	// 58 <wpa_sm_notify_disassoc+0x58>
  18:	e0000000 	bsr      	0x0	// 0 <eloop_cancel_timeout>
  1c:	e4040333 	addi      	r0, r4, 820
  20:	e0000000 	bsr      	0x0	// 0 <wpa_sm_notify_disassoc>
  24:	3847      	cmpnei      	r0, 7
  26:	0806      	bt      	0x32	// 32 <wpa_sm_notify_disassoc+0x32>
  28:	d86420f0 	ld.w      	r3, (r4, 0x3c0)
  2c:	2300      	addi      	r3, 1
  2e:	dc6420f0 	st.w      	r3, (r4, 0x3c0)
  32:	6c13      	mov      	r0, r4
  34:	e0000000 	bsr      	0x0	// 0 <wpa_sm_notify_disassoc>
  38:	d8640288 	ld.b      	r3, (r4, 0x288)
  3c:	3100      	movi      	r1, 0
  3e:	c4615c00 	ins      	r3, r1, 0, 0
  42:	dc640288 	st.b      	r3, (r4, 0x288)
  46:	3206      	movi      	r2, 6
  48:	e40403ab 	addi      	r0, r4, 940
  4c:	e0000000 	bsr      	0x0	// 0 <memset>
  50:	1491      	pop      	r4, r15
	...

Disassembly of section .text.wpa_sm_has_ptk:

00000000 <wpa_sm_has_ptk>:
   0:	e9000004 	bez      	r0, 0x8	// 8 <wpa_sm_has_ptk+0x8>
   4:	d80020a0 	ld.w      	r0, (r0, 0x280)
   8:	783c      	jmp      	r15

Disassembly of section .text.wpa_sm_update_replay_ctr:

00000000 <wpa_sm_update_replay_ctr>:
   0:	14d0      	push      	r15
   2:	e40002cf 	addi      	r0, r0, 720
   6:	3208      	movi      	r2, 8
   8:	e0000000 	bsr      	0x0	// 0 <memcpy>
   c:	1490      	pop      	r15

Disassembly of section .text.wpa_sm_set_rx_replay_ctr:

00000000 <wpa_sm_set_rx_replay_ctr>:
   0:	14d1      	push      	r4, r15
   2:	6d03      	mov      	r4, r0
   4:	e901000a 	bez      	r1, 0x18	// 18 <wpa_sm_set_rx_replay_ctr+0x18>
   8:	3208      	movi      	r2, 8
   a:	e40002cf 	addi      	r0, r0, 720
   e:	e0000000 	bsr      	0x0	// 0 <memcpy>
  12:	3301      	movi      	r3, 1
  14:	dc6420b6 	st.w      	r3, (r4, 0x2d8)
  18:	1491      	pop      	r4, r15

Disassembly of section .text.wpa_sm_set_ptk_kck_kek:

00000000 <wpa_sm_set_ptk_kck_kek>:
   0:	14d4      	push      	r4-r7, r15
   2:	6d03      	mov      	r4, r0
   4:	6dcb      	mov      	r7, r2
   6:	6d8f      	mov      	r6, r3
   8:	98a5      	ld.w      	r5, (r14, 0x14)
   a:	e901000a 	bez      	r1, 0x1e	// 1e <wpa_sm_set_ptk_kck_kek+0x1e>
   e:	eb020020 	cmphsi      	r2, 33
  12:	0806      	bt      	0x1e	// 1e <wpa_sm_set_ptk_kck_kek+0x1e>
  14:	2047      	addi      	r0, 72
  16:	e0000000 	bsr      	0x0	// 0 <memcpy>
  1a:	dce42052 	st.w      	r7, (r4, 0x148)
  1e:	e906000d 	bez      	r6, 0x38	// 38 <wpa_sm_set_ptk_kck_kek+0x38>
  22:	eb050040 	cmphsi      	r5, 65
  26:	0809      	bt      	0x38	// 38 <wpa_sm_set_ptk_kck_kek+0x38>
  28:	6c97      	mov      	r2, r5
  2a:	6c5b      	mov      	r1, r6
  2c:	e4040067 	addi      	r0, r4, 104
  30:	e0000000 	bsr      	0x0	// 0 <memcpy>
  34:	dca42053 	st.w      	r5, (r4, 0x14c)
  38:	3301      	movi      	r3, 1
  3a:	dc6420a0 	st.w      	r3, (r4, 0x280)
  3e:	1494      	pop      	r4-r7, r15

Disassembly of section .text.wpa_fils_is_completed:

00000000 <wpa_fils_is_completed>:
   0:	3000      	movi      	r0, 0
   2:	783c      	jmp      	r15

Disassembly of section .text.wpa_sm_get_key_mgmt:

00000000 <wpa_sm_get_key_mgmt>:
   0:	d80020f4 	ld.w      	r0, (r0, 0x3d0)
   4:	783c      	jmp      	r15

Disassembly of section .text.wpas_deinit:

00000000 <wpas_deinit>:
   0:	14d0      	push      	r15
   2:	e9000004 	bez      	r0, 0xa	// a <wpas_deinit+0xa>
   6:	e0000000 	bsr      	0x0	// 0 <wpas_deinit>
   a:	1490      	pop      	r15

Disassembly of section .text.wpas_init:

00000000 <wpas_init>:
   0:	14d2      	push      	r4-r5, r15
   2:	6d43      	mov      	r5, r0
   4:	303c      	movi      	r0, 60
   6:	e0000000 	bsr      	0x0	// 0 <_os_zalloc>
   a:	6d03      	mov      	r4, r0
   c:	e9200007 	bnez      	r0, 0x1a	// 1a <wpas_init+0x1a>
  10:	1016      	lrw      	r0, 0x0	// 68 <hgprintf+0x68>
  12:	e0000000 	bsr      	0x0	// 0 <hgprintf>
  16:	6c13      	mov      	r0, r4
  18:	1492      	pop      	r4-r5, r15
  1a:	1075      	lrw      	r3, 0x0	// 6c <wpas_init+0x6c>
  1c:	b062      	st.w      	r3, (r0, 0x8)
  1e:	b0a0      	st.w      	r5, (r0, 0x0)
  20:	1074      	lrw      	r3, 0x0	// 70 <wpas_init+0x70>
  22:	b063      	st.w      	r3, (r0, 0xc)
  24:	1074      	lrw      	r3, 0x0	// 74 <wpas_init+0x74>
  26:	b064      	st.w      	r3, (r0, 0x10)
  28:	1074      	lrw      	r3, 0x0	// 78 <wpas_init+0x78>
  2a:	b065      	st.w      	r3, (r0, 0x14)
  2c:	1074      	lrw      	r3, 0x0	// 7c <wpas_init+0x7c>
  2e:	b066      	st.w      	r3, (r0, 0x18)
  30:	1074      	lrw      	r3, 0x0	// 80 <wpas_init+0x80>
  32:	b067      	st.w      	r3, (r0, 0x1c)
  34:	1074      	lrw      	r3, 0x0	// 84 <wpas_init+0x84>
  36:	b068      	st.w      	r3, (r0, 0x20)
  38:	1074      	lrw      	r3, 0x0	// 88 <wpas_init+0x88>
  3a:	b06a      	st.w      	r3, (r0, 0x28)
  3c:	1074      	lrw      	r3, 0x0	// 8c <wpas_init+0x8c>
  3e:	b069      	st.w      	r3, (r0, 0x24)
  40:	1074      	lrw      	r3, 0x0	// 90 <wpas_init+0x90>
  42:	b06b      	st.w      	r3, (r0, 0x2c)
  44:	1074      	lrw      	r3, 0x0	// 94 <wpas_init+0x94>
  46:	b06d      	st.w      	r3, (r0, 0x34)
  48:	1074      	lrw      	r3, 0x0	// 98 <wpas_init+0x98>
  4a:	b06e      	st.w      	r3, (r0, 0x38)
  4c:	e0000000 	bsr      	0x0	// 0 <wpas_init>
  50:	6d43      	mov      	r5, r0
  52:	e9200008 	bnez      	r0, 0x62	// 62 <wpas_init+0x62>
  56:	1012      	lrw      	r0, 0x0	// 9c <hgprintf+0x9c>
  58:	e0000000 	bsr      	0x0	// 0 <hgprintf>
  5c:	6c13      	mov      	r0, r4
  5e:	e0000000 	bsr      	0x0	// 0 <_os_free>
  62:	6c17      	mov      	r0, r5
  64:	07da      	br      	0x18	// 18 <wpas_init+0x18>
	...

Disassembly of section .text.wpa_sm_set_keymgmt:

00000000 <wpa_sm_set_keymgmt>:
   0:	e9000004 	bez      	r0, 0x8	// 8 <wpa_sm_set_keymgmt+0x8>
   4:	dc2020f4 	st.w      	r1, (r0, 0x3d0)
   8:	783c      	jmp      	r15

Disassembly of section .text.wpa_sm_set_wpa_proto:

00000000 <wpa_sm_set_wpa_proto>:
   0:	e900000b 	bez      	r0, 0x16	// 16 <wpa_sm_set_wpa_proto+0x16>
   4:	dc2020f1 	st.w      	r1, (r0, 0x3c4)
   8:	e421200a 	andi      	r1, r1, 10
   c:	3940      	cmpnei      	r1, 0
   e:	c4000503 	mvc      	r3
  12:	dc6020f6 	st.w      	r3, (r0, 0x3d8)
  16:	783c      	jmp      	r15

Disassembly of section .text.wpa_sm_set_pairwise_cipher:

00000000 <wpa_sm_set_pairwise_cipher>:
   0:	e9000004 	bez      	r0, 0x8	// 8 <wpa_sm_set_pairwise_cipher+0x8>
   4:	dc2020f2 	st.w      	r1, (r0, 0x3c8)
   8:	783c      	jmp      	r15

Disassembly of section .text.wpa_sm_set_group_cipher:

00000000 <wpa_sm_set_group_cipher>:
   0:	e9000004 	bez      	r0, 0x8	// 8 <wpa_sm_set_group_cipher+0x8>
   4:	dc2020f3 	st.w      	r1, (r0, 0x3cc)
   8:	783c      	jmp      	r15

Disassembly of section .text.wpa_sm_set_mgmt_group_cipher:

00000000 <wpa_sm_set_mgmt_group_cipher>:
   0:	783c      	jmp      	r15

Disassembly of section .text.wpa_sm_set_pmf:

00000000 <wpa_sm_set_pmf>:
   0:	e9000004 	bez      	r0, 0x8	// 8 <wpa_sm_set_pmf+0x8>
   4:	dc2020f7 	st.w      	r1, (r0, 0x3dc)
   8:	783c      	jmp      	r15

Disassembly of section .text.wpa_sm_set_ssid:

00000000 <wpa_sm_set_ssid>:
   0:	14d2      	push      	r4-r5, r15
   2:	6d03      	mov      	r4, r0
   4:	6d4b      	mov      	r5, r2
   6:	e9000008 	bez      	r0, 0x16	// 16 <wpa_sm_set_ssid+0x16>
   a:	e4000353 	addi      	r0, r0, 852
   e:	e0000000 	bsr      	0x0	// 0 <memcpy>
  12:	dca420dd 	st.w      	r5, (r4, 0x374)
  16:	1492      	pop      	r4-r5, r15

Disassembly of section .text.wpa_sm_set_bssid:

00000000 <wpa_sm_set_bssid>:
   0:	14d0      	push      	r15
   2:	e9000007 	bez      	r0, 0x10	// 10 <wpa_sm_set_bssid+0x10>
   6:	3206      	movi      	r2, 6
   8:	e40003ab 	addi      	r0, r0, 940
   c:	e0000000 	bsr      	0x0	// 0 <memcpy>
  10:	1490      	pop      	r15
