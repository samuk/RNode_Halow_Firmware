
libwifi/o/lib_wpa_common.o:     file format elf32-csky-little


Disassembly of section .text.WPA_GET_BE32:

00000000 <WPA_GET_BE32>:
   0:	8060      	ld.b      	r3, (r0, 0x0)
   2:	8043      	ld.b      	r2, (r0, 0x3)
   4:	4378      	lsli      	r3, r3, 24
   6:	6cc8      	or      	r3, r2
   8:	8041      	ld.b      	r2, (r0, 0x1)
   a:	4250      	lsli      	r2, r2, 16
   c:	8002      	ld.b      	r0, (r0, 0x2)
   e:	6cc8      	or      	r3, r2
  10:	4008      	lsli      	r0, r0, 8
  12:	6c0c      	or      	r0, r3
  14:	783c      	jmp      	r15

Disassembly of section .text.rsn_selector_to_bitfield:

00000000 <rsn_selector_to_bitfield>:
   0:	14d0      	push      	r15
   2:	e0000000 	bsr      	0x0	// 0 <rsn_selector_to_bitfield>
   6:	ea03fac0 	movi      	r3, 64192
   a:	c4834903 	rotli      	r3, r3, 4
   e:	64c2      	cmpne      	r0, r3
  10:	0c21      	bf      	0x52	// 52 <rsn_selector_to_bitfield+0x52>
  12:	107d      	lrw      	r3, 0xfac02	// 84 <rsn_selector_to_bitfield+0x84>
  14:	64c2      	cmpne      	r0, r3
  16:	0c20      	bf      	0x56	// 56 <rsn_selector_to_bitfield+0x56>
  18:	107c      	lrw      	r3, 0xfac04	// 88 <rsn_selector_to_bitfield+0x88>
  1a:	64c2      	cmpne      	r0, r3
  1c:	0c1f      	bf      	0x5a	// 5a <rsn_selector_to_bitfield+0x5a>
  1e:	107c      	lrw      	r3, 0xfac06	// 8c <rsn_selector_to_bitfield+0x8c>
  20:	64c2      	cmpne      	r0, r3
  22:	0c1e      	bf      	0x5e	// 5e <rsn_selector_to_bitfield+0x5e>
  24:	107b      	lrw      	r3, 0xfac08	// 90 <rsn_selector_to_bitfield+0x90>
  26:	64c2      	cmpne      	r0, r3
  28:	0c1d      	bf      	0x62	// 62 <rsn_selector_to_bitfield+0x62>
  2a:	107b      	lrw      	r3, 0xfac0a	// 94 <rsn_selector_to_bitfield+0x94>
  2c:	64c2      	cmpne      	r0, r3
  2e:	0c1c      	bf      	0x66	// 66 <rsn_selector_to_bitfield+0x66>
  30:	107a      	lrw      	r3, 0xfac09	// 98 <rsn_selector_to_bitfield+0x98>
  32:	64c2      	cmpne      	r0, r3
  34:	0c1c      	bf      	0x6c	// 6c <rsn_selector_to_bitfield+0x6c>
  36:	107a      	lrw      	r3, 0xfac0b	// 9c <rsn_selector_to_bitfield+0x9c>
  38:	64c2      	cmpne      	r0, r3
  3a:	0c1c      	bf      	0x72	// 72 <rsn_selector_to_bitfield+0x72>
  3c:	1079      	lrw      	r3, 0xfac0c	// a0 <rsn_selector_to_bitfield+0xa0>
  3e:	64c2      	cmpne      	r0, r3
  40:	0c1c      	bf      	0x78	// 78 <rsn_selector_to_bitfield+0x78>
  42:	1079      	lrw      	r3, 0xfac0d	// a4 <rsn_selector_to_bitfield+0xa4>
  44:	64c2      	cmpne      	r0, r3
  46:	0c1c      	bf      	0x7e	// 7e <rsn_selector_to_bitfield+0x7e>
  48:	1078      	lrw      	r3, 0xfac07	// a8 <rsn_selector_to_bitfield+0xa8>
  4a:	64c2      	cmpne      	r0, r3
  4c:	6403      	mvcv      	r0
  4e:	400e      	lsli      	r0, r0, 14
  50:	1490      	pop      	r15
  52:	3001      	movi      	r0, 1
  54:	07fe      	br      	0x50	// 50 <rsn_selector_to_bitfield+0x50>
  56:	3008      	movi      	r0, 8
  58:	07fc      	br      	0x50	// 50 <rsn_selector_to_bitfield+0x50>
  5a:	3010      	movi      	r0, 16
  5c:	07fa      	br      	0x50	// 50 <rsn_selector_to_bitfield+0x50>
  5e:	3020      	movi      	r0, 32
  60:	07f8      	br      	0x50	// 50 <rsn_selector_to_bitfield+0x50>
  62:	3040      	movi      	r0, 64
  64:	07f6      	br      	0x50	// 50 <rsn_selector_to_bitfield+0x50>
  66:	3080      	movi      	r0, 128
  68:	4002      	lsli      	r0, r0, 2
  6a:	07f3      	br      	0x50	// 50 <rsn_selector_to_bitfield+0x50>
  6c:	3080      	movi      	r0, 128
  6e:	4001      	lsli      	r0, r0, 1
  70:	07f0      	br      	0x50	// 50 <rsn_selector_to_bitfield+0x50>
  72:	3080      	movi      	r0, 128
  74:	4004      	lsli      	r0, r0, 4
  76:	07ed      	br      	0x50	// 50 <rsn_selector_to_bitfield+0x50>
  78:	3080      	movi      	r0, 128
  7a:	4005      	lsli      	r0, r0, 5
  7c:	07ea      	br      	0x50	// 50 <rsn_selector_to_bitfield+0x50>
  7e:	3080      	movi      	r0, 128
  80:	4006      	lsli      	r0, r0, 6
  82:	07e7      	br      	0x50	// 50 <rsn_selector_to_bitfield+0x50>
  84:	000fac02 	.long	0x000fac02
  88:	000fac04 	.long	0x000fac04
  8c:	000fac06 	.long	0x000fac06
  90:	000fac08 	.long	0x000fac08
  94:	000fac0a 	.long	0x000fac0a
  98:	000fac09 	.long	0x000fac09
  9c:	000fac0b 	.long	0x000fac0b
  a0:	000fac0c 	.long	0x000fac0c
  a4:	000fac0d 	.long	0x000fac0d
  a8:	ac07      	.short	0xac07
  aa:	000f      	.short	0x000f

Disassembly of section .text.wpa_mic_len:

00000000 <wpa_mic_len>:
   0:	3380      	movi      	r3, 128
   2:	436d      	lsli      	r3, r3, 13
   4:	64c2      	cmpne      	r0, r3
   6:	0c22      	bf      	0x4a	// 4a <wpa_mic_len+0x4a>
   8:	640d      	cmplt      	r3, r0
   a:	3380      	movi      	r3, 128
   c:	080e      	bt      	0x28	// 28 <wpa_mic_len+0x28>
   e:	436b      	lsli      	r3, r3, 11
  10:	64c2      	cmpne      	r0, r3
  12:	0c1c      	bf      	0x4a	// 4a <wpa_mic_len+0x4a>
  14:	3380      	movi      	r3, 128
  16:	436c      	lsli      	r3, r3, 12
  18:	64c2      	cmpne      	r0, r3
  1a:	0c18      	bf      	0x4a	// 4a <wpa_mic_len+0x4a>
  1c:	3380      	movi      	r3, 128
  1e:	436a      	lsli      	r3, r3, 10
  20:	64c2      	cmpne      	r0, r3
  22:	080c      	bt      	0x3a	// 3a <wpa_mic_len+0x3a>
  24:	3018      	movi      	r0, 24
  26:	0413      	br      	0x4c	// 4c <wpa_mic_len+0x4c>
  28:	436f      	lsli      	r3, r3, 15
  2a:	64c2      	cmpne      	r0, r3
  2c:	0c11      	bf      	0x4e	// 4e <wpa_mic_len+0x4e>
  2e:	640d      	cmplt      	r3, r0
  30:	3380      	movi      	r3, 128
  32:	0806      	bt      	0x3e	// 3e <wpa_mic_len+0x3e>
  34:	436e      	lsli      	r3, r3, 14
  36:	64c2      	cmpne      	r0, r3
  38:	0c09      	bf      	0x4a	// 4a <wpa_mic_len+0x4a>
  3a:	3010      	movi      	r0, 16
  3c:	0408      	br      	0x4c	// 4c <wpa_mic_len+0x4c>
  3e:	4370      	lsli      	r3, r3, 16
  40:	64c2      	cmpne      	r0, r3
  42:	0c06      	bf      	0x4e	// 4e <wpa_mic_len+0x4e>
  44:	3380      	movi      	r3, 128
  46:	4371      	lsli      	r3, r3, 17
  48:	07ec      	br      	0x20	// 20 <wpa_mic_len+0x20>
  4a:	3000      	movi      	r0, 0
  4c:	783c      	jmp      	r15
  4e:	4901      	lsri      	r0, r1, 1
  50:	07fe      	br      	0x4c	// 4c <wpa_mic_len+0x4c>

Disassembly of section .text.wpa_use_akm_defined:

00000000 <wpa_use_akm_defined>:
   0:	eb408000 	cmpnei      	r0, 32768
   4:	0c16      	bf      	0x30	// 30 <wpa_use_akm_defined+0x30>
   6:	3380      	movi      	r3, 128
   8:	436f      	lsli      	r3, r3, 15
   a:	64c2      	cmpne      	r0, r3
   c:	0c12      	bf      	0x30	// 30 <wpa_use_akm_defined+0x30>
   e:	3380      	movi      	r3, 128
  10:	4370      	lsli      	r3, r3, 16
  12:	64c2      	cmpne      	r0, r3
  14:	0c0e      	bf      	0x30	// 30 <wpa_use_akm_defined+0x30>
  16:	3380      	movi      	r3, 128
  18:	4371      	lsli      	r3, r3, 17
  1a:	64c2      	cmpne      	r0, r3
  1c:	0c0a      	bf      	0x30	// 30 <wpa_use_akm_defined+0x30>
  1e:	ea03fc30 	movi      	r3, 64560
  22:	c4c34903 	rotli      	r3, r3, 6
  26:	680c      	and      	r0, r3
  28:	3840      	cmpnei      	r0, 0
  2a:	c4000500 	mvc      	r0
  2e:	783c      	jmp      	r15
  30:	3001      	movi      	r0, 1
  32:	07fe      	br      	0x2e	// 2e <wpa_use_akm_defined+0x2e>

Disassembly of section .text.wpa_use_aes_key_wrap:

00000000 <wpa_use_aes_key_wrap>:
   0:	eb408000 	cmpnei      	r0, 32768
   4:	0c0f      	bf      	0x22	// 22 <wpa_use_aes_key_wrap+0x22>
   6:	3380      	movi      	r3, 128
   8:	436f      	lsli      	r3, r3, 15
   a:	64c2      	cmpne      	r0, r3
   c:	0c0b      	bf      	0x22	// 22 <wpa_use_aes_key_wrap+0x22>
   e:	3380      	movi      	r3, 128
  10:	4370      	lsli      	r3, r3, 16
  12:	64c2      	cmpne      	r0, r3
  14:	0c07      	bf      	0x22	// 22 <wpa_use_aes_key_wrap+0x22>
  16:	1065      	lrw      	r3, 0x1378de0	// 28 <wpa_use_aes_key_wrap+0x28>
  18:	680c      	and      	r0, r3
  1a:	3840      	cmpnei      	r0, 0
  1c:	c4000500 	mvc      	r0
  20:	783c      	jmp      	r15
  22:	3001      	movi      	r0, 1
  24:	07fe      	br      	0x20	// 20 <wpa_use_aes_key_wrap+0x20>
  26:	0000      	.short	0x0000
  28:	01378de0 	.long	0x01378de0

Disassembly of section .text.wpa_use_cmac:

00000000 <wpa_use_cmac>:
   0:	14d0      	push      	r15
   2:	e0000000 	bsr      	0x0	// 0 <wpa_use_cmac>
   6:	1490      	pop      	r15

Disassembly of section .text.wpa_eapol_key_mic:

00000000 <wpa_eapol_key_mic>:
   0:	14d3      	push      	r4-r6, r15
   2:	1433      	subi      	r14, r14, 76
   4:	9857      	ld.w      	r2, (r14, 0x5c)
   6:	b841      	st.w      	r2, (r14, 0x4)
   8:	9858      	ld.w      	r2, (r14, 0x60)
   a:	b842      	st.w      	r2, (r14, 0x8)
   c:	98b9      	ld.w      	r5, (r14, 0x64)
   e:	e9210005 	bnez      	r1, 0x18	// 18 <wpa_eapol_key_mic+0x18>
  12:	3400      	movi      	r4, 0
  14:	2c00      	subi      	r4, 1
  16:	041a      	br      	0x4a	// 4a <wpa_eapol_key_mic+0x4a>
  18:	3b41      	cmpnei      	r3, 1
  1a:	0c12      	bf      	0x3e	// 3e <wpa_eapol_key_mic+0x3e>
  1c:	3b42      	cmpnei      	r3, 2
  1e:	0bfa      	bt      	0x12	// 12 <wpa_eapol_key_mic+0x12>
  20:	1e03      	addi      	r6, r14, 12
  22:	b8c0      	st.w      	r6, (r14, 0x0)
  24:	9862      	ld.w      	r3, (r14, 0x8)
  26:	9841      	ld.w      	r2, (r14, 0x4)
  28:	e0000000 	bsr      	0x0	// 0 <hmac_sha1>
  2c:	6d03      	mov      	r4, r0
  2e:	e920fff2 	bnez      	r0, 0x12	// 12 <wpa_eapol_key_mic+0x12>
  32:	3210      	movi      	r2, 16
  34:	6c5b      	mov      	r1, r6
  36:	6c17      	mov      	r0, r5
  38:	e0000000 	bsr      	0x0	// 0 <memcpy>
  3c:	0407      	br      	0x4a	// 4a <wpa_eapol_key_mic+0x4a>
  3e:	b8a0      	st.w      	r5, (r14, 0x0)
  40:	9862      	ld.w      	r3, (r14, 0x8)
  42:	9841      	ld.w      	r2, (r14, 0x4)
  44:	e0000000 	bsr      	0x0	// 0 <hmac_md5>
  48:	6d03      	mov      	r4, r0
  4a:	6c13      	mov      	r0, r4
  4c:	1413      	addi      	r14, r14, 76
  4e:	1493      	pop      	r4-r6, r15

Disassembly of section .text.wpa_parse_wpa_ie_wpa:

00000000 <wpa_parse_wpa_ie_wpa>:
   0:	14d8      	push      	r4-r11, r15
   2:	6dcb      	mov      	r7, r2
   4:	6d87      	mov      	r6, r1
   6:	6d03      	mov      	r4, r0
   8:	3228      	movi      	r2, 40
   a:	3100      	movi      	r1, 0
   c:	6c1f      	mov      	r0, r7
   e:	e0000000 	bsr      	0x0	// 0 <memset>
  12:	3e07      	cmphsi      	r6, 8
  14:	3301      	movi      	r3, 1
  16:	3508      	movi      	r5, 8
  18:	b760      	st.w      	r3, (r7, 0x0)
  1a:	b7a1      	st.w      	r5, (r7, 0x4)
  1c:	b7a3      	st.w      	r5, (r7, 0xc)
  1e:	b765      	st.w      	r3, (r7, 0x14)
  20:	0ca8      	bf      	0x170	// 170 <wpa_parse_wpa_ie_wpa+0x170>
  22:	8460      	ld.b      	r3, (r4, 0x0)
  24:	eb4300dd 	cmpnei      	r3, 221
  28:	08a7      	bt      	0x176	// 176 <wpa_parse_wpa_ie_wpa+0x176>
  2a:	8441      	ld.b      	r2, (r4, 0x1)
  2c:	5e67      	subi      	r3, r6, 2
  2e:	64ca      	cmpne      	r2, r3
  30:	08a3      	bt      	0x176	// 176 <wpa_parse_wpa_ie_wpa+0x176>
  32:	5c06      	addi      	r0, r4, 2
  34:	e0000000 	bsr      	0x0	// 0 <wpa_parse_wpa_ie_wpa>
  38:	1276      	lrw      	r3, 0x50f201	// 190 <wpa_parse_wpa_ie_wpa+0x190>
  3a:	64c2      	cmpne      	r0, r3
  3c:	089d      	bt      	0x176	// 176 <wpa_parse_wpa_ie_wpa+0x176>
  3e:	d9040007 	ld.b      	r8, (r4, 0x7)
  42:	7214      	lsl      	r8, r5
  44:	8466      	ld.b      	r3, (r4, 0x6)
  46:	6e0c      	or      	r8, r3
  48:	7623      	sexth      	r8, r8
  4a:	eb480001 	cmpnei      	r8, 1
  4e:	0894      	bt      	0x176	// 176 <wpa_parse_wpa_ie_wpa+0x176>
  50:	2e07      	subi      	r6, 8
  52:	3e23      	cmplti      	r6, 4
  54:	081b      	bt      	0x8a	// 8a <wpa_parse_wpa_ie_wpa+0x8a>
  56:	5c14      	addu      	r0, r4, r5
  58:	e0000000 	bsr      	0x0	// 0 <wpa_parse_wpa_ie_wpa>
  5c:	ea03a1e4 	movi      	r3, 41444
  60:	c4e34903 	rotli      	r3, r3, 7
  64:	64c2      	cmpne      	r0, r3
  66:	0c10      	bf      	0x86	// 86 <wpa_parse_wpa_ie_wpa+0x86>
  68:	126b      	lrw      	r3, 0x50f202	// 194 <wpa_parse_wpa_ie_wpa+0x194>
  6a:	64c2      	cmpne      	r0, r3
  6c:	0c05      	bf      	0x76	// 76 <wpa_parse_wpa_ie_wpa+0x76>
  6e:	126b      	lrw      	r3, 0x50f204	// 198 <wpa_parse_wpa_ie_wpa+0x198>
  70:	64c2      	cmpne      	r0, r3
  72:	6543      	mvcv      	r5
  74:	45a4      	lsli      	r5, r5, 4
  76:	5e6f      	subi      	r3, r6, 4
  78:	3b21      	cmplti      	r3, 2
  7a:	b7a3      	st.w      	r5, (r7, 0xc)
  7c:	0c0c      	bf      	0x94	// 94 <wpa_parse_wpa_ie_wpa+0x94>
  7e:	3b41      	cmpnei      	r3, 1
  80:	0c81      	bf      	0x182	// 182 <wpa_parse_wpa_ie_wpa+0x182>
  82:	3000      	movi      	r0, 0
  84:	0478      	br      	0x174	// 174 <wpa_parse_wpa_ie_wpa+0x174>
  86:	6d63      	mov      	r5, r8
  88:	07f7      	br      	0x76	// 76 <wpa_parse_wpa_ie_wpa+0x76>
  8a:	e966fffc 	blsz      	r6, 0x82	// 82 <wpa_parse_wpa_ie_wpa+0x82>
  8e:	3000      	movi      	r0, 0
  90:	2802      	subi      	r0, 3
  92:	0471      	br      	0x174	// 174 <wpa_parse_wpa_ie_wpa+0x174>
  94:	ea080000 	movi      	r8, 0
  98:	dd072001 	st.w      	r8, (r7, 0x4)
  9c:	84ad      	ld.b      	r5, (r4, 0xd)
  9e:	846c      	ld.b      	r3, (r4, 0xc)
  a0:	45a8      	lsli      	r5, r5, 8
  a2:	6d4c      	or      	r5, r3
  a4:	240d      	addi      	r4, 14
  a6:	2e05      	subi      	r6, 6
  a8:	e905006a 	bez      	r5, 0x17c	// 17c <wpa_parse_wpa_ie_wpa+0x17c>
  ac:	5662      	asri      	r3, r6, 2
  ae:	654d      	cmplt      	r3, r5
  b0:	0866      	bt      	0x17c	// 17c <wpa_parse_wpa_ie_wpa+0x17c>
  b2:	ea09a1e4 	movi      	r9, 41444
  b6:	c4e94909 	rotli      	r9, r9, 7
  ba:	ea8a0037 	lrw      	r10, 0x50f202	// 194 <wpa_parse_wpa_ie_wpa+0x194>
  be:	ea8b0037 	lrw      	r11, 0x50f204	// 198 <wpa_parse_wpa_ie_wpa+0x198>
  c2:	6c13      	mov      	r0, r4
  c4:	e0000000 	bsr      	0x0	// 0 <wpa_parse_wpa_ie_wpa>
  c8:	6642      	cmpne      	r0, r9
  ca:	0c46      	bf      	0x156	// 156 <wpa_parse_wpa_ie_wpa+0x156>
  cc:	6682      	cmpne      	r0, r10
  ce:	0c46      	bf      	0x15a	// 15a <wpa_parse_wpa_ie_wpa+0x15a>
  d0:	66c2      	cmpne      	r0, r11
  d2:	64c3      	mvcv      	r3
  d4:	4364      	lsli      	r3, r3, 4
  d6:	e5080000 	addi      	r8, r8, 1
  da:	9741      	ld.w      	r2, (r7, 0x4)
  dc:	6561      	cmplt      	r8, r5
  de:	6cc8      	or      	r3, r2
  e0:	b761      	st.w      	r3, (r7, 0x4)
  e2:	5c4e      	addi      	r2, r4, 4
  e4:	5e6f      	subi      	r3, r6, 4
  e6:	0835      	bt      	0x150	// 150 <wpa_parse_wpa_ie_wpa+0x150>
  e8:	3b21      	cmplti      	r3, 2
  ea:	083e      	bt      	0x166	// 166 <wpa_parse_wpa_ie_wpa+0x166>
  ec:	ea080000 	movi      	r8, 0
  f0:	dd072005 	st.w      	r8, (r7, 0x14)
  f4:	82a1      	ld.b      	r5, (r2, 0x1)
  f6:	45a8      	lsli      	r5, r5, 8
  f8:	8260      	ld.b      	r3, (r2, 0x0)
  fa:	6d4c      	or      	r5, r3
  fc:	2405      	addi      	r4, 6
  fe:	2e05      	subi      	r6, 6
 100:	e9050044 	bez      	r5, 0x188	// 188 <wpa_parse_wpa_ie_wpa+0x188>
 104:	5662      	asri      	r3, r6, 2
 106:	654d      	cmplt      	r3, r5
 108:	0840      	bt      	0x188	// 188 <wpa_parse_wpa_ie_wpa+0x188>
 10a:	ea890022 	lrw      	r9, 0x50f201	// 190 <wpa_parse_wpa_ie_wpa+0x190>
 10e:	ea8a0022 	lrw      	r10, 0x50f202	// 194 <wpa_parse_wpa_ie_wpa+0x194>
 112:	ea0ba1e4 	movi      	r11, 41444
 116:	c4eb490b 	rotli      	r11, r11, 7
 11a:	6c13      	mov      	r0, r4
 11c:	e0000000 	bsr      	0x0	// 0 <wpa_parse_wpa_ie_wpa>
 120:	6642      	cmpne      	r0, r9
 122:	0c1e      	bf      	0x15e	// 15e <wpa_parse_wpa_ie_wpa+0x15e>
 124:	6682      	cmpne      	r0, r10
 126:	0c1e      	bf      	0x162	// 162 <wpa_parse_wpa_ie_wpa+0x162>
 128:	66c2      	cmpne      	r0, r11
 12a:	64c3      	mvcv      	r3
 12c:	4364      	lsli      	r3, r3, 4
 12e:	e5080000 	addi      	r8, r8, 1
 132:	9745      	ld.w      	r2, (r7, 0x14)
 134:	6561      	cmplt      	r8, r5
 136:	6cc8      	or      	r3, r2
 138:	b765      	st.w      	r3, (r7, 0x14)
 13a:	2403      	addi      	r4, 4
 13c:	2e03      	subi      	r6, 4
 13e:	0bee      	bt      	0x11a	// 11a <wpa_parse_wpa_ie_wpa+0x11a>
 140:	3e21      	cmplti      	r6, 2
 142:	0ba0      	bt      	0x82	// 82 <wpa_parse_wpa_ie_wpa+0x82>
 144:	8461      	ld.b      	r3, (r4, 0x1)
 146:	8440      	ld.b      	r2, (r4, 0x0)
 148:	4368      	lsli      	r3, r3, 8
 14a:	6cc8      	or      	r3, r2
 14c:	b766      	st.w      	r3, (r7, 0x18)
 14e:	079a      	br      	0x82	// 82 <wpa_parse_wpa_ie_wpa+0x82>
 150:	6d8f      	mov      	r6, r3
 152:	6d0b      	mov      	r4, r2
 154:	07b7      	br      	0xc2	// c2 <wpa_parse_wpa_ie_wpa+0xc2>
 156:	3301      	movi      	r3, 1
 158:	07bf      	br      	0xd6	// d6 <wpa_parse_wpa_ie_wpa+0xd6>
 15a:	3308      	movi      	r3, 8
 15c:	07bd      	br      	0xd6	// d6 <wpa_parse_wpa_ie_wpa+0xd6>
 15e:	3301      	movi      	r3, 1
 160:	07e7      	br      	0x12e	// 12e <wpa_parse_wpa_ie_wpa+0x12e>
 162:	3302      	movi      	r3, 2
 164:	07e5      	br      	0x12e	// 12e <wpa_parse_wpa_ie_wpa+0x12e>
 166:	3b41      	cmpnei      	r3, 1
 168:	0b8d      	bt      	0x82	// 82 <wpa_parse_wpa_ie_wpa+0x82>
 16a:	3000      	movi      	r0, 0
 16c:	2806      	subi      	r0, 7
 16e:	0403      	br      	0x174	// 174 <wpa_parse_wpa_ie_wpa+0x174>
 170:	3000      	movi      	r0, 0
 172:	2800      	subi      	r0, 1
 174:	1498      	pop      	r4-r11, r15
 176:	3000      	movi      	r0, 0
 178:	2801      	subi      	r0, 2
 17a:	07fd      	br      	0x174	// 174 <wpa_parse_wpa_ie_wpa+0x174>
 17c:	3000      	movi      	r0, 0
 17e:	2803      	subi      	r0, 4
 180:	07fa      	br      	0x174	// 174 <wpa_parse_wpa_ie_wpa+0x174>
 182:	3000      	movi      	r0, 0
 184:	2804      	subi      	r0, 5
 186:	07f7      	br      	0x174	// 174 <wpa_parse_wpa_ie_wpa+0x174>
 188:	3000      	movi      	r0, 0
 18a:	2805      	subi      	r0, 6
 18c:	07f4      	br      	0x174	// 174 <wpa_parse_wpa_ie_wpa+0x174>
 18e:	0000      	.short	0x0000
 190:	0050f201 	.long	0x0050f201
 194:	0050f202 	.long	0x0050f202
 198:	0050f204 	.long	0x0050f204

Disassembly of section .text.wpa_default_rsn_cipher:

00000000 <wpa_default_rsn_cipher>:
   0:	3010      	movi      	r0, 16
   2:	783c      	jmp      	r15

Disassembly of section .text.rsn_pmkid:

00000000 <rsn_pmkid>:
   0:	14d4      	push      	r4-r7, r15
   2:	1435      	subi      	r14, r14, 84
   4:	e58e0017 	addi      	r12, r14, 24
   8:	6d43      	mov      	r5, r0
   a:	6d87      	mov      	r6, r1
   c:	6c33      	mov      	r0, r12
   e:	6dcb      	mov      	r7, r2
  10:	6d0f      	mov      	r4, r3
  12:	320c      	movi      	r2, 12
  14:	987a      	ld.w      	r3, (r14, 0x68)
  16:	b862      	st.w      	r3, (r14, 0x8)
  18:	102c      	lrw      	r1, 0x0	// 48 <rsn_pmkid+0x48>
  1a:	e0000000 	bsr      	0x0	// 0 <memcpy>
  1e:	b885      	st.w      	r4, (r14, 0x14)
  20:	1c09      	addi      	r4, r14, 36
  22:	106b      	lrw      	r3, 0x0	// 4c <rsn_pmkid+0x4c>
  24:	6c5b      	mov      	r1, r6
  26:	b863      	st.w      	r3, (r14, 0xc)
  28:	b800      	st.w      	r0, (r14, 0x0)
  2a:	1b03      	addi      	r3, r14, 12
  2c:	b881      	st.w      	r4, (r14, 0x4)
  2e:	3203      	movi      	r2, 3
  30:	6c17      	mov      	r0, r5
  32:	b8e4      	st.w      	r7, (r14, 0x10)
  34:	e0000000 	bsr      	0x0	// 0 <hmac_sha1_vector>
  38:	3210      	movi      	r2, 16
  3a:	6c53      	mov      	r1, r4
  3c:	9802      	ld.w      	r0, (r14, 0x8)
  3e:	e0000000 	bsr      	0x0	// 0 <memcpy>
  42:	1415      	addi      	r14, r14, 84
  44:	1494      	pop      	r4-r7, r15
	...

Disassembly of section .text.wpa_cipher_txt:

00000000 <wpa_cipher_txt>:
   0:	eb400020 	cmpnei      	r0, 32
   4:	0c3e      	bf      	0x80	// 80 <wpa_cipher_txt+0x80>
   6:	eb200020 	cmplti      	r0, 33
   a:	0c13      	bf      	0x30	// 30 <wpa_cipher_txt+0x30>
   c:	3844      	cmpnei      	r0, 4
   e:	0c2f      	bf      	0x6c	// 6c <wpa_cipher_txt+0x6c>
  10:	3824      	cmplti      	r0, 5
  12:	0c07      	bf      	0x20	// 20 <wpa_cipher_txt+0x20>
  14:	3841      	cmpnei      	r0, 1
  16:	0c3d      	bf      	0x90	// 90 <wpa_cipher_txt+0x90>
  18:	3842      	cmpnei      	r0, 2
  1a:	0c27      	bf      	0x68	// 68 <wpa_cipher_txt+0x68>
  1c:	101e      	lrw      	r0, 0x0	// 94 <wpa_cipher_txt+0x94>
  1e:	0426      	br      	0x6a	// 6a <wpa_cipher_txt+0x6a>
  20:	3850      	cmpnei      	r0, 16
  22:	0c27      	bf      	0x70	// 70 <wpa_cipher_txt+0x70>
  24:	3858      	cmpnei      	r0, 24
  26:	0c27      	bf      	0x74	// 74 <wpa_cipher_txt+0x74>
  28:	3848      	cmpnei      	r0, 8
  2a:	0bf9      	bt      	0x1c	// 1c <wpa_cipher_txt+0x1c>
  2c:	101b      	lrw      	r0, 0x0	// 98 <wpa_cipher_txt+0x98>
  2e:	041e      	br      	0x6a	// 6a <wpa_cipher_txt+0x6a>
  30:	eb400800 	cmpnei      	r0, 2048
  34:	0c28      	bf      	0x84	// 84 <wpa_cipher_txt+0x84>
  36:	eb200800 	cmplti      	r0, 2049
  3a:	0c0c      	bf      	0x52	// 52 <wpa_cipher_txt+0x52>
  3c:	eb400100 	cmpnei      	r0, 256
  40:	0c1c      	bf      	0x78	// 78 <wpa_cipher_txt+0x78>
  42:	eb400200 	cmpnei      	r0, 512
  46:	0c1b      	bf      	0x7c	// 7c <wpa_cipher_txt+0x7c>
  48:	eb400040 	cmpnei      	r0, 64
  4c:	0be8      	bt      	0x1c	// 1c <wpa_cipher_txt+0x1c>
  4e:	1014      	lrw      	r0, 0x0	// 9c <wpa_cipher_txt+0x9c>
  50:	040d      	br      	0x6a	// 6a <wpa_cipher_txt+0x6a>
  52:	eb402000 	cmpnei      	r0, 8192
  56:	0c19      	bf      	0x88	// 88 <wpa_cipher_txt+0x88>
  58:	eb404000 	cmpnei      	r0, 16384
  5c:	0c18      	bf      	0x8c	// 8c <wpa_cipher_txt+0x8c>
  5e:	eb401000 	cmpnei      	r0, 4096
  62:	0bdd      	bt      	0x1c	// 1c <wpa_cipher_txt+0x1c>
  64:	100f      	lrw      	r0, 0x0	// a0 <wpa_cipher_txt+0xa0>
  66:	0402      	br      	0x6a	// 6a <wpa_cipher_txt+0x6a>
  68:	100f      	lrw      	r0, 0x0	// a4 <wpa_cipher_txt+0xa4>
  6a:	783c      	jmp      	r15
  6c:	100f      	lrw      	r0, 0x0	// a8 <wpa_cipher_txt+0xa8>
  6e:	07fe      	br      	0x6a	// 6a <wpa_cipher_txt+0x6a>
  70:	100f      	lrw      	r0, 0x0	// ac <wpa_cipher_txt+0xac>
  72:	07fc      	br      	0x6a	// 6a <wpa_cipher_txt+0x6a>
  74:	100f      	lrw      	r0, 0x0	// b0 <wpa_cipher_txt+0xb0>
  76:	07fa      	br      	0x6a	// 6a <wpa_cipher_txt+0x6a>
  78:	100f      	lrw      	r0, 0x0	// b4 <wpa_cipher_txt+0xb4>
  7a:	07f8      	br      	0x6a	// 6a <wpa_cipher_txt+0x6a>
  7c:	100f      	lrw      	r0, 0x0	// b8 <wpa_cipher_txt+0xb8>
  7e:	07f6      	br      	0x6a	// 6a <wpa_cipher_txt+0x6a>
  80:	100f      	lrw      	r0, 0x0	// bc <wpa_cipher_txt+0xbc>
  82:	07f4      	br      	0x6a	// 6a <wpa_cipher_txt+0x6a>
  84:	100f      	lrw      	r0, 0x0	// c0 <wpa_cipher_txt+0xc0>
  86:	07f2      	br      	0x6a	// 6a <wpa_cipher_txt+0x6a>
  88:	100f      	lrw      	r0, 0x0	// c4 <wpa_cipher_txt+0xc4>
  8a:	07f0      	br      	0x6a	// 6a <wpa_cipher_txt+0x6a>
  8c:	100f      	lrw      	r0, 0x0	// c8 <wpa_cipher_txt+0xc8>
  8e:	07ee      	br      	0x6a	// 6a <wpa_cipher_txt+0x6a>
  90:	100f      	lrw      	r0, 0x0	// cc <wpa_cipher_txt+0xcc>
  92:	07ec      	br      	0x6a	// 6a <wpa_cipher_txt+0x6a>
	...

Disassembly of section .text.wpa_key_mgmt_txt:

00000000 <wpa_key_mgmt_txt>:
   0:	eb400800 	cmpnei      	r0, 2048
   4:	0c6c      	bf      	0xdc	// dc <wpa_key_mgmt_txt+0xdc>
   6:	eb200800 	cmplti      	r0, 2049
   a:	0c26      	bf      	0x56	// 56 <wpa_key_mgmt_txt+0x56>
   c:	3850      	cmpnei      	r0, 16
   e:	0c53      	bf      	0xb4	// b4 <wpa_key_mgmt_txt+0xb4>
  10:	3830      	cmplti      	r0, 17
  12:	0c0f      	bf      	0x30	// 30 <wpa_key_mgmt_txt+0x30>
  14:	3842      	cmpnei      	r0, 2
  16:	0c59      	bf      	0xc8	// c8 <wpa_key_mgmt_txt+0xc8>
  18:	3822      	cmplti      	r0, 3
  1a:	0c05      	bf      	0x24	// 24 <wpa_key_mgmt_txt+0x24>
  1c:	3841      	cmpnei      	r0, 1
  1e:	0c4d      	bf      	0xb8	// b8 <wpa_key_mgmt_txt+0xb8>
  20:	1118      	lrw      	r0, 0x0	// 100 <wpa_key_mgmt_txt+0x100>
  22:	044a      	br      	0xb6	// b6 <wpa_key_mgmt_txt+0xb6>
  24:	3844      	cmpnei      	r0, 4
  26:	0c67      	bf      	0xf4	// f4 <wpa_key_mgmt_txt+0xf4>
  28:	3848      	cmpnei      	r0, 8
  2a:	0bfb      	bt      	0x20	// 20 <wpa_key_mgmt_txt+0x20>
  2c:	1116      	lrw      	r0, 0x0	// 104 <wpa_key_mgmt_txt+0x104>
  2e:	0444      	br      	0xb6	// b6 <wpa_key_mgmt_txt+0xb6>
  30:	eb400100 	cmpnei      	r0, 256
  34:	0c50      	bf      	0xd4	// d4 <wpa_key_mgmt_txt+0xd4>
  36:	eb200100 	cmplti      	r0, 257
  3a:	0c06      	bf      	0x46	// 46 <wpa_key_mgmt_txt+0x46>
  3c:	eb400080 	cmpnei      	r0, 128
  40:	0bf0      	bt      	0x20	// 20 <wpa_key_mgmt_txt+0x20>
  42:	1112      	lrw      	r0, 0x0	// 108 <wpa_key_mgmt_txt+0x108>
  44:	0439      	br      	0xb6	// b6 <wpa_key_mgmt_txt+0xb6>
  46:	eb400200 	cmpnei      	r0, 512
  4a:	0c47      	bf      	0xd8	// d8 <wpa_key_mgmt_txt+0xd8>
  4c:	eb400400 	cmpnei      	r0, 1024
  50:	0be8      	bt      	0x20	// 20 <wpa_key_mgmt_txt+0x20>
  52:	110f      	lrw      	r0, 0x0	// 10c <wpa_key_mgmt_txt+0x10c>
  54:	0431      	br      	0xb6	// b6 <wpa_key_mgmt_txt+0xb6>
  56:	3380      	movi      	r3, 128
  58:	436c      	lsli      	r3, r3, 12
  5a:	64c2      	cmpne      	r0, r3
  5c:	0c46      	bf      	0xe8	// e8 <wpa_key_mgmt_txt+0xe8>
  5e:	640d      	cmplt      	r3, r0
  60:	3380      	movi      	r3, 128
  62:	0815      	bt      	0x8c	// 8c <wpa_key_mgmt_txt+0x8c>
  64:	4369      	lsli      	r3, r3, 9
  66:	64c2      	cmpne      	r0, r3
  68:	0c3c      	bf      	0xe0	// e0 <wpa_key_mgmt_txt+0xe0>
  6a:	640d      	cmplt      	r3, r0
  6c:	0806      	bt      	0x78	// 78 <wpa_key_mgmt_txt+0x78>
  6e:	eb408000 	cmpnei      	r0, 32768
  72:	0bd7      	bt      	0x20	// 20 <wpa_key_mgmt_txt+0x20>
  74:	1107      	lrw      	r0, 0x0	// 110 <wpa_key_mgmt_txt+0x110>
  76:	0420      	br      	0xb6	// b6 <wpa_key_mgmt_txt+0xb6>
  78:	3380      	movi      	r3, 128
  7a:	436a      	lsli      	r3, r3, 10
  7c:	64c2      	cmpne      	r0, r3
  7e:	0c33      	bf      	0xe4	// e4 <wpa_key_mgmt_txt+0xe4>
  80:	3380      	movi      	r3, 128
  82:	436b      	lsli      	r3, r3, 11
  84:	64c2      	cmpne      	r0, r3
  86:	0bcd      	bt      	0x20	// 20 <wpa_key_mgmt_txt+0x20>
  88:	1103      	lrw      	r0, 0x0	// 114 <wpa_key_mgmt_txt+0x114>
  8a:	0416      	br      	0xb6	// b6 <wpa_key_mgmt_txt+0xb6>
  8c:	436e      	lsli      	r3, r3, 14
  8e:	64c2      	cmpne      	r0, r3
  90:	0c2e      	bf      	0xec	// ec <wpa_key_mgmt_txt+0xec>
  92:	640d      	cmplt      	r3, r0
  94:	3380      	movi      	r3, 128
  96:	0806      	bt      	0xa2	// a2 <wpa_key_mgmt_txt+0xa2>
  98:	436d      	lsli      	r3, r3, 13
  9a:	64c2      	cmpne      	r0, r3
  9c:	0bc2      	bt      	0x20	// 20 <wpa_key_mgmt_txt+0x20>
  9e:	101f      	lrw      	r0, 0x0	// 118 <wpa_key_mgmt_txt+0x118>
  a0:	040b      	br      	0xb6	// b6 <wpa_key_mgmt_txt+0xb6>
  a2:	436f      	lsli      	r3, r3, 15
  a4:	64c2      	cmpne      	r0, r3
  a6:	0c25      	bf      	0xf0	// f0 <wpa_key_mgmt_txt+0xf0>
  a8:	3380      	movi      	r3, 128
  aa:	4370      	lsli      	r3, r3, 16
  ac:	64c2      	cmpne      	r0, r3
  ae:	0bb9      	bt      	0x20	// 20 <wpa_key_mgmt_txt+0x20>
  b0:	101b      	lrw      	r0, 0x0	// 11c <wpa_key_mgmt_txt+0x11c>
  b2:	0402      	br      	0xb6	// b6 <wpa_key_mgmt_txt+0xb6>
  b4:	101b      	lrw      	r0, 0x0	// 120 <wpa_key_mgmt_txt+0x120>
  b6:	783c      	jmp      	r15
  b8:	3943      	cmpnei      	r1, 3
  ba:	0c1f      	bf      	0xf8	// f8 <wpa_key_mgmt_txt+0xf8>
  bc:	3942      	cmpnei      	r1, 2
  be:	107a      	lrw      	r3, 0x0	// 124 <wpa_key_mgmt_txt+0x124>
  c0:	101a      	lrw      	r0, 0x0	// 128 <wpa_key_mgmt_txt+0x128>
  c2:	c4030c40 	inct      	r0, r3, 0
  c6:	07f8      	br      	0xb6	// b6 <wpa_key_mgmt_txt+0xb6>
  c8:	3943      	cmpnei      	r1, 3
  ca:	0c19      	bf      	0xfc	// fc <wpa_key_mgmt_txt+0xfc>
  cc:	3942      	cmpnei      	r1, 2
  ce:	1078      	lrw      	r3, 0x0	// 12c <wpa_key_mgmt_txt+0x12c>
  d0:	1018      	lrw      	r0, 0x0	// 130 <wpa_key_mgmt_txt+0x130>
  d2:	07f8      	br      	0xc2	// c2 <wpa_key_mgmt_txt+0xc2>
  d4:	1018      	lrw      	r0, 0x0	// 134 <wpa_key_mgmt_txt+0x134>
  d6:	07f0      	br      	0xb6	// b6 <wpa_key_mgmt_txt+0xb6>
  d8:	1018      	lrw      	r0, 0x0	// 138 <wpa_key_mgmt_txt+0x138>
  da:	07ee      	br      	0xb6	// b6 <wpa_key_mgmt_txt+0xb6>
  dc:	1018      	lrw      	r0, 0x0	// 13c <wpa_key_mgmt_txt+0x13c>
  de:	07ec      	br      	0xb6	// b6 <wpa_key_mgmt_txt+0xb6>
  e0:	1018      	lrw      	r0, 0x0	// 140 <wpa_key_mgmt_txt+0x140>
  e2:	07ea      	br      	0xb6	// b6 <wpa_key_mgmt_txt+0xb6>
  e4:	1018      	lrw      	r0, 0x0	// 144 <wpa_key_mgmt_txt+0x144>
  e6:	07e8      	br      	0xb6	// b6 <wpa_key_mgmt_txt+0xb6>
  e8:	1018      	lrw      	r0, 0x0	// 148 <wpa_key_mgmt_txt+0x148>
  ea:	07e6      	br      	0xb6	// b6 <wpa_key_mgmt_txt+0xb6>
  ec:	1018      	lrw      	r0, 0x0	// 14c <wpa_key_mgmt_txt+0x14c>
  ee:	07e4      	br      	0xb6	// b6 <wpa_key_mgmt_txt+0xb6>
  f0:	1018      	lrw      	r0, 0x0	// 150 <wpa_key_mgmt_txt+0x150>
  f2:	07e2      	br      	0xb6	// b6 <wpa_key_mgmt_txt+0xb6>
  f4:	1018      	lrw      	r0, 0x0	// 154 <wpa_key_mgmt_txt+0x154>
  f6:	07e0      	br      	0xb6	// b6 <wpa_key_mgmt_txt+0xb6>
  f8:	1018      	lrw      	r0, 0x0	// 158 <wpa_key_mgmt_txt+0x158>
  fa:	07de      	br      	0xb6	// b6 <wpa_key_mgmt_txt+0xb6>
  fc:	1018      	lrw      	r0, 0x0	// 15c <wpa_key_mgmt_txt+0x15c>
  fe:	07dc      	br      	0xb6	// b6 <wpa_key_mgmt_txt+0xb6>
	...

Disassembly of section .text.wpa_akm_to_suite:

00000000 <wpa_akm_to_suite>:
   0:	3380      	movi      	r3, 128
   2:	4371      	lsli      	r3, r3, 17
   4:	68c0      	and      	r3, r0
   6:	e9230057 	bnez      	r3, 0xb4	// b4 <wpa_akm_to_suite+0xb4>
   a:	e4602020 	andi      	r3, r0, 32
   e:	e9230055 	bnez      	r3, 0xb8	// b8 <wpa_akm_to_suite+0xb8>
  12:	e4602040 	andi      	r3, r0, 64
  16:	e9230053 	bnez      	r3, 0xbc	// bc <wpa_akm_to_suite+0xbc>
  1a:	e4602080 	andi      	r3, r0, 128
  1e:	e9230051 	bnez      	r3, 0xc0	// c0 <wpa_akm_to_suite+0xc0>
  22:	e4602001 	andi      	r3, r0, 1
  26:	e923004f 	bnez      	r3, 0xc4	// c4 <wpa_akm_to_suite+0xc4>
  2a:	e4602100 	andi      	r3, r0, 256
  2e:	e923004d 	bnez      	r3, 0xc8	// c8 <wpa_akm_to_suite+0xc8>
  32:	e4602002 	andi      	r3, r0, 2
  36:	e923004b 	bnez      	r3, 0xcc	// cc <wpa_akm_to_suite+0xcc>
  3a:	3380      	movi      	r3, 128
  3c:	4367      	lsli      	r3, r3, 7
  3e:	68c0      	and      	r3, r0
  40:	e9230048 	bnez      	r3, 0xd0	// d0 <wpa_akm_to_suite+0xd0>
  44:	3380      	movi      	r3, 128
  46:	4368      	lsli      	r3, r3, 8
  48:	68c0      	and      	r3, r0
  4a:	e9230047 	bnez      	r3, 0xd8	// d8 <wpa_akm_to_suite+0xd8>
  4e:	3380      	movi      	r3, 128
  50:	4369      	lsli      	r3, r3, 9
  52:	68c0      	and      	r3, r0
  54:	e9230044 	bnez      	r3, 0xdc	// dc <wpa_akm_to_suite+0xdc>
  58:	3380      	movi      	r3, 128
  5a:	436a      	lsli      	r3, r3, 10
  5c:	68c0      	and      	r3, r0
  5e:	e9230041 	bnez      	r3, 0xe0	// e0 <wpa_akm_to_suite+0xe0>
  62:	3380      	movi      	r3, 128
  64:	436b      	lsli      	r3, r3, 11
  66:	68c0      	and      	r3, r0
  68:	e923003e 	bnez      	r3, 0xe4	// e4 <wpa_akm_to_suite+0xe4>
  6c:	3380      	movi      	r3, 128
  6e:	436c      	lsli      	r3, r3, 12
  70:	68c0      	and      	r3, r0
  72:	e923003b 	bnez      	r3, 0xe8	// e8 <wpa_akm_to_suite+0xe8>
  76:	3380      	movi      	r3, 128
  78:	436d      	lsli      	r3, r3, 13
  7a:	68c0      	and      	r3, r0
  7c:	e9230038 	bnez      	r3, 0xec	// ec <wpa_akm_to_suite+0xec>
  80:	3380      	movi      	r3, 128
  82:	436e      	lsli      	r3, r3, 14
  84:	68c0      	and      	r3, r0
  86:	e9230038 	bnez      	r3, 0xf6	// f6 <wpa_akm_to_suite+0xf6>
  8a:	e4602400 	andi      	r3, r0, 1024
  8e:	e9230036 	bnez      	r3, 0xfa	// fa <wpa_akm_to_suite+0xfa>
  92:	e4602800 	andi      	r3, r0, 2048
  96:	e9230034 	bnez      	r3, 0xfe	// fe <wpa_akm_to_suite+0xfe>
  9a:	3380      	movi      	r3, 128
  9c:	436f      	lsli      	r3, r3, 15
  9e:	68c0      	and      	r3, r0
  a0:	e9230031 	bnez      	r3, 0x102	// 102 <wpa_akm_to_suite+0x102>
  a4:	3280      	movi      	r2, 128
  a6:	4250      	lsli      	r2, r2, 16
  a8:	6808      	and      	r0, r2
  aa:	3840      	cmpnei      	r0, 0
  ac:	1017      	lrw      	r0, 0x506f9a02	// 108 <wpa_akm_to_suite+0x108>
  ae:	c4030c20 	incf      	r0, r3, 0
  b2:	783c      	jmp      	r15
  b4:	1016      	lrw      	r0, 0xfac0d	// 10c <wpa_akm_to_suite+0x10c>
  b6:	07fe      	br      	0xb2	// b2 <wpa_akm_to_suite+0xb2>
  b8:	1016      	lrw      	r0, 0xfac03	// 110 <wpa_akm_to_suite+0x110>
  ba:	07fc      	br      	0xb2	// b2 <wpa_akm_to_suite+0xb2>
  bc:	1016      	lrw      	r0, 0xfac04	// 114 <wpa_akm_to_suite+0x114>
  be:	07fa      	br      	0xb2	// b2 <wpa_akm_to_suite+0xb2>
  c0:	1016      	lrw      	r0, 0xfac05	// 118 <wpa_akm_to_suite+0x118>
  c2:	07f8      	br      	0xb2	// b2 <wpa_akm_to_suite+0xb2>
  c4:	1016      	lrw      	r0, 0xfac01	// 11c <wpa_akm_to_suite+0x11c>
  c6:	07f6      	br      	0xb2	// b2 <wpa_akm_to_suite+0xb2>
  c8:	1016      	lrw      	r0, 0xfac06	// 120 <wpa_akm_to_suite+0x120>
  ca:	07f4      	br      	0xb2	// b2 <wpa_akm_to_suite+0xb2>
  cc:	1016      	lrw      	r0, 0xfac02	// 124 <wpa_akm_to_suite+0x124>
  ce:	07f2      	br      	0xb2	// b2 <wpa_akm_to_suite+0xb2>
  d0:	ea009600 	movi      	r0, 38400
  d4:	38b6      	bseti      	r0, 22
  d6:	07ee      	br      	0xb2	// b2 <wpa_akm_to_suite+0xb2>
  d8:	1014      	lrw      	r0, 0x506f9a01	// 128 <wpa_akm_to_suite+0x128>
  da:	07ec      	br      	0xb2	// b2 <wpa_akm_to_suite+0xb2>
  dc:	1014      	lrw      	r0, 0xfac0b	// 12c <wpa_akm_to_suite+0x12c>
  de:	07ea      	br      	0xb2	// b2 <wpa_akm_to_suite+0xb2>
  e0:	1014      	lrw      	r0, 0xfac0c	// 130 <wpa_akm_to_suite+0x130>
  e2:	07e8      	br      	0xb2	// b2 <wpa_akm_to_suite+0xb2>
  e4:	1014      	lrw      	r0, 0xfac0e	// 134 <wpa_akm_to_suite+0x134>
  e6:	07e6      	br      	0xb2	// b2 <wpa_akm_to_suite+0xb2>
  e8:	1014      	lrw      	r0, 0xfac0f	// 138 <wpa_akm_to_suite+0x138>
  ea:	07e4      	br      	0xb2	// b2 <wpa_akm_to_suite+0xb2>
  ec:	ea00fac1 	movi      	r0, 64193
  f0:	c4804900 	rotli      	r0, r0, 4
  f4:	07df      	br      	0xb2	// b2 <wpa_akm_to_suite+0xb2>
  f6:	1012      	lrw      	r0, 0xfac11	// 13c <wpa_akm_to_suite+0x13c>
  f8:	07dd      	br      	0xb2	// b2 <wpa_akm_to_suite+0xb2>
  fa:	1012      	lrw      	r0, 0xfac08	// 140 <wpa_akm_to_suite+0x140>
  fc:	07db      	br      	0xb2	// b2 <wpa_akm_to_suite+0xb2>
  fe:	1012      	lrw      	r0, 0xfac09	// 144 <wpa_akm_to_suite+0x144>
 100:	07d9      	br      	0xb2	// b2 <wpa_akm_to_suite+0xb2>
 102:	1012      	lrw      	r0, 0xfac12	// 148 <wpa_akm_to_suite+0x148>
 104:	07d7      	br      	0xb2	// b2 <wpa_akm_to_suite+0xb2>
 106:	0000      	.short	0x0000
 108:	506f9a02 	.long	0x506f9a02
 10c:	000fac0d 	.long	0x000fac0d
 110:	000fac03 	.long	0x000fac03
 114:	000fac04 	.long	0x000fac04
 118:	000fac05 	.long	0x000fac05
 11c:	000fac01 	.long	0x000fac01
 120:	000fac06 	.long	0x000fac06
 124:	000fac02 	.long	0x000fac02
 128:	506f9a01 	.long	0x506f9a01
 12c:	000fac0b 	.long	0x000fac0b
 130:	000fac0c 	.long	0x000fac0c
 134:	000fac0e 	.long	0x000fac0e
 138:	000fac0f 	.long	0x000fac0f
 13c:	ac11      	.short	0xac11
 13e:	000f      	.short	0x000f
 140:	000fac08 	.long	0x000fac08
 144:	000fac09 	.long	0x000fac09
 148:	000fac12 	.long	0x000fac12

Disassembly of section .text.wpa_compare_rsn_ie:

00000000 <wpa_compare_rsn_ie>:
   0:	14d0      	push      	r15
   2:	6c07      	mov      	r0, r1
   4:	9821      	ld.w      	r1, (r14, 0x4)
   6:	e900000f 	bez      	r0, 0x24	// 24 <wpa_compare_rsn_ie+0x24>
   a:	e903000d 	bez      	r3, 0x24	// 24 <wpa_compare_rsn_ie+0x24>
   e:	644a      	cmpne      	r2, r1
  10:	080a      	bt      	0x24	// 24 <wpa_compare_rsn_ie+0x24>
  12:	6c4f      	mov      	r1, r3
  14:	e0000000 	bsr      	0x0	// 0 <memcmp>
  18:	3840      	cmpnei      	r0, 0
  1a:	c4000503 	mvc      	r3
  1e:	3000      	movi      	r0, 0
  20:	600e      	subu      	r0, r3
  22:	1490      	pop      	r15
  24:	3000      	movi      	r0, 0
  26:	2800      	subi      	r0, 1
  28:	07fd      	br      	0x22	// 22 <wpa_compare_rsn_ie+0x22>

Disassembly of section .text.wpa_insert_pmkid:

00000000 <wpa_insert_pmkid>:
   0:	14d8      	push      	r4-r11, r15
   2:	1421      	subi      	r14, r14, 4
   4:	d9212000 	ld.w      	r9, (r1, 0x0)
   8:	6d83      	mov      	r6, r0
   a:	6dc7      	mov      	r7, r1
   c:	6e0b      	mov      	r8, r2
   e:	6240      	addu      	r9, r0
  10:	6658      	cmphs      	r6, r9
  12:	0c07      	bf      	0x20	// 20 <wpa_insert_pmkid+0x20>
  14:	120b      	lrw      	r0, 0x0	// 140 <wpa_insert_pmkid+0x140>
  16:	e0000000 	bsr      	0x0	// 0 <hgprintf>
  1a:	3000      	movi      	r0, 0
  1c:	2800      	subi      	r0, 1
  1e:	0445      	br      	0xa8	// a8 <wpa_insert_pmkid+0xa8>
  20:	8660      	ld.b      	r3, (r6, 0x0)
  22:	eb430030 	cmpnei      	r3, 48
  26:	86a1      	ld.b      	r5, (r6, 0x1)
  28:	2501      	addi      	r5, 2
  2a:	0c03      	bf      	0x30	// 30 <wpa_insert_pmkid+0x30>
  2c:	6194      	addu      	r6, r5
  2e:	07f1      	br      	0x10	// 10 <wpa_insert_pmkid+0x10>
  30:	8689      	ld.b      	r4, (r6, 0x9)
  32:	8668      	ld.b      	r3, (r6, 0x8)
  34:	4488      	lsli      	r4, r4, 8
  36:	6d0c      	or      	r4, r3
  38:	4482      	lsli      	r4, r4, 2
  3a:	6118      	addu      	r4, r6
  3c:	2409      	addi      	r4, 10
  3e:	8461      	ld.b      	r3, (r4, 0x1)
  40:	8440      	ld.b      	r2, (r4, 0x0)
  42:	4368      	lsli      	r3, r3, 8
  44:	6cc8      	or      	r3, r2
  46:	4362      	lsli      	r3, r3, 2
  48:	2301      	addi      	r3, 2
  4a:	6158      	addu      	r5, r6
  4c:	610c      	addu      	r4, r3
  4e:	6516      	cmpne      	r5, r4
  50:	082e      	bt      	0xac	// ac <wpa_insert_pmkid+0xac>
  52:	e5450001 	addi      	r10, r5, 2
  56:	c4a90082 	subu      	r2, r9, r5
  5a:	6c57      	mov      	r1, r5
  5c:	6c2b      	mov      	r0, r10
  5e:	e0000000 	bsr      	0x0	// 0 <memmove>
  62:	3300      	movi      	r3, 0
  64:	a560      	st.b      	r3, (r5, 0x0)
  66:	a561      	st.b      	r3, (r5, 0x1)
  68:	8661      	ld.b      	r3, (r6, 0x1)
  6a:	2301      	addi      	r3, 2
  6c:	a661      	st.b      	r3, (r6, 0x1)
  6e:	3502      	movi      	r5, 2
  70:	c4a90022 	addu      	r2, r9, r5
  74:	60aa      	subu      	r2, r10
  76:	6c6b      	mov      	r1, r10
  78:	e40a0011 	addi      	r0, r10, 18
  7c:	e0000000 	bsr      	0x0	// 0 <memmove>
  80:	3300      	movi      	r3, 0
  82:	dc6a0001 	st.b      	r3, (r10, 0x1)
  86:	3301      	movi      	r3, 1
  88:	dc6a0000 	st.b      	r3, (r10, 0x0)
  8c:	3210      	movi      	r2, 16
  8e:	6c63      	mov      	r1, r8
  90:	e40a0001 	addi      	r0, r10, 2
  94:	e0000000 	bsr      	0x0	// 0 <memcpy>
  98:	8661      	ld.b      	r3, (r6, 0x1)
  9a:	2511      	addi      	r5, 18
  9c:	2311      	addi      	r3, 18
  9e:	a661      	st.b      	r3, (r6, 0x1)
  a0:	9760      	ld.w      	r3, (r7, 0x0)
  a2:	614c      	addu      	r5, r3
  a4:	b7a0      	st.w      	r5, (r7, 0x0)
  a6:	3000      	movi      	r0, 0
  a8:	1401      	addi      	r14, r14, 4
  aa:	1498      	pop      	r4-r11, r15
  ac:	e5440001 	addi      	r10, r4, 2
  b0:	6694      	cmphs      	r5, r10
  b2:	0803      	bt      	0xb8	// b8 <wpa_insert_pmkid+0xb8>
  b4:	1104      	lrw      	r0, 0x0	// 144 <wpa_insert_pmkid+0x144>
  b6:	07b0      	br      	0x16	// 16 <wpa_insert_pmkid+0x16>
  b8:	6696      	cmpne      	r5, r10
  ba:	0803      	bt      	0xc0	// c0 <wpa_insert_pmkid+0xc0>
  bc:	3500      	movi      	r5, 0
  be:	07d9      	br      	0x70	// 70 <wpa_insert_pmkid+0x70>
  c0:	c5450083 	subu      	r3, r5, r10
  c4:	3b21      	cmplti      	r3, 2
  c6:	0baa      	bt      	0x1a	// 1a <wpa_insert_pmkid+0x1a>
  c8:	d9640003 	ld.b      	r11, (r4, 0x3)
  cc:	c50b482b 	lsli      	r11, r11, 8
  d0:	8442      	ld.b      	r2, (r4, 0x2)
  d2:	6ec8      	or      	r11, r2
  d4:	76ef      	sexth      	r11, r11
  d6:	756d      	zexth      	r5, r11
  d8:	e905001c 	bez      	r5, 0x110	// 110 <wpa_insert_pmkid+0x110>
  dc:	c485482c 	lsli      	r12, r5, 4
  e0:	5ba3      	subi      	r5, r3, 1
  e2:	6571      	cmplt      	r12, r5
  e4:	0f9b      	bf      	0x1a	// 1a <wpa_insert_pmkid+0x1a>
  e6:	e42c0001 	addi      	r1, r12, 2
  ea:	6068      	addu      	r1, r10
  ec:	c4290082 	subu      	r2, r9, r1
  f0:	5c0e      	addi      	r0, r4, 4
  f2:	dd8e2000 	st.w      	r12, (r14, 0x0)
  f6:	c48b482b 	lsli      	r11, r11, 4
  fa:	e0000000 	bsr      	0x0	// 0 <memmove>
  fe:	8661      	ld.b      	r3, (r6, 0x1)
 100:	c563008b 	subu      	r11, r3, r11
 104:	3500      	movi      	r5, 0
 106:	d98e2000 	ld.w      	r12, (r14, 0x0)
 10a:	dd660001 	st.b      	r11, (r6, 0x1)
 10e:	6172      	subu      	r5, r12
 110:	3300      	movi      	r3, 0
 112:	e5440003 	addi      	r10, r4, 4
 116:	a463      	st.b      	r3, (r4, 0x3)
 118:	c4a90022 	addu      	r2, r9, r5
 11c:	3301      	movi      	r3, 1
 11e:	a462      	st.b      	r3, (r4, 0x2)
 120:	60aa      	subu      	r2, r10
 122:	6c6b      	mov      	r1, r10
 124:	e4040013 	addi      	r0, r4, 20
 128:	e0000000 	bsr      	0x0	// 0 <memmove>
 12c:	3210      	movi      	r2, 16
 12e:	6c63      	mov      	r1, r8
 130:	6c2b      	mov      	r0, r10
 132:	e0000000 	bsr      	0x0	// 0 <memcpy>
 136:	8661      	ld.b      	r3, (r6, 0x1)
 138:	250f      	addi      	r5, 16
 13a:	230f      	addi      	r3, 16
 13c:	07b1      	br      	0x9e	// 9e <wpa_insert_pmkid+0x9e>
	...

Disassembly of section .text.wpa_cipher_key_len:

00000000 <wpa_cipher_key_len>:
   0:	eb400100 	cmpnei      	r0, 256
   4:	0c0a      	bf      	0x18	// 18 <wpa_cipher_key_len+0x18>
   6:	eb200100 	cmplti      	r0, 257
   a:	0c11      	bf      	0x2c	// 2c <wpa_cipher_key_len+0x2c>
   c:	3850      	cmpnei      	r0, 16
   e:	0c1e      	bf      	0x4a	// 4a <wpa_cipher_key_len+0x4a>
  10:	3830      	cmplti      	r0, 17
  12:	0c05      	bf      	0x1c	// 1c <wpa_cipher_key_len+0x1c>
  14:	3848      	cmpnei      	r0, 8
  16:	0809      	bt      	0x28	// 28 <wpa_cipher_key_len+0x28>
  18:	3020      	movi      	r0, 32
  1a:	0419      	br      	0x4c	// 4c <wpa_cipher_key_len+0x4c>
  1c:	eb400020 	cmpnei      	r0, 32
  20:	0c15      	bf      	0x4a	// 4a <wpa_cipher_key_len+0x4a>
  22:	eb400040 	cmpnei      	r0, 64
  26:	0c12      	bf      	0x4a	// 4a <wpa_cipher_key_len+0x4a>
  28:	3000      	movi      	r0, 0
  2a:	0411      	br      	0x4c	// 4c <wpa_cipher_key_len+0x4c>
  2c:	eb400800 	cmpnei      	r0, 2048
  30:	0c0d      	bf      	0x4a	// 4a <wpa_cipher_key_len+0x4a>
  32:	eb200800 	cmplti      	r0, 2049
  36:	0c04      	bf      	0x3e	// 3e <wpa_cipher_key_len+0x3e>
  38:	eb400200 	cmpnei      	r0, 512
  3c:	07ed      	br      	0x16	// 16 <wpa_cipher_key_len+0x16>
  3e:	eb401000 	cmpnei      	r0, 4096
  42:	0feb      	bf      	0x18	// 18 <wpa_cipher_key_len+0x18>
  44:	eb402000 	cmpnei      	r0, 8192
  48:	07e7      	br      	0x16	// 16 <wpa_cipher_key_len+0x16>
  4a:	3010      	movi      	r0, 16
  4c:	783c      	jmp      	r15

Disassembly of section .text.wpa_pmk_to_ptk:

00000000 <wpa_pmk_to_ptk>:
   0:	14d8      	push      	r4-r11, r15
   2:	142b      	subi      	r14, r14, 44
   4:	6e8f      	mov      	r10, r3
   6:	9874      	ld.w      	r3, (r14, 0x50)
   8:	b863      	st.w      	r3, (r14, 0xc)
   a:	9875      	ld.w      	r3, (r14, 0x54)
   c:	b864      	st.w      	r3, (r14, 0x10)
   e:	9876      	ld.w      	r3, (r14, 0x58)
  10:	b865      	st.w      	r3, (r14, 0x14)
  12:	9879      	ld.w      	r3, (r14, 0x64)
  14:	b866      	st.w      	r3, (r14, 0x18)
  16:	987a      	ld.w      	r3, (r14, 0x68)
  18:	b808      	st.w      	r0, (r14, 0x20)
  1a:	6e47      	mov      	r9, r1
  1c:	b849      	st.w      	r2, (r14, 0x24)
  1e:	9897      	ld.w      	r4, (r14, 0x5c)
  20:	98d8      	ld.w      	r6, (r14, 0x60)
  22:	b867      	st.w      	r3, (r14, 0x1c)
  24:	d96e201b 	ld.w      	r11, (r14, 0x6c)
  28:	d90e201c 	ld.w      	r8, (r14, 0x70)
  2c:	e9210008 	bnez      	r1, 0x3c	// 3c <wpa_pmk_to_ptk+0x3c>
  30:	031b      	lrw      	r0, 0x0	// 240 <hgprintf+0x240>
  32:	e0000000 	bsr      	0x0	// 0 <hgprintf>
  36:	3000      	movi      	r0, 0
  38:	2800      	subi      	r0, 1
  3a:	0500      	br      	0x23a	// 23a <wpa_pmk_to_ptk+0x23a>
  3c:	eb0b0042 	cmphsi      	r11, 67
  40:	0bfb      	bt      	0x36	// 36 <wpa_pmk_to_ptk+0x36>
  42:	308e      	movi      	r0, 142
  44:	e0000000 	bsr      	0x0	// 0 <malloc>
  48:	6d43      	mov      	r5, r0
  4a:	30a0      	movi      	r0, 160
  4c:	e0000000 	bsr      	0x0	// 0 <malloc>
  50:	6dc3      	mov      	r7, r0
  52:	e9050004 	bez      	r5, 0x5a	// 5a <wpa_pmk_to_ptk+0x5a>
  56:	e9200009 	bnez      	r0, 0x68	// 68 <wpa_pmk_to_ptk+0x68>
  5a:	6c17      	mov      	r0, r5
  5c:	e0000000 	bsr      	0x0	// 0 <free>
  60:	6c1f      	mov      	r0, r7
  62:	e0000000 	bsr      	0x0	// 0 <free>
  66:	07e8      	br      	0x36	// 36 <wpa_pmk_to_ptk+0x36>
  68:	3206      	movi      	r2, 6
  6a:	9823      	ld.w      	r1, (r14, 0xc)
  6c:	6c2b      	mov      	r0, r10
  6e:	e0000000 	bsr      	0x0	// 0 <memcmp>
  72:	5d76      	addi      	r3, r5, 6
  74:	b86a      	st.w      	r3, (r14, 0x28)
  76:	3206      	movi      	r2, 6
  78:	e9a00035 	bhsz      	r0, 0xe2	// e2 <wpa_pmk_to_ptk+0xe2>
  7c:	6c6b      	mov      	r1, r10
  7e:	6c17      	mov      	r0, r5
  80:	e0000000 	bsr      	0x0	// 0 <memcpy>
  84:	3206      	movi      	r2, 6
  86:	9823      	ld.w      	r1, (r14, 0xc)
  88:	5d08      	addu      	r0, r5, r2
  8a:	e0000000 	bsr      	0x0	// 0 <memcpy>
  8e:	3220      	movi      	r2, 32
  90:	9825      	ld.w      	r1, (r14, 0x14)
  92:	9804      	ld.w      	r0, (r14, 0x10)
  94:	e0000000 	bsr      	0x0	// 0 <memcmp>
  98:	e545002b 	addi      	r10, r5, 44
  9c:	e465000b 	addi      	r3, r5, 12
  a0:	3220      	movi      	r2, 32
  a2:	e9a00027 	bhsz      	r0, 0xf0	// f0 <wpa_pmk_to_ptk+0xf0>
  a6:	9824      	ld.w      	r1, (r14, 0x10)
  a8:	6c0f      	mov      	r0, r3
  aa:	e0000000 	bsr      	0x0	// 0 <memcpy>
  ae:	3220      	movi      	r2, 32
  b0:	9825      	ld.w      	r1, (r14, 0x14)
  b2:	6c2b      	mov      	r0, r10
  b4:	e0000000 	bsr      	0x0	// 0 <memcpy>
  b8:	9867      	ld.w      	r3, (r14, 0x1c)
  ba:	e9030022 	bez      	r3, 0xfe	// fe <wpa_pmk_to_ptk+0xfe>
  be:	e90b0020 	bez      	r11, 0xfe	// fe <wpa_pmk_to_ptk+0xfe>
  c2:	6caf      	mov      	r2, r11
  c4:	6c4f      	mov      	r1, r3
  c6:	e405004b 	addi      	r0, r5, 76
  ca:	e0000000 	bsr      	0x0	// 0 <memcpy>
  ce:	e56b004b 	addi      	r11, r11, 76
  d2:	eb080020 	cmphsi      	r8, 33
  d6:	0c17      	bf      	0x104	// 104 <wpa_pmk_to_ptk+0x104>
  d8:	6c63      	mov      	r1, r8
  da:	121b      	lrw      	r0, 0x0	// 244 <wpa_pmk_to_ptk+0x244>
  dc:	e0000000 	bsr      	0x0	// 0 <hgprintf>
  e0:	07bd      	br      	0x5a	// 5a <wpa_pmk_to_ptk+0x5a>
  e2:	9823      	ld.w      	r1, (r14, 0xc)
  e4:	6c17      	mov      	r0, r5
  e6:	e0000000 	bsr      	0x0	// 0 <memcpy>
  ea:	3206      	movi      	r2, 6
  ec:	6c6b      	mov      	r1, r10
  ee:	07cd      	br      	0x88	// 88 <wpa_pmk_to_ptk+0x88>
  f0:	9825      	ld.w      	r1, (r14, 0x14)
  f2:	6c0f      	mov      	r0, r3
  f4:	e0000000 	bsr      	0x0	// 0 <memcpy>
  f8:	3220      	movi      	r2, 32
  fa:	9824      	ld.w      	r1, (r14, 0x10)
  fc:	07db      	br      	0xb2	// b2 <wpa_pmk_to_ptk+0xb2>
  fe:	ea0b004c 	movi      	r11, 76
 102:	07e8      	br      	0xd2	// d2 <wpa_pmk_to_ptk+0xd2>
 104:	6c67      	mov      	r1, r9
 106:	6c1b      	mov      	r0, r6
 108:	e0000000 	bsr      	0x0	// 0 <wpa_pmk_to_ptk>
 10c:	3280      	movi      	r2, 128
 10e:	424d      	lsli      	r2, r2, 13
 110:	649a      	cmpne      	r6, r2
 112:	6cc3      	mov      	r3, r0
 114:	dc042040 	st.w      	r0, (r4, 0x100)
 118:	0c0f      	bf      	0x136	// 136 <wpa_pmk_to_ptk+0x136>
 11a:	6589      	cmplt      	r2, r6
 11c:	3280      	movi      	r2, 128
 11e:	081e      	bt      	0x15a	// 15a <wpa_pmk_to_ptk+0x15a>
 120:	424b      	lsli      	r2, r2, 11
 122:	649a      	cmpne      	r6, r2
 124:	0c09      	bf      	0x136	// 136 <wpa_pmk_to_ptk+0x136>
 126:	3280      	movi      	r2, 128
 128:	424c      	lsli      	r2, r2, 12
 12a:	649a      	cmpne      	r6, r2
 12c:	0c31      	bf      	0x18e	// 18e <wpa_pmk_to_ptk+0x18e>
 12e:	3280      	movi      	r2, 128
 130:	424a      	lsli      	r2, r2, 10
 132:	649a      	cmpne      	r6, r2
 134:	081c      	bt      	0x16c	// 16c <wpa_pmk_to_ptk+0x16c>
 136:	ea0a0020 	movi      	r10, 32
 13a:	dd442041 	st.w      	r10, (r4, 0x104)
 13e:	9806      	ld.w      	r0, (r14, 0x18)
 140:	b863      	st.w      	r3, (r14, 0xc)
 142:	e0000000 	bsr      	0x0	// 0 <wpa_pmk_to_ptk>
 146:	dc042042 	st.w      	r0, (r4, 0x108)
 14a:	dd042045 	st.w      	r8, (r4, 0x114)
 14e:	9863      	ld.w      	r3, (r14, 0xc)
 150:	e9200022 	bnez      	r0, 0x194	// 194 <wpa_pmk_to_ptk+0x194>
 154:	9826      	ld.w      	r1, (r14, 0x18)
 156:	111d      	lrw      	r0, 0x0	// 248 <wpa_pmk_to_ptk+0x248>
 158:	07c2      	br      	0xdc	// dc <wpa_pmk_to_ptk+0xdc>
 15a:	424f      	lsli      	r2, r2, 15
 15c:	649a      	cmpne      	r6, r2
 15e:	0c10      	bf      	0x17e	// 17e <wpa_pmk_to_ptk+0x17e>
 160:	6589      	cmplt      	r2, r6
 162:	3280      	movi      	r2, 128
 164:	0807      	bt      	0x172	// 172 <wpa_pmk_to_ptk+0x172>
 166:	424e      	lsli      	r2, r2, 14
 168:	649a      	cmpne      	r6, r2
 16a:	0c12      	bf      	0x18e	// 18e <wpa_pmk_to_ptk+0x18e>
 16c:	ea0a0010 	movi      	r10, 16
 170:	07e5      	br      	0x13a	// 13a <wpa_pmk_to_ptk+0x13a>
 172:	4250      	lsli      	r2, r2, 16
 174:	649a      	cmpne      	r6, r2
 176:	0c04      	bf      	0x17e	// 17e <wpa_pmk_to_ptk+0x17e>
 178:	3280      	movi      	r2, 128
 17a:	4251      	lsli      	r2, r2, 17
 17c:	07db      	br      	0x132	// 132 <wpa_pmk_to_ptk+0x132>
 17e:	eb090020 	cmphsi      	r9, 33
 182:	3020      	movi      	r0, 32
 184:	ea0a0010 	movi      	r10, 16
 188:	c5400c40 	inct      	r10, r0, 0
 18c:	07d7      	br      	0x13a	// 13a <wpa_pmk_to_ptk+0x13a>
 18e:	ea0a0040 	movi      	r10, 64
 192:	07d4      	br      	0x13a	// 13a <wpa_pmk_to_ptk+0x13a>
 194:	60e0      	addu      	r3, r8
 196:	628c      	addu      	r10, r3
 198:	3395      	movi      	r3, 149
 19a:	4371      	lsli      	r3, r3, 17
 19c:	68d8      	and      	r3, r6
 19e:	6028      	addu      	r0, r10
 1a0:	e923ff5d 	bnez      	r3, 0x5a	// 5a <wpa_pmk_to_ptk+0x5a>
 1a4:	ea03ac6c 	movi      	r3, 44140
 1a8:	c4a34903 	rotli      	r3, r3, 5
 1ac:	698c      	and      	r6, r3
 1ae:	e926ff56 	bnez      	r6, 0x5a	// 5a <wpa_pmk_to_ptk+0x5a>
 1b2:	b802      	st.w      	r0, (r14, 0x8)
 1b4:	b8e1      	st.w      	r7, (r14, 0x4)
 1b6:	dd6e2000 	st.w      	r11, (r14, 0x0)
 1ba:	6cd7      	mov      	r3, r5
 1bc:	9849      	ld.w      	r2, (r14, 0x24)
 1be:	6c67      	mov      	r1, r9
 1c0:	9808      	ld.w      	r0, (r14, 0x20)
 1c2:	e0000000 	bsr      	0x0	// 0 <sha1_prf>
 1c6:	e980ff4a 	blz      	r0, 0x5a	// 5a <wpa_pmk_to_ptk+0x5a>
 1ca:	d8442040 	ld.w      	r2, (r4, 0x100)
 1ce:	6c5f      	mov      	r1, r7
 1d0:	6c13      	mov      	r0, r4
 1d2:	e0000000 	bsr      	0x0	// 0 <memcpy>
 1d6:	d8242040 	ld.w      	r1, (r4, 0x100)
 1da:	d8442041 	ld.w      	r2, (r4, 0x104)
 1de:	605c      	addu      	r1, r7
 1e0:	e404001f 	addi      	r0, r4, 32
 1e4:	e0000000 	bsr      	0x0	// 0 <memcpy>
 1e8:	d8242040 	ld.w      	r1, (r4, 0x100)
 1ec:	d8642041 	ld.w      	r3, (r4, 0x104)
 1f0:	604c      	addu      	r1, r3
 1f2:	d8442042 	ld.w      	r2, (r4, 0x108)
 1f6:	605c      	addu      	r1, r7
 1f8:	e404005f 	addi      	r0, r4, 96
 1fc:	e0000000 	bsr      	0x0	// 0 <memcpy>
 200:	e9080011 	bez      	r8, 0x222	// 222 <wpa_pmk_to_ptk+0x222>
 204:	d8642041 	ld.w      	r3, (r4, 0x104)
 208:	d8242040 	ld.w      	r1, (r4, 0x100)
 20c:	604c      	addu      	r1, r3
 20e:	d8642042 	ld.w      	r3, (r4, 0x108)
 212:	604c      	addu      	r1, r3
 214:	d8442045 	ld.w      	r2, (r4, 0x114)
 218:	605c      	addu      	r1, r7
 21a:	e40400df 	addi      	r0, r4, 224
 21e:	e0000000 	bsr      	0x0	// 0 <memcpy>
 222:	3600      	movi      	r6, 0
 224:	6c17      	mov      	r0, r5
 226:	dcc42044 	st.w      	r6, (r4, 0x110)
 22a:	dcc42043 	st.w      	r6, (r4, 0x10c)
 22e:	e0000000 	bsr      	0x0	// 0 <free>
 232:	6c1f      	mov      	r0, r7
 234:	e0000000 	bsr      	0x0	// 0 <free>
 238:	6c1b      	mov      	r0, r6
 23a:	140b      	addi      	r14, r14, 44
 23c:	1498      	pop      	r4-r11, r15
	...

Disassembly of section .text.wpa_cipher_rsc_len:

00000000 <wpa_cipher_rsc_len>:
   0:	eb400040 	cmpnei      	r0, 64
   4:	0c10      	bf      	0x24	// 24 <wpa_cipher_rsc_len+0x24>
   6:	eb200040 	cmplti      	r0, 65
   a:	0c07      	bf      	0x18	// 18 <wpa_cipher_rsc_len+0x18>
   c:	3848      	cmpnei      	r0, 8
   e:	0c0b      	bf      	0x24	// 24 <wpa_cipher_rsc_len+0x24>
  10:	3850      	cmpnei      	r0, 16
  12:	0c09      	bf      	0x24	// 24 <wpa_cipher_rsc_len+0x24>
  14:	3000      	movi      	r0, 0
  16:	783c      	jmp      	r15
  18:	eb400100 	cmpnei      	r0, 256
  1c:	0c04      	bf      	0x24	// 24 <wpa_cipher_rsc_len+0x24>
  1e:	eb400200 	cmpnei      	r0, 512
  22:	07f8      	br      	0x12	// 12 <wpa_cipher_rsc_len+0x12>
  24:	3006      	movi      	r0, 6
  26:	07f8      	br      	0x16	// 16 <wpa_cipher_rsc_len+0x16>

Disassembly of section .text.wpa_cipher_to_alg:

00000000 <wpa_cipher_to_alg>:
   0:	eb400100 	cmpnei      	r0, 256
   4:	0c27      	bf      	0x52	// 52 <wpa_cipher_to_alg+0x52>
   6:	eb200100 	cmplti      	r0, 257
   a:	0c11      	bf      	0x2c	// 2c <wpa_cipher_to_alg+0x2c>
   c:	3850      	cmpnei      	r0, 16
   e:	0c24      	bf      	0x56	// 56 <wpa_cipher_to_alg+0x56>
  10:	3830      	cmplti      	r0, 17
  12:	0c05      	bf      	0x1c	// 1c <wpa_cipher_to_alg+0x1c>
  14:	3848      	cmpnei      	r0, 8
  16:	0c22      	bf      	0x5a	// 5a <wpa_cipher_to_alg+0x5a>
  18:	3000      	movi      	r0, 0
  1a:	041d      	br      	0x54	// 54 <wpa_cipher_to_alg+0x54>
  1c:	eb400020 	cmpnei      	r0, 32
  20:	0c1f      	bf      	0x5e	// 5e <wpa_cipher_to_alg+0x5e>
  22:	eb400040 	cmpnei      	r0, 64
  26:	0bf9      	bt      	0x18	// 18 <wpa_cipher_to_alg+0x18>
  28:	3006      	movi      	r0, 6
  2a:	0415      	br      	0x54	// 54 <wpa_cipher_to_alg+0x54>
  2c:	eb400800 	cmpnei      	r0, 2048
  30:	0c19      	bf      	0x62	// 62 <wpa_cipher_to_alg+0x62>
  32:	eb200800 	cmplti      	r0, 2049
  36:	0c06      	bf      	0x42	// 42 <wpa_cipher_to_alg+0x42>
  38:	eb400200 	cmpnei      	r0, 512
  3c:	0bee      	bt      	0x18	// 18 <wpa_cipher_to_alg+0x18>
  3e:	300a      	movi      	r0, 10
  40:	040a      	br      	0x54	// 54 <wpa_cipher_to_alg+0x54>
  42:	eb401000 	cmpnei      	r0, 4096
  46:	0c10      	bf      	0x66	// 66 <wpa_cipher_to_alg+0x66>
  48:	eb402000 	cmpnei      	r0, 8192
  4c:	0be6      	bt      	0x18	// 18 <wpa_cipher_to_alg+0x18>
  4e:	300d      	movi      	r0, 13
  50:	0402      	br      	0x54	// 54 <wpa_cipher_to_alg+0x54>
  52:	3009      	movi      	r0, 9
  54:	783c      	jmp      	r15
  56:	3003      	movi      	r0, 3
  58:	07fe      	br      	0x54	// 54 <wpa_cipher_to_alg+0x54>
  5a:	3002      	movi      	r0, 2
  5c:	07fc      	br      	0x54	// 54 <wpa_cipher_to_alg+0x54>
  5e:	3004      	movi      	r0, 4
  60:	07fa      	br      	0x54	// 54 <wpa_cipher_to_alg+0x54>
  62:	300b      	movi      	r0, 11
  64:	07f8      	br      	0x54	// 54 <wpa_cipher_to_alg+0x54>
  66:	300c      	movi      	r0, 12
  68:	07f6      	br      	0x54	// 54 <wpa_cipher_to_alg+0x54>

Disassembly of section .text.wpa_alg_to_suite:

00000000 <wpa_alg_to_suite>:
   0:	2801      	subi      	r0, 2
   2:	380b      	cmphsi      	r0, 12
   4:	0805      	bt      	0xe	// e <wpa_alg_to_suite+0xe>
   6:	1064      	lrw      	r3, 0x0	// 14 <wpa_alg_to_suite+0x14>
   8:	d0030880 	ldr.w      	r0, (r3, r0 << 2)
   c:	783c      	jmp      	r15
   e:	3000      	movi      	r0, 0
  10:	07fe      	br      	0xc	// c <wpa_alg_to_suite+0xc>
  12:	0000      	.short	0x0000
  14:	00000000 	.long	0x00000000

Disassembly of section .text.wpa_cipher_valid_pairwise:

00000000 <wpa_cipher_valid_pairwise>:
   0:	eb400200 	cmpnei      	r0, 512
   4:	0c0c      	bf      	0x1c	// 1c <wpa_cipher_valid_pairwise+0x1c>
   6:	eb400100 	cmpnei      	r0, 256
   a:	0c09      	bf      	0x1c	// 1c <wpa_cipher_valid_pairwise+0x1c>
   c:	3850      	cmpnei      	r0, 16
   e:	0c07      	bf      	0x1c	// 1c <wpa_cipher_valid_pairwise+0x1c>
  10:	eb400040 	cmpnei      	r0, 64
  14:	0c04      	bf      	0x1c	// 1c <wpa_cipher_valid_pairwise+0x1c>
  16:	3848      	cmpnei      	r0, 8
  18:	6403      	mvcv      	r0
  1a:	783c      	jmp      	r15
  1c:	3001      	movi      	r0, 1
  1e:	07fe      	br      	0x1a	// 1a <wpa_cipher_valid_pairwise+0x1a>

Disassembly of section .text.wpa_cipher_valid_group:

00000000 <wpa_cipher_valid_group>:
   0:	14d1      	push      	r4, r15
   2:	6d03      	mov      	r4, r0
   4:	e0000000 	bsr      	0x0	// 0 <wpa_cipher_valid_group>
   8:	e9200007 	bnez      	r0, 0x16	// 16 <wpa_cipher_valid_group+0x16>
   c:	eb444000 	cmpnei      	r4, 16384
  10:	6403      	mvcv      	r0
  12:	7400      	zextb      	r0, r0
  14:	1491      	pop      	r4, r15
  16:	3001      	movi      	r0, 1
  18:	07fe      	br      	0x14	// 14 <wpa_cipher_valid_group+0x14>

Disassembly of section .text.wpa_parse_wpa_ie_rsn:

00000000 <wpa_parse_wpa_ie_rsn>:
   0:	14d8      	push      	r4-r11, r15
   2:	1422      	subi      	r14, r14, 8
   4:	6d8b      	mov      	r6, r2
   6:	6d47      	mov      	r5, r1
   8:	6d03      	mov      	r4, r0
   a:	3228      	movi      	r2, 40
   c:	3100      	movi      	r1, 0
   e:	6c1b      	mov      	r0, r6
  10:	e0000000 	bsr      	0x0	// 0 <memset>
  14:	3302      	movi      	r3, 2
  16:	3d03      	cmphsi      	r5, 4
  18:	b660      	st.w      	r3, (r6, 0x0)
  1a:	3701      	movi      	r7, 1
  1c:	3310      	movi      	r3, 16
  1e:	b661      	st.w      	r3, (r6, 0x4)
  20:	b663      	st.w      	r3, (r6, 0xc)
  22:	b6e5      	st.w      	r7, (r6, 0x14)
  24:	0805      	bt      	0x2e	// 2e <wpa_parse_wpa_ie_rsn+0x2e>
  26:	3000      	movi      	r0, 0
  28:	2800      	subi      	r0, 1
  2a:	1402      	addi      	r14, r14, 8
  2c:	1498      	pop      	r4-r11, r15
  2e:	3d05      	cmphsi      	r5, 6
  30:	0c2b      	bf      	0x86	// 86 <wpa_parse_wpa_ie_rsn+0x86>
  32:	8461      	ld.b      	r3, (r4, 0x1)
  34:	3b03      	cmphsi      	r3, 4
  36:	0c28      	bf      	0x86	// 86 <wpa_parse_wpa_ie_rsn+0x86>
  38:	5d47      	subi      	r2, r5, 2
  3a:	648e      	cmpne      	r3, r2
  3c:	0825      	bt      	0x86	// 86 <wpa_parse_wpa_ie_rsn+0x86>
  3e:	5c06      	addi      	r0, r4, 2
  40:	e0000000 	bsr      	0x0	// 0 <wpa_parse_wpa_ie_rsn>
  44:	1375      	lrw      	r3, 0x506f9a12	// 218 <wpa_parse_wpa_ie_rsn+0x218>
  46:	64c2      	cmpne      	r0, r3
  48:	081f      	bt      	0x86	// 86 <wpa_parse_wpa_ie_rsn+0x86>
  4a:	3380      	movi      	r3, 128
  4c:	4367      	lsli      	r3, r3, 7
  4e:	b663      	st.w      	r3, (r6, 0xc)
  50:	3380      	movi      	r3, 128
  52:	4368      	lsli      	r3, r3, 8
  54:	b665      	st.w      	r3, (r6, 0x14)
  56:	3308      	movi      	r3, 8
  58:	2405      	addi      	r4, 6
  5a:	2d05      	subi      	r5, 6
  5c:	b6e4      	st.w      	r7, (r6, 0x10)
  5e:	b660      	st.w      	r3, (r6, 0x0)
  60:	3d23      	cmplti      	r5, 4
  62:	0824      	bt      	0xaa	// aa <wpa_parse_wpa_ie_rsn+0xaa>
  64:	6c13      	mov      	r0, r4
  66:	e0000000 	bsr      	0x0	// 0 <wpa_parse_wpa_ie_rsn>
  6a:	3701      	movi      	r7, 1
  6c:	b603      	st.w      	r0, (r6, 0xc)
  6e:	b6e4      	st.w      	r7, (r6, 0x10)
  70:	e0000000 	bsr      	0x0	// 0 <wpa_parse_wpa_ie_rsn>
  74:	e900ffd9 	bez      	r0, 0x26	// 26 <wpa_parse_wpa_ie_rsn+0x26>
  78:	5d6f      	subi      	r3, r5, 4
  7a:	3b21      	cmplti      	r3, 2
  7c:	0c1c      	bf      	0xb4	// b4 <wpa_parse_wpa_ie_rsn+0xb4>
  7e:	3b41      	cmpnei      	r3, 1
  80:	0cc3      	bf      	0x206	// 206 <wpa_parse_wpa_ie_rsn+0x206>
  82:	3000      	movi      	r0, 0
  84:	07d3      	br      	0x2a	// 2a <wpa_parse_wpa_ie_rsn+0x2a>
  86:	8460      	ld.b      	r3, (r4, 0x0)
  88:	eb430030 	cmpnei      	r3, 48
  8c:	08b7      	bt      	0x1fa	// 1fa <wpa_parse_wpa_ie_rsn+0x1fa>
  8e:	8441      	ld.b      	r2, (r4, 0x1)
  90:	5d67      	subi      	r3, r5, 2
  92:	64ca      	cmpne      	r2, r3
  94:	08b3      	bt      	0x1fa	// 1fa <wpa_parse_wpa_ie_rsn+0x1fa>
  96:	8463      	ld.b      	r3, (r4, 0x3)
  98:	4368      	lsli      	r3, r3, 8
  9a:	8442      	ld.b      	r2, (r4, 0x2)
  9c:	6cc8      	or      	r3, r2
  9e:	74cf      	sexth      	r3, r3
  a0:	3b41      	cmpnei      	r3, 1
  a2:	08ac      	bt      	0x1fa	// 1fa <wpa_parse_wpa_ie_rsn+0x1fa>
  a4:	2403      	addi      	r4, 4
  a6:	2d03      	subi      	r5, 4
  a8:	07dc      	br      	0x60	// 60 <wpa_parse_wpa_ie_rsn+0x60>
  aa:	e965ffec 	blsz      	r5, 0x82	// 82 <wpa_parse_wpa_ie_rsn+0x82>
  ae:	3000      	movi      	r0, 0
  b0:	2802      	subi      	r0, 3
  b2:	07bc      	br      	0x2a	// 2a <wpa_parse_wpa_ie_rsn+0x2a>
  b4:	ea090000 	movi      	r9, 0
  b8:	dd262001 	st.w      	r9, (r6, 0x4)
  bc:	d9040005 	ld.b      	r8, (r4, 0x5)
  c0:	8464      	ld.b      	r3, (r4, 0x4)
  c2:	c5084828 	lsli      	r8, r8, 8
  c6:	6e0c      	or      	r8, r3
  c8:	2405      	addi      	r4, 6
  ca:	2d05      	subi      	r5, 6
  cc:	e908009a 	bez      	r8, 0x200	// 200 <wpa_parse_wpa_ie_rsn+0x200>
  d0:	5562      	asri      	r3, r5, 2
  d2:	660d      	cmplt      	r3, r8
  d4:	0896      	bt      	0x200	// 200 <wpa_parse_wpa_ie_rsn+0x200>
  d6:	b6e2      	st.w      	r7, (r6, 0x8)
  d8:	6c13      	mov      	r0, r4
  da:	e5290000 	addi      	r9, r9, 1
  de:	e0000000 	bsr      	0x0	// 0 <wpa_parse_wpa_ie_rsn>
  e2:	96e1      	ld.w      	r7, (r6, 0x4)
  e4:	6625      	cmplt      	r9, r8
  e6:	6dc0      	or      	r7, r0
  e8:	b6e1      	st.w      	r7, (r6, 0x4)
  ea:	5c4e      	addi      	r2, r4, 4
  ec:	5d6f      	subi      	r3, r5, 4
  ee:	0861      	bt      	0x1b0	// 1b0 <wpa_parse_wpa_ie_rsn+0x1b0>
  f0:	e4e72020 	andi      	r7, r7, 32
  f4:	e927ff99 	bnez      	r7, 0x26	// 26 <wpa_parse_wpa_ie_rsn+0x26>
  f8:	3b21      	cmplti      	r3, 2
  fa:	087b      	bt      	0x1f0	// 1f0 <wpa_parse_wpa_ie_rsn+0x1f0>
  fc:	b6e5      	st.w      	r7, (r6, 0x14)
  fe:	d9020001 	ld.b      	r8, (r2, 0x1)
 102:	c5084828 	lsli      	r8, r8, 8
 106:	8260      	ld.b      	r3, (r2, 0x0)
 108:	6e0c      	or      	r8, r3
 10a:	2405      	addi      	r4, 6
 10c:	2d05      	subi      	r5, 6
 10e:	e908007f 	bez      	r8, 0x20c	// 20c <wpa_parse_wpa_ie_rsn+0x20c>
 112:	5562      	asri      	r3, r5, 2
 114:	660d      	cmplt      	r3, r8
 116:	087b      	bt      	0x20c	// 20c <wpa_parse_wpa_ie_rsn+0x20c>
 118:	ea890041 	lrw      	r9, 0xfac01	// 21c <wpa_parse_wpa_ie_rsn+0x21c>
 11c:	ea8a0041 	lrw      	r10, 0xfac02	// 220 <wpa_parse_wpa_ie_rsn+0x220>
 120:	ea8b0041 	lrw      	r11, 0xfac05	// 224 <wpa_parse_wpa_ie_rsn+0x224>
 124:	1241      	lrw      	r2, 0xfac06	// 228 <wpa_parse_wpa_ie_rsn+0x228>
 126:	1222      	lrw      	r1, 0xfac0b	// 22c <wpa_parse_wpa_ie_rsn+0x22c>
 128:	6c13      	mov      	r0, r4
 12a:	b821      	st.w      	r1, (r14, 0x4)
 12c:	b840      	st.w      	r2, (r14, 0x0)
 12e:	e0000000 	bsr      	0x0	// 0 <wpa_parse_wpa_ie_rsn>
 132:	6642      	cmpne      	r0, r9
 134:	9840      	ld.w      	r2, (r14, 0x0)
 136:	9821      	ld.w      	r1, (r14, 0x4)
 138:	0c41      	bf      	0x1ba	// 1ba <wpa_parse_wpa_ie_rsn+0x1ba>
 13a:	6682      	cmpne      	r0, r10
 13c:	0c41      	bf      	0x1be	// 1be <wpa_parse_wpa_ie_rsn+0x1be>
 13e:	66c2      	cmpne      	r0, r11
 140:	0c41      	bf      	0x1c2	// 1c2 <wpa_parse_wpa_ie_rsn+0x1c2>
 142:	6482      	cmpne      	r0, r2
 144:	0c41      	bf      	0x1c6	// 1c6 <wpa_parse_wpa_ie_rsn+0x1c6>
 146:	6442      	cmpne      	r0, r1
 148:	0c42      	bf      	0x1cc	// 1cc <wpa_parse_wpa_ie_rsn+0x1cc>
 14a:	117a      	lrw      	r3, 0xfac0c	// 230 <wpa_parse_wpa_ie_rsn+0x230>
 14c:	64c2      	cmpne      	r0, r3
 14e:	0c42      	bf      	0x1d2	// 1d2 <wpa_parse_wpa_ie_rsn+0x1d2>
 150:	1179      	lrw      	r3, 0xfac0e	// 234 <wpa_parse_wpa_ie_rsn+0x234>
 152:	64c2      	cmpne      	r0, r3
 154:	0c42      	bf      	0x1d8	// 1d8 <wpa_parse_wpa_ie_rsn+0x1d8>
 156:	1179      	lrw      	r3, 0xfac0f	// 238 <wpa_parse_wpa_ie_rsn+0x238>
 158:	64c2      	cmpne      	r0, r3
 15a:	0c42      	bf      	0x1de	// 1de <wpa_parse_wpa_ie_rsn+0x1de>
 15c:	ea03fac1 	movi      	r3, 64193
 160:	c4834903 	rotli      	r3, r3, 4
 164:	64c2      	cmpne      	r0, r3
 166:	0c3f      	bf      	0x1e4	// 1e4 <wpa_parse_wpa_ie_rsn+0x1e4>
 168:	1175      	lrw      	r3, 0xfac11	// 23c <wpa_parse_wpa_ie_rsn+0x23c>
 16a:	64c2      	cmpne      	r0, r3
 16c:	0c3f      	bf      	0x1ea	// 1ea <wpa_parse_wpa_ie_rsn+0x1ea>
 16e:	1175      	lrw      	r3, 0x506f9a01	// 240 <wpa_parse_wpa_ie_rsn+0x240>
 170:	64c2      	cmpne      	r0, r3
 172:	64c3      	mvcv      	r3
 174:	436f      	lsli      	r3, r3, 15
 176:	2700      	addi      	r7, 1
 178:	9605      	ld.w      	r0, (r6, 0x14)
 17a:	661d      	cmplt      	r7, r8
 17c:	6cc0      	or      	r3, r0
 17e:	b665      	st.w      	r3, (r6, 0x14)
 180:	2403      	addi      	r4, 4
 182:	5d6f      	subi      	r3, r5, 4
 184:	0819      	bt      	0x1b6	// 1b6 <wpa_parse_wpa_ie_rsn+0x1b6>
 186:	3b21      	cmplti      	r3, 2
 188:	0b7d      	bt      	0x82	// 82 <wpa_parse_wpa_ie_rsn+0x82>
 18a:	8461      	ld.b      	r3, (r4, 0x1)
 18c:	8440      	ld.b      	r2, (r4, 0x0)
 18e:	4368      	lsli      	r3, r3, 8
 190:	3d27      	cmplti      	r5, 8
 192:	6cc8      	or      	r3, r2
 194:	b666      	st.w      	r3, (r6, 0x18)
 196:	0b76      	bt      	0x82	// 82 <wpa_parse_wpa_ie_rsn+0x82>
 198:	8463      	ld.b      	r3, (r4, 0x3)
 19a:	4368      	lsli      	r3, r3, 8
 19c:	8422      	ld.b      	r1, (r4, 0x2)
 19e:	2d07      	subi      	r5, 8
 1a0:	6cc4      	or      	r3, r1
 1a2:	4da4      	lsri      	r5, r5, 4
 1a4:	64d4      	cmphs      	r5, r3
 1a6:	5c4e      	addi      	r2, r4, 4
 1a8:	0c35      	bf      	0x212	// 212 <wpa_parse_wpa_ie_rsn+0x212>
 1aa:	b667      	st.w      	r3, (r6, 0x1c)
 1ac:	b648      	st.w      	r2, (r6, 0x20)
 1ae:	076a      	br      	0x82	// 82 <wpa_parse_wpa_ie_rsn+0x82>
 1b0:	6d4f      	mov      	r5, r3
 1b2:	6d0b      	mov      	r4, r2
 1b4:	0792      	br      	0xd8	// d8 <wpa_parse_wpa_ie_rsn+0xd8>
 1b6:	6d4f      	mov      	r5, r3
 1b8:	07b8      	br      	0x128	// 128 <wpa_parse_wpa_ie_rsn+0x128>
 1ba:	3301      	movi      	r3, 1
 1bc:	07dd      	br      	0x176	// 176 <wpa_parse_wpa_ie_rsn+0x176>
 1be:	3302      	movi      	r3, 2
 1c0:	07db      	br      	0x176	// 176 <wpa_parse_wpa_ie_rsn+0x176>
 1c2:	3380      	movi      	r3, 128
 1c4:	07d9      	br      	0x176	// 176 <wpa_parse_wpa_ie_rsn+0x176>
 1c6:	3380      	movi      	r3, 128
 1c8:	4361      	lsli      	r3, r3, 1
 1ca:	07d6      	br      	0x176	// 176 <wpa_parse_wpa_ie_rsn+0x176>
 1cc:	3380      	movi      	r3, 128
 1ce:	4369      	lsli      	r3, r3, 9
 1d0:	07d3      	br      	0x176	// 176 <wpa_parse_wpa_ie_rsn+0x176>
 1d2:	3380      	movi      	r3, 128
 1d4:	436a      	lsli      	r3, r3, 10
 1d6:	07d0      	br      	0x176	// 176 <wpa_parse_wpa_ie_rsn+0x176>
 1d8:	3380      	movi      	r3, 128
 1da:	436b      	lsli      	r3, r3, 11
 1dc:	07cd      	br      	0x176	// 176 <wpa_parse_wpa_ie_rsn+0x176>
 1de:	3380      	movi      	r3, 128
 1e0:	436c      	lsli      	r3, r3, 12
 1e2:	07ca      	br      	0x176	// 176 <wpa_parse_wpa_ie_rsn+0x176>
 1e4:	3380      	movi      	r3, 128
 1e6:	436d      	lsli      	r3, r3, 13
 1e8:	07c7      	br      	0x176	// 176 <wpa_parse_wpa_ie_rsn+0x176>
 1ea:	3380      	movi      	r3, 128
 1ec:	436e      	lsli      	r3, r3, 14
 1ee:	07c4      	br      	0x176	// 176 <wpa_parse_wpa_ie_rsn+0x176>
 1f0:	3b41      	cmpnei      	r3, 1
 1f2:	0b48      	bt      	0x82	// 82 <wpa_parse_wpa_ie_rsn+0x82>
 1f4:	3000      	movi      	r0, 0
 1f6:	2806      	subi      	r0, 7
 1f8:	0719      	br      	0x2a	// 2a <wpa_parse_wpa_ie_rsn+0x2a>
 1fa:	3000      	movi      	r0, 0
 1fc:	2801      	subi      	r0, 2
 1fe:	0716      	br      	0x2a	// 2a <wpa_parse_wpa_ie_rsn+0x2a>
 200:	3000      	movi      	r0, 0
 202:	2803      	subi      	r0, 4
 204:	0713      	br      	0x2a	// 2a <wpa_parse_wpa_ie_rsn+0x2a>
 206:	3000      	movi      	r0, 0
 208:	2804      	subi      	r0, 5
 20a:	0710      	br      	0x2a	// 2a <wpa_parse_wpa_ie_rsn+0x2a>
 20c:	3000      	movi      	r0, 0
 20e:	2805      	subi      	r0, 6
 210:	070d      	br      	0x2a	// 2a <wpa_parse_wpa_ie_rsn+0x2a>
 212:	3000      	movi      	r0, 0
 214:	2808      	subi      	r0, 9
 216:	070a      	br      	0x2a	// 2a <wpa_parse_wpa_ie_rsn+0x2a>
 218:	506f9a12 	.long	0x506f9a12
 21c:	000fac01 	.long	0x000fac01
 220:	000fac02 	.long	0x000fac02
 224:	000fac05 	.long	0x000fac05
 228:	000fac06 	.long	0x000fac06
 22c:	000fac0b 	.long	0x000fac0b
 230:	000fac0c 	.long	0x000fac0c
 234:	000fac0e 	.long	0x000fac0e
 238:	000fac0f 	.long	0x000fac0f
 23c:	ac11      	.short	0xac11
 23e:	000f      	.short	0x000f
 240:	506f9a01 	.long	0x506f9a01

Disassembly of section .text.wpa_cipher_to_suite:

00000000 <wpa_cipher_to_suite>:
   0:	e4612200 	andi      	r3, r1, 512
   4:	e9230045 	bnez      	r3, 0x8e	// 8e <wpa_cipher_to_suite+0x8e>
   8:	e4612100 	andi      	r3, r1, 256
   c:	e9230043 	bnez      	r3, 0x92	// 92 <wpa_cipher_to_suite+0x92>
  10:	e4612010 	andi      	r3, r1, 16
  14:	e9030008 	bez      	r3, 0x24	// 24 <wpa_cipher_to_suite+0x24>
  18:	3842      	cmpnei      	r0, 2
  1a:	1165      	lrw      	r3, 0x50f204	// ac <wpa_cipher_to_suite+0xac>
  1c:	1105      	lrw      	r0, 0xfac04	// b0 <wpa_cipher_to_suite+0xb0>
  1e:	c4030c40 	inct      	r0, r3, 0
  22:	783c      	jmp      	r15
  24:	e4612040 	andi      	r3, r1, 64
  28:	e9230037 	bnez      	r3, 0x96	// 96 <wpa_cipher_to_suite+0x96>
  2c:	e4612008 	andi      	r3, r1, 8
  30:	e9030006 	bez      	r3, 0x3c	// 3c <wpa_cipher_to_suite+0x3c>
  34:	3842      	cmpnei      	r0, 2
  36:	1160      	lrw      	r3, 0x50f202	// b4 <wpa_cipher_to_suite+0xb4>
  38:	1100      	lrw      	r0, 0xfac02	// b8 <wpa_cipher_to_suite+0xb8>
  3a:	07f2      	br      	0x1e	// 1e <wpa_cipher_to_suite+0x1e>
  3c:	e4612001 	andi      	r3, r1, 1
  40:	e903000c 	bez      	r3, 0x58	// 58 <wpa_cipher_to_suite+0x58>
  44:	3842      	cmpnei      	r0, 2
  46:	ea03a1e4 	movi      	r3, 41444
  4a:	c4e34903 	rotli      	r3, r3, 7
  4e:	ea00fac0 	movi      	r0, 64192
  52:	c4804900 	rotli      	r0, r0, 4
  56:	07e4      	br      	0x1e	// 1e <wpa_cipher_to_suite+0x1e>
  58:	3380      	movi      	r3, 128
  5a:	4367      	lsli      	r3, r3, 7
  5c:	68c4      	and      	r3, r1
  5e:	e923001e 	bnez      	r3, 0x9a	// 9a <wpa_cipher_to_suite+0x9a>
  62:	e4612020 	andi      	r3, r1, 32
  66:	e923001c 	bnez      	r3, 0x9e	// 9e <wpa_cipher_to_suite+0x9e>
  6a:	e4612800 	andi      	r3, r1, 2048
  6e:	e923001a 	bnez      	r3, 0xa2	// a2 <wpa_cipher_to_suite+0xa2>
  72:	3380      	movi      	r3, 128
  74:	4365      	lsli      	r3, r3, 5
  76:	68c4      	and      	r3, r1
  78:	e9230017 	bnez      	r3, 0xa6	// a6 <wpa_cipher_to_suite+0xa6>
  7c:	3380      	movi      	r3, 128
  7e:	4366      	lsli      	r3, r3, 6
  80:	684c      	and      	r1, r3
  82:	3940      	cmpnei      	r1, 0
  84:	3300      	movi      	r3, 0
  86:	100e      	lrw      	r0, 0xfac0d	// bc <wpa_cipher_to_suite+0xbc>
  88:	c4030c20 	incf      	r0, r3, 0
  8c:	07cb      	br      	0x22	// 22 <wpa_cipher_to_suite+0x22>
  8e:	100d      	lrw      	r0, 0xfac0a	// c0 <wpa_cipher_to_suite+0xc0>
  90:	07c9      	br      	0x22	// 22 <wpa_cipher_to_suite+0x22>
  92:	100d      	lrw      	r0, 0xfac09	// c4 <wpa_cipher_to_suite+0xc4>
  94:	07c7      	br      	0x22	// 22 <wpa_cipher_to_suite+0x22>
  96:	100d      	lrw      	r0, 0xfac08	// c8 <wpa_cipher_to_suite+0xc8>
  98:	07c5      	br      	0x22	// 22 <wpa_cipher_to_suite+0x22>
  9a:	100d      	lrw      	r0, 0xfac07	// cc <wpa_cipher_to_suite+0xcc>
  9c:	07c3      	br      	0x22	// 22 <wpa_cipher_to_suite+0x22>
  9e:	100d      	lrw      	r0, 0xfac06	// d0 <wpa_cipher_to_suite+0xd0>
  a0:	07c1      	br      	0x22	// 22 <wpa_cipher_to_suite+0x22>
  a2:	100d      	lrw      	r0, 0xfac0b	// d4 <wpa_cipher_to_suite+0xd4>
  a4:	07bf      	br      	0x22	// 22 <wpa_cipher_to_suite+0x22>
  a6:	100d      	lrw      	r0, 0xfac0c	// d8 <wpa_cipher_to_suite+0xd8>
  a8:	07bd      	br      	0x22	// 22 <wpa_cipher_to_suite+0x22>
  aa:	0000      	.short	0x0000
  ac:	0050f204 	.long	0x0050f204
  b0:	000fac04 	.long	0x000fac04
  b4:	0050f202 	.long	0x0050f202
  b8:	000fac02 	.long	0x000fac02
  bc:	000fac0d 	.long	0x000fac0d
  c0:	000fac0a 	.long	0x000fac0a
  c4:	000fac09 	.long	0x000fac09
  c8:	000fac08 	.long	0x000fac08
  cc:	000fac07 	.long	0x000fac07
  d0:	000fac06 	.long	0x000fac06
  d4:	000fac0b 	.long	0x000fac0b
  d8:	000fac0c 	.long	0x000fac0c

Disassembly of section .text.rsn_cipher_put_suites:

00000000 <rsn_cipher_put_suites>:
   0:	e4612200 	andi      	r3, r1, 512
   4:	e9030057 	bez      	r3, 0xb2	// b2 <rsn_cipher_put_suites+0xb2>
   8:	3300      	movi      	r3, 0
   a:	a060      	st.b      	r3, (r0, 0x0)
   c:	330f      	movi      	r3, 15
   e:	a061      	st.b      	r3, (r0, 0x1)
  10:	3300      	movi      	r3, 0
  12:	2b53      	subi      	r3, 84
  14:	a062      	st.b      	r3, (r0, 0x2)
  16:	330a      	movi      	r3, 10
  18:	a063      	st.b      	r3, (r0, 0x3)
  1a:	586e      	addi      	r3, r0, 4
  1c:	e4412100 	andi      	r2, r1, 256
  20:	e902000c 	bez      	r2, 0x38	// 38 <rsn_cipher_put_suites+0x38>
  24:	3200      	movi      	r2, 0
  26:	a340      	st.b      	r2, (r3, 0x0)
  28:	320f      	movi      	r2, 15
  2a:	a341      	st.b      	r2, (r3, 0x1)
  2c:	3200      	movi      	r2, 0
  2e:	2a53      	subi      	r2, 84
  30:	a342      	st.b      	r2, (r3, 0x2)
  32:	3209      	movi      	r2, 9
  34:	a343      	st.b      	r2, (r3, 0x3)
  36:	2303      	addi      	r3, 4
  38:	e4412010 	andi      	r2, r1, 16
  3c:	e902000c 	bez      	r2, 0x54	// 54 <rsn_cipher_put_suites+0x54>
  40:	3200      	movi      	r2, 0
  42:	a340      	st.b      	r2, (r3, 0x0)
  44:	320f      	movi      	r2, 15
  46:	a341      	st.b      	r2, (r3, 0x1)
  48:	3200      	movi      	r2, 0
  4a:	2a53      	subi      	r2, 84
  4c:	a342      	st.b      	r2, (r3, 0x2)
  4e:	3204      	movi      	r2, 4
  50:	a343      	st.b      	r2, (r3, 0x3)
  52:	2303      	addi      	r3, 4
  54:	e4412040 	andi      	r2, r1, 64
  58:	e902000c 	bez      	r2, 0x70	// 70 <rsn_cipher_put_suites+0x70>
  5c:	3200      	movi      	r2, 0
  5e:	a340      	st.b      	r2, (r3, 0x0)
  60:	320f      	movi      	r2, 15
  62:	a341      	st.b      	r2, (r3, 0x1)
  64:	3200      	movi      	r2, 0
  66:	2a53      	subi      	r2, 84
  68:	a342      	st.b      	r2, (r3, 0x2)
  6a:	3208      	movi      	r2, 8
  6c:	a343      	st.b      	r2, (r3, 0x3)
  6e:	2303      	addi      	r3, 4
  70:	e4412008 	andi      	r2, r1, 8
  74:	e902000c 	bez      	r2, 0x8c	// 8c <rsn_cipher_put_suites+0x8c>
  78:	3200      	movi      	r2, 0
  7a:	a340      	st.b      	r2, (r3, 0x0)
  7c:	320f      	movi      	r2, 15
  7e:	a341      	st.b      	r2, (r3, 0x1)
  80:	3200      	movi      	r2, 0
  82:	2a53      	subi      	r2, 84
  84:	a342      	st.b      	r2, (r3, 0x2)
  86:	3202      	movi      	r2, 2
  88:	a343      	st.b      	r2, (r3, 0x3)
  8a:	2303      	addi      	r3, 4
  8c:	e4212001 	andi      	r1, r1, 1
  90:	e901000b 	bez      	r1, 0xa6	// a6 <rsn_cipher_put_suites+0xa6>
  94:	310f      	movi      	r1, 15
  96:	a321      	st.b      	r1, (r3, 0x1)
  98:	3100      	movi      	r1, 0
  9a:	3200      	movi      	r2, 0
  9c:	2953      	subi      	r1, 84
  9e:	a340      	st.b      	r2, (r3, 0x0)
  a0:	a322      	st.b      	r1, (r3, 0x2)
  a2:	a343      	st.b      	r2, (r3, 0x3)
  a4:	2303      	addi      	r3, 4
  a6:	5b01      	subu      	r0, r3, r0
  a8:	38df      	btsti      	r0, 31
  aa:	c4000c43 	inct      	r0, r0, 3
  ae:	5002      	asri      	r0, r0, 2
  b0:	783c      	jmp      	r15
  b2:	6cc3      	mov      	r3, r0
  b4:	07b4      	br      	0x1c	// 1c <rsn_cipher_put_suites+0x1c>

Disassembly of section .text.wpa_cipher_put_suites:

00000000 <wpa_cipher_put_suites>:
   0:	e4612010 	andi      	r3, r1, 16
   4:	e903002d 	bez      	r3, 0x5e	// 5e <wpa_cipher_put_suites+0x5e>
   8:	3300      	movi      	r3, 0
   a:	a060      	st.b      	r3, (r0, 0x0)
   c:	3350      	movi      	r3, 80
   e:	a061      	st.b      	r3, (r0, 0x1)
  10:	3300      	movi      	r3, 0
  12:	2b0d      	subi      	r3, 14
  14:	a062      	st.b      	r3, (r0, 0x2)
  16:	3304      	movi      	r3, 4
  18:	a063      	st.b      	r3, (r0, 0x3)
  1a:	586e      	addi      	r3, r0, 4
  1c:	e4412008 	andi      	r2, r1, 8
  20:	e902000c 	bez      	r2, 0x38	// 38 <wpa_cipher_put_suites+0x38>
  24:	3200      	movi      	r2, 0
  26:	a340      	st.b      	r2, (r3, 0x0)
  28:	3250      	movi      	r2, 80
  2a:	a341      	st.b      	r2, (r3, 0x1)
  2c:	3200      	movi      	r2, 0
  2e:	2a0d      	subi      	r2, 14
  30:	a342      	st.b      	r2, (r3, 0x2)
  32:	3202      	movi      	r2, 2
  34:	a343      	st.b      	r2, (r3, 0x3)
  36:	2303      	addi      	r3, 4
  38:	e4212001 	andi      	r1, r1, 1
  3c:	e901000b 	bez      	r1, 0x52	// 52 <wpa_cipher_put_suites+0x52>
  40:	3150      	movi      	r1, 80
  42:	a321      	st.b      	r1, (r3, 0x1)
  44:	3100      	movi      	r1, 0
  46:	3200      	movi      	r2, 0
  48:	290d      	subi      	r1, 14
  4a:	a340      	st.b      	r2, (r3, 0x0)
  4c:	a322      	st.b      	r1, (r3, 0x2)
  4e:	a343      	st.b      	r2, (r3, 0x3)
  50:	2303      	addi      	r3, 4
  52:	5b01      	subu      	r0, r3, r0
  54:	38df      	btsti      	r0, 31
  56:	c4000c43 	inct      	r0, r0, 3
  5a:	5002      	asri      	r0, r0, 2
  5c:	783c      	jmp      	r15
  5e:	6cc3      	mov      	r3, r0
  60:	07de      	br      	0x1c	// 1c <wpa_cipher_put_suites+0x1c>

Disassembly of section .text.wpa_pick_pairwise_cipher:

00000000 <wpa_pick_pairwise_cipher>:
   0:	e4602200 	andi      	r3, r0, 512
   4:	e923001d 	bnez      	r3, 0x3e	// 3e <wpa_pick_pairwise_cipher+0x3e>
   8:	e4602100 	andi      	r3, r0, 256
   c:	e923001c 	bnez      	r3, 0x44	// 44 <wpa_pick_pairwise_cipher+0x44>
  10:	e4602010 	andi      	r3, r0, 16
  14:	e923001b 	bnez      	r3, 0x4a	// 4a <wpa_pick_pairwise_cipher+0x4a>
  18:	e4602040 	andi      	r3, r0, 64
  1c:	e9230019 	bnez      	r3, 0x4e	// 4e <wpa_pick_pairwise_cipher+0x4e>
  20:	e4602008 	andi      	r3, r0, 8
  24:	e9230017 	bnez      	r3, 0x52	// 52 <wpa_pick_pairwise_cipher+0x52>
  28:	e9010017 	bez      	r1, 0x56	// 56 <wpa_pick_pairwise_cipher+0x56>
  2c:	e4602001 	andi      	r3, r0, 1
  30:	3000      	movi      	r0, 0
  32:	3b40      	cmpnei      	r3, 0
  34:	2800      	subi      	r0, 1
  36:	3301      	movi      	r3, 1
  38:	c4030c40 	inct      	r0, r3, 0
  3c:	783c      	jmp      	r15
  3e:	3080      	movi      	r0, 128
  40:	4002      	lsli      	r0, r0, 2
  42:	07fd      	br      	0x3c	// 3c <wpa_pick_pairwise_cipher+0x3c>
  44:	3080      	movi      	r0, 128
  46:	4001      	lsli      	r0, r0, 1
  48:	07fa      	br      	0x3c	// 3c <wpa_pick_pairwise_cipher+0x3c>
  4a:	3010      	movi      	r0, 16
  4c:	07f8      	br      	0x3c	// 3c <wpa_pick_pairwise_cipher+0x3c>
  4e:	3040      	movi      	r0, 64
  50:	07f6      	br      	0x3c	// 3c <wpa_pick_pairwise_cipher+0x3c>
  52:	3008      	movi      	r0, 8
  54:	07f4      	br      	0x3c	// 3c <wpa_pick_pairwise_cipher+0x3c>
  56:	3000      	movi      	r0, 0
  58:	2800      	subi      	r0, 1
  5a:	07f1      	br      	0x3c	// 3c <wpa_pick_pairwise_cipher+0x3c>

Disassembly of section .text.wpa_pick_group_cipher:

00000000 <wpa_pick_group_cipher>:
   0:	e4602200 	andi      	r3, r0, 512
   4:	e923001d 	bnez      	r3, 0x3e	// 3e <wpa_pick_group_cipher+0x3e>
   8:	e4602100 	andi      	r3, r0, 256
   c:	e923001c 	bnez      	r3, 0x44	// 44 <wpa_pick_group_cipher+0x44>
  10:	e4602010 	andi      	r3, r0, 16
  14:	e923001b 	bnez      	r3, 0x4a	// 4a <wpa_pick_group_cipher+0x4a>
  18:	e4602040 	andi      	r3, r0, 64
  1c:	e9230019 	bnez      	r3, 0x4e	// 4e <wpa_pick_group_cipher+0x4e>
  20:	3380      	movi      	r3, 128
  22:	4367      	lsli      	r3, r3, 7
  24:	c4602022 	and      	r2, r0, r3
  28:	e9220015 	bnez      	r2, 0x52	// 52 <wpa_pick_group_cipher+0x52>
  2c:	e4002008 	andi      	r0, r0, 8
  30:	3300      	movi      	r3, 0
  32:	3840      	cmpnei      	r0, 0
  34:	2b00      	subi      	r3, 1
  36:	3008      	movi      	r0, 8
  38:	c4030c20 	incf      	r0, r3, 0
  3c:	783c      	jmp      	r15
  3e:	3080      	movi      	r0, 128
  40:	4002      	lsli      	r0, r0, 2
  42:	07fd      	br      	0x3c	// 3c <wpa_pick_group_cipher+0x3c>
  44:	3080      	movi      	r0, 128
  46:	4001      	lsli      	r0, r0, 1
  48:	07fa      	br      	0x3c	// 3c <wpa_pick_group_cipher+0x3c>
  4a:	3010      	movi      	r0, 16
  4c:	07f8      	br      	0x3c	// 3c <wpa_pick_group_cipher+0x3c>
  4e:	3040      	movi      	r0, 64
  50:	07f6      	br      	0x3c	// 3c <wpa_pick_group_cipher+0x3c>
  52:	6c0f      	mov      	r0, r3
  54:	07f4      	br      	0x3c	// 3c <wpa_pick_group_cipher+0x3c>

Disassembly of section .text.wpa_ether_send:

00000000 <wpa_ether_send>:
   0:	14d0      	push      	r15
   2:	1421      	subi      	r14, r14, 4
   4:	d98e2002 	ld.w      	r12, (r14, 0x8)
   8:	dd8e2000 	st.w      	r12, (r14, 0x0)
   c:	e0000000 	bsr      	0x0	// 0 <ieee80211_ether_send>
  10:	1401      	addi      	r14, r14, 4
  12:	1490      	pop      	r15

Disassembly of section .text.wpa_get_ntp_timestamp:

00000000 <wpa_get_ntp_timestamp>:
   0:	14d4      	push      	r4-r7, r15
   2:	1423      	subi      	r14, r14, 12
   4:	6d83      	mov      	r6, r0
   6:	34fa      	movi      	r4, 250
   8:	1801      	addi      	r0, r14, 4
   a:	e0000000 	bsr      	0x0	// 0 <os_systime>
   e:	4482      	lsli      	r4, r4, 2
  10:	9862      	ld.w      	r3, (r14, 0x8)
  12:	c4838043 	divs      	r3, r3, r4
  16:	ea0410c7 	movi      	r4, 4295
  1a:	4b45      	lsri      	r2, r3, 5
  1c:	7d0c      	mult      	r4, r3
  1e:	4ba9      	lsri      	r5, r3, 9
  20:	610a      	subu      	r4, r2
  22:	9861      	ld.w      	r3, (r14, 0x4)
  24:	104a      	lrw      	r2, 0x83aa7e80	// 4c <wpa_get_ntp_timestamp+0x4c>
  26:	3704      	movi      	r7, 4
  28:	60c8      	addu      	r3, r2
  2a:	78ce      	revb      	r3, r3
  2c:	6c9f      	mov      	r2, r7
  2e:	6c7b      	mov      	r1, r14
  30:	6c1b      	mov      	r0, r6
  32:	6116      	subu      	r4, r5
  34:	b860      	st.w      	r3, (r14, 0x0)
  36:	7912      	revb      	r4, r4
  38:	e0000000 	bsr      	0x0	// 0 <memcpy>
  3c:	6c9f      	mov      	r2, r7
  3e:	6c7b      	mov      	r1, r14
  40:	5e1c      	addu      	r0, r6, r7
  42:	b880      	st.w      	r4, (r14, 0x0)
  44:	e0000000 	bsr      	0x0	// 0 <memcpy>
  48:	1403      	addi      	r14, r14, 12
  4a:	1494      	pop      	r4-r7, r15
  4c:	83aa7e80 	.long	0x83aa7e80

Disassembly of section .text.get_ie:

00000000 <get_ie>:
   0:	e900000d 	bez      	r0, 0x1a	// 1a <get_ie+0x1a>
   4:	6040      	addu      	r1, r0
   6:	5961      	subu      	r3, r1, r0
   8:	3b21      	cmplti      	r3, 2
   a:	0807      	bt      	0x18	// 18 <get_ie+0x18>
   c:	d9800001 	ld.b      	r12, (r0, 0x1)
  10:	e5ac0000 	addi      	r13, r12, 1
  14:	64f5      	cmplt      	r13, r3
  16:	0803      	bt      	0x1c	// 1c <get_ie+0x1c>
  18:	3000      	movi      	r0, 0
  1a:	783c      	jmp      	r15
  1c:	8060      	ld.b      	r3, (r0, 0x0)
  1e:	648e      	cmpne      	r3, r2
  20:	0ffd      	bf      	0x1a	// 1a <get_ie+0x1a>
  22:	2001      	addi      	r0, 2
  24:	6030      	addu      	r0, r12
  26:	07f0      	br      	0x6	// 6 <get_ie+0x6>

Disassembly of section .text.ieee802_11_ie_count:

00000000 <ieee802_11_ie_count>:
   0:	e900000e 	bez      	r0, 0x1c	// 1c <ieee802_11_ie_count+0x1c>
   4:	6cc3      	mov      	r3, r0
   6:	604c      	addu      	r1, r3
   8:	3000      	movi      	r0, 0
   a:	594d      	subu      	r2, r1, r3
   c:	3a21      	cmplti      	r2, 2
   e:	0807      	bt      	0x1c	// 1c <ieee802_11_ie_count+0x1c>
  10:	d9830001 	ld.b      	r12, (r3, 0x1)
  14:	e5ac0000 	addi      	r13, r12, 1
  18:	64b5      	cmplt      	r13, r2
  1a:	0802      	bt      	0x1e	// 1e <ieee802_11_ie_count+0x1e>
  1c:	783c      	jmp      	r15
  1e:	2301      	addi      	r3, 2
  20:	2000      	addi      	r0, 1
  22:	60f0      	addu      	r3, r12
  24:	07f3      	br      	0xa	// a <ieee802_11_ie_count+0xa>
