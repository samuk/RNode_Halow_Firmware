
libwifi/o/wpa_auth_wpa_auth.o:     file format elf32-csky-little


Disassembly of section .text.wpa_auth_set_eapol:

00000000 <wpa_auth_set_eapol>:
   0:	14d0      	push      	r15
   2:	d9802023 	ld.w      	r12, (r0, 0x8c)
   6:	d98c2004 	ld.w      	r12, (r12, 0x10)
   a:	e90c0005 	bez      	r12, 0x14	// 14 <wpa_auth_set_eapol+0x14>
   e:	d8002024 	ld.w      	r0, (r0, 0x90)
  12:	7bf1      	jsr      	r12
  14:	1490      	pop      	r15

Disassembly of section .text.wpa_auth_get_psk:

00000000 <wpa_auth_get_psk>:
   0:	14d1      	push      	r4, r15
   2:	1422      	subi      	r14, r14, 8
   4:	d98e2005 	ld.w      	r12, (r14, 0x14)
   8:	6d33      	mov      	r4, r12
   a:	d9802023 	ld.w      	r12, (r0, 0x8c)
   e:	d9ae2004 	ld.w      	r13, (r14, 0x10)
  12:	d98c2006 	ld.w      	r12, (r12, 0x18)
  16:	e90c000a 	bez      	r12, 0x2a	// 2a <wpa_auth_get_psk+0x2a>
  1a:	d8002024 	ld.w      	r0, (r0, 0x90)
  1e:	b881      	st.w      	r4, (r14, 0x4)
  20:	ddae2000 	st.w      	r13, (r14, 0x0)
  24:	7bf1      	jsr      	r12
  26:	1402      	addi      	r14, r14, 8
  28:	1491      	pop      	r4, r15
  2a:	6c33      	mov      	r0, r12
  2c:	07fd      	br      	0x26	// 26 <wpa_auth_get_psk+0x26>

Disassembly of section .text.wpa_sta_disconnect:

00000000 <wpa_sta_disconnect>:
   0:	14d0      	push      	r15
   2:	d8602023 	ld.w      	r3, (r0, 0x8c)
   6:	9361      	ld.w      	r3, (r3, 0x4)
   8:	e9030005 	bez      	r3, 0x12	// 12 <wpa_sta_disconnect+0x12>
   c:	d8002024 	ld.w      	r0, (r0, 0x90)
  10:	7bcd      	jsr      	r3
  12:	1490      	pop      	r15

Disassembly of section .text.wpa_auth_pmksa_clear_cb:

00000000 <wpa_auth_pmksa_clear_cb>:
   0:	d86020b8 	ld.w      	r3, (r0, 0x2e0)
   4:	644e      	cmpne      	r3, r1
   6:	0804      	bt      	0xe	// e <wpa_auth_pmksa_clear_cb+0xe>
   8:	3300      	movi      	r3, 0
   a:	dc6020b8 	st.w      	r3, (r0, 0x2e0)
   e:	3000      	movi      	r0, 0
  10:	783c      	jmp      	r15

Disassembly of section .text.wpa_group_disconnect_cb:

00000000 <wpa_group_disconnect_cb>:
   0:	9061      	ld.w      	r3, (r0, 0x4)
   2:	644e      	cmpne      	r3, r1
   4:	0803      	bt      	0xa	// a <wpa_group_disconnect_cb+0xa>
   6:	3301      	movi      	r3, 1
   8:	b06c      	st.w      	r3, (r0, 0x30)
   a:	3000      	movi      	r0, 0
   c:	783c      	jmp      	r15

Disassembly of section .text.wpa_group_init_gmk_and_counter:

00000000 <wpa_group_init_gmk_and_counter>:
   0:	14d2      	push      	r4-r5, r15
   2:	1431      	subi      	r14, r14, 68
   4:	6d07      	mov      	r4, r1
   6:	6d43      	mov      	r5, r0
   8:	3120      	movi      	r1, 32
   a:	e4040047 	addi      	r0, r4, 72
   e:	e0000000 	bsr      	0x0	// 0 <os_random_bytes>
  12:	e9a00006 	bhsz      	r0, 0x1e	// 1e <wpa_group_init_gmk_and_counter+0x1e>
  16:	3000      	movi      	r0, 0
  18:	2800      	subi      	r0, 1
  1a:	1411      	addi      	r14, r14, 68
  1c:	1492      	pop      	r4-r5, r15
  1e:	e425009b 	addi      	r1, r5, 156
  22:	3206      	movi      	r2, 6
  24:	1804      	addi      	r0, r14, 16
  26:	e0000000 	bsr      	0x0	// 0 <memcpy>
  2a:	e40e0015 	addi      	r0, r14, 22
  2e:	e0000000 	bsr      	0x0	// 0 <wpa_get_ntp_timestamp>
  32:	b883      	st.w      	r4, (r14, 0xc)
  34:	d86e1007 	ld.h      	r3, (r14, 0xe)
  38:	3120      	movi      	r1, 32
  3a:	1809      	addi      	r0, r14, 36
  3c:	dc8e100f 	st.h      	r4, (r14, 0x1e)
  40:	dc6e1010 	st.h      	r3, (r14, 0x20)
  44:	e0000000 	bsr      	0x0	// 0 <os_random_bytes>
  48:	e980ffe7 	blz      	r0, 0x16	// 16 <wpa_group_init_gmk_and_counter+0x16>
  4c:	3120      	movi      	r1, 32
  4e:	3312      	movi      	r3, 18
  50:	2423      	addi      	r4, 36
  52:	b860      	st.w      	r3, (r14, 0x0)
  54:	b822      	st.w      	r1, (r14, 0x8)
  56:	b881      	st.w      	r4, (r14, 0x4)
  58:	1b04      	addi      	r3, r14, 16
  5a:	1044      	lrw      	r2, 0x0	// 68 <wpa_group_init_gmk_and_counter+0x68>
  5c:	1809      	addi      	r0, r14, 36
  5e:	e0000000 	bsr      	0x0	// 0 <sha1_prf>
  62:	501f      	asri      	r0, r0, 31
  64:	07db      	br      	0x1a	// 1a <wpa_group_init_gmk_and_counter+0x1a>
  66:	0000      	.short	0x0000
  68:	00000000 	.long	0x00000000

Disassembly of section .text.wpa_verify_key_mic:

00000000 <wpa_verify_key_mic>:
   0:	14d7      	push      	r4-r10, r15
   2:	142b      	subi      	r14, r14, 44
   4:	d90e2013 	ld.w      	r8, (r14, 0x4c)
   8:	6e43      	mov      	r9, r0
   a:	6e8b      	mov      	r10, r2
   c:	6dcf      	mov      	r7, r3
   e:	e0000000 	bsr      	0x0	// 0 <wpa_mic_len>
  12:	eb080050 	cmphsi      	r8, 81
  16:	6d83      	mov      	r6, r0
  18:	0c34      	bf      	0x80	// 80 <wpa_verify_key_mic+0x80>
  1a:	e4a70050 	addi      	r5, r7, 81
  1e:	8785      	ld.b      	r4, (r7, 0x5)
  20:	8766      	ld.b      	r3, (r7, 0x6)
  22:	6c83      	mov      	r2, r0
  24:	6c57      	mov      	r1, r5
  26:	4488      	lsli      	r4, r4, 8
  28:	1803      	addi      	r0, r14, 12
  2a:	6d0c      	or      	r4, r3
  2c:	e0000000 	bsr      	0x0	// 0 <memcpy>
  30:	6c9b      	mov      	r2, r6
  32:	3100      	movi      	r1, 0
  34:	6c17      	mov      	r0, r5
  36:	e0000000 	bsr      	0x0	// 0 <memset>
  3a:	e4642007 	andi      	r3, r4, 7
  3e:	b8a2      	st.w      	r5, (r14, 0x8)
  40:	dd0e2001 	st.w      	r8, (r14, 0x4)
  44:	b8e0      	st.w      	r7, (r14, 0x0)
  46:	6ca7      	mov      	r2, r9
  48:	d82a2040 	ld.w      	r1, (r10, 0x100)
  4c:	6c2b      	mov      	r0, r10
  4e:	e0000000 	bsr      	0x0	// 0 <wpa_eapol_key_mic>
  52:	6d03      	mov      	r4, r0
  54:	e9200013 	bnez      	r0, 0x7a	// 7a <wpa_verify_key_mic+0x7a>
  58:	6c9b      	mov      	r2, r6
  5a:	6c57      	mov      	r1, r5
  5c:	1803      	addi      	r0, r14, 12
  5e:	e0000000 	bsr      	0x0	// 0 <memcmp>
  62:	3840      	cmpnei      	r0, 0
  64:	c4000503 	mvc      	r3
  68:	610e      	subu      	r4, r3
  6a:	6c9b      	mov      	r2, r6
  6c:	1903      	addi      	r1, r14, 12
  6e:	6c17      	mov      	r0, r5
  70:	e0000000 	bsr      	0x0	// 0 <memcpy>
  74:	6c13      	mov      	r0, r4
  76:	140b      	addi      	r14, r14, 44
  78:	1497      	pop      	r4-r10, r15
  7a:	3400      	movi      	r4, 0
  7c:	2c00      	subi      	r4, 1
  7e:	07f6      	br      	0x6a	// 6a <wpa_verify_key_mic+0x6a>
  80:	3400      	movi      	r4, 0
  82:	2c00      	subi      	r4, 1
  84:	07f8      	br      	0x74	// 74 <wpa_verify_key_mic+0x74>

Disassembly of section .text.wpa_replay_counter_valid:

00000000 <wpa_replay_counter_valid>:
   0:	14d3      	push      	r4-r6, r15
   2:	6d87      	mov      	r6, r1
   4:	6d03      	mov      	r4, r0
   6:	e4a0002f 	addi      	r5, r0, 48
   a:	9402      	ld.w      	r0, (r4, 0x8)
   c:	e900000d 	bez      	r0, 0x26	// 26 <wpa_replay_counter_valid+0x26>
  10:	3208      	movi      	r2, 8
  12:	6c53      	mov      	r1, r4
  14:	6c1b      	mov      	r0, r6
  16:	e0000000 	bsr      	0x0	// 0 <memcmp>
  1a:	e9000007 	bez      	r0, 0x28	// 28 <wpa_replay_counter_valid+0x28>
  1e:	240b      	addi      	r4, 12
  20:	6552      	cmpne      	r4, r5
  22:	0bf4      	bt      	0xa	// a <wpa_replay_counter_valid+0xa>
  24:	3000      	movi      	r0, 0
  26:	1493      	pop      	r4-r6, r15
  28:	3001      	movi      	r0, 1
  2a:	07fe      	br      	0x26	// 26 <wpa_replay_counter_valid+0x26>

Disassembly of section .text.wpa_group_put.isra.6:

00000000 <wpa_group_put.isra.6>:
   0:	14d0      	push      	r15
   2:	6406      	cmpne      	r1, r0
   4:	0c12      	bf      	0x28	// 28 <wpa_group_put.isra.6+0x28>
   6:	d8612035 	ld.w      	r3, (r1, 0xd4)
   a:	2b00      	subi      	r3, 1
   c:	dc612035 	st.w      	r3, (r1, 0xd4)
  10:	e923000c 	bnez      	r3, 0x28	// 28 <wpa_group_put.isra.6+0x28>
  14:	e900000a 	bez      	r0, 0x28	// 28 <wpa_group_put.isra.6+0x28>
  18:	9060      	ld.w      	r3, (r0, 0x0)
  1a:	64c6      	cmpne      	r1, r3
  1c:	0807      	bt      	0x2a	// 2a <wpa_group_put.isra.6+0x2a>
  1e:	9160      	ld.w      	r3, (r1, 0x0)
  20:	b060      	st.w      	r3, (r0, 0x0)
  22:	6c07      	mov      	r0, r1
  24:	e0000000 	bsr      	0x0	// 0 <_os_free>
  28:	1490      	pop      	r15
  2a:	6c0f      	mov      	r0, r3
  2c:	07f4      	br      	0x14	// 14 <wpa_group_put.isra.6+0x14>

Disassembly of section .text.wpa_free_sta_sm:

00000000 <wpa_free_sta_sm>:
   0:	14d2      	push      	r4-r5, r15
   2:	9075      	ld.w      	r3, (r0, 0x54)
   4:	6d03      	mov      	r4, r0
   6:	e9030008 	bez      	r3, 0x16	// 16 <wpa_free_sta_sm+0x16>
   a:	9041      	ld.w      	r2, (r0, 0x4)
   c:	9263      	ld.w      	r3, (r2, 0xc)
   e:	2b00      	subi      	r3, 1
  10:	b263      	st.w      	r3, (r2, 0xc)
  12:	3300      	movi      	r3, 0
  14:	b075      	st.w      	r3, (r0, 0x54)
  16:	d80420ad 	ld.w      	r0, (r4, 0x2b4)
  1a:	3500      	movi      	r5, 0
  1c:	e0000000 	bsr      	0x0	// 0 <_os_free>
  20:	d80420b3 	ld.w      	r0, (r4, 0x2cc)
  24:	dca420ad 	st.w      	r5, (r4, 0x2b4)
  28:	e0000000 	bsr      	0x0	// 0 <_os_free>
  2c:	9460      	ld.w      	r3, (r4, 0x0)
  2e:	9421      	ld.w      	r1, (r4, 0x4)
  30:	9300      	ld.w      	r0, (r3, 0x0)
  32:	dca420b3 	st.w      	r5, (r4, 0x2cc)
  36:	e0000000 	bsr      	0x0	// 0 <wpa_free_sta_sm>
  3a:	6c13      	mov      	r0, r4
  3c:	e0000000 	bsr      	0x0	// 0 <_os_free>
  40:	1492      	pop      	r4-r5, r15

Disassembly of section .text.sm_WPA_PTK_INITPMK_Enter.constprop.18:

00000000 <sm_WPA_PTK_INITPMK_Enter.constprop.18>:
   0:	14d3      	push      	r4-r6, r15
   2:	1431      	subi      	r14, r14, 68
   4:	3340      	movi      	r3, 64
   6:	b860      	st.w      	r3, (r14, 0x0)
   8:	3201      	movi      	r2, 1
   a:	d86002bc 	ld.b      	r3, (r0, 0x2bc)
   e:	c4625c00 	ins      	r3, r2, 0, 0
  12:	d82020b8 	ld.w      	r1, (r0, 0x2e0)
  16:	dc6002bc 	st.b      	r3, (r0, 0x2bc)
  1a:	3305      	movi      	r3, 5
  1c:	6d03      	mov      	r4, r0
  1e:	b066      	st.w      	r3, (r0, 0x18)
  20:	58de      	addi      	r6, r0, 8
  22:	e9010015 	bez      	r1, 0x4c	// 4c <sm_WPA_PTK_INITPMK_Enter.constprop.18+0x4c>
  26:	9156      	ld.w      	r2, (r1, 0x58)
  28:	20bf      	addi      	r0, 192
  2a:	2117      	addi      	r1, 24
  2c:	e0000000 	bsr      	0x0	// 0 <memcpy>
  30:	d86420b8 	ld.w      	r3, (r4, 0x2e0)
  34:	9376      	ld.w      	r3, (r3, 0x58)
  36:	dc642040 	st.w      	r3, (r4, 0x100)
  3a:	3300      	movi      	r3, 0
  3c:	dc6420b2 	st.w      	r3, (r4, 0x2c8)
  40:	3204      	movi      	r2, 4
  42:	6c5b      	mov      	r1, r6
  44:	9400      	ld.w      	r0, (r4, 0x0)
  46:	e0000000 	bsr      	0x0	// 0 <sm_WPA_PTK_INITPMK_Enter.constprop.18>
  4a:	041f      	br      	0x88	// 88 <sm_WPA_PTK_INITPMK_Enter.constprop.18+0x88>
  4c:	9000      	ld.w      	r0, (r0, 0x0)
  4e:	d8602023 	ld.w      	r3, (r0, 0x8c)
  52:	d9832007 	ld.w      	r12, (r3, 0x1c)
  56:	e90c0017 	bez      	r12, 0x84	// 84 <sm_WPA_PTK_INITPMK_Enter.constprop.18+0x84>
  5a:	6cfb      	mov      	r3, r14
  5c:	1a01      	addi      	r2, r14, 4
  5e:	6c5b      	mov      	r1, r6
  60:	d8002024 	ld.w      	r0, (r0, 0x90)
  64:	7bf1      	jsr      	r12
  66:	e920000f 	bnez      	r0, 0x84	// 84 <sm_WPA_PTK_INITPMK_Enter.constprop.18+0x84>
  6a:	3295      	movi      	r2, 149
  6c:	d86420b7 	ld.w      	r3, (r4, 0x2dc)
  70:	4251      	lsli      	r2, r2, 17
  72:	68c8      	and      	r3, r2
  74:	3b40      	cmpnei      	r3, 0
  76:	3530      	movi      	r5, 48
  78:	3320      	movi      	r3, 32
  7a:	c4a30c20 	incf      	r5, r3, 0
  7e:	9860      	ld.w      	r3, (r14, 0x0)
  80:	654c      	cmphs      	r3, r5
  82:	0805      	bt      	0x8c	// 8c <sm_WPA_PTK_INITPMK_Enter.constprop.18+0x8c>
  84:	3301      	movi      	r3, 1
  86:	b46c      	st.w      	r3, (r4, 0x30)
  88:	1411      	addi      	r14, r14, 68
  8a:	1493      	pop      	r4-r6, r15
  8c:	6c97      	mov      	r2, r5
  8e:	1901      	addi      	r1, r14, 4
  90:	e40400bf 	addi      	r0, r4, 192
  94:	e0000000 	bsr      	0x0	// 0 <memcpy>
  98:	dca42040 	st.w      	r5, (r4, 0x100)
  9c:	07cf      	br      	0x3a	// 3a <sm_WPA_PTK_INITPMK_Enter.constprop.18+0x3a>

Disassembly of section .text.sm_WPA_PTK_DISCONNECT_Enter.constprop.22:

00000000 <sm_WPA_PTK_DISCONNECT_Enter.constprop.22>:
   0:	14d0      	push      	r15
   2:	d82002bc 	ld.b      	r1, (r0, 0x2bc)
   6:	3201      	movi      	r2, 1
   8:	887a      	ld.h      	r3, (r0, 0x34)
   a:	c4225c00 	ins      	r1, r2, 0, 0
   e:	b046      	st.w      	r2, (r0, 0x18)
  10:	3200      	movi      	r2, 0
  12:	b04c      	st.w      	r2, (r0, 0x30)
  14:	a85a      	st.h      	r2, (r0, 0x34)
  16:	3b40      	cmpnei      	r3, 0
  18:	320f      	movi      	r2, 15
  1a:	dc2002bc 	st.b      	r1, (r0, 0x2bc)
  1e:	c4430c40 	inct      	r2, r3, 0
  22:	583e      	addi      	r1, r0, 8
  24:	9000      	ld.w      	r0, (r0, 0x0)
  26:	e0000000 	bsr      	0x0	// 0 <sm_WPA_PTK_DISCONNECT_Enter.constprop.22>
  2a:	1490      	pop      	r15

Disassembly of section .text.wpa_gtk_update:

00000000 <wpa_gtk_update>:
   0:	14d7      	push      	r4-r10, r15
   2:	1423      	subi      	r14, r14, 12
   4:	e4c10023 	addi      	r6, r1, 36
   8:	e50100a7 	addi      	r8, r1, 168
   c:	6d47      	mov      	r5, r1
   e:	3220      	movi      	r2, 32
  10:	6c5b      	mov      	r1, r6
  12:	6e43      	mov      	r9, r0
  14:	6c23      	mov      	r0, r8
  16:	e0000000 	bsr      	0x0	// 0 <memcpy>
  1a:	6c1b      	mov      	r0, r6
  1c:	3120      	movi      	r1, 32
  1e:	e0000000 	bsr      	0x0	// 0 <inc_byte_array>
  22:	9586      	ld.w      	r4, (r5, 0x18)
  24:	304e      	movi      	r0, 78
  26:	4485      	lsli      	r4, r4, 5
  28:	d9452005 	ld.w      	r10, (r5, 0x14)
  2c:	e0000000 	bsr      	0x0	// 0 <malloc>
  30:	2447      	addi      	r4, 72
  32:	e4e50047 	addi      	r7, r5, 72
  36:	e529009b 	addi      	r9, r9, 156
  3a:	6114      	addu      	r4, r5
  3c:	6d83      	mov      	r6, r0
  3e:	e9000031 	bez      	r0, 0xa0	// a0 <wpa_gtk_update+0xa0>
  42:	3206      	movi      	r2, 6
  44:	6c67      	mov      	r1, r9
  46:	e0000000 	bsr      	0x0	// 0 <memcpy>
  4a:	3220      	movi      	r2, 32
  4c:	6c63      	mov      	r1, r8
  4e:	5e16      	addi      	r0, r6, 6
  50:	e0000000 	bsr      	0x0	// 0 <memcpy>
  54:	e4060025 	addi      	r0, r6, 38
  58:	e0000000 	bsr      	0x0	// 0 <wpa_get_ntp_timestamp>
  5c:	6c6b      	mov      	r1, r10
  5e:	e406002d 	addi      	r0, r6, 46
  62:	e0000000 	bsr      	0x0	// 0 <os_random_bytes>
  66:	3304      	movi      	r3, 4
  68:	6d43      	mov      	r5, r0
  6a:	b860      	st.w      	r3, (r14, 0x0)
  6c:	dd4e2002 	st.w      	r10, (r14, 0x8)
  70:	b881      	st.w      	r4, (r14, 0x4)
  72:	6cdb      	mov      	r3, r6
  74:	104d      	lrw      	r2, 0x0	// a8 <wpa_gtk_update+0xa8>
  76:	3120      	movi      	r1, 32
  78:	6c1f      	mov      	r0, r7
  7a:	e0000000 	bsr      	0x0	// 0 <sha1_prf>
  7e:	e980000e 	blz      	r0, 0x9a	// 9a <wpa_gtk_update+0x9a>
  82:	55bf      	asri      	r5, r5, 31
  84:	6c1b      	mov      	r0, r6
  86:	e0000000 	bsr      	0x0	// 0 <free>
  8a:	3300      	movi      	r3, 0
  8c:	2b00      	subi      	r3, 1
  8e:	64d6      	cmpne      	r5, r3
  90:	64c3      	mvcv      	r3
  92:	3000      	movi      	r0, 0
  94:	600e      	subu      	r0, r3
  96:	1403      	addi      	r14, r14, 12
  98:	1497      	pop      	r4-r10, r15
  9a:	3500      	movi      	r5, 0
  9c:	2d00      	subi      	r5, 1
  9e:	07f3      	br      	0x84	// 84 <wpa_gtk_update+0x84>
  a0:	3000      	movi      	r0, 0
  a2:	2800      	subi      	r0, 1
  a4:	07f9      	br      	0x96	// 96 <wpa_gtk_update+0x96>
  a6:	0000      	.short	0x0000
  a8:	00000000 	.long	0x00000000

Disassembly of section .text.wpa_group_gtk_init:

00000000 <wpa_group_gtk_init>:
   0:	14d2      	push      	r4-r5, r15
   2:	6d07      	mov      	r4, r1
   4:	3100      	movi      	r1, 0
   6:	6d43      	mov      	r5, r0
   8:	dc242032 	st.w      	r1, (r4, 0xc8)
   c:	b431      	st.w      	r1, (r4, 0x44)
   e:	3240      	movi      	r2, 64
  10:	e4040067 	addi      	r0, r4, 104
  14:	e0000000 	bsr      	0x0	// 0 <memset>
  18:	3301      	movi      	r3, 1
  1a:	b466      	st.w      	r3, (r4, 0x18)
  1c:	3302      	movi      	r3, 2
  1e:	b467      	st.w      	r3, (r4, 0x1c)
  20:	6c53      	mov      	r1, r4
  22:	6c17      	mov      	r0, r5
  24:	e0000000 	bsr      	0x0	// 0 <wpa_group_gtk_init>
  28:	1492      	pop      	r4-r5, r15

Disassembly of section .text.wpa_group_config_group_keys:

00000000 <wpa_group_config_group_keys>:
   0:	14d3      	push      	r4-r6, r15
   2:	1423      	subi      	r14, r14, 12
   4:	6d43      	mov      	r5, r0
   6:	9011      	ld.w      	r0, (r0, 0x44)
   8:	6d07      	mov      	r4, r1
   a:	91c1      	ld.w      	r6, (r1, 0x4)
   c:	e0000000 	bsr      	0x0	// 0 <wpa_cipher_to_alg>
  10:	6c83      	mov      	r2, r0
  12:	d8052023 	ld.w      	r0, (r5, 0x8c)
  16:	d9a42006 	ld.w      	r13, (r4, 0x18)
  1a:	c4ad4823 	lsli      	r3, r13, 5
  1e:	d9802008 	ld.w      	r12, (r0, 0x20)
  22:	2347      	addi      	r3, 72
  24:	60d0      	addu      	r3, r4
  26:	9425      	ld.w      	r1, (r4, 0x14)
  28:	e90c000e 	bez      	r12, 0x44	// 44 <wpa_group_config_group_keys+0x44>
  2c:	b822      	st.w      	r1, (r14, 0x8)
  2e:	b861      	st.w      	r3, (r14, 0x4)
  30:	d8052024 	ld.w      	r0, (r5, 0x90)
  34:	ddae2000 	st.w      	r13, (r14, 0x0)
  38:	6c5b      	mov      	r1, r6
  3a:	1065      	lrw      	r3, 0x0	// 4c <wpa_group_config_group_keys+0x4c>
  3c:	7bf1      	jsr      	r12
  3e:	501f      	asri      	r0, r0, 31
  40:	1403      	addi      	r14, r14, 12
  42:	1493      	pop      	r4-r6, r15
  44:	3000      	movi      	r0, 0
  46:	2800      	subi      	r0, 1
  48:	07fc      	br      	0x40	// 40 <wpa_group_config_group_keys+0x40>
  4a:	0000      	.short	0x0000
  4c:	0000      	.short	0x0000
	...

Disassembly of section .text.sm_WPA_PTK_AUTHENTICATION2_Enter.constprop.16:

00000000 <sm_WPA_PTK_AUTHENTICATION2_Enter.constprop.16>:
   0:	14d3      	push      	r4-r6, r15
   2:	d86002bc 	ld.b      	r3, (r0, 0x2bc)
   6:	3201      	movi      	r2, 1
   8:	c4625c00 	ins      	r3, r2, 0, 0
   c:	90a1      	ld.w      	r5, (r0, 0x4)
   e:	dc6002bc 	st.b      	r3, (r0, 0x2bc)
  12:	3304      	movi      	r3, 4
  14:	b066      	st.w      	r3, (r0, 0x18)
  16:	d8652033 	ld.w      	r3, (r5, 0xcc)
  1a:	6d03      	mov      	r4, r0
  1c:	e9230016 	bnez      	r3, 0x48	// 48 <sm_WPA_PTK_AUTHENTICATION2_Enter.constprop.16+0x48>
  20:	90c0      	ld.w      	r6, (r0, 0x0)
  22:	6c57      	mov      	r1, r5
  24:	dc452033 	st.w      	r2, (r5, 0xcc)
  28:	dc652034 	st.w      	r3, (r5, 0xd0)
  2c:	6c1b      	mov      	r0, r6
  2e:	e0000000 	bsr      	0x0	// 0 <sm_WPA_PTK_AUTHENTICATION2_Enter.constprop.16>
  32:	e9a0001a 	bhsz      	r0, 0x66	// 66 <sm_WPA_PTK_AUTHENTICATION2_Enter.constprop.16+0x66>
  36:	1014      	lrw      	r0, 0x0	// 84 <hgprintf+0x84>
  38:	e0000000 	bsr      	0x0	// 0 <hgprintf>
  3c:	3300      	movi      	r3, 0
  3e:	dc652033 	st.w      	r3, (r5, 0xcc)
  42:	3301      	movi      	r3, 1
  44:	dc652034 	st.w      	r3, (r5, 0xd0)
  48:	3300      	movi      	r3, 0
  4a:	b46b      	st.w      	r3, (r4, 0x2c)
  4c:	3120      	movi      	r1, 32
  4e:	e4040057 	addi      	r0, r4, 88
  52:	e0000000 	bsr      	0x0	// 0 <os_random_bytes>
  56:	e9000015 	bez      	r0, 0x80	// 80 <sm_WPA_PTK_AUTHENTICATION2_Enter.constprop.16+0x80>
  5a:	100c      	lrw      	r0, 0x0	// 88 <hgprintf+0x88>
  5c:	e0000000 	bsr      	0x0	// 0 <hgprintf>
  60:	3301      	movi      	r3, 1
  62:	b46c      	st.w      	r3, (r4, 0x30)
  64:	1493      	pop      	r4-r6, r15
  66:	6c57      	mov      	r1, r5
  68:	6c1b      	mov      	r0, r6
  6a:	e0000000 	bsr      	0x0	// 0 <sm_WPA_PTK_AUTHENTICATION2_Enter.constprop.16>
  6e:	e980ffe4 	blz      	r0, 0x36	// 36 <sm_WPA_PTK_AUTHENTICATION2_Enter.constprop.16+0x36>
  72:	6c57      	mov      	r1, r5
  74:	6c1b      	mov      	r0, r6
  76:	e0000000 	bsr      	0x0	// 0 <sm_WPA_PTK_AUTHENTICATION2_Enter.constprop.16>
  7a:	e9a0ffe7 	bhsz      	r0, 0x48	// 48 <sm_WPA_PTK_AUTHENTICATION2_Enter.constprop.16+0x48>
  7e:	07dc      	br      	0x36	// 36 <sm_WPA_PTK_AUTHENTICATION2_Enter.constprop.16+0x36>
  80:	b40e      	st.w      	r0, (r4, 0x38)
  82:	07f1      	br      	0x64	// 64 <sm_WPA_PTK_AUTHENTICATION2_Enter.constprop.16+0x64>
	...

Disassembly of section .text.wpa_auth_for_each_sta:

00000000 <wpa_auth_for_each_sta>:
   0:	14d0      	push      	r15
   2:	d8602023 	ld.w      	r3, (r0, 0x8c)
   6:	936b      	ld.w      	r3, (r3, 0x2c)
   8:	e9030006 	bez      	r3, 0x14	// 14 <wpa_auth_for_each_sta+0x14>
   c:	d8002024 	ld.w      	r0, (r0, 0x90)
  10:	7bcd      	jsr      	r3
  12:	1490      	pop      	r15
  14:	6c0f      	mov      	r0, r3
  16:	07fe      	br      	0x12	// 12 <wpa_auth_for_each_sta+0x12>

Disassembly of section .text.wpa_group_setkeys:

00000000 <wpa_group_setkeys>:
   0:	14d3      	push      	r4-r6, r15
   2:	3301      	movi      	r3, 1
   4:	9146      	ld.w      	r2, (r1, 0x18)
   6:	6d07      	mov      	r4, r1
   8:	dc612032 	st.w      	r3, (r1, 0xc8)
   c:	b171      	st.w      	r3, (r1, 0x44)
   e:	3500      	movi      	r5, 0
  10:	9167      	ld.w      	r3, (r1, 0x1c)
  12:	b166      	st.w      	r3, (r1, 0x18)
  14:	b1a4      	st.w      	r5, (r1, 0x10)
  16:	b147      	st.w      	r2, (r1, 0x1c)
  18:	6d83      	mov      	r6, r0
  1a:	e0000000 	bsr      	0x0	// 0 <wpa_group_setkeys>
  1e:	9463      	ld.w      	r3, (r4, 0xc)
  20:	e9030003 	bez      	r3, 0x26	// 26 <wpa_group_setkeys+0x26>
  24:	b4a3      	st.w      	r5, (r4, 0xc)
  26:	6c93      	mov      	r2, r4
  28:	1023      	lrw      	r1, 0x0	// 34 <wpa_group_setkeys+0x34>
  2a:	6c1b      	mov      	r0, r6
  2c:	e0000000 	bsr      	0x0	// 0 <wpa_group_setkeys>
  30:	1493      	pop      	r4-r6, r15
  32:	0000      	.short	0x0000
  34:	00000000 	.long	0x00000000

Disassembly of section .text.wpa_auth_pmksa_free_cb:

00000000 <wpa_auth_pmksa_free_cb>:
   0:	14d0      	push      	r15
   2:	6cc7      	mov      	r3, r1
   4:	6c83      	mov      	r2, r0
   6:	1023      	lrw      	r1, 0x0	// 10 <wpa_auth_pmksa_free_cb+0x10>
   8:	6c0f      	mov      	r0, r3
   a:	e0000000 	bsr      	0x0	// 0 <wpa_auth_pmksa_free_cb>
   e:	1490      	pop      	r15
  10:	00000000 	.long	0x00000000

Disassembly of section .text.wpa_group_sm_step:

00000000 <wpa_group_sm_step>:
   0:	14d3      	push      	r4-r6, r15
   2:	9162      	ld.w      	r3, (r1, 0x8)
   4:	6d43      	mov      	r5, r0
   6:	6d07      	mov      	r4, r1
   8:	e9030005 	bez      	r3, 0x12	// 12 <wpa_group_sm_step+0x12>
   c:	e0000000 	bsr      	0x0	// 0 <wpa_group_sm_step>
  10:	1493      	pop      	r4-r6, r15
  12:	9171      	ld.w      	r3, (r1, 0x44)
  14:	3b43      	cmpnei      	r3, 3
  16:	0ffd      	bf      	0x10	// 10 <wpa_group_sm_step+0x10>
  18:	e923001a 	bnez      	r3, 0x4c	// 4c <wpa_group_sm_step+0x4c>
  1c:	9168      	ld.w      	r3, (r1, 0x20)
  1e:	e903fff9 	bez      	r3, 0x10	// 10 <wpa_group_sm_step+0x10>
  22:	3601      	movi      	r6, 1
  24:	3302      	movi      	r3, 2
  26:	dcc42032 	st.w      	r6, (r4, 0xc8)
  2a:	b471      	st.w      	r3, (r4, 0x44)
  2c:	6c53      	mov      	r1, r4
  2e:	6c17      	mov      	r0, r5
  30:	e0000000 	bsr      	0x0	// 0 <wpa_group_sm_step>
  34:	e9a0ffee 	bhsz      	r0, 0x10	// 10 <wpa_group_sm_step+0x10>
  38:	3303      	movi      	r3, 3
  3a:	dcc42032 	st.w      	r6, (r4, 0xc8)
  3e:	b471      	st.w      	r3, (r4, 0x44)
  40:	6c93      	mov      	r2, r4
  42:	102b      	lrw      	r1, 0x0	// 6c <wpa_group_sm_step+0x6c>
  44:	6c17      	mov      	r0, r5
  46:	e0000000 	bsr      	0x0	// 0 <wpa_group_sm_step>
  4a:	07e3      	br      	0x10	// 10 <wpa_group_sm_step+0x10>
  4c:	3b42      	cmpnei      	r3, 2
  4e:	0809      	bt      	0x60	// 60 <wpa_group_sm_step+0x60>
  50:	9464      	ld.w      	r3, (r4, 0x10)
  52:	e903ffdf 	bez      	r3, 0x10	// 10 <wpa_group_sm_step+0x10>
  56:	6c53      	mov      	r1, r4
  58:	6c17      	mov      	r0, r5
  5a:	e0000000 	bsr      	0x0	// 0 <wpa_group_sm_step>
  5e:	07d9      	br      	0x10	// 10 <wpa_group_sm_step+0x10>
  60:	3b41      	cmpnei      	r3, 1
  62:	0bd7      	bt      	0x10	// 10 <wpa_group_sm_step+0x10>
  64:	9163      	ld.w      	r3, (r1, 0xc)
  66:	e923fff5 	bnez      	r3, 0x50	// 50 <wpa_group_sm_step+0x50>
  6a:	07dc      	br      	0x22	// 22 <wpa_group_sm_step+0x22>
  6c:	00000000 	.long	0x00000000

Disassembly of section .text.wpa_group_init:

00000000 <wpa_group_init>:
   0:	14d5      	push      	r4-r8, r15
   2:	6d43      	mov      	r5, r0
   4:	30dc      	movi      	r0, 220
   6:	6e07      	mov      	r8, r1
   8:	6d8b      	mov      	r6, r2
   a:	e0000000 	bsr      	0x0	// 0 <_os_zalloc>
   e:	6d03      	mov      	r4, r0
  10:	e9000017 	bez      	r0, 0x3e	// 3e <wpa_group_init+0x3e>
  14:	3701      	movi      	r7, 1
  16:	b0e8      	st.w      	r7, (r0, 0x20)
  18:	dd002001 	st.w      	r8, (r0, 0x4)
  1c:	9511      	ld.w      	r0, (r5, 0x44)
  1e:	e0000000 	bsr      	0x0	// 0 <wpa_cipher_key_len>
  22:	b405      	st.w      	r0, (r4, 0x14)
  24:	6c53      	mov      	r1, r4
  26:	6c17      	mov      	r0, r5
  28:	e0000000 	bsr      	0x0	// 0 <wpa_group_init>
  2c:	e9a0000b 	bhsz      	r0, 0x42	// 42 <wpa_group_init+0x42>
  30:	100b      	lrw      	r0, 0x0	// 5c <hgprintf+0x5c>
  32:	e0000000 	bsr      	0x0	// 0 <hgprintf>
  36:	6c13      	mov      	r0, r4
  38:	e0000000 	bsr      	0x0	// 0 <_os_free>
  3c:	3400      	movi      	r4, 0
  3e:	6c13      	mov      	r0, r4
  40:	1495      	pop      	r4-r8, r15
  42:	b4e2      	st.w      	r7, (r4, 0x8)
  44:	e926fffd 	bnez      	r6, 0x3e	// 3e <wpa_group_init+0x3e>
  48:	6c53      	mov      	r1, r4
  4a:	6c17      	mov      	r0, r5
  4c:	e0000000 	bsr      	0x0	// 0 <wpa_group_init>
  50:	b4c2      	st.w      	r6, (r4, 0x8)
  52:	6c53      	mov      	r1, r4
  54:	6c17      	mov      	r0, r5
  56:	e0000000 	bsr      	0x0	// 0 <wpa_group_init>
  5a:	07f2      	br      	0x3e	// 3e <wpa_group_init+0x3e>
  5c:	00000000 	.long	0x00000000

Disassembly of section .text.wpa_auth_add_group:

00000000 <wpa_auth_add_group>:
   0:	14d1      	push      	r4, r15
   2:	6d03      	mov      	r4, r0
   4:	e9000011 	bez      	r0, 0x26	// 26 <wpa_auth_add_group+0x26>
   8:	9060      	ld.w      	r3, (r0, 0x0)
   a:	e903000c 	bez      	r3, 0x22	// 22 <wpa_auth_add_group+0x22>
   e:	3200      	movi      	r2, 0
  10:	e0000000 	bsr      	0x0	// 0 <wpa_auth_add_group>
  14:	6cc3      	mov      	r3, r0
  16:	e9000006 	bez      	r0, 0x22	// 22 <wpa_auth_add_group+0x22>
  1a:	9440      	ld.w      	r2, (r4, 0x0)
  1c:	9220      	ld.w      	r1, (r2, 0x0)
  1e:	b020      	st.w      	r1, (r0, 0x0)
  20:	b200      	st.w      	r0, (r2, 0x0)
  22:	6c0f      	mov      	r0, r3
  24:	1491      	pop      	r4, r15
  26:	6cc3      	mov      	r3, r0
  28:	07fd      	br      	0x22	// 22 <wpa_auth_add_group+0x22>

Disassembly of section .text.wpa_auth_for_each_auth:

00000000 <wpa_auth_for_each_auth>:
   0:	14d0      	push      	r15
   2:	d8602023 	ld.w      	r3, (r0, 0x8c)
   6:	936c      	ld.w      	r3, (r3, 0x30)
   8:	e9030006 	bez      	r3, 0x14	// 14 <wpa_auth_for_each_auth+0x14>
   c:	d8002024 	ld.w      	r0, (r0, 0x90)
  10:	7bcd      	jsr      	r3
  12:	1490      	pop      	r15
  14:	6c0f      	mov      	r0, r3
  16:	07fe      	br      	0x12	// 12 <wpa_auth_for_each_auth+0x12>

Disassembly of section .text.wpa_auth_logger:

00000000 <wpa_auth_logger>:
   0:	14d0      	push      	r15
   2:	d9802023 	ld.w      	r12, (r0, 0x8c)
   6:	d98c2000 	ld.w      	r12, (r12, 0x0)
   a:	e90c0005 	bez      	r12, 0x14	// 14 <wpa_auth_logger+0x14>
   e:	d8002024 	ld.w      	r0, (r0, 0x90)
  12:	7bf1      	jsr      	r12
  14:	1490      	pop      	r15

Disassembly of section .text.wpa_rekey_gtk:

00000000 <wpa_rekey_gtk>:
   0:	14d5      	push      	r4-r8, r15
   2:	1421      	subi      	r14, r14, 4
   4:	6d43      	mov      	r5, r0
   6:	3200      	movi      	r2, 0
   8:	1078      	lrw      	r3, 0x0	// 68 <wpa_rekey_gtk+0x68>
   a:	6c4b      	mov      	r1, r2
   c:	e0000000 	bsr      	0x0	// 0 <wpa_rekey_gtk>
  10:	3601      	movi      	r6, 1
  12:	9580      	ld.w      	r4, (r5, 0x0)
  14:	3700      	movi      	r7, 0
  16:	e924000d 	bnez      	r4, 0x30	// 30 <wpa_rekey_gtk+0x30>
  1a:	9512      	ld.w      	r0, (r5, 0x48)
  1c:	e9000008 	bez      	r0, 0x2c	// 2c <wpa_rekey_gtk+0x2c>
  20:	b880      	st.w      	r4, (r14, 0x0)
  22:	6cd7      	mov      	r3, r5
  24:	1052      	lrw      	r2, 0x0	// 6c <wpa_rekey_gtk+0x6c>
  26:	6c53      	mov      	r1, r4
  28:	e0000000 	bsr      	0x0	// 0 <eloop_register_timeout>
  2c:	1401      	addi      	r14, r14, 4
  2e:	1495      	pop      	r4-r8, r15
  30:	9560      	ld.w      	r3, (r5, 0x0)
  32:	64d2      	cmpne      	r4, r3
  34:	0c06      	bf      	0x40	// 40 <wpa_rekey_gtk+0x40>
  36:	d8642035 	ld.w      	r3, (r4, 0xd4)
  3a:	2300      	addi      	r3, 1
  3c:	dc642035 	st.w      	r3, (r4, 0xd4)
  40:	b4c4      	st.w      	r6, (r4, 0x10)
  42:	dce42032 	st.w      	r7, (r4, 0xc8)
  46:	6c53      	mov      	r1, r4
  48:	6c17      	mov      	r0, r5
  4a:	e0000000 	bsr      	0x0	// 0 <wpa_rekey_gtk>
  4e:	d8642032 	ld.w      	r3, (r4, 0xc8)
  52:	e923fff8 	bnez      	r3, 0x42	// 42 <wpa_rekey_gtk+0x42>
  56:	d9042000 	ld.w      	r8, (r4, 0x0)
  5a:	6c53      	mov      	r1, r4
  5c:	9500      	ld.w      	r0, (r5, 0x0)
  5e:	e0000000 	bsr      	0x0	// 0 <wpa_rekey_gtk>
  62:	6d23      	mov      	r4, r8
  64:	07d9      	br      	0x16	// 16 <wpa_rekey_gtk+0x16>
	...

Disassembly of section .text.wpa_rekey_gmk:

00000000 <wpa_rekey_gmk>:
   0:	14d1      	push      	r4, r15
   2:	1421      	subi      	r14, r14, 4
   4:	6d03      	mov      	r4, r0
   6:	9000      	ld.w      	r0, (r0, 0x0)
   8:	3120      	movi      	r1, 32
   a:	2047      	addi      	r0, 72
   c:	e0000000 	bsr      	0x0	// 0 <os_random_bytes>
  10:	6c83      	mov      	r2, r0
  12:	e9000010 	bez      	r0, 0x32	// 32 <wpa_rekey_gmk+0x32>
  16:	100b      	lrw      	r0, 0x0	// 40 <hgprintf+0x40>
  18:	e0000000 	bsr      	0x0	// 0 <hgprintf>
  1c:	9414      	ld.w      	r0, (r4, 0x50)
  1e:	e9000008 	bez      	r0, 0x2e	// 2e <wpa_rekey_gmk+0x2e>
  22:	3100      	movi      	r1, 0
  24:	b820      	st.w      	r1, (r14, 0x0)
  26:	6cd3      	mov      	r3, r4
  28:	1047      	lrw      	r2, 0x0	// 44 <wpa_rekey_gmk+0x44>
  2a:	e0000000 	bsr      	0x0	// 0 <eloop_register_timeout>
  2e:	1401      	addi      	r14, r14, 4
  30:	1491      	pop      	r4, r15
  32:	6c43      	mov      	r1, r0
  34:	1065      	lrw      	r3, 0x0	// 48 <wpa_rekey_gmk+0x48>
  36:	6c13      	mov      	r0, r4
  38:	e0000000 	bsr      	0x0	// 0 <wpa_rekey_gmk>
  3c:	07f0      	br      	0x1c	// 1c <wpa_rekey_gmk+0x1c>
	...

Disassembly of section .text.wpa_auth_vlogger:

00000000 <wpa_auth_vlogger>:
   0:	1421      	subi      	r14, r14, 4
   2:	b860      	st.w      	r3, (r14, 0x0)
   4:	14d5      	push      	r4-r8, r15
   6:	1421      	subi      	r14, r14, 4
   8:	9867      	ld.w      	r3, (r14, 0x1c)
   a:	b860      	st.w      	r3, (r14, 0x0)
   c:	d8602023 	ld.w      	r3, (r0, 0x8c)
  10:	6d43      	mov      	r5, r0
  12:	9360      	ld.w      	r3, (r3, 0x0)
  14:	6dc7      	mov      	r7, r1
  16:	6e0b      	mov      	r8, r2
  18:	e903001b 	bez      	r3, 0x4e	// 4e <wpa_auth_vlogger+0x4e>
  1c:	9800      	ld.w      	r0, (r14, 0x0)
  1e:	e0000000 	bsr      	0x0	// 0 <strlen>
  22:	e4c00063 	addi      	r6, r0, 100
  26:	6c1b      	mov      	r0, r6
  28:	e0000000 	bsr      	0x0	// 0 <_os_malloc>
  2c:	6d03      	mov      	r4, r0
  2e:	e9000010 	bez      	r0, 0x4e	// 4e <wpa_auth_vlogger+0x4e>
  32:	1b08      	addi      	r3, r14, 32
  34:	9840      	ld.w      	r2, (r14, 0x0)
  36:	6c5b      	mov      	r1, r6
  38:	e0000000 	bsr      	0x0	// 0 <vsnprintf>
  3c:	6c17      	mov      	r0, r5
  3e:	6cd3      	mov      	r3, r4
  40:	6ca3      	mov      	r2, r8
  42:	6c5f      	mov      	r1, r7
  44:	e0000000 	bsr      	0x0	// 0 <wpa_auth_vlogger>
  48:	6c13      	mov      	r0, r4
  4a:	e0000000 	bsr      	0x0	// 0 <_os_free>
  4e:	1401      	addi      	r14, r14, 4
  50:	d9ee2005 	ld.w      	r15, (r14, 0x14)
  54:	d90e2004 	ld.w      	r8, (r14, 0x10)
  58:	98e3      	ld.w      	r7, (r14, 0xc)
  5a:	98c2      	ld.w      	r6, (r14, 0x8)
  5c:	98a1      	ld.w      	r5, (r14, 0x4)
  5e:	9880      	ld.w      	r4, (r14, 0x0)
  60:	1407      	addi      	r14, r14, 28
  62:	783c      	jmp      	r15

Disassembly of section .text.sm_WPA_PTK_PTKCALCNEGOTIATING_Enter.constprop.20:

00000000 <sm_WPA_PTK_PTKCALCNEGOTIATING_Enter.constprop.20>:
   0:	14d8      	push      	r4-r11, r15
   2:	163e      	subi      	r14, r14, 376
   4:	d86002bc 	ld.b      	r3, (r0, 0x2bc)
   8:	3201      	movi      	r2, 1
   a:	3400      	movi      	r4, 0
   c:	c4625c00 	ins      	r3, r2, 0, 0
  10:	3208      	movi      	r2, 8
  12:	6ec3      	mov      	r11, r0
  14:	c4645c06 	ins      	r3, r4, 6, 6
  18:	b046      	st.w      	r2, (r0, 0x18)
  1a:	1f17      	addi      	r7, r14, 92
  1c:	328e      	movi      	r2, 142
  1e:	dc6002bc 	st.b      	r3, (r0, 0x2bc)
  22:	d9002000 	ld.w      	r8, (r0, 0x0)
  26:	b091      	st.w      	r4, (r0, 0x44)
  28:	4241      	lsli      	r2, r2, 1
  2a:	6c53      	mov      	r1, r4
  2c:	6c1f      	mov      	r0, r7
  2e:	b88b      	st.w      	r4, (r14, 0x2c)
  30:	e0000000 	bsr      	0x0	// 0 <memset>
  34:	d82b2040 	ld.w      	r1, (r11, 0x100)
  38:	d80b20b7 	ld.w      	r0, (r11, 0x2dc)
  3c:	e0000000 	bsr      	0x0	// 0 <wpa_mic_len>
  40:	e46b00bf 	addi      	r3, r11, 192
  44:	6d43      	mov      	r5, r0
  46:	6e53      	mov      	r9, r4
  48:	e4cb0007 	addi      	r6, r11, 8
  4c:	e54e0027 	addi      	r10, r14, 40
  50:	b869      	st.w      	r3, (r14, 0x24)
  52:	d86b20b7 	ld.w      	r3, (r11, 0x2dc)
  56:	e4432d42 	andi      	r2, r3, 3394
  5a:	e902007c 	bez      	r2, 0x152	// 152 <sm_WPA_PTK_PTKCALCNEGOTIATING_Enter.constprop.20+0x152>
  5e:	e4632c00 	andi      	r3, r3, 3072
  62:	e9230078 	bnez      	r3, 0x152	// 152 <sm_WPA_PTK_PTKCALCNEGOTIATING_Enter.constprop.20+0x152>
  66:	1b0b      	addi      	r3, r14, 44
  68:	b861      	st.w      	r3, (r14, 0x4)
  6a:	dd4e2000 	st.w      	r10, (r14, 0x0)
  6e:	6cd3      	mov      	r3, r4
  70:	e44b000d 	addi      	r2, r11, 14
  74:	6c5b      	mov      	r1, r6
  76:	d80b2000 	ld.w      	r0, (r11, 0x0)
  7a:	e0000000 	bsr      	0x0	// 0 <sm_WPA_PTK_PTKCALCNEGOTIATING_Enter.constprop.20>
  7e:	6d03      	mov      	r4, r0
  80:	e9000079 	bez      	r0, 0x172	// 172 <sm_WPA_PTK_PTKCALCNEGOTIATING_Enter.constprop.20+0x172>
  84:	ea090001 	movi      	r9, 1
  88:	d86a2000 	ld.w      	r3, (r10, 0x0)
  8c:	e923000b 	bnez      	r3, 0xa2	// a2 <sm_WPA_PTK_PTKCALCNEGOTIATING_Enter.constprop.20+0xa2>
  90:	d86b20b8 	ld.w      	r3, (r11, 0x2e0)
  94:	e9030007 	bez      	r3, 0xa2	// a2 <sm_WPA_PTK_PTKCALCNEGOTIATING_Enter.constprop.20+0xa2>
  98:	e4830017 	addi      	r4, r3, 24
  9c:	9376      	ld.w      	r3, (r3, 0x58)
  9e:	dc6a2000 	st.w      	r3, (r10, 0x0)
  a2:	3200      	movi      	r2, 0
  a4:	b848      	st.w      	r2, (r14, 0x20)
  a6:	b847      	st.w      	r2, (r14, 0x1c)
  a8:	b846      	st.w      	r2, (r14, 0x18)
  aa:	d84b20b6 	ld.w      	r2, (r11, 0x2d8)
  ae:	b845      	st.w      	r2, (r14, 0x14)
  b0:	d84b20b7 	ld.w      	r2, (r11, 0x2dc)
  b4:	b844      	st.w      	r2, (r14, 0x10)
  b6:	e44b0077 	addi      	r2, r11, 120
  ba:	b842      	st.w      	r2, (r14, 0x8)
  bc:	e44b0057 	addi      	r2, r11, 88
  c0:	b841      	st.w      	r2, (r14, 0x4)
  c2:	d86b2000 	ld.w      	r3, (r11, 0x0)
  c6:	b8e3      	st.w      	r7, (r14, 0xc)
  c8:	b8c0      	st.w      	r6, (r14, 0x0)
  ca:	239b      	addi      	r3, 156
  cc:	1340      	lrw      	r2, 0x0	// 24c <sm_WPA_PTK_PTKCALCNEGOTIATING_Enter.constprop.20+0x24c>
  ce:	6c13      	mov      	r0, r4
  d0:	d82a2000 	ld.w      	r1, (r10, 0x0)
  d4:	e0000000 	bsr      	0x0	// 0 <wpa_pmk_to_ptk>
  d8:	e980004d 	blz      	r0, 0x172	// 172 <sm_WPA_PTK_PTKCALCNEGOTIATING_Enter.constprop.20+0x172>
  dc:	e9050041 	bez      	r5, 0x15e	// 15e <sm_WPA_PTK_PTKCALCNEGOTIATING_Enter.constprop.20+0x15e>
  e0:	d86b20ae 	ld.w      	r3, (r11, 0x2b8)
  e4:	b860      	st.w      	r3, (r14, 0x0)
  e6:	6c9f      	mov      	r2, r7
  e8:	d86b20ad 	ld.w      	r3, (r11, 0x2b4)
  ec:	d82a2000 	ld.w      	r1, (r10, 0x0)
  f0:	d80b20b7 	ld.w      	r0, (r11, 0x2dc)
  f4:	e0000000 	bsr      	0x0	// 0 <sm_WPA_PTK_PTKCALCNEGOTIATING_Enter.constprop.20>
  f8:	e9200033 	bnez      	r0, 0x15e	// 15e <sm_WPA_PTK_PTKCALCNEGOTIATING_Enter.constprop.20+0x15e>
  fc:	e52b00bf 	addi      	r9, r11, 192
 100:	6652      	cmpne      	r4, r9
 102:	0c0a      	bf      	0x116	// 116 <sm_WPA_PTK_PTKCALCNEGOTIATING_Enter.constprop.20+0x116>
 104:	d94a2000 	ld.w      	r10, (r10, 0x0)
 108:	6cab      	mov      	r2, r10
 10a:	6c53      	mov      	r1, r4
 10c:	6c27      	mov      	r0, r9
 10e:	e0000000 	bsr      	0x0	// 0 <memcpy>
 112:	dd4b2040 	st.w      	r10, (r11, 0x100)
 116:	d9ab20ad 	ld.w      	r13, (r11, 0x2b4)
 11a:	e5ad0050 	addi      	r13, r13, 81
 11e:	c4ad0023 	addu      	r3, r13, r5
 122:	8320      	ld.b      	r1, (r3, 0x0)
 124:	4128      	lsli      	r1, r1, 8
 126:	8361      	ld.b      	r3, (r3, 0x1)
 128:	6c4c      	or      	r1, r3
 12a:	d86b20ae 	ld.w      	r3, (r11, 0x2b8)
 12e:	2b52      	subi      	r3, 83
 130:	60d6      	subu      	r3, r5
 132:	644c      	cmphs      	r3, r1
 134:	0c35      	bf      	0x19e	// 19e <sm_WPA_PTK_PTKCALCNEGOTIATING_Enter.constprop.20+0x19e>
 136:	5d06      	addi      	r0, r5, 2
 138:	1a0c      	addi      	r2, r14, 48
 13a:	6034      	addu      	r0, r13
 13c:	e0000000 	bsr      	0x0	// 0 <wpa_parse_kde_ies>
 140:	e9a00031 	bhsz      	r0, 0x1a2	// 1a2 <sm_WPA_PTK_PTKCALCNEGOTIATING_Enter.constprop.20+0x1a2>
 144:	1263      	lrw      	r3, 0x0	// 250 <sm_WPA_PTK_PTKCALCNEGOTIATING_Enter.constprop.20+0x250>
 146:	3201      	movi      	r2, 1
 148:	6c5b      	mov      	r1, r6
 14a:	6c23      	mov      	r0, r8
 14c:	e0000000 	bsr      	0x0	// 0 <sm_WPA_PTK_PTKCALCNEGOTIATING_Enter.constprop.20>
 150:	0427      	br      	0x19e	// 19e <sm_WPA_PTK_PTKCALCNEGOTIATING_Enter.constprop.20+0x19e>
 152:	d86b2040 	ld.w      	r3, (r11, 0x100)
 156:	9889      	ld.w      	r4, (r14, 0x24)
 158:	dc6a2000 	st.w      	r3, (r10, 0x0)
 15c:	0796      	br      	0x88	// 88 <sm_WPA_PTK_PTKCALCNEGOTIATING_Enter.constprop.20+0x88>
 15e:	d86b20b7 	ld.w      	r3, (r11, 0x2dc)
 162:	e4432d42 	andi      	r2, r3, 3394
 166:	e9020006 	bez      	r2, 0x172	// 172 <sm_WPA_PTK_PTKCALCNEGOTIATING_Enter.constprop.20+0x172>
 16a:	e4632c00 	andi      	r3, r3, 3072
 16e:	e903ff72 	bez      	r3, 0x52	// 52 <sm_WPA_PTK_PTKCALCNEGOTIATING_Enter.constprop.20+0x52>
 172:	e48b0007 	addi      	r4, r11, 8
 176:	1178      	lrw      	r3, 0x0	// 254 <sm_WPA_PTK_PTKCALCNEGOTIATING_Enter.constprop.20+0x254>
 178:	3200      	movi      	r2, 0
 17a:	6c53      	mov      	r1, r4
 17c:	d80b2000 	ld.w      	r0, (r11, 0x0)
 180:	e0000000 	bsr      	0x0	// 0 <sm_WPA_PTK_PTKCALCNEGOTIATING_Enter.constprop.20>
 184:	e909000d 	bez      	r9, 0x19e	// 19e <sm_WPA_PTK_PTKCALCNEGOTIATING_Enter.constprop.20+0x19e>
 188:	d84b2000 	ld.w      	r2, (r11, 0x0)
 18c:	d8622023 	ld.w      	r3, (r2, 0x8c)
 190:	9363      	ld.w      	r3, (r3, 0xc)
 192:	e9030006 	bez      	r3, 0x19e	// 19e <sm_WPA_PTK_PTKCALCNEGOTIATING_Enter.constprop.20+0x19e>
 196:	6c53      	mov      	r1, r4
 198:	d8022024 	ld.w      	r0, (r2, 0x90)
 19c:	7bcd      	jsr      	r3
 19e:	161e      	addi      	r14, r14, 376
 1a0:	1498      	pop      	r4-r11, r15
 1a2:	986e      	ld.w      	r3, (r14, 0x38)
 1a4:	e903001f 	bez      	r3, 0x1e2	// 1e2 <sm_WPA_PTK_PTKCALCNEGOTIATING_Enter.constprop.20+0x1e2>
 1a8:	984f      	ld.w      	r2, (r14, 0x3c)
 1aa:	d82b20b5 	ld.w      	r1, (r11, 0x2d4)
 1ae:	3942      	cmpnei      	r1, 2
 1b0:	0821      	bt      	0x1f2	// 1f2 <sm_WPA_PTK_PTKCALCNEGOTIATING_Enter.constprop.20+0x1f2>
 1b2:	110a      	lrw      	r0, 0x1300860	// 258 <sm_WPA_PTK_PTKCALCNEGOTIATING_Enter.constprop.20+0x258>
 1b4:	d82b20b7 	ld.w      	r1, (r11, 0x2dc)
 1b8:	6840      	and      	r1, r0
 1ba:	3940      	cmpnei      	r1, 0
 1bc:	c4000500 	mvc      	r0
 1c0:	7400      	zextb      	r0, r0
 1c2:	d82b20b3 	ld.w      	r1, (r11, 0x2cc)
 1c6:	e9210018 	bnez      	r1, 0x1f6	// 1f6 <sm_WPA_PTK_PTKCALCNEGOTIATING_Enter.constprop.20+0x1f6>
 1ca:	6c5b      	mov      	r1, r6
 1cc:	6c23      	mov      	r0, r8
 1ce:	1164      	lrw      	r3, 0x0	// 25c <sm_WPA_PTK_PTKCALCNEGOTIATING_Enter.constprop.20+0x25c>
 1d0:	3201      	movi      	r2, 1
 1d2:	e0000000 	bsr      	0x0	// 0 <sm_WPA_PTK_PTKCALCNEGOTIATING_Enter.constprop.20>
 1d6:	3202      	movi      	r2, 2
 1d8:	6c5b      	mov      	r1, r6
 1da:	6c23      	mov      	r0, r8
 1dc:	e0000000 	bsr      	0x0	// 0 <sm_WPA_PTK_PTKCALCNEGOTIATING_Enter.constprop.20>
 1e0:	07df      	br      	0x19e	// 19e <sm_WPA_PTK_PTKCALCNEGOTIATING_Enter.constprop.20+0x19e>
 1e2:	9875      	ld.w      	r3, (r14, 0x54)
 1e4:	e9030004 	bez      	r3, 0x1ec	// 1ec <sm_WPA_PTK_PTKCALCNEGOTIATING_Enter.constprop.20+0x1ec>
 1e8:	9856      	ld.w      	r2, (r14, 0x58)
 1ea:	07e0      	br      	0x1aa	// 1aa <sm_WPA_PTK_PTKCALCNEGOTIATING_Enter.constprop.20+0x1aa>
 1ec:	986c      	ld.w      	r3, (r14, 0x30)
 1ee:	984d      	ld.w      	r2, (r14, 0x34)
 1f0:	07dd      	br      	0x1aa	// 1aa <sm_WPA_PTK_PTKCALCNEGOTIATING_Enter.constprop.20+0x1aa>
 1f2:	3000      	movi      	r0, 0
 1f4:	07e7      	br      	0x1c2	// 1c2 <sm_WPA_PTK_PTKCALCNEGOTIATING_Enter.constprop.20+0x1c2>
 1f6:	b840      	st.w      	r2, (r14, 0x0)
 1f8:	d84b20b4 	ld.w      	r2, (r11, 0x2d0)
 1fc:	e0000000 	bsr      	0x0	// 0 <wpa_compare_rsn_ie>
 200:	e920ffe5 	bnez      	r0, 0x1ca	// 1ca <sm_WPA_PTK_PTKCALCNEGOTIATING_Enter.constprop.20+0x1ca>
 204:	dc0b20bb 	st.w      	r0, (r11, 0x2ec)
 208:	6caf      	mov      	r2, r11
 20a:	d82b2000 	ld.w      	r1, (r11, 0x0)
 20e:	1015      	lrw      	r0, 0x0	// 260 <eloop_cancel_timeout+0x260>
 210:	e0000000 	bsr      	0x0	// 0 <eloop_cancel_timeout>
 214:	d86b20b7 	ld.w      	r3, (r11, 0x2dc)
 218:	e4632d42 	andi      	r3, r3, 3394
 21c:	e903000a 	bez      	r3, 0x230	// 230 <sm_WPA_PTK_PTKCALCNEGOTIATING_Enter.constprop.20+0x230>
 220:	3520      	movi      	r5, 32
 222:	6c97      	mov      	r2, r5
 224:	6c53      	mov      	r1, r4
 226:	6c27      	mov      	r0, r9
 228:	e0000000 	bsr      	0x0	// 0 <memcpy>
 22c:	dcab2040 	st.w      	r5, (r11, 0x100)
 230:	3401      	movi      	r4, 1
 232:	328e      	movi      	r2, 142
 234:	dc8b2014 	st.w      	r4, (r11, 0x50)
 238:	7090      	lsl      	r2, r4
 23a:	6c5f      	mov      	r1, r7
 23c:	e40b0113 	addi      	r0, r11, 276
 240:	e0000000 	bsr      	0x0	// 0 <memcpy>
 244:	dc8b208c 	st.w      	r4, (r11, 0x230)
 248:	07ab      	br      	0x19e	// 19e <sm_WPA_PTK_PTKCALCNEGOTIATING_Enter.constprop.20+0x19e>
	...
 256:	0000      	.short	0x0000
 258:	01300860 	.long	0x01300860
	...

Disassembly of section .text.wpa_auth_set_ptk_rekey_timer:

00000000 <wpa_auth_set_ptk_rekey_timer>:
   0:	14d1      	push      	r4, r15
   2:	1421      	subi      	r14, r14, 4
   4:	6d03      	mov      	r4, r0
   6:	e9000011 	bez      	r0, 0x28	// 28 <wpa_auth_set_ptk_rekey_timer+0x28>
   a:	9020      	ld.w      	r1, (r0, 0x0)
   c:	9175      	ld.w      	r3, (r1, 0x54)
   e:	e903000d 	bez      	r3, 0x28	// 28 <wpa_auth_set_ptk_rekey_timer+0x28>
  12:	6c83      	mov      	r2, r0
  14:	1006      	lrw      	r0, 0x0	// 2c <wpa_auth_set_ptk_rekey_timer+0x2c>
  16:	e0000000 	bsr      	0x0	// 0 <eloop_cancel_timeout>
  1a:	9460      	ld.w      	r3, (r4, 0x0)
  1c:	3100      	movi      	r1, 0
  1e:	9315      	ld.w      	r0, (r3, 0x54)
  20:	b880      	st.w      	r4, (r14, 0x0)
  22:	1043      	lrw      	r2, 0x0	// 2c <wpa_auth_set_ptk_rekey_timer+0x2c>
  24:	e0000000 	bsr      	0x0	// 0 <eloop_register_timeout>
  28:	1401      	addi      	r14, r14, 4
  2a:	1491      	pop      	r4, r15
  2c:	00000000 	.long	0x00000000

Disassembly of section .text.wpa_init:

00000000 <wpa_init>:
   0:	14d5      	push      	r4-r8, r15
   2:	1421      	subi      	r14, r14, 4
   4:	6e03      	mov      	r8, r0
   6:	30ac      	movi      	r0, 172
   8:	6dc7      	mov      	r7, r1
   a:	6d8b      	mov      	r6, r2
   c:	6d4f      	mov      	r5, r3
   e:	e0000000 	bsr      	0x0	// 0 <_os_zalloc>
  12:	6d03      	mov      	r4, r0
  14:	e900001e 	bez      	r0, 0x50	// 50 <wpa_init+0x50>
  18:	3206      	movi      	r2, 6
  1a:	6c63      	mov      	r1, r8
  1c:	209b      	addi      	r0, 156
  1e:	e0000000 	bsr      	0x0	// 0 <memcpy>
  22:	3254      	movi      	r2, 84
  24:	6c5f      	mov      	r1, r7
  26:	e4040037 	addi      	r0, r4, 56
  2a:	e0000000 	bsr      	0x0	// 0 <memcpy>
  2e:	dcc42023 	st.w      	r6, (r4, 0x8c)
  32:	dca42024 	st.w      	r5, (r4, 0x90)
  36:	6c13      	mov      	r0, r4
  38:	e0000000 	bsr      	0x0	// 0 <wpa_auth_gen_wpa_ie>
  3c:	6d83      	mov      	r6, r0
  3e:	e900000c 	bez      	r0, 0x56	// 56 <wpa_init+0x56>
  42:	1100      	lrw      	r0, 0x0	// c0 <hgprintf+0xc0>
  44:	e0000000 	bsr      	0x0	// 0 <hgprintf>
  48:	6c13      	mov      	r0, r4
  4a:	e0000000 	bsr      	0x0	// 0 <_os_free>
  4e:	3400      	movi      	r4, 0
  50:	6c13      	mov      	r0, r4
  52:	1401      	addi      	r14, r14, 4
  54:	1495      	pop      	r4-r8, r15
  56:	6c43      	mov      	r1, r0
  58:	3201      	movi      	r2, 1
  5a:	6c13      	mov      	r0, r4
  5c:	e0000000 	bsr      	0x0	// 0 <wpa_init>
  60:	6d43      	mov      	r5, r0
  62:	b400      	st.w      	r0, (r4, 0x0)
  64:	e9200009 	bnez      	r0, 0x76	// 76 <wpa_init+0x76>
  68:	d8042025 	ld.w      	r0, (r4, 0x94)
  6c:	e0000000 	bsr      	0x0	// 0 <_os_free>
  70:	dca42025 	st.w      	r5, (r4, 0x94)
  74:	07ea      	br      	0x48	// 48 <wpa_init+0x48>
  76:	6c53      	mov      	r1, r4
  78:	1013      	lrw      	r0, 0x0	// c4 <wpa_init+0xc4>
  7a:	e0000000 	bsr      	0x0	// 0 <pmksa_cache_auth_init>
  7e:	6d43      	mov      	r5, r0
  80:	dc042029 	st.w      	r0, (r4, 0xa4)
  84:	e920000a 	bnez      	r0, 0x98	// 98 <wpa_init+0x98>
  88:	1010      	lrw      	r0, 0x0	// c8 <hgprintf+0xc8>
  8a:	e0000000 	bsr      	0x0	// 0 <hgprintf>
  8e:	9400      	ld.w      	r0, (r4, 0x0)
  90:	e0000000 	bsr      	0x0	// 0 <_os_free>
  94:	b4a0      	st.w      	r5, (r4, 0x0)
  96:	07e9      	br      	0x68	// 68 <wpa_init+0x68>
  98:	9414      	ld.w      	r0, (r4, 0x50)
  9a:	e9000008 	bez      	r0, 0xaa	// aa <wpa_init+0xaa>
  9e:	b8c0      	st.w      	r6, (r14, 0x0)
  a0:	6cd3      	mov      	r3, r4
  a2:	104b      	lrw      	r2, 0x0	// cc <wpa_init+0xcc>
  a4:	6c5b      	mov      	r1, r6
  a6:	e0000000 	bsr      	0x0	// 0 <eloop_register_timeout>
  aa:	9412      	ld.w      	r0, (r4, 0x48)
  ac:	e900ffd2 	bez      	r0, 0x50	// 50 <wpa_init+0x50>
  b0:	3100      	movi      	r1, 0
  b2:	b820      	st.w      	r1, (r14, 0x0)
  b4:	6cd3      	mov      	r3, r4
  b6:	1047      	lrw      	r2, 0x0	// d0 <wpa_init+0xd0>
  b8:	e0000000 	bsr      	0x0	// 0 <eloop_register_timeout>
  bc:	07ca      	br      	0x50	// 50 <wpa_init+0x50>
	...

Disassembly of section .text.wpa_init_keys:

00000000 <wpa_init_keys>:
   0:	14d3      	push      	r4-r6, r15
   2:	9080      	ld.w      	r4, (r0, 0x0)
   4:	3301      	movi      	r3, 1
   6:	b462      	st.w      	r3, (r4, 0x8)
   8:	6d83      	mov      	r6, r0
   a:	6c53      	mov      	r1, r4
   c:	3500      	movi      	r5, 0
   e:	e0000000 	bsr      	0x0	// 0 <wpa_init_keys>
  12:	6c1b      	mov      	r0, r6
  14:	b4a2      	st.w      	r5, (r4, 0x8)
  16:	6c53      	mov      	r1, r4
  18:	e0000000 	bsr      	0x0	// 0 <wpa_init_keys>
  1c:	9471      	ld.w      	r3, (r4, 0x44)
  1e:	3b43      	cmpnei      	r3, 3
  20:	6403      	mvcv      	r0
  22:	5d01      	subu      	r0, r5, r0
  24:	1493      	pop      	r4-r6, r15

Disassembly of section .text.wpa_deinit:

00000000 <wpa_deinit>:
   0:	14d2      	push      	r4-r5, r15
   2:	6d03      	mov      	r4, r0
   4:	6c43      	mov      	r1, r0
   6:	3200      	movi      	r2, 0
   8:	1010      	lrw      	r0, 0x0	// 48 <wpa_deinit+0x48>
   a:	e0000000 	bsr      	0x0	// 0 <eloop_cancel_timeout>
   e:	3200      	movi      	r2, 0
  10:	6c53      	mov      	r1, r4
  12:	100f      	lrw      	r0, 0x0	// 4c <wpa_deinit+0x4c>
  14:	e0000000 	bsr      	0x0	// 0 <eloop_cancel_timeout>
  18:	d8042029 	ld.w      	r0, (r4, 0xa4)
  1c:	e0000000 	bsr      	0x0	// 0 <pmksa_cache_auth_deinit>
  20:	d8042025 	ld.w      	r0, (r4, 0x94)
  24:	e0000000 	bsr      	0x0	// 0 <_os_free>
  28:	3300      	movi      	r3, 0
  2a:	dc642025 	st.w      	r3, (r4, 0x94)
  2e:	9400      	ld.w      	r0, (r4, 0x0)
  30:	e9200006 	bnez      	r0, 0x3c	// 3c <wpa_deinit+0x3c>
  34:	6c13      	mov      	r0, r4
  36:	e0000000 	bsr      	0x0	// 0 <_os_free>
  3a:	1492      	pop      	r4-r5, r15
  3c:	90a0      	ld.w      	r5, (r0, 0x0)
  3e:	e0000000 	bsr      	0x0	// 0 <_os_free>
  42:	6c17      	mov      	r0, r5
  44:	07f6      	br      	0x30	// 30 <wpa_deinit+0x30>
	...

Disassembly of section .text.wpa_reconfig:

00000000 <wpa_reconfig>:
   0:	14d3      	push      	r4-r6, r15
   2:	6d03      	mov      	r4, r0
   4:	e9000026 	bez      	r0, 0x50	// 50 <wpa_reconfig+0x50>
   8:	e9010006 	bez      	r1, 0x14	// 14 <wpa_reconfig+0x14>
   c:	3254      	movi      	r2, 84
   e:	2037      	addi      	r0, 56
  10:	e0000000 	bsr      	0x0	// 0 <memcpy>
  14:	6c13      	mov      	r0, r4
  16:	e0000000 	bsr      	0x0	// 0 <wpa_auth_gen_wpa_ie>
  1a:	6d43      	mov      	r5, r0
  1c:	e9000009 	bez      	r0, 0x2e	// 2e <wpa_reconfig+0x2e>
  20:	100d      	lrw      	r0, 0x0	// 54 <wpa_reconfig+0x54>
  22:	3500      	movi      	r5, 0
  24:	e0000000 	bsr      	0x0	// 0 <hgprintf>
  28:	2d00      	subi      	r5, 1
  2a:	6c17      	mov      	r0, r5
  2c:	1493      	pop      	r4-r6, r15
  2e:	94c0      	ld.w      	r6, (r4, 0x0)
  30:	9411      	ld.w      	r0, (r4, 0x44)
  32:	e0000000 	bsr      	0x0	// 0 <wpa_cipher_key_len>
  36:	3301      	movi      	r3, 1
  38:	b605      	st.w      	r0, (r6, 0x14)
  3a:	6c5b      	mov      	r1, r6
  3c:	6c13      	mov      	r0, r4
  3e:	b662      	st.w      	r3, (r6, 0x8)
  40:	e0000000 	bsr      	0x0	// 0 <wpa_reconfig>
  44:	b6a2      	st.w      	r5, (r6, 0x8)
  46:	6c5b      	mov      	r1, r6
  48:	6c13      	mov      	r0, r4
  4a:	e0000000 	bsr      	0x0	// 0 <wpa_reconfig>
  4e:	07ee      	br      	0x2a	// 2a <wpa_reconfig+0x2a>
  50:	6d43      	mov      	r5, r0
  52:	07ec      	br      	0x2a	// 2a <wpa_reconfig+0x2a>
  54:	00000000 	.long	0x00000000

Disassembly of section .text.wpa_auth_sta_init:

00000000 <wpa_auth_sta_init>:
   0:	14d3      	push      	r4-r6, r15
   2:	1421      	subi      	r14, r14, 4
   4:	9060      	ld.w      	r3, (r0, 0x0)
   6:	6d43      	mov      	r5, r0
   8:	9371      	ld.w      	r3, (r3, 0x44)
   a:	3b43      	cmpnei      	r3, 3
   c:	6d8b      	mov      	r6, r2
   e:	0805      	bt      	0x18	// 18 <wpa_auth_sta_init+0x18>
  10:	3400      	movi      	r4, 0
  12:	6c13      	mov      	r0, r4
  14:	1401      	addi      	r14, r14, 4
  16:	1493      	pop      	r4-r6, r15
  18:	30bc      	movi      	r0, 188
  1a:	4002      	lsli      	r0, r0, 2
  1c:	b820      	st.w      	r1, (r14, 0x0)
  1e:	e0000000 	bsr      	0x0	// 0 <_os_zalloc>
  22:	6d03      	mov      	r4, r0
  24:	e900fff6 	bez      	r0, 0x10	// 10 <wpa_auth_sta_init+0x10>
  28:	3206      	movi      	r2, 6
  2a:	9820      	ld.w      	r1, (r14, 0x0)
  2c:	2007      	addi      	r0, 8
  2e:	e0000000 	bsr      	0x0	// 0 <memcpy>
  32:	e9060008 	bez      	r6, 0x42	// 42 <wpa_auth_sta_init+0x42>
  36:	3206      	movi      	r2, 6
  38:	6c5b      	mov      	r1, r6
  3a:	e404000d 	addi      	r0, r4, 14
  3e:	e0000000 	bsr      	0x0	// 0 <memcpy>
  42:	9560      	ld.w      	r3, (r5, 0x0)
  44:	b461      	st.w      	r3, (r4, 0x4)
  46:	9540      	ld.w      	r2, (r5, 0x0)
  48:	648e      	cmpne      	r3, r2
  4a:	b4a0      	st.w      	r5, (r4, 0x0)
  4c:	0fe3      	bf      	0x12	// 12 <wpa_auth_sta_init+0x12>
  4e:	d8432035 	ld.w      	r2, (r3, 0xd4)
  52:	2200      	addi      	r2, 1
  54:	dc432035 	st.w      	r2, (r3, 0xd4)
  58:	07dd      	br      	0x12	// 12 <wpa_auth_sta_init+0x12>

Disassembly of section .text.wpa_auth_sta_no_wpa:

00000000 <wpa_auth_sta_no_wpa>:
   0:	e9000005 	bez      	r0, 0xa	// a <wpa_auth_sta_no_wpa+0xa>
   4:	3300      	movi      	r3, 0
   6:	dc6020b7 	st.w      	r3, (r0, 0x2dc)
   a:	783c      	jmp      	r15

Disassembly of section .text.wpa_auth_sta_deinit:

00000000 <wpa_auth_sta_deinit>:
   0:	14d2      	push      	r4-r5, r15
   2:	1421      	subi      	r14, r14, 4
   4:	6d03      	mov      	r4, r0
   6:	e9000044 	bez      	r0, 0x8e	// 8e <wpa_auth_sta_deinit+0x8e>
   a:	9000      	ld.w      	r0, (r0, 0x0)
   c:	9073      	ld.w      	r3, (r0, 0x4c)
   e:	e9030024 	bez      	r3, 0x56	// 56 <wpa_auth_sta_deinit+0x56>
  12:	d86420ab 	ld.w      	r3, (r4, 0x2ac)
  16:	e9030020 	bez      	r3, 0x56	// 56 <wpa_auth_sta_deinit+0x56>
  1a:	3500      	movi      	r5, 0
  1c:	1160      	lrw      	r3, 0x0	// 9c <wpa_auth_sta_deinit+0x9c>
  1e:	3200      	movi      	r2, 0
  20:	5c3e      	addi      	r1, r4, 8
  22:	e0000000 	bsr      	0x0	// 0 <wpa_auth_sta_deinit>
  26:	9460      	ld.w      	r3, (r4, 0x0)
  28:	b8a0      	st.w      	r5, (r14, 0x0)
  2a:	ea01f424 	movi      	r1, 62500
  2e:	c4614901 	rotli      	r1, r1, 3
  32:	105c      	lrw      	r2, 0x0	// a0 <wpa_auth_sta_deinit+0xa0>
  34:	6c17      	mov      	r0, r5
  36:	e0000000 	bsr      	0x0	// 0 <eloop_deplete_timeout>
  3a:	6cd7      	mov      	r3, r5
  3c:	2b00      	subi      	r3, 1
  3e:	64c2      	cmpne      	r0, r3
  40:	080b      	bt      	0x56	// 56 <wpa_auth_sta_deinit+0x56>
  42:	b8a0      	st.w      	r5, (r14, 0x0)
  44:	9460      	ld.w      	r3, (r4, 0x0)
  46:	ea01f424 	movi      	r1, 62500
  4a:	c4614901 	rotli      	r1, r1, 3
  4e:	1055      	lrw      	r2, 0x0	// a0 <wpa_auth_sta_deinit+0xa0>
  50:	6c17      	mov      	r0, r5
  52:	e0000000 	bsr      	0x0	// 0 <eloop_register_timeout>
  56:	6c93      	mov      	r2, r4
  58:	9420      	ld.w      	r1, (r4, 0x0)
  5a:	1013      	lrw      	r0, 0x0	// a4 <wpa_auth_sta_deinit+0xa4>
  5c:	e0000000 	bsr      	0x0	// 0 <eloop_cancel_timeout>
  60:	3200      	movi      	r2, 0
  62:	dc4420bb 	st.w      	r2, (r4, 0x2ec)
  66:	6c53      	mov      	r1, r4
  68:	1010      	lrw      	r0, 0x0	// a8 <wpa_auth_sta_deinit+0xa8>
  6a:	e0000000 	bsr      	0x0	// 0 <eloop_cancel_timeout>
  6e:	6c93      	mov      	r2, r4
  70:	9420      	ld.w      	r1, (r4, 0x0)
  72:	100f      	lrw      	r0, 0x0	// ac <wpa_auth_sta_deinit+0xac>
  74:	e0000000 	bsr      	0x0	// 0 <eloop_cancel_timeout>
  78:	d86402bc 	ld.b      	r3, (r4, 0x2bc)
  7c:	e4432002 	andi      	r2, r3, 2
  80:	e9020009 	bez      	r2, 0x92	// 92 <wpa_auth_sta_deinit+0x92>
  84:	3201      	movi      	r2, 1
  86:	c4625c02 	ins      	r3, r2, 2, 2
  8a:	dc6402bc 	st.b      	r3, (r4, 0x2bc)
  8e:	1401      	addi      	r14, r14, 4
  90:	1492      	pop      	r4-r5, r15
  92:	6c13      	mov      	r0, r4
  94:	e0000000 	bsr      	0x0	// 0 <wpa_auth_sta_deinit>
  98:	07fb      	br      	0x8e	// 8e <wpa_auth_sta_deinit+0x8e>
	...

Disassembly of section .text.__wpa_send_eapol:

00000000 <__wpa_send_eapol>:
   0:	14d8      	push      	r4-r11, r15
   2:	142d      	subi      	r14, r14, 52
   4:	b86a      	st.w      	r3, (r14, 0x28)
   6:	9876      	ld.w      	r3, (r14, 0x58)
   8:	b86b      	st.w      	r3, (r14, 0x2c)
   a:	9877      	ld.w      	r3, (r14, 0x5c)
   c:	6d47      	mov      	r5, r1
   e:	b868      	st.w      	r3, (r14, 0x20)
  10:	9878      	ld.w      	r3, (r14, 0x60)
  12:	b863      	st.w      	r3, (r14, 0xc)
  14:	9879      	ld.w      	r3, (r14, 0x64)
  16:	b86c      	st.w      	r3, (r14, 0x30)
  18:	6e83      	mov      	r10, r0
  1a:	987a      	ld.w      	r3, (r14, 0x68)
  1c:	d8212040 	ld.w      	r1, (r1, 0x100)
  20:	d80520b7 	ld.w      	r0, (r5, 0x2dc)
  24:	b866      	st.w      	r3, (r14, 0x18)
  26:	6dcb      	mov      	r7, r2
  28:	d90e201b 	ld.w      	r8, (r14, 0x6c)
  2c:	e0000000 	bsr      	0x0	// 0 <wpa_mic_len>
  30:	6cc3      	mov      	r3, r0
  32:	2352      	addi      	r3, 83
  34:	b805      	st.w      	r0, (r14, 0x14)
  36:	b869      	st.w      	r3, (r14, 0x24)
  38:	e9280015 	bnez      	r8, 0x62	// 62 <__wpa_send_eapol+0x62>
  3c:	d80520b7 	ld.w      	r0, (r5, 0x2dc)
  40:	e0000000 	bsr      	0x0	// 0 <wpa_use_akm_defined>
  44:	e920000f 	bnez      	r0, 0x62	// 62 <__wpa_send_eapol+0x62>
  48:	d80520b7 	ld.w      	r0, (r5, 0x2dc)
  4c:	e0000000 	bsr      	0x0	// 0 <wpa_use_cmac>
  50:	e92000b9 	bnez      	r0, 0x1c2	// 1c2 <__wpa_send_eapol+0x1c2>
  54:	d86520b6 	ld.w      	r3, (r5, 0x2d8)
  58:	3b48      	cmpnei      	r3, 8
  5a:	c4000508 	mvc      	r8
  5e:	e5080000 	addi      	r8, r8, 1
  62:	eb480002 	cmpnei      	r8, 2
  66:	e5672008 	andi      	r11, r7, 8
  6a:	d92e2003 	ld.w      	r9, (r14, 0xc)
  6e:	08ad      	bt      	0x1c8	// 1c8 <__wpa_send_eapol+0x1c8>
  70:	9866      	ld.w      	r3, (r14, 0x18)
  72:	e92300b6 	bnez      	r3, 0x1de	// 1de <__wpa_send_eapol+0x1de>
  76:	6d8f      	mov      	r6, r3
  78:	9869      	ld.w      	r3, (r14, 0x24)
  7a:	60e4      	addu      	r3, r9
  7c:	b864      	st.w      	r3, (r14, 0x10)
  7e:	9865      	ld.w      	r3, (r14, 0x14)
  80:	e9230008 	bnez      	r3, 0x90	// 90 <__wpa_send_eapol+0x90>
  84:	9866      	ld.w      	r3, (r14, 0x18)
  86:	3b40      	cmpnei      	r3, 0
  88:	9864      	ld.w      	r3, (r14, 0x10)
  8a:	c4630c50 	inct      	r3, r3, 16
  8e:	b864      	st.w      	r3, (r14, 0x10)
  90:	9804      	ld.w      	r0, (r14, 0x10)
  92:	e0000000 	bsr      	0x0	// 0 <_os_zalloc>
  96:	6d03      	mov      	r4, r0
  98:	e90000f6 	bez      	r0, 0x284	// 284 <__wpa_send_eapol+0x284>
  9c:	d86a006c 	ld.b      	r3, (r10, 0x6c)
  a0:	a060      	st.b      	r3, (r0, 0x0)
  a2:	3303      	movi      	r3, 3
  a4:	a061      	st.b      	r3, (r0, 0x1)
  a6:	9864      	ld.w      	r3, (r14, 0x10)
  a8:	5b2f      	subi      	r1, r3, 4
  aa:	c50155e3 	zext      	r3, r1, 15, 8
  ae:	4128      	lsli      	r1, r1, 8
  b0:	6cc4      	or      	r3, r1
  b2:	74cd      	zexth      	r3, r3
  b4:	a062      	st.b      	r3, (r0, 0x2)
  b6:	4b68      	lsri      	r3, r3, 8
  b8:	a063      	st.b      	r3, (r0, 0x3)
  ba:	e4600050 	addi      	r3, r0, 81
  be:	b867      	st.w      	r3, (r14, 0x1c)
  c0:	9869      	ld.w      	r3, (r14, 0x24)
  c2:	60c0      	addu      	r3, r0
  c4:	b869      	st.w      	r3, (r14, 0x24)
  c6:	d86520b5 	ld.w      	r3, (r5, 0x2d4)
  ca:	3b42      	cmpnei      	r3, 2
  cc:	30fe      	movi      	r0, 254
  ce:	3102      	movi      	r1, 2
  d0:	9846      	ld.w      	r2, (r14, 0x18)
  d2:	c4200c40 	inct      	r1, r0, 0
  d6:	a424      	st.b      	r1, (r4, 0x4)
  d8:	6de0      	or      	r7, r8
  da:	3b42      	cmpnei      	r3, 2
  dc:	e9020097 	bez      	r2, 0x20a	// 20a <__wpa_send_eapol+0x20a>
  e0:	0896      	bt      	0x20c	// 20c <__wpa_send_eapol+0x20c>
  e2:	ece71000 	ori      	r7, r7, 4096
  e6:	c50755e3 	zext      	r3, r7, 15, 8
  ea:	a465      	st.b      	r3, (r4, 0x5)
  ec:	a4e6      	st.b      	r7, (r4, 0x6)
  ee:	e90b0093 	bez      	r11, 0x214	// 214 <__wpa_send_eapol+0x214>
  f2:	d80520b6 	ld.w      	r0, (r5, 0x2d8)
  f6:	d86520b5 	ld.w      	r3, (r5, 0x2d4)
  fa:	3b42      	cmpnei      	r3, 2
  fc:	088f      	bt      	0x21a	// 21a <__wpa_send_eapol+0x21a>
  fe:	e92b008e 	bnez      	r11, 0x21a	// 21a <__wpa_send_eapol+0x21a>
 102:	dd640007 	st.b      	r11, (r4, 0x7)
 106:	dd640008 	st.b      	r11, (r4, 0x8)
 10a:	e565025b 	addi      	r11, r5, 604
 10e:	e4650237 	addi      	r3, r5, 568
 112:	b86c      	st.w      	r3, (r14, 0x30)
 114:	d86b2002 	ld.w      	r3, (r11, 0x8)
 118:	dc6b2005 	st.w      	r3, (r11, 0x14)
 11c:	6c6f      	mov      	r1, r11
 11e:	e40b000b 	addi      	r0, r11, 12
 122:	3208      	movi      	r2, 8
 124:	e0000000 	bsr      	0x0	// 0 <memcpy>
 128:	e56b100b 	subi      	r11, r11, 12
 12c:	986c      	ld.w      	r3, (r14, 0x30)
 12e:	66ce      	cmpne      	r3, r11
 130:	0bf1      	bt      	0x112	// 112 <__wpa_send_eapol+0x112>
 132:	e5650243 	addi      	r11, r5, 580
 136:	3108      	movi      	r1, 8
 138:	6c2f      	mov      	r0, r11
 13a:	e0000000 	bsr      	0x0	// 0 <inc_byte_array>
 13e:	3208      	movi      	r2, 8
 140:	6c6f      	mov      	r1, r11
 142:	e4040008 	addi      	r0, r4, 9
 146:	e0000000 	bsr      	0x0	// 0 <memcpy>
 14a:	3301      	movi      	r3, 1
 14c:	dc652093 	st.w      	r3, (r5, 0x24c)
 150:	986b      	ld.w      	r3, (r14, 0x2c)
 152:	e9030008 	bez      	r3, 0x162	// 162 <__wpa_send_eapol+0x162>
 156:	3220      	movi      	r2, 32
 158:	6c4f      	mov      	r1, r3
 15a:	e4040010 	addi      	r0, r4, 17
 15e:	e0000000 	bsr      	0x0	// 0 <memcpy>
 162:	986a      	ld.w      	r3, (r14, 0x28)
 164:	e9030008 	bez      	r3, 0x174	// 174 <__wpa_send_eapol+0x174>
 168:	3208      	movi      	r2, 8
 16a:	6c4f      	mov      	r1, r3
 16c:	e4040040 	addi      	r0, r4, 65
 170:	e0000000 	bsr      	0x0	// 0 <memcpy>
 174:	9868      	ld.w      	r3, (r14, 0x20)
 176:	e9030014 	bez      	r3, 0x19e	// 19e <__wpa_send_eapol+0x19e>
 17a:	9866      	ld.w      	r3, (r14, 0x18)
 17c:	e9230056 	bnez      	r3, 0x228	// 228 <__wpa_send_eapol+0x228>
 180:	9843      	ld.w      	r2, (r14, 0xc)
 182:	9828      	ld.w      	r1, (r14, 0x20)
 184:	9809      	ld.w      	r0, (r14, 0x24)
 186:	e0000000 	bsr      	0x0	// 0 <memcpy>
 18a:	9845      	ld.w      	r2, (r14, 0x14)
 18c:	9867      	ld.w      	r3, (r14, 0x1c)
 18e:	60c8      	addu      	r3, r2
 190:	9843      	ld.w      	r2, (r14, 0xc)
 192:	c50255e2 	zext      	r2, r2, 15, 8
 196:	a340      	st.b      	r2, (r3, 0x0)
 198:	d84e000c 	ld.b      	r2, (r14, 0xc)
 19c:	a341      	st.b      	r2, (r3, 0x1)
 19e:	e4e72100 	andi      	r7, r7, 256
 1a2:	e9070099 	bez      	r7, 0x2d4	// 2d4 <__wpa_send_eapol+0x2d4>
 1a6:	d865208c 	ld.w      	r3, (r5, 0x230)
 1aa:	e9030005 	bez      	r3, 0x1b4	// 1b4 <__wpa_send_eapol+0x1b4>
 1ae:	9865      	ld.w      	r3, (r14, 0x14)
 1b0:	e9230082 	bnez      	r3, 0x2b4	// 2b4 <__wpa_send_eapol+0x2b4>
 1b4:	1274      	lrw      	r3, 0x0	// 304 <__wpa_send_eapol+0x304>
 1b6:	3200      	movi      	r2, 0
 1b8:	5d3e      	addi      	r1, r5, 8
 1ba:	6c2b      	mov      	r0, r10
 1bc:	e0000000 	bsr      	0x0	// 0 <__wpa_send_eapol>
 1c0:	043a      	br      	0x234	// 234 <__wpa_send_eapol+0x234>
 1c2:	ea080003 	movi      	r8, 3
 1c6:	074e      	br      	0x62	// 62 <__wpa_send_eapol+0x62>
 1c8:	d80520b7 	ld.w      	r0, (r5, 0x2dc)
 1cc:	e0000000 	bsr      	0x0	// 0 <wpa_use_aes_key_wrap>
 1d0:	6d83      	mov      	r6, r0
 1d2:	e920ff4f 	bnez      	r0, 0x70	// 70 <__wpa_send_eapol+0x70>
 1d6:	eb480003 	cmpnei      	r8, 3
 1da:	0b4f      	bt      	0x78	// 78 <__wpa_send_eapol+0x78>
 1dc:	074a      	br      	0x70	// 70 <__wpa_send_eapol+0x70>
 1de:	9863      	ld.w      	r3, (r14, 0xc)
 1e0:	c7c05022 	bmaski      	r2, 31
 1e4:	2207      	addi      	r2, 8
 1e6:	c4432026 	and      	r6, r3, r2
 1ea:	e9a60007 	bhsz      	r6, 0x1f8	// 1f8 <__wpa_send_eapol+0x1f8>
 1ee:	3300      	movi      	r3, 0
 1f0:	2e00      	subi      	r6, 1
 1f2:	2b07      	subi      	r3, 8
 1f4:	6d8c      	or      	r6, r3
 1f6:	2600      	addi      	r6, 1
 1f8:	e9060004 	bez      	r6, 0x200	// 200 <__wpa_send_eapol+0x200>
 1fc:	3308      	movi      	r3, 8
 1fe:	5bd9      	subu      	r6, r3, r6
 200:	5e7e      	addi      	r3, r6, 8
 202:	9843      	ld.w      	r2, (r14, 0xc)
 204:	c4620029 	addu      	r9, r2, r3
 208:	0738      	br      	0x78	// 78 <__wpa_send_eapol+0x78>
 20a:	0f6e      	bf      	0xe6	// e6 <__wpa_send_eapol+0xe6>
 20c:	986c      	ld.w      	r3, (r14, 0x30)
 20e:	4364      	lsli      	r3, r3, 4
 210:	6dcc      	or      	r7, r3
 212:	076a      	br      	0xe6	// e6 <__wpa_send_eapol+0xe6>
 214:	d80a2011 	ld.w      	r0, (r10, 0x44)
 218:	076f      	br      	0xf6	// f6 <wpa_cipher_key_len+0xf6>
 21a:	e0000000 	bsr      	0x0	// 0 <wpa_cipher_key_len>
 21e:	c50055e3 	zext      	r3, r0, 15, 8
 222:	a467      	st.b      	r3, (r4, 0x7)
 224:	a408      	st.b      	r0, (r4, 0x8)
 226:	0772      	br      	0x10a	// 10a <__wpa_send_eapol+0x10a>
 228:	6c27      	mov      	r0, r9
 22a:	e0000000 	bsr      	0x0	// 0 <_os_zalloc>
 22e:	6ec3      	mov      	r11, r0
 230:	e9200004 	bnez      	r0, 0x238	// 238 <__wpa_send_eapol+0x238>
 234:	6c13      	mov      	r0, r4
 236:	0425      	br      	0x280	// 280 <__wpa_send_eapol+0x280>
 238:	9843      	ld.w      	r2, (r14, 0xc)
 23a:	9828      	ld.w      	r1, (r14, 0x20)
 23c:	e0000000 	bsr      	0x0	// 0 <memcpy>
 240:	e9060007 	bez      	r6, 0x24e	// 24e <__wpa_send_eapol+0x24e>
 244:	3200      	movi      	r2, 0
 246:	9863      	ld.w      	r3, (r14, 0xc)
 248:	2a22      	subi      	r2, 35
 24a:	d46b0022 	str.b      	r2, (r11, r3 << 0)
 24e:	eb480002 	cmpnei      	r8, 2
 252:	081b      	bt      	0x288	// 288 <__wpa_send_eapol+0x288>
 254:	e4491007 	subi      	r2, r9, 8
 258:	e9a20004 	bhsz      	r2, 0x260	// 260 <__wpa_send_eapol+0x260>
 25c:	e4491000 	subi      	r2, r9, 1
 260:	9869      	ld.w      	r3, (r14, 0x24)
 262:	b860      	st.w      	r3, (r14, 0x0)
 264:	5243      	asri      	r2, r2, 3
 266:	6cef      	mov      	r3, r11
 268:	d8252086 	ld.w      	r1, (r5, 0x218)
 26c:	e4050133 	addi      	r0, r5, 308
 270:	e0000000 	bsr      	0x0	// 0 <aes_wrap>
 274:	e9000014 	bez      	r0, 0x29c	// 29c <__wpa_send_eapol+0x29c>
 278:	6c13      	mov      	r0, r4
 27a:	e0000000 	bsr      	0x0	// 0 <_os_free>
 27e:	6c2f      	mov      	r0, r11
 280:	e0000000 	bsr      	0x0	// 0 <_os_free>
 284:	140d      	addi      	r14, r14, 52
 286:	1498      	pop      	r4-r11, r15
 288:	d80520b7 	ld.w      	r0, (r5, 0x2dc)
 28c:	e0000000 	bsr      	0x0	// 0 <wpa_use_aes_key_wrap>
 290:	e920ffe2 	bnez      	r0, 0x254	// 254 <__wpa_send_eapol+0x254>
 294:	eb480003 	cmpnei      	r8, 3
 298:	0fde      	bf      	0x254	// 254 <__wpa_send_eapol+0x254>
 29a:	07ef      	br      	0x278	// 278 <__wpa_send_eapol+0x278>
 29c:	9845      	ld.w      	r2, (r14, 0x14)
 29e:	9867      	ld.w      	r3, (r14, 0x1c)
 2a0:	60c8      	addu      	r3, r2
 2a2:	c50955e2 	zext      	r2, r9, 15, 8
 2a6:	a340      	st.b      	r2, (r3, 0x0)
 2a8:	dd230001 	st.b      	r9, (r3, 0x1)
 2ac:	6c2f      	mov      	r0, r11
 2ae:	e0000000 	bsr      	0x0	// 0 <_os_free>
 2b2:	0776      	br      	0x19e	// 19e <__wpa_send_eapol+0x19e>
 2b4:	9867      	ld.w      	r3, (r14, 0x1c)
 2b6:	b862      	st.w      	r3, (r14, 0x8)
 2b8:	9864      	ld.w      	r3, (r14, 0x10)
 2ba:	b861      	st.w      	r3, (r14, 0x4)
 2bc:	b880      	st.w      	r4, (r14, 0x0)
 2be:	6ce3      	mov      	r3, r8
 2c0:	d84520b7 	ld.w      	r2, (r5, 0x2dc)
 2c4:	d8252085 	ld.w      	r1, (r5, 0x214)
 2c8:	e4050113 	addi      	r0, r5, 276
 2cc:	e0000000 	bsr      	0x0	// 0 <wpa_eapol_key_mic>
 2d0:	e980ffb2 	blz      	r0, 0x234	// 234 <__wpa_send_eapol+0x234>
 2d4:	5dde      	addi      	r6, r5, 8
 2d6:	3301      	movi      	r3, 1
 2d8:	3207      	movi      	r2, 7
 2da:	6c5b      	mov      	r1, r6
 2dc:	9500      	ld.w      	r0, (r5, 0x0)
 2de:	e0000000 	bsr      	0x0	// 0 <__wpa_send_eapol>
 2e2:	d84a2023 	ld.w      	r2, (r10, 0x8c)
 2e6:	d865208d 	ld.w      	r3, (r5, 0x234)
 2ea:	d982200a 	ld.w      	r12, (r2, 0x28)
 2ee:	e90cffa3 	bez      	r12, 0x234	// 234 <__wpa_send_eapol+0x234>
 2f2:	b860      	st.w      	r3, (r14, 0x0)
 2f4:	d80a2024 	ld.w      	r0, (r10, 0x90)
 2f8:	9864      	ld.w      	r3, (r14, 0x10)
 2fa:	6c93      	mov      	r2, r4
 2fc:	6c5b      	mov      	r1, r6
 2fe:	7bf1      	jsr      	r12
 300:	079a      	br      	0x234	// 234 <__wpa_send_eapol+0x234>
 302:	0000      	.short	0x0000
 304:	00000000 	.long	0x00000000

Disassembly of section .text.wpa_send_eapol:

00000000 <wpa_send_eapol>:
   0:	14d8      	push      	r4-r11, r15
   2:	1426      	subi      	r14, r14, 24
   4:	98d1      	ld.w      	r6, (r14, 0x44)
   6:	6e5b      	mov      	r9, r6
   8:	98d2      	ld.w      	r6, (r14, 0x48)
   a:	6e9b      	mov      	r10, r6
   c:	98d3      	ld.w      	r6, (r14, 0x4c)
   e:	6edb      	mov      	r11, r6
  10:	6dc3      	mov      	r7, r0
  12:	6d47      	mov      	r5, r1
  14:	6d0b      	mov      	r4, r2
  16:	d98e200f 	ld.w      	r12, (r14, 0x3c)
  1a:	d9ae2010 	ld.w      	r13, (r14, 0x40)
  1e:	e4c22008 	andi      	r6, r2, 8
  22:	e901004d 	bez      	r1, 0xbc	// bc <wpa_send_eapol+0xbc>
  26:	ea080000 	movi      	r8, 0
  2a:	dd0e2005 	st.w      	r8, (r14, 0x14)
  2e:	dd6e2004 	st.w      	r11, (r14, 0x10)
  32:	dd4e2003 	st.w      	r10, (r14, 0xc)
  36:	dd2e2002 	st.w      	r9, (r14, 0x8)
  3a:	ddae2001 	st.w      	r13, (r14, 0x4)
  3e:	dd8e2000 	st.w      	r12, (r14, 0x0)
  42:	e0000000 	bsr      	0x0	// 0 <wpa_send_eapol>
  46:	3e40      	cmpnei      	r6, 0
  48:	956e      	ld.w      	r3, (r5, 0x38)
  4a:	954f      	ld.w      	r2, (r5, 0x3c)
  4c:	c4430c40 	inct      	r2, r3, 0
  50:	3a41      	cmpnei      	r2, 1
  52:	6e27      	mov      	r8, r9
  54:	0817      	bt      	0x82	// 82 <wpa_send_eapol+0x82>
  56:	d8672020 	ld.w      	r3, (r7, 0x80)
  5a:	e9030014 	bez      	r3, 0x82	// 82 <wpa_send_eapol+0x82>
  5e:	31fa      	movi      	r1, 250
  60:	4121      	lsli      	r1, r1, 1
  62:	3e40      	cmpnei      	r6, 0
  64:	3396      	movi      	r3, 150
  66:	c4610c20 	incf      	r3, r1, 0
  6a:	9738      	ld.w      	r1, (r7, 0x60)
  6c:	e901000e 	bez      	r1, 0x88	// 88 <wpa_send_eapol+0x88>
  70:	e9060028 	bez      	r6, 0xc0	// c0 <wpa_send_eapol+0xc0>
  74:	e4842100 	andi      	r4, r4, 256
  78:	e9240024 	bnez      	r4, 0xc0	// c0 <wpa_send_eapol+0xc0>
  7c:	3a41      	cmpnei      	r2, 1
  7e:	0810      	bt      	0x9e	// 9e <wpa_send_eapol+0x9e>
  80:	040c      	br      	0x98	// 98 <wpa_send_eapol+0x98>
  82:	33fa      	movi      	r3, 250
  84:	4362      	lsli      	r3, r3, 2
  86:	07f2      	br      	0x6a	// 6a <wpa_send_eapol+0x6a>
  88:	e906000b 	bez      	r6, 0x9e	// 9e <wpa_send_eapol+0x9e>
  8c:	3a41      	cmpnei      	r2, 1
  8e:	0808      	bt      	0x9e	// 9e <wpa_send_eapol+0x9e>
  90:	e4842100 	andi      	r4, r4, 256
  94:	e9240005 	bnez      	r4, 0x9e	// 9e <wpa_send_eapol+0x9e>
  98:	3201      	movi      	r2, 1
  9a:	dc4520bb 	st.w      	r2, (r5, 0x2ec)
  9e:	ea0c00fa 	movi      	r12, 250
  a2:	c44c482c 	lsli      	r12, r12, 2
  a6:	c5838040 	divs      	r0, r3, r12
  aa:	c5808421 	mult      	r1, r0, r12
  ae:	5b25      	subu      	r1, r3, r1
  b0:	b8a0      	st.w      	r5, (r14, 0x0)
  b2:	6cdf      	mov      	r3, r7
  b4:	1045      	lrw      	r2, 0x0	// c8 <wpa_send_eapol+0xc8>
  b6:	7c70      	mult      	r1, r12
  b8:	e0000000 	bsr      	0x0	// 0 <eloop_register_timeout>
  bc:	1406      	addi      	r14, r14, 24
  be:	1498      	pop      	r4-r11, r15
  c0:	33fa      	movi      	r3, 250
  c2:	4364      	lsli      	r3, r3, 4
  c4:	07ed      	br      	0x9e	// 9e <wpa_send_eapol+0x9e>
  c6:	0000      	.short	0x0000
  c8:	00000000 	.long	0x00000000

Disassembly of section .text.sm_WPA_PTK_GROUP_REKEYNEGOTIATING_Enter.constprop.12:

00000000 <sm_WPA_PTK_GROUP_REKEYNEGOTIATING_Enter.constprop.12>:
   0:	14d6      	push      	r4-r9, r15
   2:	1430      	subi      	r14, r14, 64
   4:	d84002bc 	ld.b      	r2, (r0, 0x2bc)
   8:	3301      	movi      	r3, 1
   a:	c4435c00 	ins      	r2, r3, 0, 0
   e:	b067      	st.w      	r3, (r0, 0x1c)
  10:	906f      	ld.w      	r3, (r0, 0x3c)
  12:	2300      	addi      	r3, 1
  14:	dc4002bc 	st.b      	r2, (r0, 0x2bc)
  18:	6d03      	mov      	r4, r0
  1a:	90c1      	ld.w      	r6, (r0, 0x4)
  1c:	b06f      	st.w      	r3, (r0, 0x3c)
  1e:	9000      	ld.w      	r0, (r0, 0x0)
  20:	9058      	ld.w      	r2, (r0, 0x60)
  22:	e9020004 	bez      	r2, 0x2a	// 2a <sm_WPA_PTK_GROUP_REKEYNEGOTIATING_Enter.constprop.12+0x2a>
  26:	3b01      	cmphsi      	r3, 2
  28:	0878      	bt      	0x118	// 118 <sm_WPA_PTK_GROUP_REKEYNEGOTIATING_Enter.constprop.12+0x118>
  2a:	9056      	ld.w      	r2, (r0, 0x58)
  2c:	64c8      	cmphs      	r2, r3
  2e:	0c75      	bf      	0x118	// 118 <sm_WPA_PTK_GROUP_REKEYNEGOTIATING_Enter.constprop.12+0x118>
  30:	d86420b5 	ld.w      	r3, (r4, 0x2d4)
  34:	3b41      	cmpnei      	r3, 1
  36:	3300      	movi      	r3, 0
  38:	0803      	bt      	0x3e	// 3e <sm_WPA_PTK_GROUP_REKEYNEGOTIATING_Enter.constprop.12+0x3e>
  3a:	dc6420a9 	st.w      	r3, (r4, 0x2a4)
  3e:	b470      	st.w      	r3, (r4, 0x40)
  40:	b866      	st.w      	r3, (r14, 0x18)
  42:	b867      	st.w      	r3, (r14, 0x1c)
  44:	9671      	ld.w      	r3, (r6, 0x44)
  46:	3b42      	cmpnei      	r3, 2
  48:	080d      	bt      	0x62	// 62 <sm_WPA_PTK_GROUP_REKEYNEGOTIATING_Enter.constprop.12+0x62>
  4a:	d8602023 	ld.w      	r3, (r0, 0x8c)
  4e:	9646      	ld.w      	r2, (r6, 0x18)
  50:	d9832009 	ld.w      	r12, (r3, 0x24)
  54:	e90c0007 	bez      	r12, 0x62	// 62 <sm_WPA_PTK_GROUP_REKEYNEGOTIATING_Enter.constprop.12+0x62>
  58:	1b06      	addi      	r3, r14, 24
  5a:	3100      	movi      	r1, 0
  5c:	d8002024 	ld.w      	r0, (r0, 0x90)
  60:	7bf1      	jsr      	r12
  62:	1174      	lrw      	r3, 0x0	// 130 <sm_WPA_PTK_GROUP_REKEYNEGOTIATING_Enter.constprop.12+0x130>
  64:	3200      	movi      	r2, 0
  66:	5c3e      	addi      	r1, r4, 8
  68:	9400      	ld.w      	r0, (r4, 0x0)
  6a:	e0000000 	bsr      	0x0	// 0 <sm_WPA_PTK_GROUP_REKEYNEGOTIATING_Enter.constprop.12>
  6e:	9460      	ld.w      	r3, (r4, 0x0)
  70:	d8632021 	ld.w      	r3, (r3, 0x84)
  74:	e9230054 	bnez      	r3, 0x11c	// 11c <sm_WPA_PTK_GROUP_REKEYNEGOTIATING_Enter.constprop.12+0x11c>
  78:	d86420b7 	ld.w      	r3, (r4, 0x2dc)
  7c:	eb438000 	cmpnei      	r3, 32768
  80:	0c4e      	bf      	0x11c	// 11c <sm_WPA_PTK_GROUP_REKEYNEGOTIATING_Enter.constprop.12+0x11c>
  82:	96a6      	ld.w      	r5, (r6, 0x18)
  84:	45a5      	lsli      	r5, r5, 5
  86:	2547      	addi      	r5, 72
  88:	6158      	addu      	r5, r6
  8a:	d92420b5 	ld.w      	r9, (r4, 0x2d4)
  8e:	eb490002 	cmpnei      	r9, 2
  92:	d9062005 	ld.w      	r8, (r6, 0x14)
  96:	084b      	bt      	0x12c	// 12c <sm_WPA_PTK_GROUP_REKEYNEGOTIATING_Enter.constprop.12+0x12c>
  98:	e4080007 	addi      	r0, r8, 8
  9c:	e0000000 	bsr      	0x0	// 0 <_os_malloc>
  a0:	6dc3      	mov      	r7, r0
  a2:	e900003b 	bez      	r0, 0x118	// 118 <sm_WPA_PTK_GROUP_REKEYNEGOTIATING_Enter.constprop.12+0x118>
  a6:	9646      	ld.w      	r2, (r6, 0x18)
  a8:	3300      	movi      	r3, 0
  aa:	e4422003 	andi      	r2, r2, 3
  ae:	dc6e0015 	st.b      	r3, (r14, 0x15)
  b2:	9665      	ld.w      	r3, (r6, 0x14)
  b4:	dc4e0014 	st.b      	r2, (r14, 0x14)
  b8:	b861      	st.w      	r3, (r14, 0x4)
  ba:	b8a0      	st.w      	r5, (r14, 0x0)
  bc:	6ce7      	mov      	r3, r9
  be:	1a05      	addi      	r2, r14, 20
  c0:	103d      	lrw      	r1, 0xfac01	// 134 <sm_WPA_PTK_GROUP_REKEYNEGOTIATING_Enter.constprop.12+0x134>
  c2:	e0000000 	bsr      	0x0	// 0 <wpa_add_kde>
  c6:	c4e00088 	subu      	r8, r0, r7
  ca:	6d5f      	mov      	r5, r7
  cc:	d8242040 	ld.w      	r1, (r4, 0x100)
  d0:	d80420b7 	ld.w      	r0, (r4, 0x2dc)
  d4:	d9242000 	ld.w      	r9, (r4, 0x0)
  d8:	e0000000 	bsr      	0x0	// 0 <wpa_mic_len>
  dc:	32e0      	movi      	r2, 224
  de:	33a0      	movi      	r3, 160
  e0:	3840      	cmpnei      	r0, 0
  e2:	4362      	lsli      	r3, r3, 2
  e4:	4242      	lsli      	r2, r2, 2
  e6:	c4430c20 	incf      	r2, r3, 0
  ea:	d8642090 	ld.w      	r3, (r4, 0x240)
  ee:	3b40      	cmpnei      	r3, 0
  f0:	3301      	movi      	r3, 1
  f2:	b864      	st.w      	r3, (r14, 0x10)
  f4:	9666      	ld.w      	r3, (r6, 0x18)
  f6:	6443      	mvcv      	r1
  f8:	4126      	lsli      	r1, r1, 6
  fa:	b863      	st.w      	r3, (r14, 0xc)
  fc:	3300      	movi      	r3, 0
  fe:	b860      	st.w      	r3, (r14, 0x0)
 100:	6c84      	or      	r2, r1
 102:	6c27      	mov      	r0, r9
 104:	dd0e2002 	st.w      	r8, (r14, 0x8)
 108:	b8a1      	st.w      	r5, (r14, 0x4)
 10a:	1b06      	addi      	r3, r14, 24
 10c:	6c53      	mov      	r1, r4
 10e:	e0000000 	bsr      	0x0	// 0 <sm_WPA_PTK_GROUP_REKEYNEGOTIATING_Enter.constprop.12>
 112:	6c1f      	mov      	r0, r7
 114:	e0000000 	bsr      	0x0	// 0 <_os_free>
 118:	1410      	addi      	r14, r14, 64
 11a:	1496      	pop      	r4-r9, r15
 11c:	9625      	ld.w      	r1, (r6, 0x14)
 11e:	1808      	addi      	r0, r14, 32
 120:	e0000000 	bsr      	0x0	// 0 <os_random_bytes>
 124:	e980fffa 	blz      	r0, 0x118	// 118 <sm_WPA_PTK_GROUP_REKEYNEGOTIATING_Enter.constprop.12+0x118>
 128:	1d08      	addi      	r5, r14, 32
 12a:	07b0      	br      	0x8a	// 8a <sm_WPA_PTK_GROUP_REKEYNEGOTIATING_Enter.constprop.12+0x8a>
 12c:	3700      	movi      	r7, 0
 12e:	07cf      	br      	0xcc	// cc <sm_WPA_PTK_GROUP_REKEYNEGOTIATING_Enter.constprop.12+0xcc>
 130:	00000000 	.long	0x00000000
 134:	000fac01 	.long	0x000fac01

Disassembly of section .text.sm_WPA_PTK_PTKSTART_Enter.constprop.19:

00000000 <sm_WPA_PTK_PTKSTART_Enter.constprop.19>:
   0:	14d3      	push      	r4-r6, r15
   2:	142b      	subi      	r14, r14, 44
   4:	d86002bc 	ld.b      	r3, (r0, 0x2bc)
   8:	3201      	movi      	r2, 1
   a:	3500      	movi      	r5, 0
   c:	c4625c00 	ins      	r3, r2, 0, 0
  10:	c4655c07 	ins      	r3, r5, 7, 7
  14:	dc6002bc 	st.b      	r3, (r0, 0x2bc)
  18:	906e      	ld.w      	r3, (r0, 0x38)
  1a:	3207      	movi      	r2, 7
  1c:	2300      	addi      	r3, 1
  1e:	b046      	st.w      	r2, (r0, 0x18)
  20:	6d03      	mov      	r4, r0
  22:	dca020aa 	st.w      	r5, (r0, 0x2a8)
  26:	b0b0      	st.w      	r5, (r0, 0x40)
  28:	b06e      	st.w      	r3, (r0, 0x38)
  2a:	9000      	ld.w      	r0, (r0, 0x0)
  2c:	9057      	ld.w      	r2, (r0, 0x5c)
  2e:	64c8      	cmphs      	r2, r3
  30:	0c4d      	bf      	0xca	// ca <sm_WPA_PTK_PTKSTART_Enter.constprop.19+0xca>
  32:	5cde      	addi      	r6, r4, 8
  34:	1173      	lrw      	r3, 0x0	// 100 <sm_WPA_PTK_PTKSTART_Enter.constprop.19+0x100>
  36:	6c97      	mov      	r2, r5
  38:	6c5b      	mov      	r1, r6
  3a:	e0000000 	bsr      	0x0	// 0 <sm_WPA_PTK_PTKSTART_Enter.constprop.19>
  3e:	d86420b5 	ld.w      	r3, (r4, 0x2d4)
  42:	3b42      	cmpnei      	r3, 2
  44:	0858      	bt      	0xf4	// f4 <sm_WPA_PTK_PTKSTART_Enter.constprop.19+0xf4>
  46:	d86420b7 	ld.w      	r3, (r4, 0x2dc)
  4a:	114f      	lrw      	r2, 0x13fc0a1	// 104 <sm_WPA_PTK_PTKSTART_Enter.constprop.19+0x104>
  4c:	688c      	and      	r2, r3
  4e:	e922000e 	bnez      	r2, 0x6a	// 6a <sm_WPA_PTK_PTKSTART_Enter.constprop.19+0x6a>
  52:	3280      	movi      	r2, 128
  54:	424f      	lsli      	r2, r2, 15
  56:	648e      	cmpne      	r3, r2
  58:	0805      	bt      	0x62	// 62 <sm_WPA_PTK_PTKSTART_Enter.constprop.19+0x62>
  5a:	d84420b8 	ld.w      	r2, (r4, 0x2e0)
  5e:	e9220009 	bnez      	r2, 0x70	// 70 <sm_WPA_PTK_PTKSTART_Enter.constprop.19+0x70>
  62:	e4432c00 	andi      	r2, r3, 3072
  66:	e9020048 	bez      	r2, 0xf6	// f6 <sm_WPA_PTK_PTKSTART_Enter.constprop.19+0xf6>
  6a:	eb438000 	cmpnei      	r3, 32768
  6e:	0c43      	bf      	0xf4	// f4 <sm_WPA_PTK_PTKSTART_Enter.constprop.19+0xf4>
  70:	3200      	movi      	r2, 0
  72:	2a22      	subi      	r2, 35
  74:	dc4e0014 	st.b      	r2, (r14, 0x14)
  78:	3214      	movi      	r2, 20
  7a:	dc4e0015 	st.b      	r2, (r14, 0x15)
  7e:	3200      	movi      	r2, 0
  80:	dc4e0016 	st.b      	r2, (r14, 0x16)
  84:	320f      	movi      	r2, 15
  86:	dc4e0017 	st.b      	r2, (r14, 0x17)
  8a:	3200      	movi      	r2, 0
  8c:	2a53      	subi      	r2, 84
  8e:	d82420b8 	ld.w      	r1, (r4, 0x2e0)
  92:	dc4e0018 	st.b      	r2, (r14, 0x18)
  96:	3204      	movi      	r2, 4
  98:	dc4e0019 	st.b      	r2, (r14, 0x19)
  9c:	e9010019 	bez      	r1, 0xce	// ce <sm_WPA_PTK_PTKSTART_Enter.constprop.19+0xce>
  a0:	3210      	movi      	r2, 16
  a2:	2107      	addi      	r1, 8
  a4:	e40e0019 	addi      	r0, r14, 26
  a8:	e0000000 	bsr      	0x0	// 0 <memcpy>
  ac:	3216      	movi      	r2, 22
  ae:	1905      	addi      	r1, r14, 20
  b0:	3300      	movi      	r3, 0
  b2:	b842      	st.w      	r2, (r14, 0x8)
  b4:	e4440057 	addi      	r2, r4, 88
  b8:	b821      	st.w      	r1, (r14, 0x4)
  ba:	b840      	st.w      	r2, (r14, 0x0)
  bc:	b864      	st.w      	r3, (r14, 0x10)
  be:	b863      	st.w      	r3, (r14, 0xc)
  c0:	3288      	movi      	r2, 136
  c2:	6c53      	mov      	r1, r4
  c4:	9400      	ld.w      	r0, (r4, 0x0)
  c6:	e0000000 	bsr      	0x0	// 0 <sm_WPA_PTK_PTKSTART_Enter.constprop.19>
  ca:	140b      	addi      	r14, r14, 44
  cc:	1493      	pop      	r4-r6, r15
  ce:	32c0      	movi      	r2, 192
  d0:	424a      	lsli      	r2, r2, 10
  d2:	688c      	and      	r2, r3
  d4:	e9220013 	bnez      	r2, 0xfa	// fa <sm_WPA_PTK_PTKSTART_Enter.constprop.19+0xfa>
  d8:	9440      	ld.w      	r2, (r4, 0x0)
  da:	b861      	st.w      	r3, (r14, 0x4)
  dc:	e46e0019 	addi      	r3, r14, 26
  e0:	b860      	st.w      	r3, (r14, 0x0)
  e2:	229b      	addi      	r2, 156
  e4:	6cdb      	mov      	r3, r6
  e6:	d8242040 	ld.w      	r1, (r4, 0x100)
  ea:	e40400bf 	addi      	r0, r4, 192
  ee:	e0000000 	bsr      	0x0	// 0 <rsn_pmkid>
  f2:	07dd      	br      	0xac	// ac <sm_WPA_PTK_PTKSTART_Enter.constprop.19+0xac>
  f4:	3200      	movi      	r2, 0
  f6:	6c4b      	mov      	r1, r2
  f8:	07dc      	br      	0xb0	// b0 <sm_WPA_PTK_PTKSTART_Enter.constprop.19+0xb0>
  fa:	3216      	movi      	r2, 22
  fc:	07da      	br      	0xb0	// b0 <sm_WPA_PTK_PTKSTART_Enter.constprop.19+0xb0>
  fe:	0000      	.short	0x0000
 100:	00000000 	.long	0x00000000
 104:	013fc0a1 	.long	0x013fc0a1

Disassembly of section .text.sm_WPA_PTK_PTKINITNEGOTIATING_Enter.constprop.23:

00000000 <sm_WPA_PTK_PTKINITNEGOTIATING_Enter.constprop.23>:
   0:	14d8      	push      	r4-r11, r15
   2:	1433      	subi      	r14, r14, 76
   4:	d86002bc 	ld.b      	r3, (r0, 0x2bc)
   8:	3201      	movi      	r2, 1
   a:	c4625c00 	ins      	r3, r2, 0, 0
   e:	dc6002bc 	st.b      	r3, (r0, 0x2bc)
  12:	330a      	movi      	r3, 10
  14:	b066      	st.w      	r3, (r0, 0x18)
  16:	3300      	movi      	r3, 0
  18:	b070      	st.w      	r3, (r0, 0x40)
  1a:	906e      	ld.w      	r3, (r0, 0x38)
  1c:	60c8      	addu      	r3, r2
  1e:	6d03      	mov      	r4, r0
  20:	90a1      	ld.w      	r5, (r0, 0x4)
  22:	b06e      	st.w      	r3, (r0, 0x38)
  24:	9000      	ld.w      	r0, (r0, 0x0)
  26:	9058      	ld.w      	r2, (r0, 0x60)
  28:	e9020004 	bez      	r2, 0x30	// 30 <sm_WPA_PTK_PTKINITNEGOTIATING_Enter.constprop.23+0x30>
  2c:	3b01      	cmphsi      	r3, 2
  2e:	08c3      	bt      	0x1b4	// 1b4 <sm_WPA_PTK_PTKINITNEGOTIATING_Enter.constprop.23+0x1b4>
  30:	9057      	ld.w      	r2, (r0, 0x5c)
  32:	64c8      	cmphs      	r2, r3
  34:	0cc0      	bf      	0x1b4	// 1b4 <sm_WPA_PTK_PTKINITNEGOTIATING_Enter.constprop.23+0x1b4>
  36:	d8602023 	ld.w      	r3, (r0, 0x8c)
  3a:	3100      	movi      	r1, 0
  3c:	d9832009 	ld.w      	r12, (r3, 0x24)
  40:	b829      	st.w      	r1, (r14, 0x24)
  42:	b82a      	st.w      	r1, (r14, 0x28)
  44:	9546      	ld.w      	r2, (r5, 0x18)
  46:	e90c0006 	bez      	r12, 0x52	// 52 <sm_WPA_PTK_PTKINITNEGOTIATING_Enter.constprop.23+0x52>
  4a:	1b09      	addi      	r3, r14, 36
  4c:	d8002024 	ld.w      	r0, (r0, 0x90)
  50:	7bf1      	jsr      	r12
  52:	d86420b5 	ld.w      	r3, (r4, 0x2d4)
  56:	9400      	ld.w      	r0, (r4, 0x0)
  58:	3b41      	cmpnei      	r3, 1
  5a:	d9602025 	ld.w      	r11, (r0, 0x94)
  5e:	d8e02026 	ld.w      	r7, (r0, 0x98)
  62:	081d      	bt      	0x9c	// 9c <sm_WPA_PTK_PTKINITNEGOTIATING_Enter.constprop.23+0x9c>
  64:	906e      	ld.w      	r3, (r0, 0x38)
  66:	e4632002 	andi      	r3, r3, 2
  6a:	e9030019 	bez      	r3, 0x9c	// 9c <sm_WPA_PTK_PTKINITNEGOTIATING_Enter.constprop.23+0x9c>
  6e:	d86b0001 	ld.b      	r3, (r11, 0x1)
  72:	2301      	addi      	r3, 2
  74:	65cd      	cmplt      	r3, r7
  76:	0c13      	bf      	0x9c	// 9c <sm_WPA_PTK_PTKINITNEGOTIATING_Enter.constprop.23+0x9c>
  78:	d84b0000 	ld.b      	r2, (r11, 0x0)
  7c:	eb420030 	cmpnei      	r2, 48
  80:	080e      	bt      	0x9c	// 9c <sm_WPA_PTK_PTKINITNEGOTIATING_Enter.constprop.23+0x9c>
  82:	62cc      	addu      	r11, r3
  84:	d86b0000 	ld.b      	r3, (r11, 0x0)
  88:	eb430036 	cmpnei      	r3, 54
  8c:	0805      	bt      	0x96	// 96 <sm_WPA_PTK_PTKINITNEGOTIATING_Enter.constprop.23+0x96>
  8e:	d86b0001 	ld.b      	r3, (r11, 0x1)
  92:	2301      	addi      	r3, 2
  94:	62cc      	addu      	r11, r3
  96:	d8eb0001 	ld.b      	r7, (r11, 0x1)
  9a:	2701      	addi      	r7, 2
  9c:	5cde      	addi      	r6, r4, 8
  9e:	1267      	lrw      	r3, 0x0	// 1b8 <sm_WPA_PTK_PTKINITNEGOTIATING_Enter.constprop.23+0x1b8>
  a0:	3200      	movi      	r2, 0
  a2:	6c5b      	mov      	r1, r6
  a4:	e0000000 	bsr      	0x0	// 0 <sm_WPA_PTK_PTKINITNEGOTIATING_Enter.constprop.23>
  a8:	d86420b5 	ld.w      	r3, (r4, 0x2d4)
  ac:	3b42      	cmpnei      	r3, 2
  ae:	0823      	bt      	0xf4	// f4 <sm_WPA_PTK_PTKINITNEGOTIATING_Enter.constprop.23+0xf4>
  b0:	9440      	ld.w      	r2, (r4, 0x0)
  b2:	d9052005 	ld.w      	r8, (r5, 0x14)
  b6:	d8422021 	ld.w      	r2, (r2, 0x84)
  ba:	e9220015 	bnez      	r2, 0xe4	// e4 <sm_WPA_PTK_PTKINITNEGOTIATING_Enter.constprop.23+0xe4>
  be:	d84420b7 	ld.w      	r2, (r4, 0x2dc)
  c2:	eb428000 	cmpnei      	r2, 32768
  c6:	0c0f      	bf      	0xe4	// e4 <sm_WPA_PTK_PTKINITNEGOTIATING_Enter.constprop.23+0xe4>
  c8:	95c6      	ld.w      	r6, (r5, 0x18)
  ca:	46c5      	lsli      	r6, r6, 5
  cc:	2647      	addi      	r6, 72
  ce:	6194      	addu      	r6, r5
  d0:	d9452006 	ld.w      	r10, (r5, 0x18)
  d4:	1b09      	addi      	r3, r14, 36
  d6:	3501      	movi      	r5, 1
  d8:	b8a5      	st.w      	r5, (r14, 0x14)
  da:	b866      	st.w      	r3, (r14, 0x18)
  dc:	e9260023 	bnez      	r6, 0x122	// 122 <sm_WPA_PTK_PTKINITNEGOTIATING_Enter.constprop.23+0x122>
  e0:	6c1f      	mov      	r0, r7
  e2:	0422      	br      	0x126	// 126 <sm_WPA_PTK_PTKINITNEGOTIATING_Enter.constprop.23+0x126>
  e4:	6c63      	mov      	r1, r8
  e6:	180b      	addi      	r0, r14, 44
  e8:	e0000000 	bsr      	0x0	// 0 <os_random_bytes>
  ec:	e9800064 	blz      	r0, 0x1b4	// 1b4 <sm_WPA_PTK_PTKINITNEGOTIATING_Enter.constprop.23+0x1b4>
  f0:	1e0b      	addi      	r6, r14, 44
  f2:	07ef      	br      	0xd0	// d0 <sm_WPA_PTK_PTKINITNEGOTIATING_Enter.constprop.23+0xd0>
  f4:	d8a402bc 	ld.b      	r5, (r4, 0x2bc)
  f8:	e4a52020 	andi      	r5, r5, 32
  fc:	e9050010 	bez      	r5, 0x11c	// 11c <sm_WPA_PTK_PTKINITNEGOTIATING_Enter.constprop.23+0x11c>
 100:	116f      	lrw      	r3, 0x0	// 1bc <sm_WPA_PTK_PTKINITNEGOTIATING_Enter.constprop.23+0x1bc>
 102:	3200      	movi      	r2, 0
 104:	6c5b      	mov      	r1, r6
 106:	9400      	ld.w      	r0, (r4, 0x0)
 108:	e0000000 	bsr      	0x0	// 0 <sm_WPA_PTK_PTKINITNEGOTIATING_Enter.constprop.23>
 10c:	3500      	movi      	r5, 0
 10e:	3301      	movi      	r3, 1
 110:	6e97      	mov      	r10, r5
 112:	b865      	st.w      	r3, (r14, 0x14)
 114:	6e17      	mov      	r8, r5
 116:	6d97      	mov      	r6, r5
 118:	b8a6      	st.w      	r5, (r14, 0x18)
 11a:	07e3      	br      	0xe0	// e0 <sm_WPA_PTK_PTKINITNEGOTIATING_Enter.constprop.23+0xe0>
 11c:	6e97      	mov      	r10, r5
 11e:	b8a5      	st.w      	r5, (r14, 0x14)
 120:	07fa      	br      	0x114	// 114 <sm_WPA_PTK_PTKINITNEGOTIATING_Enter.constprop.23+0x114>
 122:	5f1e      	addi      	r0, r7, 8
 124:	6020      	addu      	r0, r8
 126:	e0000000 	bsr      	0x0	// 0 <_os_malloc>
 12a:	6e43      	mov      	r9, r0
 12c:	e9000044 	bez      	r0, 0x1b4	// 1b4 <sm_WPA_PTK_PTKINITNEGOTIATING_Enter.constprop.23+0x1b4>
 130:	6c9f      	mov      	r2, r7
 132:	6c6f      	mov      	r1, r11
 134:	e0000000 	bsr      	0x0	// 0 <memcpy>
 138:	61e4      	addu      	r7, r9
 13a:	e9060013 	bez      	r6, 0x160	// 160 <sm_WPA_PTK_PTKINITNEGOTIATING_Enter.constprop.23+0x160>
 13e:	e44a2003 	andi      	r2, r10, 3
 142:	3300      	movi      	r3, 0
 144:	dc4e0020 	st.b      	r2, (r14, 0x20)
 148:	dc6e0021 	st.b      	r3, (r14, 0x21)
 14c:	6c1f      	mov      	r0, r7
 14e:	dd0e2001 	st.w      	r8, (r14, 0x4)
 152:	b8c0      	st.w      	r6, (r14, 0x0)
 154:	3302      	movi      	r3, 2
 156:	1a08      	addi      	r2, r14, 32
 158:	103a      	lrw      	r1, 0xfac01	// 1c0 <sm_WPA_PTK_PTKINITNEGOTIATING_Enter.constprop.23+0x1c0>
 15a:	e0000000 	bsr      	0x0	// 0 <wpa_add_kde>
 15e:	6dc3      	mov      	r7, r0
 160:	9865      	ld.w      	r3, (r14, 0x14)
 162:	3b40      	cmpnei      	r3, 0
 164:	d9842000 	ld.w      	r12, (r4, 0x0)
 168:	d8242040 	ld.w      	r1, (r4, 0x100)
 16c:	d80420b7 	ld.w      	r0, (r4, 0x2dc)
 170:	c4000506 	mvc      	r6
 174:	dd8e2007 	st.w      	r12, (r14, 0x1c)
 178:	e0000000 	bsr      	0x0	// 0 <wpa_mic_len>
 17c:	3840      	cmpnei      	r0, 0
 17e:	c4000502 	mvc      	r2
 182:	46c9      	lsli      	r6, r6, 9
 184:	e4640057 	addi      	r3, r4, 88
 188:	d98e2007 	ld.w      	r12, (r14, 0x1c)
 18c:	4248      	lsli      	r2, r2, 8
 18e:	ecc600c8 	ori      	r6, r6, 200
 192:	61e6      	subu      	r7, r9
 194:	b860      	st.w      	r3, (r14, 0x0)
 196:	6c33      	mov      	r0, r12
 198:	b8a4      	st.w      	r5, (r14, 0x10)
 19a:	dd4e2003 	st.w      	r10, (r14, 0xc)
 19e:	b8e2      	st.w      	r7, (r14, 0x8)
 1a0:	dd2e2001 	st.w      	r9, (r14, 0x4)
 1a4:	9866      	ld.w      	r3, (r14, 0x18)
 1a6:	6c98      	or      	r2, r6
 1a8:	6c53      	mov      	r1, r4
 1aa:	e0000000 	bsr      	0x0	// 0 <sm_WPA_PTK_PTKINITNEGOTIATING_Enter.constprop.23>
 1ae:	6c27      	mov      	r0, r9
 1b0:	e0000000 	bsr      	0x0	// 0 <_os_free>
 1b4:	1413      	addi      	r14, r14, 76
 1b6:	1498      	pop      	r4-r11, r15
	...
 1c0:	000fac01 	.long	0x000fac01

Disassembly of section .text.wpa_remove_ptk:

00000000 <wpa_remove_ptk>:
   0:	14d2      	push      	r4-r5, r15
   2:	1423      	subi      	r14, r14, 12
   4:	6d03      	mov      	r4, r0
   6:	3500      	movi      	r5, 0
   8:	328e      	movi      	r2, 142
   a:	dca0208c 	st.w      	r5, (r0, 0x230)
   e:	4241      	lsli      	r2, r2, 1
  10:	6c57      	mov      	r1, r5
  12:	e4000113 	addi      	r0, r0, 276
  16:	e0000000 	bsr      	0x0	// 0 <memset>
  1a:	9440      	ld.w      	r2, (r4, 0x0)
  1c:	5c7e      	addi      	r3, r4, 8
  1e:	d8222023 	ld.w      	r1, (r2, 0x8c)
  22:	d9812008 	ld.w      	r12, (r1, 0x20)
  26:	e90c000a 	bez      	r12, 0x3a	// 3a <wpa_remove_ptk+0x3a>
  2a:	d8022024 	ld.w      	r0, (r2, 0x90)
  2e:	6c57      	mov      	r1, r5
  30:	b8a2      	st.w      	r5, (r14, 0x8)
  32:	b8a1      	st.w      	r5, (r14, 0x4)
  34:	b8a0      	st.w      	r5, (r14, 0x0)
  36:	6c97      	mov      	r2, r5
  38:	7bf1      	jsr      	r12
  3a:	3300      	movi      	r3, 0
  3c:	dc64208d 	st.w      	r3, (r4, 0x234)
  40:	6c93      	mov      	r2, r4
  42:	9420      	ld.w      	r1, (r4, 0x0)
  44:	1003      	lrw      	r0, 0x0	// 50 <wpa_remove_ptk+0x50>
  46:	e0000000 	bsr      	0x0	// 0 <eloop_cancel_timeout>
  4a:	1403      	addi      	r14, r14, 12
  4c:	1492      	pop      	r4-r5, r15
  4e:	0000      	.short	0x0000
  50:	00000000 	.long	0x00000000

Disassembly of section .text.sm_WPA_PTK_INITIALIZE_Enter.constprop.15:

00000000 <sm_WPA_PTK_INITIALIZE_Enter.constprop.15>:
   0:	14d3      	push      	r4-r6, r15
   2:	d86002bc 	ld.b      	r3, (r0, 0x2bc)
   6:	3201      	movi      	r2, 1
   8:	c4625c00 	ins      	r3, r2, 0, 0
   c:	dc6002bc 	st.b      	r3, (r0, 0x2bc)
  10:	9068      	ld.w      	r3, (r0, 0x20)
  12:	3200      	movi      	r2, 0
  14:	6d03      	mov      	r4, r0
  16:	b046      	st.w      	r2, (r0, 0x18)
  18:	e9030008 	bez      	r3, 0x28	// 28 <sm_WPA_PTK_INITIALIZE_Enter.constprop.15+0x28>
  1c:	d86002bc 	ld.b      	r3, (r0, 0x2bc)
  20:	c4625c00 	ins      	r3, r2, 0, 0
  24:	dc6002bc 	st.b      	r3, (r0, 0x2bc)
  28:	3300      	movi      	r3, 0
  2a:	dc64208f 	st.w      	r3, (r4, 0x23c)
  2e:	9475      	ld.w      	r3, (r4, 0x54)
  30:	e9030006 	bez      	r3, 0x3c	// 3c <sm_WPA_PTK_INITIALIZE_Enter.constprop.15+0x3c>
  34:	9441      	ld.w      	r2, (r4, 0x4)
  36:	9263      	ld.w      	r3, (r2, 0xc)
  38:	2b00      	subi      	r3, 1
  3a:	b263      	st.w      	r3, (r2, 0xc)
  3c:	d84420b5 	ld.w      	r2, (r4, 0x2d4)
  40:	3a41      	cmpnei      	r2, 1
  42:	3300      	movi      	r3, 0
  44:	b475      	st.w      	r3, (r4, 0x54)
  46:	0803      	bt      	0x4c	// 4c <sm_WPA_PTK_INITIALIZE_Enter.constprop.15+0x4c>
  48:	dc6420a9 	st.w      	r3, (r4, 0x2a4)
  4c:	3300      	movi      	r3, 0
  4e:	3601      	movi      	r6, 1
  50:	5cbe      	addi      	r5, r4, 8
  52:	6c8f      	mov      	r2, r3
  54:	6c57      	mov      	r1, r5
  56:	9400      	ld.w      	r0, (r4, 0x0)
  58:	dcc42090 	st.w      	r6, (r4, 0x240)
  5c:	e0000000 	bsr      	0x0	// 0 <sm_WPA_PTK_INITIALIZE_Enter.constprop.15>
  60:	6c13      	mov      	r0, r4
  62:	e0000000 	bsr      	0x0	// 0 <sm_WPA_PTK_INITIALIZE_Enter.constprop.15>
  66:	3300      	movi      	r3, 0
  68:	6c9b      	mov      	r2, r6
  6a:	6c57      	mov      	r1, r5
  6c:	9400      	ld.w      	r0, (r4, 0x0)
  6e:	e0000000 	bsr      	0x0	// 0 <sm_WPA_PTK_INITIALIZE_Enter.constprop.15>
  72:	3300      	movi      	r3, 0
  74:	d84420b7 	ld.w      	r2, (r4, 0x2dc)
  78:	b46e      	st.w      	r3, (r4, 0x38)
  7a:	e4622d42 	andi      	r3, r2, 3394
  7e:	e923000a 	bnez      	r3, 0x92	// 92 <sm_WPA_PTK_INITIALIZE_Enter.constprop.15+0x92>
  82:	3380      	movi      	r3, 128
  84:	4370      	lsli      	r3, r3, 16
  86:	64ca      	cmpne      	r2, r3
  88:	0c05      	bf      	0x92	// 92 <sm_WPA_PTK_INITIALIZE_Enter.constprop.15+0x92>
  8a:	3380      	movi      	r3, 128
  8c:	436f      	lsli      	r3, r3, 15
  8e:	64ca      	cmpne      	r2, r3
  90:	0807      	bt      	0x9e	// 9e <sm_WPA_PTK_INITIALIZE_Enter.constprop.15+0x9e>
  92:	3300      	movi      	r3, 0
  94:	3202      	movi      	r2, 2
  96:	6c57      	mov      	r1, r5
  98:	9400      	ld.w      	r0, (r4, 0x0)
  9a:	e0000000 	bsr      	0x0	// 0 <sm_WPA_PTK_INITIALIZE_Enter.constprop.15>
  9e:	1493      	pop      	r4-r6, r15

Disassembly of section .text.wpa_sm_step:

00000000 <wpa_sm_step>:
   0:	14d8      	push      	r4-r11, r15
   2:	1425      	subi      	r14, r14, 20
   4:	d86002bc 	ld.b      	r3, (r0, 0x2bc)
   8:	e4432002 	andi      	r2, r3, 2
   c:	6d03      	mov      	r4, r0
   e:	e9020008 	bez      	r2, 0x1e	// 1e <wpa_sm_step+0x1e>
  12:	1312      	lrw      	r0, 0x0	// 1d8 <hgprintf+0x1d8>
  14:	e0000000 	bsr      	0x0	// 0 <hgprintf>
  18:	3000      	movi      	r0, 0
  1a:	1405      	addi      	r14, r14, 20
  1c:	1498      	pop      	r4-r11, r15
  1e:	3201      	movi      	r2, 1
  20:	c4625c01 	ins      	r3, r2, 1, 1
  24:	dc6002bc 	st.b      	r3, (r0, 0x2bc)
  28:	ea88006d 	lrw      	r8, 0x0	// 1dc <wpa_sm_step+0x1dc>
  2c:	13cd      	lrw      	r6, 0x0	// 1e0 <wpa_sm_step+0x1e0>
  2e:	13ee      	lrw      	r7, 0x0	// 1e4 <wpa_sm_step+0x1e4>
  30:	d86402bc 	ld.b      	r3, (r4, 0x2bc)
  34:	e4432004 	andi      	r2, r3, 4
  38:	e9020012 	bez      	r2, 0x5c	// 5c <wpa_sm_step+0x5c>
  3c:	d80402bc 	ld.b      	r0, (r4, 0x2bc)
  40:	3300      	movi      	r3, 0
  42:	c4035c01 	ins      	r0, r3, 1, 1
  46:	dc0402bc 	st.b      	r0, (r4, 0x2bc)
  4a:	e4002004 	andi      	r0, r0, 4
  4e:	e900ffe6 	bez      	r0, 0x1a	// 1a <wpa_sm_step+0x1a>
  52:	6c13      	mov      	r0, r4
  54:	e0000000 	bsr      	0x0	// 0 <wpa_sm_step>
  58:	3001      	movi      	r0, 1
  5a:	07e0      	br      	0x1a	// 1a <wpa_sm_step+0x1a>
  5c:	c4625c00 	ins      	r3, r2, 0, 0
  60:	94a0      	ld.w      	r5, (r4, 0x0)
  62:	dc6402bc 	st.b      	r3, (r4, 0x2bc)
  66:	9560      	ld.w      	r3, (r5, 0x0)
  68:	dc432032 	st.w      	r2, (r3, 0xc8)
  6c:	9448      	ld.w      	r2, (r4, 0x20)
  6e:	e9020006 	bez      	r2, 0x7a	// 7a <wpa_sm_step+0x7a>
  72:	6c13      	mov      	r0, r4
  74:	e0000000 	bsr      	0x0	// 0 <wpa_sm_step>
  78:	0448      	br      	0x108	// 108 <wpa_sm_step+0x108>
  7a:	946c      	ld.w      	r3, (r4, 0x30)
  7c:	e903000b 	bez      	r3, 0x92	// 92 <wpa_sm_step+0x92>
  80:	127a      	lrw      	r3, 0x0	// 1e8 <wpa_sm_step+0x1e8>
  82:	5c3e      	addi      	r1, r4, 8
  84:	6c17      	mov      	r0, r5
  86:	e0000000 	bsr      	0x0	// 0 <wpa_sm_step>
  8a:	6c13      	mov      	r0, r4
  8c:	e0000000 	bsr      	0x0	// 0 <wpa_sm_step>
  90:	043c      	br      	0x108	// 108 <wpa_sm_step+0x108>
  92:	d9242009 	ld.w      	r9, (r4, 0x24)
  96:	e909000d 	bez      	r9, 0xb0	// b0 <wpa_sm_step+0xb0>
  9a:	d84402bc 	ld.b      	r2, (r4, 0x2bc)
  9e:	3101      	movi      	r1, 1
  a0:	c4415c00 	ins      	r2, r1, 0, 0
  a4:	dc4402bc 	st.b      	r2, (r4, 0x2bc)
  a8:	3202      	movi      	r2, 2
  aa:	b446      	st.w      	r2, (r4, 0x18)
  ac:	b469      	st.w      	r3, (r4, 0x24)
  ae:	042d      	br      	0x108	// 108 <wpa_sm_step+0x108>
  b0:	946a      	ld.w      	r3, (r4, 0x28)
  b2:	e9030064 	bez      	r3, 0x17a	// 17a <wpa_sm_step+0x17a>
  b6:	ea0b0001 	movi      	r11, 1
  ba:	d86402bc 	ld.b      	r3, (r4, 0x2bc)
  be:	ea0c0003 	movi      	r12, 3
  c2:	c46b5c00 	ins      	r3, r11, 0, 0
  c6:	328e      	movi      	r2, 142
  c8:	dc6402bc 	st.b      	r3, (r4, 0x2bc)
  cc:	dd842006 	st.w      	r12, (r4, 0x18)
  d0:	70ac      	lsl      	r2, r11
  d2:	6c67      	mov      	r1, r9
  d4:	e4040113 	addi      	r0, r4, 276
  d8:	dd8e2003 	st.w      	r12, (r14, 0xc)
  dc:	e5440007 	addi      	r10, r4, 8
  e0:	e0000000 	bsr      	0x0	// 0 <memset>
  e4:	d98e2003 	ld.w      	r12, (r14, 0xc)
  e8:	6cb3      	mov      	r2, r12
  ea:	6cef      	mov      	r3, r11
  ec:	6c6b      	mov      	r1, r10
  ee:	6c17      	mov      	r0, r5
  f0:	dd24208c 	st.w      	r9, (r4, 0x230)
  f4:	e0000000 	bsr      	0x0	// 0 <wpa_sm_step>
  f8:	6cef      	mov      	r3, r11
  fa:	6ca7      	mov      	r2, r9
  fc:	6c6b      	mov      	r1, r10
  fe:	9400      	ld.w      	r0, (r4, 0x0)
 100:	e0000000 	bsr      	0x0	// 0 <wpa_sm_step>
 104:	dd24200a 	st.w      	r9, (r4, 0x28)
 108:	d86402bc 	ld.b      	r3, (r4, 0x2bc)
 10c:	e4432004 	andi      	r2, r3, 4
 110:	e922ff96 	bnez      	r2, 0x3c	// 3c <wpa_sm_step+0x3c>
 114:	9428      	ld.w      	r1, (r4, 0x20)
 116:	e9210006 	bnez      	r1, 0x122	// 122 <wpa_sm_step+0x122>
 11a:	d84420ac 	ld.w      	r2, (r4, 0x2b0)
 11e:	e90201be 	bez      	r2, 0x49a	// 49a <wpa_sm_step+0x49a>
 122:	d86402bc 	ld.b      	r3, (r4, 0x2bc)
 126:	3201      	movi      	r2, 1
 128:	c4625c00 	ins      	r3, r2, 0, 0
 12c:	3200      	movi      	r2, 0
 12e:	dc6402bc 	st.b      	r3, (r4, 0x2bc)
 132:	b447      	st.w      	r2, (r4, 0x1c)
 134:	e9010008 	bez      	r1, 0x144	// 144 <wpa_sm_step+0x144>
 138:	d86402bc 	ld.b      	r3, (r4, 0x2bc)
 13c:	c4625c00 	ins      	r3, r2, 0, 0
 140:	dc6402bc 	st.b      	r3, (r4, 0x2bc)
 144:	3300      	movi      	r3, 0
 146:	b46f      	st.w      	r3, (r4, 0x3c)
 148:	dc6420ac 	st.w      	r3, (r4, 0x2b0)
 14c:	d86402bc 	ld.b      	r3, (r4, 0x2bc)
 150:	e4632004 	andi      	r3, r3, 4
 154:	e923ff74 	bnez      	r3, 0x3c	// 3c <wpa_sm_step+0x3c>
 158:	9421      	ld.w      	r1, (r4, 0x4)
 15a:	9400      	ld.w      	r0, (r4, 0x0)
 15c:	e0000000 	bsr      	0x0	// 0 <wpa_sm_step>
 160:	d86402bc 	ld.b      	r3, (r4, 0x2bc)
 164:	e4632001 	andi      	r3, r3, 1
 168:	e923ff64 	bnez      	r3, 0x30	// 30 <wpa_sm_step+0x30>
 16c:	9460      	ld.w      	r3, (r4, 0x0)
 16e:	9360      	ld.w      	r3, (r3, 0x0)
 170:	d8632032 	ld.w      	r3, (r3, 0xc8)
 174:	e923ff5e 	bnez      	r3, 0x30	// 30 <wpa_sm_step+0x30>
 178:	0762      	br      	0x3c	// 3c <wpa_sm_step+0x3c>
 17a:	d924200b 	ld.w      	r9, (r4, 0x2c)
 17e:	e9090006 	bez      	r9, 0x18a	// 18a <wpa_sm_step+0x18a>
 182:	6c13      	mov      	r0, r4
 184:	e0000000 	bsr      	0x0	// 0 <wpa_sm_step>
 188:	07c0      	br      	0x108	// 108 <wpa_sm_step+0x108>
 18a:	d86420aa 	ld.w      	r3, (r4, 0x2a8)
 18e:	e903001e 	bez      	r3, 0x1ca	// 1ca <wpa_sm_step+0x1ca>
 192:	3120      	movi      	r1, 32
 194:	e4040057 	addi      	r0, r4, 88
 198:	e0000000 	bsr      	0x0	// 0 <os_random_bytes>
 19c:	e9000012 	bez      	r0, 0x1c0	// 1c0 <wpa_sm_step+0x1c0>
 1a0:	1013      	lrw      	r0, 0x0	// 1ec <hgprintf+0x1ec>
 1a2:	e0000000 	bsr      	0x0	// 0 <hgprintf>
 1a6:	3201      	movi      	r2, 1
 1a8:	d86402bc 	ld.b      	r3, (r4, 0x2bc)
 1ac:	c4625c00 	ins      	r3, r2, 0, 0
 1b0:	dc6402bc 	st.b      	r3, (r4, 0x2bc)
 1b4:	3302      	movi      	r3, 2
 1b6:	b44c      	st.w      	r2, (r4, 0x30)
 1b8:	b466      	st.w      	r3, (r4, 0x18)
 1ba:	dd242009 	st.w      	r9, (r4, 0x24)
 1be:	07a5      	br      	0x108	// 108 <wpa_sm_step+0x108>
 1c0:	b40e      	st.w      	r0, (r4, 0x38)
 1c2:	6c13      	mov      	r0, r4
 1c4:	e0000000 	bsr      	0x0	// 0 <wpa_sm_step>
 1c8:	07a0      	br      	0x108	// 108 <wpa_sm_step+0x108>
 1ca:	9466      	ld.w      	r3, (r4, 0x18)
 1cc:	2b00      	subi      	r3, 1
 1ce:	3b09      	cmphsi      	r3, 10
 1d0:	0b9c      	bt      	0x108	// 108 <wpa_sm_step+0x108>
 1d2:	d0680883 	ldr.w      	r3, (r8, r3 << 2)
 1d6:	780c      	jmp      	r3
	...
 1f0:	d86402bc 	ld.b      	r3, (r4, 0x2bc)
 1f4:	3201      	movi      	r2, 1
 1f6:	c4625c00 	ins      	r3, r2, 0, 0
 1fa:	dc6402bc 	st.b      	r3, (r4, 0x2bc)
 1fe:	3302      	movi      	r3, 2
 200:	b466      	st.w      	r3, (r4, 0x18)
 202:	3300      	movi      	r3, 0
 204:	0754      	br      	0xac	// ac <wpa_sm_step+0xac>
 206:	d86420b7 	ld.w      	r3, (r4, 0x2dc)
 20a:	0252      	lrw      	r2, 0x13fc0a1	// 4bc <wpa_sm_step+0x4bc>
 20c:	68c8      	and      	r3, r2
 20e:	e9030012 	bez      	r3, 0x232	// 232 <wpa_sm_step+0x232>
 212:	d8652023 	ld.w      	r3, (r5, 0x8c)
 216:	5c3e      	addi      	r1, r4, 8
 218:	9365      	ld.w      	r3, (r3, 0x14)
 21a:	e903000c 	bez      	r3, 0x232	// 232 <wpa_sm_step+0x232>
 21e:	3204      	movi      	r2, 4
 220:	d8052024 	ld.w      	r0, (r5, 0x90)
 224:	7bcd      	jsr      	r3
 226:	e9600006 	blsz      	r0, 0x232	// 232 <wpa_sm_step+0x232>
 22a:	6c13      	mov      	r0, r4
 22c:	e0000000 	bsr      	0x0	// 0 <wpa_sm_step>
 230:	076c      	br      	0x108	// 108 <wpa_sm_step+0x108>
 232:	d84420b7 	ld.w      	r2, (r4, 0x2dc)
 236:	e4622d42 	andi      	r3, r2, 3394
 23a:	e9230006 	bnez      	r3, 0x246	// 246 <wpa_sm_step+0x246>
 23e:	3380      	movi      	r3, 128
 240:	436f      	lsli      	r3, r3, 15
 242:	64ca      	cmpne      	r2, r3
 244:	0823      	bt      	0x28a	// 28a <wpa_sm_step+0x28a>
 246:	d86402bc 	ld.b      	r3, (r4, 0x2bc)
 24a:	3201      	movi      	r2, 1
 24c:	c4625c00 	ins      	r3, r2, 0, 0
 250:	dc6402bc 	st.b      	r3, (r4, 0x2bc)
 254:	3306      	movi      	r3, 6
 256:	b466      	st.w      	r3, (r4, 0x18)
 258:	1d04      	addi      	r5, r14, 16
 25a:	3300      	movi      	r3, 0
 25c:	5c3e      	addi      	r1, r4, 8
 25e:	b861      	st.w      	r3, (r14, 0x4)
 260:	b8a0      	st.w      	r5, (r14, 0x0)
 262:	e444000d 	addi      	r2, r4, 14
 266:	9400      	ld.w      	r0, (r4, 0x0)
 268:	e0000000 	bsr      	0x0	// 0 <wpa_sm_step>
 26c:	6c43      	mov      	r1, r0
 26e:	e900000a 	bez      	r0, 0x282	// 282 <wpa_sm_step+0x282>
 272:	95a0      	ld.w      	r5, (r5, 0x0)
 274:	6c97      	mov      	r2, r5
 276:	e40400bf 	addi      	r0, r4, 192
 27a:	e0000000 	bsr      	0x0	// 0 <memcpy>
 27e:	dca42040 	st.w      	r5, (r4, 0x100)
 282:	3300      	movi      	r3, 0
 284:	dc6420b2 	st.w      	r3, (r4, 0x2c8)
 288:	0740      	br      	0x108	// 108 <wpa_sm_step+0x108>
 28a:	3380      	movi      	r3, 128
 28c:	4370      	lsli      	r3, r3, 16
 28e:	64ca      	cmpne      	r2, r3
 290:	0b3c      	bt      	0x108	// 108 <wpa_sm_step+0x108>
 292:	07cc      	br      	0x22a	// 22a <wpa_sm_step+0x22a>
 294:	d8652023 	ld.w      	r3, (r5, 0x8c)
 298:	e5240007 	addi      	r9, r4, 8
 29c:	9365      	ld.w      	r3, (r3, 0x14)
 29e:	e9030009 	bez      	r3, 0x2b0	// 2b0 <wpa_sm_step+0x2b0>
 2a2:	3205      	movi      	r2, 5
 2a4:	6c67      	mov      	r1, r9
 2a6:	d8052024 	ld.w      	r0, (r5, 0x90)
 2aa:	7bcd      	jsr      	r3
 2ac:	e940ff8b 	bhz      	r0, 0x1c2	// 1c2 <wpa_sm_step+0x1c2>
 2b0:	956d      	ld.w      	r3, (r5, 0x34)
 2b2:	2300      	addi      	r3, 1
 2b4:	b56d      	st.w      	r3, (r5, 0x34)
 2b6:	3201      	movi      	r2, 1
 2b8:	037d      	lrw      	r3, 0x0	// 4c0 <wpa_sm_step+0x4c0>
 2ba:	6c67      	mov      	r1, r9
 2bc:	9400      	ld.w      	r0, (r4, 0x0)
 2be:	06e4      	br      	0x86	// 86 <wpa_sm_step+0x86>
 2c0:	3300      	movi      	r3, 0
 2c2:	e5240007 	addi      	r9, r4, 8
 2c6:	b861      	st.w      	r3, (r14, 0x4)
 2c8:	b860      	st.w      	r3, (r14, 0x0)
 2ca:	e444000d 	addi      	r2, r4, 14
 2ce:	6c67      	mov      	r1, r9
 2d0:	6c17      	mov      	r0, r5
 2d2:	e0000000 	bsr      	0x0	// 0 <wpa_sm_step>
 2d6:	e920ff76 	bnez      	r0, 0x1c2	// 1c2 <wpa_sm_step+0x1c2>
 2da:	137b      	lrw      	r3, 0x0	// 4c4 <wpa_sm_step+0x4c4>
 2dc:	3201      	movi      	r2, 1
 2de:	6c67      	mov      	r1, r9
 2e0:	9400      	ld.w      	r0, (r4, 0x0)
 2e2:	e0000000 	bsr      	0x0	// 0 <wpa_sm_step>
 2e6:	956d      	ld.w      	r3, (r5, 0x34)
 2e8:	2300      	addi      	r3, 1
 2ea:	b56d      	st.w      	r3, (r5, 0x34)
 2ec:	06cf      	br      	0x8a	// 8a <wpa_sm_step+0x8a>
 2ee:	9471      	ld.w      	r3, (r4, 0x44)
 2f0:	e903000c 	bez      	r3, 0x308	// 308 <wpa_sm_step+0x308>
 2f4:	9473      	ld.w      	r3, (r4, 0x4c)
 2f6:	e9230009 	bnez      	r3, 0x308	// 308 <wpa_sm_step+0x308>
 2fa:	9472      	ld.w      	r3, (r4, 0x48)
 2fc:	e9030006 	bez      	r3, 0x308	// 308 <wpa_sm_step+0x308>
 300:	6c13      	mov      	r0, r4
 302:	e0000000 	bsr      	0x0	// 0 <wpa_sm_step>
 306:	0701      	br      	0x108	// 108 <wpa_sm_step+0x108>
 308:	9557      	ld.w      	r2, (r5, 0x5c)
 30a:	946e      	ld.w      	r3, (r4, 0x38)
 30c:	64c8      	cmphs      	r2, r3
 30e:	0824      	bt      	0x356	// 356 <wpa_sm_step+0x356>
 310:	956d      	ld.w      	r3, (r5, 0x34)
 312:	2300      	addi      	r3, 1
 314:	b56d      	st.w      	r3, (r5, 0x34)
 316:	b840      	st.w      	r2, (r14, 0x0)
 318:	136c      	lrw      	r3, 0x0	// 4c8 <wpa_sm_step+0x4c8>
 31a:	3200      	movi      	r2, 0
 31c:	5c3e      	addi      	r1, r4, 8
 31e:	6c17      	mov      	r0, r5
 320:	e0000000 	bsr      	0x0	// 0 <wpa_sm_step>
 324:	06b3      	br      	0x8a	// 8a <wpa_sm_step+0x8a>
 326:	9474      	ld.w      	r3, (r4, 0x50)
 328:	e903000e 	bez      	r3, 0x344	// 344 <wpa_sm_step+0x344>
 32c:	d86402bc 	ld.b      	r3, (r4, 0x2bc)
 330:	3201      	movi      	r2, 1
 332:	c4625c00 	ins      	r3, r2, 0, 0
 336:	dc6402bc 	st.b      	r3, (r4, 0x2bc)
 33a:	3309      	movi      	r3, 9
 33c:	b466      	st.w      	r3, (r4, 0x18)
 33e:	3300      	movi      	r3, 0
 340:	b46e      	st.w      	r3, (r4, 0x38)
 342:	06e3      	br      	0x108	// 108 <wpa_sm_step+0x108>
 344:	9471      	ld.w      	r3, (r4, 0x44)
 346:	e9030008 	bez      	r3, 0x356	// 356 <wpa_sm_step+0x356>
 34a:	9473      	ld.w      	r3, (r4, 0x4c)
 34c:	e9230005 	bnez      	r3, 0x356	// 356 <wpa_sm_step+0x356>
 350:	9472      	ld.w      	r3, (r4, 0x48)
 352:	e923ffd7 	bnez      	r3, 0x300	// 300 <wpa_sm_step+0x300>
 356:	9470      	ld.w      	r3, (r4, 0x40)
 358:	e923ff35 	bnez      	r3, 0x1c2	// 1c2 <wpa_sm_step+0x1c2>
 35c:	06d6      	br      	0x108	// 108 <wpa_sm_step+0x108>
 35e:	d86402bc 	ld.b      	r3, (r4, 0x2bc)
 362:	e4432040 	andi      	r2, r3, 64
 366:	e922ffcd 	bnez      	r2, 0x300	// 300 <wpa_sm_step+0x300>
 36a:	9451      	ld.w      	r2, (r4, 0x44)
 36c:	e9020081 	bez      	r2, 0x46e	// 46e <wpa_sm_step+0x46e>
 370:	d9242013 	ld.w      	r9, (r4, 0x4c)
 374:	e929007d 	bnez      	r9, 0x46e	// 46e <wpa_sm_step+0x46e>
 378:	9452      	ld.w      	r2, (r4, 0x48)
 37a:	e902007a 	bez      	r2, 0x46e	// 46e <wpa_sm_step+0x46e>
 37e:	9454      	ld.w      	r2, (r4, 0x50)
 380:	e9020077 	bez      	r2, 0x46e	// 46e <wpa_sm_step+0x46e>
 384:	ea0a0001 	movi      	r10, 1
 388:	c46a5c00 	ins      	r3, r10, 0, 0
 38c:	dc6402bc 	st.b      	r3, (r4, 0x2bc)
 390:	330b      	movi      	r3, 11
 392:	b466      	st.w      	r3, (r4, 0x18)
 394:	d8642090 	ld.w      	r3, (r4, 0x240)
 398:	dd242011 	st.w      	r9, (r4, 0x44)
 39c:	5cbe      	addi      	r5, r4, 8
 39e:	e9030040 	bez      	r3, 0x41e	// 41e <wpa_sm_step+0x41e>
 3a2:	d80420b6 	ld.w      	r0, (r4, 0x2d8)
 3a6:	e0000000 	bsr      	0x0	// 0 <wpa_cipher_to_alg>
 3aa:	6ec3      	mov      	r11, r0
 3ac:	d80420b6 	ld.w      	r0, (r4, 0x2d8)
 3b0:	e0000000 	bsr      	0x0	// 0 <wpa_cipher_key_len>
 3b4:	9460      	ld.w      	r3, (r4, 0x0)
 3b6:	6c43      	mov      	r1, r0
 3b8:	d8032023 	ld.w      	r0, (r3, 0x8c)
 3bc:	e4440173 	addi      	r2, r4, 372
 3c0:	d9802008 	ld.w      	r12, (r0, 0x20)
 3c4:	e92c0008 	bnez      	r12, 0x3d4	// 3d4 <wpa_sm_step+0x3d4>
 3c8:	3202      	movi      	r2, 2
 3ca:	6c57      	mov      	r1, r5
 3cc:	9400      	ld.w      	r0, (r4, 0x0)
 3ce:	e0000000 	bsr      	0x0	// 0 <wpa_sm_step>
 3d2:	069b      	br      	0x108	// 108 <wpa_sm_step+0x108>
 3d4:	d8032024 	ld.w      	r0, (r3, 0x90)
 3d8:	b822      	st.w      	r1, (r14, 0x8)
 3da:	b841      	st.w      	r2, (r14, 0x4)
 3dc:	dd2e2000 	st.w      	r9, (r14, 0x0)
 3e0:	6cd7      	mov      	r3, r5
 3e2:	6caf      	mov      	r2, r11
 3e4:	6c67      	mov      	r1, r9
 3e6:	7bf1      	jsr      	r12
 3e8:	e920fff0 	bnez      	r0, 0x3c8	// 3c8 <wpa_sm_step+0x3c8>
 3ec:	dd44208d 	st.w      	r10, (r4, 0x234)
 3f0:	6c13      	mov      	r0, r4
 3f2:	e0000000 	bsr      	0x0	// 0 <wpa_sm_step>
 3f6:	d84420b7 	ld.w      	r2, (r4, 0x2dc)
 3fa:	e4622d42 	andi      	r3, r2, 3394
 3fe:	e923000a 	bnez      	r3, 0x412	// 412 <wpa_sm_step+0x412>
 402:	3380      	movi      	r3, 128
 404:	4370      	lsli      	r3, r3, 16
 406:	64ca      	cmpne      	r2, r3
 408:	0c05      	bf      	0x412	// 412 <wpa_sm_step+0x412>
 40a:	3380      	movi      	r3, 128
 40c:	436f      	lsli      	r3, r3, 15
 40e:	64ca      	cmpne      	r2, r3
 410:	0807      	bt      	0x41e	// 41e <wpa_sm_step+0x41e>
 412:	3301      	movi      	r3, 1
 414:	3202      	movi      	r2, 2
 416:	6c57      	mov      	r1, r5
 418:	9400      	ld.w      	r0, (r4, 0x0)
 41a:	e0000000 	bsr      	0x0	// 0 <wpa_sm_step>
 41e:	3301      	movi      	r3, 1
 420:	6c8f      	mov      	r2, r3
 422:	6c57      	mov      	r1, r5
 424:	9400      	ld.w      	r0, (r4, 0x0)
 426:	e0000000 	bsr      	0x0	// 0 <wpa_sm_step>
 42a:	3300      	movi      	r3, 0
 42c:	3205      	movi      	r2, 5
 42e:	6c57      	mov      	r1, r5
 430:	9400      	ld.w      	r0, (r4, 0x0)
 432:	e0000000 	bsr      	0x0	// 0 <wpa_sm_step>
 436:	3301      	movi      	r3, 1
 438:	3206      	movi      	r2, 6
 43a:	6c57      	mov      	r1, r5
 43c:	9400      	ld.w      	r0, (r4, 0x0)
 43e:	e0000000 	bsr      	0x0	// 0 <wpa_sm_step>
 442:	d86420b5 	ld.w      	r3, (r4, 0x2d4)
 446:	3b41      	cmpnei      	r3, 1
 448:	080f      	bt      	0x466	// 466 <wpa_sm_step+0x466>
 44a:	dc6420a9 	st.w      	r3, (r4, 0x2a4)
 44e:	3b41      	cmpnei      	r3, 1
 450:	6cdf      	mov      	r3, r7
 452:	c4660c20 	incf      	r3, r6, 0
 456:	b860      	st.w      	r3, (r14, 0x0)
 458:	3201      	movi      	r2, 1
 45a:	107d      	lrw      	r3, 0x0	// 4cc <wpa_sm_step+0x4cc>
 45c:	6c57      	mov      	r1, r5
 45e:	9400      	ld.w      	r0, (r4, 0x0)
 460:	e0000000 	bsr      	0x0	// 0 <wpa_sm_step>
 464:	0652      	br      	0x108	// 108 <wpa_sm_step+0x108>
 466:	3201      	movi      	r2, 1
 468:	dc4420ab 	st.w      	r2, (r4, 0x2ac)
 46c:	07f1      	br      	0x44e	// 44e <wpa_sm_step+0x44e>
 46e:	946e      	ld.w      	r3, (r4, 0x38)
 470:	9557      	ld.w      	r2, (r5, 0x5c)
 472:	64c8      	cmphs      	r2, r3
 474:	0c06      	bf      	0x480	// 480 <wpa_sm_step+0x480>
 476:	9538      	ld.w      	r1, (r5, 0x60)
 478:	e901000a 	bez      	r1, 0x48c	// 48c <wpa_sm_step+0x48c>
 47c:	3b01      	cmphsi      	r3, 2
 47e:	0c07      	bf      	0x48c	// 48c <wpa_sm_step+0x48c>
 480:	956d      	ld.w      	r3, (r5, 0x34)
 482:	2300      	addi      	r3, 1
 484:	b56d      	st.w      	r3, (r5, 0x34)
 486:	b840      	st.w      	r2, (r14, 0x0)
 488:	1072      	lrw      	r3, 0x0	// 4d0 <wpa_sm_step+0x4d0>
 48a:	0748      	br      	0x31a	// 31a <wpa_sm_step+0x31a>
 48c:	9470      	ld.w      	r3, (r4, 0x40)
 48e:	e903fe3d 	bez      	r3, 0x108	// 108 <wpa_sm_step+0x108>
 492:	6c13      	mov      	r0, r4
 494:	e0000000 	bsr      	0x0	// 0 <wpa_sm_step>
 498:	0638      	br      	0x108	// 108 <wpa_sm_step+0x108>
 49a:	9427      	ld.w      	r1, (r4, 0x1c)
 49c:	3941      	cmpnei      	r1, 1
 49e:	0c2a      	bf      	0x4f2	// 4f2 <wpa_sm_step+0x4f2>
 4a0:	3940      	cmpnei      	r1, 0
 4a2:	0c19      	bf      	0x4d4	// 4d4 <wpa_sm_step+0x4d4>
 4a4:	3942      	cmpnei      	r1, 2
 4a6:	0c03      	bf      	0x4ac	// 4ac <wpa_sm_step+0x4ac>
 4a8:	3943      	cmpnei      	r1, 3
 4aa:	0a51      	bt      	0x14c	// 14c <wpa_sm_step+0x14c>
 4ac:	3101      	movi      	r1, 1
 4ae:	c4615c00 	ins      	r3, r1, 0, 0
 4b2:	dc6402bc 	st.b      	r3, (r4, 0x2bc)
 4b6:	b447      	st.w      	r2, (r4, 0x1c)
 4b8:	b44f      	st.w      	r2, (r4, 0x3c)
 4ba:	0649      	br      	0x14c	// 14c <wpa_sm_step+0x14c>
 4bc:	013fc0a1 	.long	0x013fc0a1
	...
 4d4:	9475      	ld.w      	r3, (r4, 0x54)
 4d6:	e923000a 	bnez      	r3, 0x4ea	// 4ea <wpa_sm_step+0x4ea>
 4da:	d86420b5 	ld.w      	r3, (r4, 0x2d4)
 4de:	3b41      	cmpnei      	r3, 1
 4e0:	0a36      	bt      	0x14c	// 14c <wpa_sm_step+0x14c>
 4e2:	d86420a9 	ld.w      	r3, (r4, 0x2a4)
 4e6:	e903fe33 	bez      	r3, 0x14c	// 14c <wpa_sm_step+0x14c>
 4ea:	6c13      	mov      	r0, r4
 4ec:	e0000000 	bsr      	0x0	// 0 <wpa_sm_step>
 4f0:	062e      	br      	0x14c	// 14c <wpa_sm_step+0x14c>
 4f2:	9451      	ld.w      	r2, (r4, 0x44)
 4f4:	9400      	ld.w      	r0, (r4, 0x0)
 4f6:	e902002e 	bez      	r2, 0x552	// 552 <wpa_sm_step+0x552>
 4fa:	9453      	ld.w      	r2, (r4, 0x4c)
 4fc:	e922002b 	bnez      	r2, 0x552	// 552 <wpa_sm_step+0x552>
 500:	9452      	ld.w      	r2, (r4, 0x48)
 502:	e9220028 	bnez      	r2, 0x552	// 552 <wpa_sm_step+0x552>
 506:	d9842014 	ld.w      	r12, (r4, 0x50)
 50a:	e90c0024 	bez      	r12, 0x552	// 552 <wpa_sm_step+0x552>
 50e:	c4615c00 	ins      	r3, r1, 0, 0
 512:	dc6402bc 	st.b      	r3, (r4, 0x2bc)
 516:	3302      	movi      	r3, 2
 518:	b467      	st.w      	r3, (r4, 0x1c)
 51a:	9475      	ld.w      	r3, (r4, 0x54)
 51c:	b451      	st.w      	r2, (r4, 0x44)
 51e:	e9030006 	bez      	r3, 0x52a	// 52a <wpa_sm_step+0x52a>
 522:	9441      	ld.w      	r2, (r4, 0x4)
 524:	9263      	ld.w      	r3, (r2, 0xc)
 526:	2b00      	subi      	r3, 1
 528:	b263      	st.w      	r3, (r2, 0xc)
 52a:	3300      	movi      	r3, 0
 52c:	b475      	st.w      	r3, (r4, 0x54)
 52e:	b46f      	st.w      	r3, (r4, 0x3c)
 530:	d86420b5 	ld.w      	r3, (r4, 0x2d4)
 534:	3b41      	cmpnei      	r3, 1
 536:	6cdf      	mov      	r3, r7
 538:	c4660c20 	incf      	r3, r6, 0
 53c:	b860      	st.w      	r3, (r14, 0x0)
 53e:	3201      	movi      	r2, 1
 540:	107b      	lrw      	r3, 0x0	// 5ac <wpa_sm_step+0x5ac>
 542:	5c3e      	addi      	r1, r4, 8
 544:	e0000000 	bsr      	0x0	// 0 <wpa_sm_step>
 548:	3301      	movi      	r3, 1
 54a:	dc6420ab 	st.w      	r3, (r4, 0x2ac)
 54e:	e800fdff 	br      	0x14c	// 14c <wpa_sm_step+0x14c>
 552:	946f      	ld.w      	r3, (r4, 0x3c)
 554:	9036      	ld.w      	r1, (r0, 0x58)
 556:	64c4      	cmphs      	r1, r3
 558:	0c06      	bf      	0x564	// 564 <wpa_sm_step+0x564>
 55a:	9058      	ld.w      	r2, (r0, 0x60)
 55c:	e9020026 	bez      	r2, 0x5a8	// 5a8 <wpa_sm_step+0x5a8>
 560:	3b01      	cmphsi      	r3, 2
 562:	0c23      	bf      	0x5a8	// 5a8 <wpa_sm_step+0x5a8>
 564:	d86402bc 	ld.b      	r3, (r4, 0x2bc)
 568:	3201      	movi      	r2, 1
 56a:	c4625c00 	ins      	r3, r2, 0, 0
 56e:	dc6402bc 	st.b      	r3, (r4, 0x2bc)
 572:	3303      	movi      	r3, 3
 574:	b467      	st.w      	r3, (r4, 0x1c)
 576:	9475      	ld.w      	r3, (r4, 0x54)
 578:	e9030006 	bez      	r3, 0x584	// 584 <wpa_sm_step+0x584>
 57c:	9441      	ld.w      	r2, (r4, 0x4)
 57e:	9263      	ld.w      	r3, (r2, 0xc)
 580:	2b00      	subi      	r3, 1
 582:	b263      	st.w      	r3, (r2, 0xc)
 584:	3300      	movi      	r3, 0
 586:	b475      	st.w      	r3, (r4, 0x54)
 588:	d86420b5 	ld.w      	r3, (r4, 0x2d4)
 58c:	3b41      	cmpnei      	r3, 1
 58e:	6cdf      	mov      	r3, r7
 590:	c4660c20 	incf      	r3, r6, 0
 594:	3201      	movi      	r2, 1
 596:	b821      	st.w      	r1, (r14, 0x4)
 598:	b860      	st.w      	r3, (r14, 0x0)
 59a:	b44c      	st.w      	r2, (r4, 0x30)
 59c:	5c3e      	addi      	r1, r4, 8
 59e:	1065      	lrw      	r3, 0x0	// 5b0 <wpa_sm_step+0x5b0>
 5a0:	e0000000 	bsr      	0x0	// 0 <wpa_sm_step>
 5a4:	e800fdd4 	br      	0x14c	// 14c <wpa_sm_step+0x14c>
 5a8:	9470      	ld.w      	r3, (r4, 0x40)
 5aa:	079e      	br      	0x4e6	// 4e6 <wpa_sm_step+0x4e6>
	...

Disassembly of section .text.wpa_rekey_ptk:

00000000 <wpa_rekey_ptk>:
   0:	14d1      	push      	r4, r15
   2:	6d07      	mov      	r4, r1
   4:	1069      	lrw      	r3, 0x0	// 28 <wpa_rekey_ptk+0x28>
   6:	3200      	movi      	r2, 0
   8:	2107      	addi      	r1, 8
   a:	e0000000 	bsr      	0x0	// 0 <wpa_rekey_ptk>
   e:	e9040008 	bez      	r4, 0x1e	// 1e <wpa_rekey_ptk+0x1e>
  12:	3301      	movi      	r3, 1
  14:	dc6420aa 	st.w      	r3, (r4, 0x2a8)
  18:	3300      	movi      	r3, 0
  1a:	dc64208c 	st.w      	r3, (r4, 0x230)
  1e:	6c13      	mov      	r0, r4
  20:	e0000000 	bsr      	0x0	// 0 <wpa_rekey_ptk>
  24:	1491      	pop      	r4, r15
  26:	0000      	.short	0x0000
  28:	00000000 	.long	0x00000000

Disassembly of section .text.wpa_send_eapol_timeout:

00000000 <wpa_send_eapol_timeout>:
   0:	14d1      	push      	r4, r15
   2:	3200      	movi      	r2, 0
   4:	6d07      	mov      	r4, r1
   6:	dc4120bb 	st.w      	r2, (r1, 0x2ec)
   a:	2107      	addi      	r1, 8
   c:	1065      	lrw      	r3, 0x0	// 20 <wpa_send_eapol_timeout+0x20>
   e:	e0000000 	bsr      	0x0	// 0 <wpa_send_eapol_timeout>
  12:	3301      	movi      	r3, 1
  14:	b470      	st.w      	r3, (r4, 0x40)
  16:	6c13      	mov      	r0, r4
  18:	e0000000 	bsr      	0x0	// 0 <wpa_send_eapol_timeout>
  1c:	1491      	pop      	r4, r15
  1e:	0000      	.short	0x0000
  20:	00000000 	.long	0x00000000

Disassembly of section .text.wpa_group_update_sta:

00000000 <wpa_group_update_sta>:
   0:	14d1      	push      	r4, r15
   2:	6d03      	mov      	r4, r0
   4:	e9010005 	bez      	r1, 0xe	// e <wpa_group_update_sta+0xe>
   8:	9061      	ld.w      	r3, (r0, 0x4)
   a:	64c6      	cmpne      	r1, r3
   c:	080c      	bt      	0x24	// 24 <wpa_group_update_sta+0x24>
   e:	9466      	ld.w      	r3, (r4, 0x18)
  10:	3b4b      	cmpnei      	r3, 11
  12:	0c0b      	bf      	0x28	// 28 <wpa_group_update_sta+0x28>
  14:	1072      	lrw      	r3, 0x0	// 5c <wpa_group_update_sta+0x5c>
  16:	3200      	movi      	r2, 0
  18:	5c3e      	addi      	r1, r4, 8
  1a:	9400      	ld.w      	r0, (r4, 0x0)
  1c:	e0000000 	bsr      	0x0	// 0 <wpa_group_update_sta>
  20:	3300      	movi      	r3, 0
  22:	b475      	st.w      	r3, (r4, 0x54)
  24:	3000      	movi      	r0, 0
  26:	1491      	pop      	r4, r15
  28:	9475      	ld.w      	r3, (r4, 0x54)
  2a:	e9030008 	bez      	r3, 0x3a	// 3a <wpa_group_update_sta+0x3a>
  2e:	106d      	lrw      	r3, 0x0	// 60 <wpa_group_update_sta+0x60>
  30:	3200      	movi      	r2, 0
  32:	5c3e      	addi      	r1, r4, 8
  34:	9400      	ld.w      	r0, (r4, 0x0)
  36:	e0000000 	bsr      	0x0	// 0 <wpa_group_update_sta>
  3a:	d86402bd 	ld.b      	r3, (r4, 0x2bd)
  3e:	e4632001 	andi      	r3, r3, 1
  42:	e923fff1 	bnez      	r3, 0x24	// 24 <wpa_group_update_sta+0x24>
  46:	9441      	ld.w      	r2, (r4, 0x4)
  48:	6c13      	mov      	r0, r4
  4a:	9263      	ld.w      	r3, (r2, 0xc)
  4c:	2300      	addi      	r3, 1
  4e:	b263      	st.w      	r3, (r2, 0xc)
  50:	3301      	movi      	r3, 1
  52:	b475      	st.w      	r3, (r4, 0x54)
  54:	e0000000 	bsr      	0x0	// 0 <wpa_group_update_sta>
  58:	07e6      	br      	0x24	// 24 <wpa_group_update_sta+0x24>
	...

Disassembly of section .text.wpa_auth_sta_associated:

00000000 <wpa_auth_sta_associated>:
   0:	14d3      	push      	r4-r6, r15
   2:	6d07      	mov      	r4, r1
   4:	e900002e 	bez      	r0, 0x60	// 60 <wpa_auth_sta_associated+0x60>
   8:	906e      	ld.w      	r3, (r0, 0x38)
   a:	e903002b 	bez      	r3, 0x60	// 60 <wpa_auth_sta_associated+0x60>
   e:	e9010029 	bez      	r1, 0x60	// 60 <wpa_auth_sta_associated+0x60>
  12:	d8a102bc 	ld.b      	r5, (r1, 0x2bc)
  16:	e4a52008 	andi      	r5, r5, 8
  1a:	e905000e 	bez      	r5, 0x36	// 36 <wpa_auth_sta_associated+0x36>
  1e:	3230      	movi      	r2, 48
  20:	3100      	movi      	r1, 0
  22:	e4040243 	addi      	r0, r4, 580
  26:	e0000000 	bsr      	0x0	// 0 <memset>
  2a:	3301      	movi      	r3, 1
  2c:	b46b      	st.w      	r3, (r4, 0x2c)
  2e:	6c13      	mov      	r0, r4
  30:	e0000000 	bsr      	0x0	// 0 <wpa_auth_sta_associated>
  34:	1493      	pop      	r4-r6, r15
  36:	106d      	lrw      	r3, 0x0	// 68 <wpa_auth_sta_associated+0x68>
  38:	6c97      	mov      	r2, r5
  3a:	2107      	addi      	r1, 8
  3c:	e0000000 	bsr      	0x0	// 0 <wpa_auth_sta_associated>
  40:	3601      	movi      	r6, 1
  42:	d86402bc 	ld.b      	r3, (r4, 0x2bc)
  46:	c4665c03 	ins      	r3, r6, 3, 3
  4a:	dc6402bc 	st.b      	r3, (r4, 0x2bc)
  4e:	b4c8      	st.w      	r6, (r4, 0x20)
  50:	6c13      	mov      	r0, r4
  52:	e0000000 	bsr      	0x0	// 0 <wpa_auth_sta_associated>
  56:	3841      	cmpnei      	r0, 1
  58:	0fee      	bf      	0x34	// 34 <wpa_auth_sta_associated+0x34>
  5a:	b4a8      	st.w      	r5, (r4, 0x20)
  5c:	b4ca      	st.w      	r6, (r4, 0x28)
  5e:	07e8      	br      	0x2e	// 2e <wpa_auth_sta_associated+0x2e>
  60:	3000      	movi      	r0, 0
  62:	2800      	subi      	r0, 1
  64:	07e8      	br      	0x34	// 34 <wpa_auth_sta_associated+0x34>
  66:	0000      	.short	0x0000
  68:	00000000 	.long	0x00000000

Disassembly of section .text.wpa_sm_call_step:

00000000 <wpa_sm_call_step>:
   0:	14d0      	push      	r15
   2:	e0000000 	bsr      	0x0	// 0 <wpa_sm_call_step>
   6:	1490      	pop      	r15

Disassembly of section .text.wpa_receive:

00000000 <wpa_receive>:
   0:	14d8      	push      	r4-r11, r15
   2:	163b      	subi      	r14, r14, 364
   4:	6d03      	mov      	r4, r0
   6:	6ec7      	mov      	r11, r1
   8:	6dcb      	mov      	r7, r2
   a:	b86b      	st.w      	r3, (r14, 0x2c)
   c:	e9000027 	bez      	r0, 0x5a	// 5a <wpa_receive+0x5a>
  10:	906e      	ld.w      	r3, (r0, 0x38)
  12:	e9030024 	bez      	r3, 0x5a	// 5a <wpa_receive+0x5a>
  16:	e9010022 	bez      	r1, 0x5a	// 5a <wpa_receive+0x5a>
  1a:	d8212040 	ld.w      	r1, (r1, 0x100)
  1e:	d80b20b7 	ld.w      	r0, (r11, 0x2dc)
  22:	e0000000 	bsr      	0x0	// 0 <wpa_mic_len>
  26:	6cc3      	mov      	r3, r0
  28:	2352      	addi      	r3, 83
  2a:	984b      	ld.w      	r2, (r14, 0x2c)
  2c:	64c8      	cmphs      	r2, r3
  2e:	b809      	st.w      	r0, (r14, 0x24)
  30:	0c15      	bf      	0x5a	// 5a <wpa_receive+0x5a>
  32:	e4670050 	addi      	r3, r7, 81
  36:	5b40      	addu      	r2, r3, r0
  38:	b86d      	st.w      	r3, (r14, 0x34)
  3a:	8260      	ld.b      	r3, (r2, 0x0)
  3c:	4368      	lsli      	r3, r3, 8
  3e:	8241      	ld.b      	r2, (r2, 0x1)
  40:	6cc8      	or      	r3, r2
  42:	b86a      	st.w      	r3, (r14, 0x28)
  44:	986b      	ld.w      	r3, (r14, 0x2c)
  46:	e4431052 	subi      	r2, r3, 83
  4a:	6082      	subu      	r2, r0
  4c:	986a      	ld.w      	r3, (r14, 0x28)
  4e:	64c8      	cmphs      	r2, r3
  50:	0807      	bt      	0x5e	// 5e <wpa_receive+0x5e>
  52:	6c4f      	mov      	r1, r3
  54:	0215      	lrw      	r0, 0x0	// 2fc <wpa_receive+0x2fc>
  56:	e0000000 	bsr      	0x0	// 0 <hgprintf>
  5a:	161b      	addi      	r14, r14, 364
  5c:	1498      	pop      	r4-r11, r15
  5e:	d86b20b5 	ld.w      	r3, (r11, 0x2d4)
  62:	3b42      	cmpnei      	r3, 2
  64:	8764      	ld.b      	r3, (r7, 0x4)
  66:	0852      	bt      	0x10a	// 10a <wpa_receive+0x10a>
  68:	74cc      	zextb      	r3, r3
  6a:	eb4300fe 	cmpnei      	r3, 254
  6e:	0c03      	bf      	0x74	// 74 <wpa_receive+0x74>
  70:	3b42      	cmpnei      	r3, 2
  72:	0bf4      	bt      	0x5a	// 5a <wpa_receive+0x5a>
  74:	87a5      	ld.b      	r5, (r7, 0x5)
  76:	8766      	ld.b      	r3, (r7, 0x6)
  78:	45a8      	lsli      	r5, r5, 8
  7a:	6d4c      	or      	r5, r3
  7c:	3380      	movi      	r3, 128
  7e:	4366      	lsli      	r3, r3, 6
  80:	68d4      	and      	r3, r5
  82:	e923ffec 	bnez      	r3, 0x5a	// 5a <wpa_receive+0x5a>
  86:	e4652800 	andi      	r3, r5, 2048
  8a:	b86c      	st.w      	r3, (r14, 0x30)
  8c:	e9230042 	bnez      	r3, 0x110	// 110 <wpa_receive+0x110>
  90:	e4652008 	andi      	r3, r5, 8
  94:	e9030042 	bez      	r3, 0x118	// 118 <wpa_receive+0x118>
  98:	986a      	ld.w      	r3, (r14, 0x28)
  9a:	e9030043 	bez      	r3, 0x120	// 120 <wpa_receive+0x120>
  9e:	9869      	ld.w      	r3, (r14, 0x24)
  a0:	e9230044 	bnez      	r3, 0x128	// 128 <wpa_receive+0x128>
  a4:	3380      	movi      	r3, 128
  a6:	4365      	lsli      	r3, r3, 5
  a8:	68d4      	and      	r3, r5
  aa:	e9030044 	bez      	r3, 0x132	// 132 <wpa_receive+0x132>
  ae:	986a      	ld.w      	r3, (r14, 0x28)
  b0:	3b50      	cmpnei      	r3, 16
  b2:	ea880094 	lrw      	r8, 0x0	// 300 <wpa_receive+0x300>
  b6:	036b      	lrw      	r3, 0x0	// 304 <wpa_receive+0x304>
  b8:	c5030c40 	inct      	r8, r3, 0
  bc:	986a      	ld.w      	r3, (r14, 0x28)
  be:	3b50      	cmpnei      	r3, 16
  c0:	3601      	movi      	r6, 1
  c2:	9869      	ld.w      	r3, (r14, 0x24)
  c4:	c4c30c40 	inct      	r6, r3, 0
  c8:	d86b20b6 	ld.w      	r3, (r11, 0x2d8)
  cc:	3b50      	cmpnei      	r3, 16
  ce:	e5452007 	andi      	r10, r5, 7
  d2:	e52b0007 	addi      	r9, r11, 8
  d6:	0c04      	bf      	0xde	// de <wpa_receive+0xde>
  d8:	eb430040 	cmpnei      	r3, 64
  dc:	0840      	bt      	0x15c	// 15c <wpa_receive+0x15c>
  de:	d80b20b7 	ld.w      	r0, (r11, 0x2dc)
  e2:	e0000000 	bsr      	0x0	// 0 <wpa_use_cmac>
  e6:	e900002a 	bez      	r0, 0x13a	// 13a <wpa_receive+0x13a>
  ea:	d80b20b7 	ld.w      	r0, (r11, 0x2dc)
  ee:	e0000000 	bsr      	0x0	// 0 <wpa_use_akm_defined>
  f2:	e9200024 	bnez      	r0, 0x13a	// 13a <wpa_receive+0x13a>
  f6:	eb4a0003 	cmpnei      	r10, 3
  fa:	0c20      	bf      	0x13a	// 13a <wpa_receive+0x13a>
  fc:	037c      	lrw      	r3, 0x0	// 308 <wpa_receive+0x308>
  fe:	3202      	movi      	r2, 2
 100:	6c67      	mov      	r1, r9
 102:	6c13      	mov      	r0, r4
 104:	e0000000 	bsr      	0x0	// 0 <wpa_receive>
 108:	07a9      	br      	0x5a	// 5a <wpa_receive+0x5a>
 10a:	eb4300fe 	cmpnei      	r3, 254
 10e:	07b2      	br      	0x72	// 72 <wpa_receive+0x72>
 110:	ea88007f 	lrw      	r8, 0x0	// 30c <wpa_receive+0x30c>
 114:	3603      	movi      	r6, 3
 116:	07d9      	br      	0xc8	// c8 <wpa_receive+0xc8>
 118:	ea88007e 	lrw      	r8, 0x0	// 310 <wpa_receive+0x310>
 11c:	3602      	movi      	r6, 2
 11e:	07d5      	br      	0xc8	// c8 <wpa_receive+0xc8>
 120:	ea880078 	lrw      	r8, 0x0	// 300 <wpa_receive+0x300>
 124:	3601      	movi      	r6, 1
 126:	07d1      	br      	0xc8	// c8 <wpa_receive+0xc8>
 128:	ea880077 	lrw      	r8, 0x0	// 304 <wpa_receive+0x304>
 12c:	e4c52800 	andi      	r6, r5, 2048
 130:	07cc      	br      	0xc8	// c8 <wpa_receive+0xc8>
 132:	ea880075 	lrw      	r8, 0x0	// 304 <wpa_receive+0x304>
 136:	98c9      	ld.w      	r6, (r14, 0x24)
 138:	07c8      	br      	0xc8	// c8 <wpa_receive+0xc8>
 13a:	d80b20b7 	ld.w      	r0, (r11, 0x2dc)
 13e:	e0000000 	bsr      	0x0	// 0 <wpa_use_cmac>
 142:	e920000d 	bnez      	r0, 0x15c	// 15c <wpa_receive+0x15c>
 146:	d80b20b7 	ld.w      	r0, (r11, 0x2dc)
 14a:	e0000000 	bsr      	0x0	// 0 <wpa_use_akm_defined>
 14e:	e9200007 	bnez      	r0, 0x15c	// 15c <wpa_receive+0x15c>
 152:	eb4a0002 	cmpnei      	r10, 2
 156:	0c03      	bf      	0x15c	// 15c <wpa_receive+0x15c>
 158:	136f      	lrw      	r3, 0x0	// 314 <wpa_receive+0x314>
 15a:	07d2      	br      	0xfe	// fe <wpa_receive+0xfe>
 15c:	d80b20b7 	ld.w      	r0, (r11, 0x2dc)
 160:	e0000000 	bsr      	0x0	// 0 <wpa_use_akm_defined>
 164:	e9000006 	bez      	r0, 0x170	// 170 <wpa_receive+0x170>
 168:	e90a0004 	bez      	r10, 0x170	// 170 <wpa_receive+0x170>
 16c:	136b      	lrw      	r3, 0x0	// 318 <wpa_receive+0x318>
 16e:	07c8      	br      	0xfe	// fe <wpa_receive+0xfe>
 170:	e4652800 	andi      	r3, r5, 2048
 174:	e9030011 	bez      	r3, 0x196	// 196 <wpa_receive+0x196>
 178:	d86b20b2 	ld.w      	r3, (r11, 0x2c8)
 17c:	e903009d 	bez      	r3, 0x2b6	// 2b6 <wpa_receive+0x2b6>
 180:	3208      	movi      	r2, 8
 182:	e42b02bd 	addi      	r1, r11, 702
 186:	e4070008 	addi      	r0, r7, 9
 18a:	e0000000 	bsr      	0x0	// 0 <memcmp>
 18e:	e9400094 	bhz      	r0, 0x2b6	// 2b6 <wpa_receive+0x2b6>
 192:	1363      	lrw      	r3, 0x0	// 31c <wpa_receive+0x31c>
 194:	07b5      	br      	0xfe	// fe <wpa_receive+0xfe>
 196:	e5870008 	addi      	r12, r7, 9
 19a:	e54b0243 	addi      	r10, r11, 580
 19e:	6c73      	mov      	r1, r12
 1a0:	6c2b      	mov      	r0, r10
 1a2:	dd8e200e 	st.w      	r12, (r14, 0x38)
 1a6:	e0000000 	bsr      	0x0	// 0 <wpa_receive>
 1aa:	e9200086 	bnez      	r0, 0x2b6	// 2b6 <wpa_receive+0x2b6>
 1ae:	d98e200e 	ld.w      	r12, (r14, 0x38)
 1b2:	e9260050 	bnez      	r6, 0x252	// 252 <wpa_receive+0x252>
 1b6:	6c73      	mov      	r1, r12
 1b8:	e40b0273 	addi      	r0, r11, 628
 1bc:	e0000000 	bsr      	0x0	// 0 <wpa_receive>
 1c0:	e9000077 	bez      	r0, 0x2ae	// 2ae <wpa_receive+0x2ae>
 1c4:	d86b2006 	ld.w      	r3, (r11, 0x18)
 1c8:	3b4a      	cmpnei      	r3, 10
 1ca:	0872      	bt      	0x2ae	// 2ae <wpa_receive+0x2ae>
 1cc:	e46b0077 	addi      	r3, r11, 120
 1d0:	3220      	movi      	r2, 32
 1d2:	e4270010 	addi      	r1, r7, 17
 1d6:	6c0f      	mov      	r0, r3
 1d8:	b86e      	st.w      	r3, (r14, 0x38)
 1da:	e0000000 	bsr      	0x0	// 0 <memcmp>
 1de:	e9000062 	bez      	r0, 0x2a2	// 2a2 <wpa_receive+0x2a2>
 1e2:	1270      	lrw      	r3, 0x0	// 320 <wpa_receive+0x320>
 1e4:	6c9b      	mov      	r2, r6
 1e6:	e42b0007 	addi      	r1, r11, 8
 1ea:	6c13      	mov      	r0, r4
 1ec:	e0000000 	bsr      	0x0	// 0 <wpa_receive>
 1f0:	ea090001 	movi      	r9, 1
 1f4:	d86b02bc 	ld.b      	r3, (r11, 0x2bc)
 1f8:	c4695c06 	ins      	r3, r9, 6, 6
 1fc:	dc6b02bc 	st.b      	r3, (r11, 0x2bc)
 200:	3220      	movi      	r2, 32
 202:	e42b0077 	addi      	r1, r11, 120
 206:	e40b0097 	addi      	r0, r11, 152
 20a:	e0000000 	bsr      	0x0	// 0 <memcpy>
 20e:	d86b02bc 	ld.b      	r3, (r11, 0x2bc)
 212:	c4695c07 	ins      	r3, r9, 7, 7
 216:	dc6b02bc 	st.b      	r3, (r11, 0x2bc)
 21a:	3208      	movi      	r2, 8
 21c:	6c6b      	mov      	r1, r10
 21e:	e40b00b7 	addi      	r0, r11, 184
 222:	e0000000 	bsr      	0x0	// 0 <memcpy>
 226:	d86b2006 	ld.w      	r3, (r11, 0x18)
 22a:	5b5b      	subi      	r2, r3, 7
 22c:	3a01      	cmphsi      	r2, 2
 22e:	e42b0007 	addi      	r1, r11, 8
 232:	0c59      	bf      	0x2e4	// 2e4 <wpa_receive+0x2e4>
 234:	d84b02bc 	ld.b      	r2, (r11, 0x2bc)
 238:	e4422040 	andi      	r2, r2, 64
 23c:	e9020004 	bez      	r2, 0x244	// 244 <wpa_receive+0x244>
 240:	3b4a      	cmpnei      	r3, 10
 242:	0c51      	bf      	0x2e4	// 2e4 <wpa_receive+0x2e4>
 244:	b860      	st.w      	r3, (r14, 0x0)
 246:	3201      	movi      	r2, 1
 248:	1177      	lrw      	r3, 0x0	// 324 <wpa_receive+0x324>
 24a:	6c13      	mov      	r0, r4
 24c:	e0000000 	bsr      	0x0	// 0 <wpa_receive>
 250:	0705      	br      	0x5a	// 5a <wpa_receive+0x5a>
 252:	3e41      	cmpnei      	r6, 1
 254:	082d      	bt      	0x2ae	// 2ae <wpa_receive+0x2ae>
 256:	d86b42bc 	ld.bs      	r3, (r11, 0x2bc)
 25a:	e9a3002a 	bhsz      	r3, 0x2ae	// 2ae <wpa_receive+0x2ae>
 25e:	d86b2006 	ld.w      	r3, (r11, 0x18)
 262:	3b4a      	cmpnei      	r3, 10
 264:	0825      	bt      	0x2ae	// 2ae <wpa_receive+0x2ae>
 266:	3208      	movi      	r2, 8
 268:	e42b00b7 	addi      	r1, r11, 184
 26c:	6c33      	mov      	r0, r12
 26e:	e0000000 	bsr      	0x0	// 0 <memcmp>
 272:	e920001e 	bnez      	r0, 0x2ae	// 2ae <wpa_receive+0x2ae>
 276:	116d      	lrw      	r3, 0x0	// 328 <wpa_receive+0x328>
 278:	e4452800 	andi      	r2, r5, 2048
 27c:	e42b0007 	addi      	r1, r11, 8
 280:	6c13      	mov      	r0, r4
 282:	e0000000 	bsr      	0x0	// 0 <wpa_receive>
 286:	d86b2006 	ld.w      	r3, (r11, 0x18)
 28a:	3b4a      	cmpnei      	r3, 10
 28c:	0805      	bt      	0x296	// 296 <wpa_receive+0x296>
 28e:	d84b208c 	ld.w      	r2, (r11, 0x230)
 292:	e9220018 	bnez      	r2, 0x2c2	// 2c2 <wpa_receive+0x2c2>
 296:	b860      	st.w      	r3, (r14, 0x0)
 298:	3201      	movi      	r2, 1
 29a:	1165      	lrw      	r3, 0x0	// 32c <wpa_receive+0x32c>
 29c:	e42b0007 	addi      	r1, r11, 8
 2a0:	07d5      	br      	0x24a	// 24a <wpa_receive+0x24a>
 2a2:	dd0e2000 	st.w      	r8, (r14, 0x0)
 2a6:	1163      	lrw      	r3, 0x0	// 330 <wpa_receive+0x330>
 2a8:	3200      	movi      	r2, 0
 2aa:	6c67      	mov      	r1, r9
 2ac:	07cf      	br      	0x24a	// 24a <wpa_receive+0x24a>
 2ae:	dd0e2000 	st.w      	r8, (r14, 0x0)
 2b2:	1161      	lrw      	r3, 0x0	// 334 <wpa_receive+0x334>
 2b4:	07fa      	br      	0x2a8	// 2a8 <wpa_receive+0x2a8>
 2b6:	3e41      	cmpnei      	r6, 1
 2b8:	0fe7      	bf      	0x286	// 286 <wpa_receive+0x286>
 2ba:	3e40      	cmpnei      	r6, 0
 2bc:	0fb5      	bf      	0x226	// 226 <wpa_receive+0x226>
 2be:	3e42      	cmpnei      	r6, 2
 2c0:	0c40      	bf      	0x340	// 340 <wpa_receive+0x340>
 2c2:	e52b0007 	addi      	r9, r11, 8
 2c6:	107d      	lrw      	r3, 0x0	// 338 <wpa_receive+0x338>
 2c8:	3200      	movi      	r2, 0
 2ca:	dd0e2000 	st.w      	r8, (r14, 0x0)
 2ce:	6c67      	mov      	r1, r9
 2d0:	6c13      	mov      	r0, r4
 2d2:	e0000000 	bsr      	0x0	// 0 <wpa_receive>
 2d6:	e4652080 	andi      	r3, r5, 128
 2da:	e903003f 	bez      	r3, 0x358	// 358 <wpa_receive+0x358>
 2de:	1078      	lrw      	r3, 0x0	// 33c <wpa_receive+0x33c>
 2e0:	3201      	movi      	r2, 1
 2e2:	070f      	br      	0x100	// 100 <wpa_receive+0x100>
 2e4:	d86b2001 	ld.w      	r3, (r11, 0x4)
 2e8:	d8632034 	ld.w      	r3, (r3, 0xd0)
 2ec:	e903ffeb 	bez      	r3, 0x2c2	// 2c2 <wpa_receive+0x2c2>
 2f0:	3202      	movi      	r2, 2
 2f2:	6c13      	mov      	r0, r4
 2f4:	e0000000 	bsr      	0x0	// 0 <wpa_receive>
 2f8:	06b1      	br      	0x5a	// 5a <wpa_receive+0x5a>
	...
 33e:	0000      	.short	0x0000
 340:	d86b2007 	ld.w      	r3, (r11, 0x1c)
 344:	3b41      	cmpnei      	r3, 1
 346:	0805      	bt      	0x350	// 350 <wpa_receive+0x350>
 348:	d84b208c 	ld.w      	r2, (r11, 0x230)
 34c:	e922ffbb 	bnez      	r2, 0x2c2	// 2c2 <wpa_receive+0x2c2>
 350:	b860      	st.w      	r3, (r14, 0x0)
 352:	3201      	movi      	r2, 1
 354:	0268      	lrw      	r3, 0x0	// 630 <wpa_receive+0x630>
 356:	07aa      	br      	0x2aa	// 2aa <wpa_receive+0x2aa>
 358:	33f0      	movi      	r3, 240
 35a:	d80b20b7 	ld.w      	r0, (r11, 0x2dc)
 35e:	436e      	lsli      	r3, r3, 14
 360:	68c0      	and      	r3, r0
 362:	e9230008 	bnez      	r3, 0x372	// 372 <wpa_receive+0x372>
 366:	e4652100 	andi      	r3, r5, 256
 36a:	e9230004 	bnez      	r3, 0x372	// 372 <wpa_receive+0x372>
 36e:	026d      	lrw      	r3, 0x0	// 634 <wpa_receive+0x634>
 370:	07b8      	br      	0x2e0	// 2e0 <wpa_receive+0x2e0>
 372:	3300      	movi      	r3, 0
 374:	dc6b2014 	st.w      	r3, (r11, 0x50)
 378:	d86b208c 	ld.w      	r3, (r11, 0x230)
 37c:	e90301ad 	bez      	r3, 0x6d6	// 6d6 <wpa_receive+0x6d6>
 380:	d90b02bc 	ld.b      	r8, (r11, 0x2bc)
 384:	e5082040 	andi      	r8, r8, 64
 388:	e92801a7 	bnez      	r8, 0x6d6	// 6d6 <wpa_receive+0x6d6>
 38c:	9869      	ld.w      	r3, (r14, 0x24)
 38e:	e903009a 	bez      	r3, 0x4c2	// 4c2 <wpa_receive+0x4c2>
 392:	e46b0113 	addi      	r3, r11, 276
 396:	b86e      	st.w      	r3, (r14, 0x38)
 398:	986b      	ld.w      	r3, (r14, 0x2c)
 39a:	b860      	st.w      	r3, (r14, 0x0)
 39c:	e44b0113 	addi      	r2, r11, 276
 3a0:	6cdf      	mov      	r3, r7
 3a2:	d82b2040 	ld.w      	r1, (r11, 0x100)
 3a6:	e0000000 	bsr      	0x0	// 0 <wpa_receive>
 3aa:	e900008c 	bez      	r0, 0x4c2	// 4c2 <wpa_receive+0x4c2>
 3ae:	3e41      	cmpnei      	r6, 1
 3b0:	082d      	bt      	0x40a	// 40a <wpa_receive+0x40a>
 3b2:	d86b42bc 	ld.bs      	r3, (r11, 0x2bc)
 3b6:	e9a3002a 	bhsz      	r3, 0x40a	// 40a <wpa_receive+0x40a>
 3ba:	328e      	movi      	r2, 142
 3bc:	4241      	lsli      	r2, r2, 1
 3be:	6c63      	mov      	r1, r8
 3c0:	1814      	addi      	r0, r14, 80
 3c2:	dd0e2013 	st.w      	r8, (r14, 0x4c)
 3c6:	e0000000 	bsr      	0x0	// 0 <memset>
 3ca:	e46b00bf 	addi      	r3, r11, 192
 3ce:	b86f      	st.w      	r3, (r14, 0x3c)
 3d0:	e46b000d 	addi      	r3, r11, 14
 3d4:	e54e0047 	addi      	r10, r14, 72
 3d8:	b870      	st.w      	r3, (r14, 0x40)
 3da:	d86b20b7 	ld.w      	r3, (r11, 0x2dc)
 3de:	e4432d42 	andi      	r2, r3, 3394
 3e2:	e9020016 	bez      	r2, 0x40e	// 40e <wpa_receive+0x40e>
 3e6:	e4632c00 	andi      	r3, r3, 3072
 3ea:	e9230012 	bnez      	r3, 0x40e	// 40e <wpa_receive+0x40e>
 3ee:	1b13      	addi      	r3, r14, 76
 3f0:	b861      	st.w      	r3, (r14, 0x4)
 3f2:	dd4e2000 	st.w      	r10, (r14, 0x0)
 3f6:	6ce3      	mov      	r3, r8
 3f8:	9850      	ld.w      	r2, (r14, 0x40)
 3fa:	6c67      	mov      	r1, r9
 3fc:	d80b2000 	ld.w      	r0, (r11, 0x0)
 400:	e0000000 	bsr      	0x0	// 0 <wpa_receive>
 404:	6e03      	mov      	r8, r0
 406:	e920000a 	bnez      	r0, 0x41a	// 41a <wpa_receive+0x41a>
 40a:	0373      	lrw      	r3, 0x0	// 638 <wpa_receive+0x638>
 40c:	076a      	br      	0x2e0	// 2e0 <wpa_receive+0x2e0>
 40e:	d86b2040 	ld.w      	r3, (r11, 0x100)
 412:	d90e200f 	ld.w      	r8, (r14, 0x3c)
 416:	dc6a2000 	st.w      	r3, (r10, 0x0)
 41a:	3200      	movi      	r2, 0
 41c:	b848      	st.w      	r2, (r14, 0x20)
 41e:	b847      	st.w      	r2, (r14, 0x1c)
 420:	b846      	st.w      	r2, (r14, 0x18)
 422:	d84b20b6 	ld.w      	r2, (r11, 0x2d8)
 426:	b845      	st.w      	r2, (r14, 0x14)
 428:	d84b20b7 	ld.w      	r2, (r11, 0x2dc)
 42c:	b844      	st.w      	r2, (r14, 0x10)
 42e:	e44b0097 	addi      	r2, r11, 152
 432:	e58e004f 	addi      	r12, r14, 80
 436:	b842      	st.w      	r2, (r14, 0x8)
 438:	e44b0057 	addi      	r2, r11, 88
 43c:	b841      	st.w      	r2, (r14, 0x4)
 43e:	d86b2000 	ld.w      	r3, (r11, 0x0)
 442:	dd8e2003 	st.w      	r12, (r14, 0xc)
 446:	dd2e2000 	st.w      	r9, (r14, 0x0)
 44a:	239b      	addi      	r3, 156
 44c:	135c      	lrw      	r2, 0x0	// 63c <wpa_receive+0x63c>
 44e:	6c23      	mov      	r0, r8
 450:	d82a2000 	ld.w      	r1, (r10, 0x0)
 454:	dd8e2011 	st.w      	r12, (r14, 0x44)
 458:	e0000000 	bsr      	0x0	// 0 <wpa_pmk_to_ptk>
 45c:	e980ffd7 	blz      	r0, 0x40a	// 40a <wpa_receive+0x40a>
 460:	986b      	ld.w      	r3, (r14, 0x2c)
 462:	b860      	st.w      	r3, (r14, 0x0)
 464:	d98e2011 	ld.w      	r12, (r14, 0x44)
 468:	6cdf      	mov      	r3, r7
 46a:	6cb3      	mov      	r2, r12
 46c:	d82a2000 	ld.w      	r1, (r10, 0x0)
 470:	d80b20b7 	ld.w      	r0, (r11, 0x2dc)
 474:	e0000000 	bsr      	0x0	// 0 <wpa_receive>
 478:	e9200095 	bnez      	r0, 0x5a2	// 5a2 <wpa_receive+0x5a2>
 47c:	e40b00bf 	addi      	r0, r11, 192
 480:	6422      	cmpne      	r8, r0
 482:	0c09      	bf      	0x494	// 494 <wpa_receive+0x494>
 484:	d94a2000 	ld.w      	r10, (r10, 0x0)
 488:	6cab      	mov      	r2, r10
 48a:	6c63      	mov      	r1, r8
 48c:	e0000000 	bsr      	0x0	// 0 <memcpy>
 490:	dd4b2040 	st.w      	r10, (r11, 0x100)
 494:	d86b02bc 	ld.b      	r3, (r11, 0x2bc)
 498:	3200      	movi      	r2, 0
 49a:	c4625c07 	ins      	r3, r2, 7, 7
 49e:	dc6b02bc 	st.b      	r3, (r11, 0x2bc)
 4a2:	3220      	movi      	r2, 32
 4a4:	e42b0097 	addi      	r1, r11, 152
 4a8:	e40b0077 	addi      	r0, r11, 120
 4ac:	e0000000 	bsr      	0x0	// 0 <memcpy>
 4b0:	328e      	movi      	r2, 142
 4b2:	4241      	lsli      	r2, r2, 1
 4b4:	1914      	addi      	r1, r14, 80
 4b6:	980e      	ld.w      	r0, (r14, 0x38)
 4b8:	e0000000 	bsr      	0x0	// 0 <memcpy>
 4bc:	3301      	movi      	r3, 1
 4be:	dc6b208c 	st.w      	r3, (r11, 0x230)
 4c2:	ea080001 	movi      	r8, 1
 4c6:	dd0b2014 	st.w      	r8, (r11, 0x50)
 4ca:	6caf      	mov      	r2, r11
 4cc:	6c53      	mov      	r1, r4
 4ce:	121d      	lrw      	r0, 0x0	// 640 <wpa_receive+0x640>
 4d0:	e0000000 	bsr      	0x0	// 0 <eloop_cancel_timeout>
 4d4:	3300      	movi      	r3, 0
 4d6:	dc6b20bb 	st.w      	r3, (r11, 0x2ec)
 4da:	986c      	ld.w      	r3, (r14, 0x30)
 4dc:	e90300cf 	bez      	r3, 0x67a	// 67a <wpa_receive+0x67a>
 4e0:	d86b2014 	ld.w      	r3, (r11, 0x50)
 4e4:	e90300fd 	bez      	r3, 0x6de	// 6de <wpa_receive+0x6de>
 4e8:	e4c52400 	andi      	r6, r5, 1024
 4ec:	dd0b20b2 	st.w      	r8, (r11, 0x2c8)
 4f0:	3208      	movi      	r2, 8
 4f2:	e4270008 	addi      	r1, r7, 9
 4f6:	e40b02bd 	addi      	r0, r11, 702
 4fa:	e0000000 	bsr      	0x0	// 0 <memcpy>
 4fe:	e4652008 	andi      	r3, r5, 8
 502:	e9060076 	bez      	r6, 0x5ee	// 5ee <wpa_receive+0x5ee>
 506:	758d      	zexth      	r6, r3
 508:	3e40      	cmpnei      	r6, 0
 50a:	64c3      	mvcv      	r3
 50c:	b860      	st.w      	r3, (r14, 0x0)
 50e:	6ca3      	mov      	r2, r8
 510:	126d      	lrw      	r3, 0x0	// 644 <wpa_receive+0x644>
 512:	6c67      	mov      	r1, r9
 514:	6c13      	mov      	r0, r4
 516:	e0000000 	bsr      	0x0	// 0 <wpa_receive>
 51a:	e926004f 	bnez      	r6, 0x5b8	// 5b8 <wpa_receive+0x5b8>
 51e:	9471      	ld.w      	r3, (r4, 0x44)
 520:	3b48      	cmpnei      	r3, 8
 522:	0c51      	bf      	0x5c4	// 5c4 <wpa_receive+0x5c4>
 524:	1269      	lrw      	r3, 0x0	// 648 <wpa_receive+0x648>
 526:	6ca3      	mov      	r2, r8
 528:	6c67      	mov      	r1, r9
 52a:	6c13      	mov      	r0, r4
 52c:	e0000000 	bsr      	0x0	// 0 <wpa_receive>
 530:	3301      	movi      	r3, 1
 532:	dc6b20aa 	st.w      	r3, (r11, 0x2a8)
 536:	3300      	movi      	r3, 0
 538:	dc6b208c 	st.w      	r3, (r11, 0x230)
 53c:	d80b20ad 	ld.w      	r0, (r11, 0x2b4)
 540:	e0000000 	bsr      	0x0	// 0 <_os_free>
 544:	3300      	movi      	r3, 0
 546:	dc6b20ad 	st.w      	r3, (r11, 0x2b4)
 54a:	982b      	ld.w      	r1, (r14, 0x2c)
 54c:	6c1f      	mov      	r0, r7
 54e:	e0000000 	bsr      	0x0	// 0 <os_memdup>
 552:	dc0b20ad 	st.w      	r0, (r11, 0x2b4)
 556:	e900fd82 	bez      	r0, 0x5a	// 5a <wpa_receive+0x5a>
 55a:	986b      	ld.w      	r3, (r14, 0x2c)
 55c:	dc6b20ae 	st.w      	r3, (r11, 0x2b8)
 560:	c5255522 	zext      	r2, r5, 9, 9
 564:	d86b02bc 	ld.b      	r3, (r11, 0x2bc)
 568:	c4625c05 	ins      	r3, r2, 5, 5
 56c:	dc6b02bc 	st.b      	r3, (r11, 0x2bc)
 570:	3301      	movi      	r3, 1
 572:	dc6b2011 	st.w      	r3, (r11, 0x44)
 576:	986c      	ld.w      	r3, (r14, 0x30)
 578:	3b40      	cmpnei      	r3, 0
 57a:	c4000503 	mvc      	r3
 57e:	c4655465 	zext      	r5, r5, 3, 3
 582:	dcab2012 	st.w      	r5, (r11, 0x48)
 586:	dc6b2013 	st.w      	r3, (r11, 0x4c)
 58a:	3220      	movi      	r2, 32
 58c:	e4270010 	addi      	r1, r7, 17
 590:	e40b0077 	addi      	r0, r11, 120
 594:	e0000000 	bsr      	0x0	// 0 <memcpy>
 598:	6c2f      	mov      	r0, r11
 59a:	e0000000 	bsr      	0x0	// 0 <wpa_receive>
 59e:	e800fd5e 	br      	0x5a	// 5a <wpa_receive+0x5a>
 5a2:	d86b20b7 	ld.w      	r3, (r11, 0x2dc)
 5a6:	e4432d42 	andi      	r2, r3, 3394
 5aa:	e902ff30 	bez      	r2, 0x40a	// 40a <wpa_receive+0x40a>
 5ae:	e4632c00 	andi      	r3, r3, 3072
 5b2:	e903ff14 	bez      	r3, 0x3da	// 3da <wpa_receive+0x3da>
 5b6:	072a      	br      	0x40a	// 40a <wpa_receive+0x40a>
 5b8:	d86b20b6 	ld.w      	r3, (r11, 0x2d8)
 5bc:	3b48      	cmpnei      	r3, 8
 5be:	0c03      	bf      	0x5c4	// 5c4 <wpa_receive+0x5c4>
 5c0:	1163      	lrw      	r3, 0x0	// 64c <wpa_receive+0x64c>
 5c2:	07b2      	br      	0x526	// 526 <wpa_receive+0x526>
 5c4:	d8642023 	ld.w      	r3, (r4, 0x8c)
 5c8:	9362      	ld.w      	r3, (r3, 0x8)
 5ca:	e923000b 	bnez      	r3, 0x5e0	// 5e0 <wpa_receive+0x5e0>
 5ce:	d86b20ba 	ld.w      	r3, (r11, 0x2e8)
 5d2:	2300      	addi      	r3, 1
 5d4:	dc6b20ba 	st.w      	r3, (r11, 0x2e8)
 5d8:	9461      	ld.w      	r3, (r4, 0x4)
 5da:	2300      	addi      	r3, 1
 5dc:	b461      	st.w      	r3, (r4, 0x4)
 5de:	07a9      	br      	0x530	// 530 <wpa_receive+0x530>
 5e0:	6c67      	mov      	r1, r9
 5e2:	d8042024 	ld.w      	r0, (r4, 0x90)
 5e6:	7bcd      	jsr      	r3
 5e8:	e940fd39 	bhz      	r0, 0x5a	// 5a <wpa_receive+0x5a>
 5ec:	07f1      	br      	0x5ce	// 5ce <wpa_receive+0x5ce>
 5ee:	e903000d 	bez      	r3, 0x608	// 608 <wpa_receive+0x608>
 5f2:	1078      	lrw      	r3, 0x0	// 650 <wpa_receive+0x650>
 5f4:	6ca3      	mov      	r2, r8
 5f6:	6c67      	mov      	r1, r9
 5f8:	6c13      	mov      	r0, r4
 5fa:	e0000000 	bsr      	0x0	// 0 <wpa_receive>
 5fe:	dd0b20aa 	st.w      	r8, (r11, 0x2a8)
 602:	dccb208c 	st.w      	r6, (r11, 0x230)
 606:	079b      	br      	0x53c	// 53c <wpa_receive+0x53c>
 608:	986a      	ld.w      	r3, (r14, 0x28)
 60a:	e9230029 	bnez      	r3, 0x65c	// 65c <wpa_receive+0x65c>
 60e:	1072      	lrw      	r3, 0x0	// 654 <wpa_receive+0x654>
 610:	6c67      	mov      	r1, r9
 612:	6c13      	mov      	r0, r4
 614:	3201      	movi      	r2, 1
 616:	e0000000 	bsr      	0x0	// 0 <wpa_receive>
 61a:	6c53      	mov      	r1, r4
 61c:	3200      	movi      	r2, 0
 61e:	100f      	lrw      	r0, 0x0	// 658 <wpa_receive+0x658>
 620:	e0000000 	bsr      	0x0	// 0 <eloop_cancel_timeout>
 624:	3100      	movi      	r1, 0
 626:	6c13      	mov      	r0, r4
 628:	e0000000 	bsr      	0x0	// 0 <wpa_receive>
 62c:	0788      	br      	0x53c	// 53c <wpa_receive+0x53c>
	...
 65a:	0000      	.short	0x0000
 65c:	9809      	ld.w      	r0, (r14, 0x24)
 65e:	2001      	addi      	r0, 2
 660:	986d      	ld.w      	r3, (r14, 0x34)
 662:	60c0      	addu      	r3, r0
 664:	1a14      	addi      	r2, r14, 80
 666:	982a      	ld.w      	r1, (r14, 0x28)
 668:	6c0f      	mov      	r0, r3
 66a:	e0000000 	bsr      	0x0	// 0 <wpa_parse_kde_ies>
 66e:	e920ffd0 	bnez      	r0, 0x60e	// 60e <wpa_receive+0x60e>
 672:	987b      	ld.w      	r3, (r14, 0x6c)
 674:	e923ff64 	bnez      	r3, 0x53c	// 53c <wpa_receive+0x53c>
 678:	07cb      	br      	0x60e	// 60e <wpa_receive+0x60e>
 67a:	e52b0243 	addi      	r9, r11, 580
 67e:	e5470008 	addi      	r10, r7, 9
 682:	6d27      	mov      	r4, r9
 684:	e50b0273 	addi      	r8, r11, 628
 688:	9462      	ld.w      	r3, (r4, 0x8)
 68a:	e903000a 	bez      	r3, 0x69e	// 69e <wpa_receive+0x69e>
 68e:	3208      	movi      	r2, 8
 690:	6c53      	mov      	r1, r4
 692:	6c2b      	mov      	r0, r10
 694:	e0000000 	bsr      	0x0	// 0 <memcmp>
 698:	e9200003 	bnez      	r0, 0x69e	// 69e <wpa_receive+0x69e>
 69c:	b402      	st.w      	r0, (r4, 0x8)
 69e:	240b      	addi      	r4, 12
 6a0:	6522      	cmpne      	r8, r4
 6a2:	0bf3      	bt      	0x688	// 688 <wpa_receive+0x688>
 6a4:	3230      	movi      	r2, 48
 6a6:	e9260013 	bnez      	r6, 0x6cc	// 6cc <wpa_receive+0x6cc>
 6aa:	6c67      	mov      	r1, r9
 6ac:	6c23      	mov      	r0, r8
 6ae:	e0000000 	bsr      	0x0	// 0 <memcpy>
 6b2:	e46b024b 	addi      	r3, r11, 588
 6b6:	e44b027b 	addi      	r2, r11, 636
 6ba:	3100      	movi      	r1, 0
 6bc:	9300      	ld.w      	r0, (r3, 0x0)
 6be:	e9000003 	bez      	r0, 0x6c4	// 6c4 <wpa_receive+0x6c4>
 6c2:	b320      	st.w      	r1, (r3, 0x0)
 6c4:	230b      	addi      	r3, 12
 6c6:	64ca      	cmpne      	r2, r3
 6c8:	0bfa      	bt      	0x6bc	// 6bc <wpa_receive+0x6bc>
 6ca:	0739      	br      	0x53c	// 53c <wpa_receive+0x53c>
 6cc:	3100      	movi      	r1, 0
 6ce:	6c23      	mov      	r0, r8
 6d0:	e0000000 	bsr      	0x0	// 0 <memset>
 6d4:	07ef      	br      	0x6b2	// 6b2 <wpa_receive+0x6b2>
 6d6:	e4652800 	andi      	r3, r5, 2048
 6da:	e903ffd0 	bez      	r3, 0x67a	// 67a <wpa_receive+0x67a>
 6de:	1062      	lrw      	r3, 0x0	// 6e4 <wpa_receive+0x6e4>
 6e0:	0600      	br      	0x2e0	// 2e0 <wpa_receive+0x2e0>
 6e2:	0000      	.short	0x0000
 6e4:	00000000 	.long	0x00000000

Disassembly of section .text.wpa_auth_sm_event:

00000000 <wpa_auth_sm_event>:
   0:	14d4      	push      	r4-r7, r15
   2:	1421      	subi      	r14, r14, 4
   4:	6d03      	mov      	r4, r0
   6:	6d47      	mov      	r5, r1
   8:	e900005d 	bez      	r0, 0xc2	// c2 <wpa_auth_sm_event+0xc2>
   c:	b820      	st.w      	r1, (r14, 0x0)
   e:	3200      	movi      	r2, 0
  10:	1066      	lrw      	r3, 0x0	// 28 <wpa_auth_sm_event+0x28>
  12:	583e      	addi      	r1, r0, 8
  14:	9000      	ld.w      	r0, (r0, 0x0)
  16:	e0000000 	bsr      	0x0	// 0 <wpa_auth_sm_event>
  1a:	5d67      	subi      	r3, r5, 2
  1c:	3b06      	cmphsi      	r3, 7
  1e:	080b      	bt      	0x34	// 34 <wpa_auth_sm_event+0x34>
  20:	1043      	lrw      	r2, 0x0	// 2c <wpa_auth_sm_event+0x2c>
  22:	d0620883 	ldr.w      	r3, (r2, r3 << 2)
  26:	780c      	jmp      	r3
	...
  30:	3301      	movi      	r3, 1
  32:	b469      	st.w      	r3, (r4, 0x24)
  34:	3100      	movi      	r1, 0
  36:	328e      	movi      	r2, 142
  38:	dc24208c 	st.w      	r1, (r4, 0x230)
  3c:	4241      	lsli      	r2, r2, 1
  3e:	e4040113 	addi      	r0, r4, 276
  42:	e0000000 	bsr      	0x0	// 0 <memset>
  46:	3d45      	cmpnei      	r5, 5
  48:	0c04      	bf      	0x50	// 50 <wpa_auth_sm_event+0x50>
  4a:	6c13      	mov      	r0, r4
  4c:	e0000000 	bsr      	0x0	// 0 <wpa_auth_sm_event>
  50:	d86402bc 	ld.b      	r3, (r4, 0x2bc)
  54:	e4432002 	andi      	r2, r3, 2
  58:	e9020031 	bez      	r2, 0xba	// ba <wpa_auth_sm_event+0xba>
  5c:	3201      	movi      	r2, 1
  5e:	c4625c00 	ins      	r3, r2, 0, 0
  62:	dc6402bc 	st.b      	r3, (r4, 0x2bc)
  66:	3000      	movi      	r0, 0
  68:	0427      	br      	0xb6	// b6 <wpa_auth_sm_event+0xb6>
  6a:	d86402bc 	ld.b      	r3, (r4, 0x2bc)
  6e:	e4e32008 	andi      	r7, r3, 8
  72:	e9270010 	bnez      	r7, 0x92	// 92 <wpa_auth_sm_event+0x92>
  76:	3601      	movi      	r6, 1
  78:	c4665c03 	ins      	r3, r6, 3, 3
  7c:	dc6402bc 	st.b      	r3, (r4, 0x2bc)
  80:	b4c8      	st.w      	r6, (r4, 0x20)
  82:	6c13      	mov      	r0, r4
  84:	e0000000 	bsr      	0x0	// 0 <wpa_auth_sm_event>
  88:	3841      	cmpnei      	r0, 1
  8a:	0c16      	bf      	0xb6	// b6 <wpa_auth_sm_event+0xb6>
  8c:	b4e8      	st.w      	r7, (r4, 0x20)
  8e:	b4ca      	st.w      	r6, (r4, 0x28)
  90:	07d2      	br      	0x34	// 34 <wpa_auth_sm_event+0x34>
  92:	9475      	ld.w      	r3, (r4, 0x54)
  94:	e903000b 	bez      	r3, 0xaa	// aa <wpa_auth_sm_event+0xaa>
  98:	9441      	ld.w      	r2, (r4, 0x4)
  9a:	9263      	ld.w      	r3, (r2, 0xc)
  9c:	2b00      	subi      	r3, 1
  9e:	b263      	st.w      	r3, (r2, 0xc)
  a0:	3300      	movi      	r3, 0
  a2:	b475      	st.w      	r3, (r4, 0x54)
  a4:	3301      	movi      	r3, 1
  a6:	dc6420ac 	st.w      	r3, (r4, 0x2b0)
  aa:	3301      	movi      	r3, 1
  ac:	b46b      	st.w      	r3, (r4, 0x2c)
  ae:	07c3      	br      	0x34	// 34 <wpa_auth_sm_event+0x34>
  b0:	3000      	movi      	r0, 0
  b2:	dc04208e 	st.w      	r0, (r4, 0x238)
  b6:	1401      	addi      	r14, r14, 4
  b8:	1494      	pop      	r4-r7, r15
  ba:	6c13      	mov      	r0, r4
  bc:	e0000000 	bsr      	0x0	// 0 <wpa_auth_sm_event>
  c0:	07fb      	br      	0xb6	// b6 <wpa_auth_sm_event+0xb6>
  c2:	3000      	movi      	r0, 0
  c4:	2800      	subi      	r0, 1
  c6:	07f8      	br      	0xb6	// b6 <wpa_auth_sm_event+0xb6>

Disassembly of section .text.wpa_auth_sm_notify:

00000000 <wpa_auth_sm_notify>:
   0:	14d0      	push      	r15
   2:	1421      	subi      	r14, r14, 4
   4:	6cc3      	mov      	r3, r0
   6:	e9000008 	bez      	r0, 0x16	// 16 <wpa_auth_sm_notify+0x16>
   a:	3100      	movi      	r1, 0
   c:	b820      	st.w      	r1, (r14, 0x0)
   e:	6c07      	mov      	r0, r1
  10:	1043      	lrw      	r2, 0x0	// 1c <wpa_auth_sm_notify+0x1c>
  12:	e0000000 	bsr      	0x0	// 0 <eloop_register_timeout>
  16:	1401      	addi      	r14, r14, 4
  18:	1490      	pop      	r15
  1a:	0000      	.short	0x0000
  1c:	0000      	.short	0x0000
	...

Disassembly of section .text.wpa_gtk_rekey:

00000000 <wpa_gtk_rekey>:
   0:	14d2      	push      	r4-r5, r15
   2:	6d43      	mov      	r5, r0
   4:	e900001a 	bez      	r0, 0x38	// 38 <wpa_gtk_rekey+0x38>
   8:	9080      	ld.w      	r4, (r0, 0x0)
   a:	6c53      	mov      	r1, r4
   c:	9467      	ld.w      	r3, (r4, 0x1c)
   e:	9446      	ld.w      	r2, (r4, 0x18)
  10:	b447      	st.w      	r2, (r4, 0x1c)
  12:	b466      	st.w      	r3, (r4, 0x18)
  14:	e0000000 	bsr      	0x0	// 0 <wpa_gtk_rekey>
  18:	6c53      	mov      	r1, r4
  1a:	6c17      	mov      	r0, r5
  1c:	e0000000 	bsr      	0x0	// 0 <wpa_gtk_rekey>
  20:	9467      	ld.w      	r3, (r4, 0x1c)
  22:	9446      	ld.w      	r2, (r4, 0x18)
  24:	6c53      	mov      	r1, r4
  26:	b447      	st.w      	r2, (r4, 0x1c)
  28:	b466      	st.w      	r3, (r4, 0x18)
  2a:	6c17      	mov      	r0, r5
  2c:	e0000000 	bsr      	0x0	// 0 <wpa_gtk_rekey>
  30:	6c53      	mov      	r1, r4
  32:	6c17      	mov      	r0, r5
  34:	e0000000 	bsr      	0x0	// 0 <wpa_gtk_rekey>
  38:	1492      	pop      	r4-r5, r15

Disassembly of section .text.wpa_get_mib:

00000000 <wpa_get_mib>:
   0:	14d8      	push      	r4-r11, r15
   2:	152e      	subi      	r14, r14, 184
   4:	6d03      	mov      	r4, r0
   6:	6d87      	mov      	r6, r1
   8:	6dcb      	mov      	r7, r2
   a:	e90000b5 	bez      	r0, 0x174	// 174 <wpa_get_mib+0x174>
   e:	902e      	ld.w      	r1, (r0, 0x38)
  10:	e4212002 	andi      	r1, r1, 2
  14:	1279      	lrw      	r3, 0x0	// 178 <wpa_get_mib+0x178>
  16:	3940      	cmpnei      	r1, 0
  18:	901a      	ld.w      	r0, (r0, 0x68)
  1a:	6c4f      	mov      	r1, r3
  1c:	1258      	lrw      	r2, 0x0	// 17c <wpa_get_mib+0x17c>
  1e:	c4220c40 	inct      	r1, r2, 0
  22:	3840      	cmpnei      	r0, 0
  24:	c4430c20 	incf      	r2, r3, 0
  28:	b841      	st.w      	r2, (r14, 0x4)
  2a:	b820      	st.w      	r1, (r14, 0x0)
  2c:	6c1b      	mov      	r0, r6
  2e:	1255      	lrw      	r2, 0x0	// 180 <wpa_get_mib+0x180>
  30:	6c5f      	mov      	r1, r7
  32:	e0000000 	bsr      	0x0	// 0 <snprintf>
  36:	e50e0093 	addi      	r8, r14, 148
  3a:	6d43      	mov      	r5, r0
  3c:	e4440013 	addi      	r2, r4, 20
  40:	3121      	movi      	r1, 33
  42:	3310      	movi      	r3, 16
  44:	6c23      	mov      	r0, r8
  46:	e0000000 	bsr      	0x0	// 0 <wpa_snprintf_hex>
  4a:	9473      	ld.w      	r3, (r4, 0x4c)
  4c:	3b40      	cmpnei      	r3, 0
  4e:	c4000503 	mvc      	r3
  52:	b964      	st.w      	r3, (r14, 0x90)
  54:	9476      	ld.w      	r3, (r4, 0x58)
  56:	b962      	st.w      	r3, (r14, 0x88)
  58:	9411      	ld.w      	r0, (r4, 0x44)
  5a:	9477      	ld.w      	r3, (r4, 0x5c)
  5c:	b963      	st.w      	r3, (r14, 0x8c)
  5e:	e0000000 	bsr      	0x0	// 0 <wpa_cipher_key_len>
  62:	d964200d 	ld.w      	r11, (r4, 0x34)
  66:	d944200b 	ld.w      	r10, (r4, 0x2c)
  6a:	dd6e2021 	st.w      	r11, (r14, 0x84)
  6e:	d964200c 	ld.w      	r11, (r4, 0x30)
  72:	dd6e2020 	st.w      	r11, (r14, 0x80)
  76:	e56a20ff 	andi      	r11, r10, 255
  7a:	dd6e201f 	st.w      	r11, (r14, 0x7c)
  7e:	c50a55eb 	zext      	r11, r10, 15, 8
  82:	d9a4200a 	ld.w      	r13, (r4, 0x28)
  86:	dd6e201e 	st.w      	r11, (r14, 0x78)
  8a:	c60a56eb 	zext      	r11, r10, 23, 16
  8e:	c70a484a 	lsri      	r10, r10, 24
  92:	dd4e201c 	st.w      	r10, (r14, 0x70)
  96:	e54d20ff 	andi      	r10, r13, 255
  9a:	dd4e201b 	st.w      	r10, (r14, 0x6c)
  9e:	c50d55ea 	zext      	r10, r13, 15, 8
  a2:	d9842009 	ld.w      	r12, (r4, 0x24)
  a6:	dd4e201a 	st.w      	r10, (r14, 0x68)
  aa:	c60d56ea 	zext      	r10, r13, 23, 16
  ae:	c70d484d 	lsri      	r13, r13, 24
  b2:	ddae2018 	st.w      	r13, (r14, 0x60)
  b6:	e5ac20ff 	andi      	r13, r12, 255
  ba:	ddae2017 	st.w      	r13, (r14, 0x5c)
  be:	c50c55ed 	zext      	r13, r12, 15, 8
  c2:	9424      	ld.w      	r1, (r4, 0x10)
  c4:	ddae2016 	st.w      	r13, (r14, 0x58)
  c8:	c60c56ed 	zext      	r13, r12, 23, 16
  cc:	c70c484c 	lsri      	r12, r12, 24
  d0:	dd8e2014 	st.w      	r12, (r14, 0x50)
  d4:	e58120ff 	andi      	r12, r1, 255
  d8:	dd8e2012 	st.w      	r12, (r14, 0x48)
  dc:	c50155ec 	zext      	r12, r1, 15, 8
  e0:	9443      	ld.w      	r2, (r4, 0xc)
  e2:	dd8e2011 	st.w      	r12, (r14, 0x44)
  e6:	c60156ec 	zext      	r12, r1, 23, 16
  ea:	4938      	lsri      	r1, r1, 24
  ec:	b82f      	st.w      	r1, (r14, 0x3c)
  ee:	e42220ff 	andi      	r1, r2, 255
  f2:	b82e      	st.w      	r1, (r14, 0x38)
  f4:	c50255e1 	zext      	r1, r2, 15, 8
  f8:	9462      	ld.w      	r3, (r4, 0x8)
  fa:	b82d      	st.w      	r1, (r14, 0x34)
  fc:	c60256e1 	zext      	r1, r2, 23, 16
 100:	4a58      	lsri      	r2, r2, 24
 102:	b84b      	st.w      	r2, (r14, 0x2c)
 104:	e44320ff 	andi      	r2, r3, 255
 108:	b84a      	st.w      	r2, (r14, 0x28)
 10a:	c50355e2 	zext      	r2, r3, 15, 8
 10e:	ddae2015 	st.w      	r13, (r14, 0x54)
 112:	dd8e2010 	st.w      	r12, (r14, 0x40)
 116:	b82c      	st.w      	r1, (r14, 0x30)
 118:	dd6e201d 	st.w      	r11, (r14, 0x74)
 11c:	dd4e2019 	st.w      	r10, (r14, 0x64)
 120:	dd0e2013 	st.w      	r8, (r14, 0x4c)
 124:	b849      	st.w      	r2, (r14, 0x24)
 126:	c60356e2 	zext      	r2, r3, 23, 16
 12a:	4b78      	lsri      	r3, r3, 24
 12c:	b867      	st.w      	r3, (r14, 0x1c)
 12e:	333c      	movi      	r3, 60
 130:	b866      	st.w      	r3, (r14, 0x18)
 132:	3346      	movi      	r3, 70
 134:	b865      	st.w      	r3, (r14, 0x14)
 136:	ea03a8c0 	movi      	r3, 43200
 13a:	b864      	st.w      	r3, (r14, 0x10)
 13c:	9963      	ld.w      	r3, (r14, 0x8c)
 13e:	b862      	st.w      	r3, (r14, 0x8)
 140:	9962      	ld.w      	r3, (r14, 0x88)
 142:	c4a60029 	addu      	r9, r6, r5
 146:	4003      	lsli      	r0, r0, 3
 148:	b861      	st.w      	r3, (r14, 0x4)
 14a:	9964      	ld.w      	r3, (r14, 0x90)
 14c:	5f35      	subu      	r1, r7, r5
 14e:	b848      	st.w      	r2, (r14, 0x20)
 150:	b803      	st.w      	r0, (r14, 0xc)
 152:	b860      	st.w      	r3, (r14, 0x0)
 154:	6c27      	mov      	r0, r9
 156:	3301      	movi      	r3, 1
 158:	104b      	lrw      	r2, 0x0	// 184 <wpa_get_mib+0x184>
 15a:	e0000000 	bsr      	0x0	// 0 <snprintf>
 15e:	9460      	ld.w      	r3, (r4, 0x0)
 160:	6140      	addu      	r5, r0
 162:	9371      	ld.w      	r3, (r3, 0x44)
 164:	5f35      	subu      	r1, r7, r5
 166:	1049      	lrw      	r2, 0x0	// 188 <wpa_get_mib+0x188>
 168:	5e14      	addu      	r0, r6, r5
 16a:	e0000000 	bsr      	0x0	// 0 <snprintf>
 16e:	6014      	addu      	r0, r5
 170:	150e      	addi      	r14, r14, 184
 172:	1498      	pop      	r4-r11, r15
 174:	07fe      	br      	0x170	// 170 <wpa_get_mib+0x170>
	...

Disassembly of section .text.wpa_get_mib_sta:

00000000 <wpa_get_mib_sta>:
   0:	14d8      	push      	r4-r11, r15
   2:	142b      	subi      	r14, r14, 44
   4:	6d03      	mov      	r4, r0
   6:	6d87      	mov      	r6, r1
   8:	6e8b      	mov      	r10, r2
   a:	e9200005 	bnez      	r0, 0x14	// 14 <wpa_get_mib_sta+0x14>
   e:	3000      	movi      	r0, 0
  10:	140b      	addi      	r14, r14, 44
  12:	1498      	pop      	r4-r11, r15
  14:	d86020b5 	ld.w      	r3, (r0, 0x2d4)
  18:	3b42      	cmpnei      	r3, 2
  1a:	6403      	mvcv      	r0
  1c:	d82420b6 	ld.w      	r1, (r4, 0x2d8)
  20:	2000      	addi      	r0, 1
  22:	e0000000 	bsr      	0x0	// 0 <wpa_cipher_to_suite>
  26:	e900fff4 	bez      	r0, 0xe	// e <wpa_get_mib_sta+0xe>
  2a:	d84420ba 	ld.w      	r2, (r4, 0x2e8)
  2e:	b84a      	st.w      	r2, (r14, 0x28)
  30:	d84420b9 	ld.w      	r2, (r4, 0x2e4)
  34:	b849      	st.w      	r2, (r14, 0x24)
  36:	e44020ff 	andi      	r2, r0, 255
  3a:	b848      	st.w      	r2, (r14, 0x20)
  3c:	c50055e2 	zext      	r2, r0, 15, 8
  40:	b847      	st.w      	r2, (r14, 0x1c)
  42:	c60056e2 	zext      	r2, r0, 23, 16
  46:	b846      	st.w      	r2, (r14, 0x18)
  48:	844d      	ld.b      	r2, (r4, 0xd)
  4a:	b844      	st.w      	r2, (r14, 0x10)
  4c:	844c      	ld.b      	r2, (r4, 0xc)
  4e:	b843      	st.w      	r2, (r14, 0xc)
  50:	844b      	ld.b      	r2, (r4, 0xb)
  52:	b842      	st.w      	r2, (r14, 0x8)
  54:	844a      	ld.b      	r2, (r4, 0xa)
  56:	4818      	lsri      	r0, r0, 24
  58:	b841      	st.w      	r2, (r14, 0x4)
  5a:	8449      	ld.b      	r2, (r4, 0x9)
  5c:	6c6b      	mov      	r1, r10
  5e:	8468      	ld.b      	r3, (r4, 0x8)
  60:	b805      	st.w      	r0, (r14, 0x14)
  62:	b840      	st.w      	r2, (r14, 0x0)
  64:	6c1b      	mov      	r0, r6
  66:	105a      	lrw      	r2, 0x0	// cc <wpa_get_mib_sta+0xcc>
  68:	e0000000 	bsr      	0x0	// 0 <snprintf>
  6c:	6d43      	mov      	r5, r0
  6e:	6180      	addu      	r6, r0
  70:	6282      	subu      	r10, r0
  72:	d80420b7 	ld.w      	r0, (r4, 0x2dc)
  76:	d96420b5 	ld.w      	r11, (r4, 0x2d4)
  7a:	e0000000 	bsr      	0x0	// 0 <wpa_akm_to_suite>
  7e:	6dc3      	mov      	r7, r0
  80:	d80420b7 	ld.w      	r0, (r4, 0x2dc)
  84:	e0000000 	bsr      	0x0	// 0 <wpa_akm_to_suite>
  88:	6e03      	mov      	r8, r0
  8a:	d80420b7 	ld.w      	r0, (r4, 0x2dc)
  8e:	e0000000 	bsr      	0x0	// 0 <wpa_akm_to_suite>
  92:	6e43      	mov      	r9, r0
  94:	d80420b7 	ld.w      	r0, (r4, 0x2dc)
  98:	e0000000 	bsr      	0x0	// 0 <wpa_akm_to_suite>
  9c:	9467      	ld.w      	r3, (r4, 0x1c)
  9e:	b865      	st.w      	r3, (r14, 0x14)
  a0:	7400      	zextb      	r0, r0
  a2:	9466      	ld.w      	r3, (r4, 0x18)
  a4:	c50955e9 	zext      	r9, r9, 15, 8
  a8:	c60856e8 	zext      	r8, r8, 23, 16
  ac:	4ff8      	lsri      	r7, r7, 24
  ae:	b864      	st.w      	r3, (r14, 0x10)
  b0:	b803      	st.w      	r0, (r14, 0xc)
  b2:	dd2e2002 	st.w      	r9, (r14, 0x8)
  b6:	dd0e2001 	st.w      	r8, (r14, 0x4)
  ba:	b8e0      	st.w      	r7, (r14, 0x0)
  bc:	6cef      	mov      	r3, r11
  be:	1045      	lrw      	r2, 0x0	// d0 <wpa_get_mib_sta+0xd0>
  c0:	6c6b      	mov      	r1, r10
  c2:	6c1b      	mov      	r0, r6
  c4:	e0000000 	bsr      	0x0	// 0 <snprintf>
  c8:	6014      	addu      	r0, r5
  ca:	07a3      	br      	0x10	// 10 <wpa_get_mib_sta+0x10>
	...

Disassembly of section .text.wpa_auth_countermeasures_start:

00000000 <wpa_auth_countermeasures_start>:
   0:	e9000005 	bez      	r0, 0xa	// a <wpa_auth_countermeasures_start+0xa>
   4:	906c      	ld.w      	r3, (r0, 0x30)
   6:	2300      	addi      	r3, 1
   8:	b06c      	st.w      	r3, (r0, 0x30)
   a:	783c      	jmp      	r15

Disassembly of section .text.wpa_auth_pairwise_set:

00000000 <wpa_auth_pairwise_set>:
   0:	e9000008 	bez      	r0, 0x10	// 10 <wpa_auth_pairwise_set+0x10>
   4:	d860208d 	ld.w      	r3, (r0, 0x234)
   8:	3b40      	cmpnei      	r3, 0
   a:	c4000500 	mvc      	r0
   e:	7400      	zextb      	r0, r0
  10:	783c      	jmp      	r15

Disassembly of section .text.wpa_auth_get_pairwise:

00000000 <wpa_auth_get_pairwise>:
   0:	d80020b6 	ld.w      	r0, (r0, 0x2d8)
   4:	783c      	jmp      	r15

Disassembly of section .text.wpa_auth_get_pmk:

00000000 <wpa_auth_get_pmk>:
   0:	e9000006 	bez      	r0, 0xc	// c <wpa_auth_get_pmk+0xc>
   4:	d8602040 	ld.w      	r3, (r0, 0x100)
   8:	b160      	st.w      	r3, (r1, 0x0)
   a:	20bf      	addi      	r0, 192
   c:	783c      	jmp      	r15

Disassembly of section .text.wpa_auth_sta_key_mgmt:

00000000 <wpa_auth_sta_key_mgmt>:
   0:	e9000005 	bez      	r0, 0xa	// a <wpa_auth_sta_key_mgmt+0xa>
   4:	d80020b7 	ld.w      	r0, (r0, 0x2dc)
   8:	783c      	jmp      	r15
   a:	3000      	movi      	r0, 0
   c:	2800      	subi      	r0, 1
   e:	07fd      	br      	0x8	// 8 <wpa_auth_sta_key_mgmt+0x8>

Disassembly of section .text.wpa_auth_sta_wpa_version:

00000000 <wpa_auth_sta_wpa_version>:
   0:	e9000004 	bez      	r0, 0x8	// 8 <wpa_auth_sta_wpa_version+0x8>
   4:	d80020b5 	ld.w      	r0, (r0, 0x2d4)
   8:	783c      	jmp      	r15

Disassembly of section .text.wpa_auth_sta_ft_tk_already_set:

00000000 <wpa_auth_sta_ft_tk_already_set>:
   0:	e900000a 	bez      	r0, 0x14	// 14 <wpa_auth_sta_ft_tk_already_set+0x14>
   4:	d86020b7 	ld.w      	r3, (r0, 0x2dc)
   8:	1045      	lrw      	r2, 0x1300860	// 1c <wpa_auth_sta_ft_tk_already_set+0x1c>
   a:	68c8      	and      	r3, r2
   c:	e9030005 	bez      	r3, 0x16	// 16 <wpa_auth_sta_ft_tk_already_set+0x16>
  10:	d800208e 	ld.w      	r0, (r0, 0x238)
  14:	783c      	jmp      	r15
  16:	6c0f      	mov      	r0, r3
  18:	07fe      	br      	0x14	// 14 <wpa_auth_sta_ft_tk_already_set+0x14>
  1a:	0000      	.short	0x0000
  1c:	0860      	.short	0x0860
  1e:	0130      	.short	0x0130

Disassembly of section .text.wpa_auth_sta_fils_tk_already_set:

00000000 <wpa_auth_sta_fils_tk_already_set>:
   0:	e900000b 	bez      	r0, 0x16	// 16 <wpa_auth_sta_fils_tk_already_set+0x16>
   4:	32f0      	movi      	r2, 240
   6:	d86020b7 	ld.w      	r3, (r0, 0x2dc)
   a:	424e      	lsli      	r2, r2, 14
   c:	68c8      	and      	r3, r2
   e:	e9030005 	bez      	r3, 0x18	// 18 <wpa_auth_sta_fils_tk_already_set+0x18>
  12:	d800208e 	ld.w      	r0, (r0, 0x238)
  16:	783c      	jmp      	r15
  18:	6c0f      	mov      	r0, r3
  1a:	07fe      	br      	0x16	// 16 <wpa_auth_sta_fils_tk_already_set+0x16>

Disassembly of section .text.wpa_auth_sta_clear_pmksa:

00000000 <wpa_auth_sta_clear_pmksa>:
   0:	e900000b 	bez      	r0, 0x16	// 16 <wpa_auth_sta_clear_pmksa+0x16>
   4:	d86020b8 	ld.w      	r3, (r0, 0x2e0)
   8:	644e      	cmpne      	r3, r1
   a:	0806      	bt      	0x16	// 16 <wpa_auth_sta_clear_pmksa+0x16>
   c:	3300      	movi      	r3, 0
   e:	dc6020b8 	st.w      	r3, (r0, 0x2e0)
  12:	6c0f      	mov      	r0, r3
  14:	783c      	jmp      	r15
  16:	3000      	movi      	r0, 0
  18:	2800      	subi      	r0, 1
  1a:	07fd      	br      	0x14	// 14 <wpa_auth_sta_clear_pmksa+0x14>

Disassembly of section .text.wpa_auth_sta_get_pmksa:

00000000 <wpa_auth_sta_get_pmksa>:
   0:	e9000004 	bez      	r0, 0x8	// 8 <wpa_auth_sta_get_pmksa+0x8>
   4:	d80020b8 	ld.w      	r0, (r0, 0x2e0)
   8:	783c      	jmp      	r15

Disassembly of section .text.wpa_auth_sta_local_mic_failure_report:

00000000 <wpa_auth_sta_local_mic_failure_report>:
   0:	e9000007 	bez      	r0, 0xe	// e <wpa_auth_sta_local_mic_failure_report+0xe>
   4:	d86020b9 	ld.w      	r3, (r0, 0x2e4)
   8:	2300      	addi      	r3, 1
   a:	dc6020b9 	st.w      	r3, (r0, 0x2e4)
   e:	783c      	jmp      	r15

Disassembly of section .text.wpa_auth_get_wpa_ie:

00000000 <wpa_auth_get_wpa_ie>:
   0:	e9000007 	bez      	r0, 0xe	// e <wpa_auth_get_wpa_ie+0xe>
   4:	d8602026 	ld.w      	r3, (r0, 0x98)
   8:	b160      	st.w      	r3, (r1, 0x0)
   a:	d8002025 	ld.w      	r0, (r0, 0x94)
   e:	783c      	jmp      	r15

Disassembly of section .text.wpa_auth_pmksa_add:

00000000 <wpa_auth_pmksa_add>:
   0:	14d2      	push      	r4-r5, r15
   2:	1427      	subi      	r14, r14, 28
   4:	d98e200a 	ld.w      	r12, (r14, 0x28)
   8:	6d73      	mov      	r5, r12
   a:	e9000039 	bez      	r0, 0x7c	// 7c <wpa_auth_pmksa_add+0x7c>
   e:	d98020b5 	ld.w      	r12, (r0, 0x2d4)
  12:	eb4c0002 	cmpnei      	r12, 2
  16:	0833      	bt      	0x7c	// 7c <wpa_auth_pmksa_add+0x7c>
  18:	d9802000 	ld.w      	r12, (r0, 0x0)
  1c:	d9ac201e 	ld.w      	r13, (r12, 0x78)
  20:	e92d002e 	bnez      	r13, 0x7c	// 7c <wpa_auth_pmksa_add+0x7c>
  24:	3495      	movi      	r4, 149
  26:	d9a020b7 	ld.w      	r13, (r0, 0x2dc)
  2a:	4491      	lsli      	r4, r4, 17
  2c:	6934      	and      	r4, r13
  2e:	e9040023 	bez      	r4, 0x74	// 74 <wpa_auth_pmksa_add+0x74>
  32:	eb020030 	cmphsi      	r2, 49
  36:	3430      	movi      	r4, 48
  38:	c4440c40 	inct      	r2, r4, 0
  3c:	e58c009b 	addi      	r12, r12, 156
  40:	d88c2002 	ld.w      	r4, (r12, 0x8)
  44:	b864      	st.w      	r3, (r14, 0x10)
  46:	587e      	addi      	r3, r0, 8
  48:	ddae2006 	st.w      	r13, (r14, 0x18)
  4c:	b8a5      	st.w      	r5, (r14, 0x14)
  4e:	b863      	st.w      	r3, (r14, 0xc)
  50:	dd8e2002 	st.w      	r12, (r14, 0x8)
  54:	d8602085 	ld.w      	r3, (r0, 0x214)
  58:	b861      	st.w      	r3, (r14, 0x4)
  5a:	e4600113 	addi      	r3, r0, 276
  5e:	b860      	st.w      	r3, (r14, 0x0)
  60:	6c13      	mov      	r0, r4
  62:	3300      	movi      	r3, 0
  64:	e0000000 	bsr      	0x0	// 0 <pmksa_cache_auth_add>
  68:	3840      	cmpnei      	r0, 0
  6a:	64c3      	mvcv      	r3
  6c:	3000      	movi      	r0, 0
  6e:	600e      	subu      	r0, r3
  70:	1407      	addi      	r14, r14, 28
  72:	1492      	pop      	r4-r5, r15
  74:	eb020020 	cmphsi      	r2, 33
  78:	3420      	movi      	r4, 32
  7a:	07df      	br      	0x38	// 38 <wpa_auth_pmksa_add+0x38>
  7c:	3000      	movi      	r0, 0
  7e:	2800      	subi      	r0, 1
  80:	07f8      	br      	0x70	// 70 <wpa_auth_pmksa_add+0x70>

Disassembly of section .text.wpa_auth_pmksa_add_preauth:

00000000 <wpa_auth_pmksa_add_preauth>:
   0:	14d2      	push      	r4-r5, r15
   2:	1427      	subi      	r14, r14, 28
   4:	d9ae200a 	ld.w      	r13, (r14, 0x28)
   8:	988b      	ld.w      	r4, (r14, 0x2c)
   a:	e9000019 	bez      	r0, 0x3c	// 3c <wpa_auth_pmksa_add_preauth+0x3c>
   e:	d9802029 	ld.w      	r12, (r0, 0xa4)
  12:	3501      	movi      	r5, 1
  14:	b885      	st.w      	r4, (r14, 0x14)
  16:	b863      	st.w      	r3, (r14, 0xc)
  18:	3400      	movi      	r4, 0
  1a:	e460009b 	addi      	r3, r0, 156
  1e:	b862      	st.w      	r3, (r14, 0x8)
  20:	b8a6      	st.w      	r5, (r14, 0x18)
  22:	ddae2004 	st.w      	r13, (r14, 0x10)
  26:	b881      	st.w      	r4, (r14, 0x4)
  28:	b880      	st.w      	r4, (r14, 0x0)
  2a:	6cd3      	mov      	r3, r4
  2c:	6c33      	mov      	r0, r12
  2e:	e0000000 	bsr      	0x0	// 0 <pmksa_cache_auth_add>
  32:	3840      	cmpnei      	r0, 0
  34:	6403      	mvcv      	r0
  36:	5c01      	subu      	r0, r4, r0
  38:	1407      	addi      	r14, r14, 28
  3a:	1492      	pop      	r4-r5, r15
  3c:	3000      	movi      	r0, 0
  3e:	2800      	subi      	r0, 1
  40:	07fc      	br      	0x38	// 38 <wpa_auth_pmksa_add_preauth+0x38>

Disassembly of section .text.wpa_auth_pmksa_add_sae:

00000000 <wpa_auth_pmksa_add_sae>:
   0:	14d1      	push      	r4, r15
   2:	1427      	subi      	r14, r14, 28
   4:	909e      	ld.w      	r4, (r0, 0x78)
   6:	6f47      	mov      	r13, r1
   8:	6c4b      	mov      	r1, r2
   a:	e9240019 	bnez      	r4, 0x3c	// 3c <wpa_auth_pmksa_add_sae+0x3c>
   e:	3280      	movi      	r2, 128
  10:	4243      	lsli      	r2, r2, 3
  12:	d9802029 	ld.w      	r12, (r0, 0xa4)
  16:	b846      	st.w      	r2, (r14, 0x18)
  18:	e440009b 	addi      	r2, r0, 156
  1c:	b842      	st.w      	r2, (r14, 0x8)
  1e:	b885      	st.w      	r4, (r14, 0x14)
  20:	b884      	st.w      	r4, (r14, 0x10)
  22:	ddae2003 	st.w      	r13, (r14, 0xc)
  26:	b881      	st.w      	r4, (r14, 0x4)
  28:	b880      	st.w      	r4, (r14, 0x0)
  2a:	3220      	movi      	r2, 32
  2c:	6c33      	mov      	r0, r12
  2e:	e0000000 	bsr      	0x0	// 0 <pmksa_cache_auth_add>
  32:	3840      	cmpnei      	r0, 0
  34:	6403      	mvcv      	r0
  36:	5c01      	subu      	r0, r4, r0
  38:	1407      	addi      	r14, r14, 28
  3a:	1491      	pop      	r4, r15
  3c:	3000      	movi      	r0, 0
  3e:	2800      	subi      	r0, 1
  40:	07fc      	br      	0x38	// 38 <wpa_auth_pmksa_add_sae+0x38>

Disassembly of section .text.wpa_auth_add_sae_pmkid:

00000000 <wpa_auth_add_sae_pmkid>:
   0:	14d1      	push      	r4, r15
   2:	6d03      	mov      	r4, r0
   4:	3210      	movi      	r2, 16
   6:	e4000103 	addi      	r0, r0, 260
   a:	e0000000 	bsr      	0x0	// 0 <memcpy>
   e:	d86402bd 	ld.b      	r3, (r4, 0x2bd)
  12:	3201      	movi      	r2, 1
  14:	c4625c01 	ins      	r3, r2, 1, 1
  18:	dc6402bd 	st.b      	r3, (r4, 0x2bd)
  1c:	1491      	pop      	r4, r15

Disassembly of section .text.wpa_auth_pmksa_add2:

00000000 <wpa_auth_pmksa_add2>:
   0:	14d2      	push      	r4-r5, r15
   2:	1428      	subi      	r14, r14, 32
   4:	909e      	ld.w      	r4, (r0, 0x78)
   6:	6f47      	mov      	r13, r1
   8:	d98e200d 	ld.w      	r12, (r14, 0x34)
   c:	6c4b      	mov      	r1, r2
   e:	6c8f      	mov      	r2, r3
  10:	986b      	ld.w      	r3, (r14, 0x2c)
  12:	b867      	st.w      	r3, (r14, 0x1c)
  14:	6d73      	mov      	r5, r12
  16:	986c      	ld.w      	r3, (r14, 0x30)
  18:	e9240017 	bnez      	r4, 0x46	// 46 <wpa_auth_pmksa_add2+0x46>
  1c:	d9802029 	ld.w      	r12, (r0, 0xa4)
  20:	b864      	st.w      	r3, (r14, 0x10)
  22:	e460009b 	addi      	r3, r0, 156
  26:	b862      	st.w      	r3, (r14, 0x8)
  28:	b8a6      	st.w      	r5, (r14, 0x18)
  2a:	b885      	st.w      	r4, (r14, 0x14)
  2c:	ddae2003 	st.w      	r13, (r14, 0xc)
  30:	b881      	st.w      	r4, (r14, 0x4)
  32:	b880      	st.w      	r4, (r14, 0x0)
  34:	9867      	ld.w      	r3, (r14, 0x1c)
  36:	6c33      	mov      	r0, r12
  38:	e0000000 	bsr      	0x0	// 0 <pmksa_cache_auth_add>
  3c:	3840      	cmpnei      	r0, 0
  3e:	6403      	mvcv      	r0
  40:	5c01      	subu      	r0, r4, r0
  42:	1408      	addi      	r14, r14, 32
  44:	1492      	pop      	r4-r5, r15
  46:	3000      	movi      	r0, 0
  48:	2800      	subi      	r0, 1
  4a:	07fc      	br      	0x42	// 42 <wpa_auth_pmksa_add2+0x42>

Disassembly of section .text.wpa_auth_pmksa_remove:

00000000 <wpa_auth_pmksa_remove>:
   0:	14d1      	push      	r4, r15
   2:	6d03      	mov      	r4, r0
   4:	e9000010 	bez      	r0, 0x24	// 24 <wpa_auth_pmksa_remove+0x24>
   8:	d8002029 	ld.w      	r0, (r0, 0xa4)
   c:	e900000c 	bez      	r0, 0x24	// 24 <wpa_auth_pmksa_remove+0x24>
  10:	3200      	movi      	r2, 0
  12:	e0000000 	bsr      	0x0	// 0 <pmksa_cache_auth_get>
  16:	6c43      	mov      	r1, r0
  18:	e9000006 	bez      	r0, 0x24	// 24 <wpa_auth_pmksa_remove+0x24>
  1c:	d8042029 	ld.w      	r0, (r4, 0xa4)
  20:	e0000000 	bsr      	0x0	// 0 <pmksa_cache_free_entry>
  24:	1491      	pop      	r4, r15

Disassembly of section .text.wpa_auth_pmksa_list:

00000000 <wpa_auth_pmksa_list>:
   0:	14d0      	push      	r15
   2:	e9000008 	bez      	r0, 0x12	// 12 <wpa_auth_pmksa_list+0x12>
   6:	d8002029 	ld.w      	r0, (r0, 0xa4)
   a:	e9000004 	bez      	r0, 0x12	// 12 <wpa_auth_pmksa_list+0x12>
   e:	e0000000 	bsr      	0x0	// 0 <pmksa_cache_auth_list>
  12:	1490      	pop      	r15

Disassembly of section .text.wpa_auth_pmksa_flush:

00000000 <wpa_auth_pmksa_flush>:
   0:	14d0      	push      	r15
   2:	e9000008 	bez      	r0, 0x12	// 12 <wpa_auth_pmksa_flush+0x12>
   6:	d8002029 	ld.w      	r0, (r0, 0xa4)
   a:	e9000004 	bez      	r0, 0x12	// 12 <wpa_auth_pmksa_flush+0x12>
   e:	e0000000 	bsr      	0x0	// 0 <pmksa_cache_auth_flush>
  12:	1490      	pop      	r15

Disassembly of section .text.wpa_auth_pmksa_get:

00000000 <wpa_auth_pmksa_get>:
   0:	14d0      	push      	r15
   2:	e9000008 	bez      	r0, 0x12	// 12 <wpa_auth_pmksa_get+0x12>
   6:	d8002029 	ld.w      	r0, (r0, 0xa4)
   a:	e9000004 	bez      	r0, 0x12	// 12 <wpa_auth_pmksa_get+0x12>
   e:	e0000000 	bsr      	0x0	// 0 <pmksa_cache_auth_get>
  12:	1490      	pop      	r15

Disassembly of section .text.wpa_auth_pmksa_set_to_sm:

00000000 <wpa_auth_pmksa_set_to_sm>:
   0:	14d3      	push      	r4-r6, r15
   2:	1421      	subi      	r14, r14, 4
   4:	6d8f      	mov      	r6, r3
   6:	9865      	ld.w      	r3, (r14, 0x14)
   8:	6d03      	mov      	r4, r0
   a:	6d4b      	mov      	r5, r2
   c:	b860      	st.w      	r3, (r14, 0x0)
   e:	e9010016 	bez      	r1, 0x3a	// 3a <wpa_auth_pmksa_set_to_sm+0x3a>
  12:	dc0120b8 	st.w      	r0, (r1, 0x2e0)
  16:	3220      	movi      	r2, 32
  18:	e4200017 	addi      	r1, r0, 24
  1c:	2407      	addi      	r4, 8
  1e:	6c0f      	mov      	r0, r3
  20:	e0000000 	bsr      	0x0	// 0 <memcpy>
  24:	3210      	movi      	r2, 16
  26:	6c53      	mov      	r1, r4
  28:	6c1b      	mov      	r0, r6
  2a:	e0000000 	bsr      	0x0	// 0 <memcpy>
  2e:	3210      	movi      	r2, 16
  30:	6c53      	mov      	r1, r4
  32:	e4050013 	addi      	r0, r5, 20
  36:	e0000000 	bsr      	0x0	// 0 <memcpy>
  3a:	1401      	addi      	r14, r14, 4
  3c:	1493      	pop      	r4-r6, r15

Disassembly of section .text.wpa_auth_ensure_group:

00000000 <wpa_auth_ensure_group>:
   0:	14d1      	push      	r4, r15
   2:	6d03      	mov      	r4, r0
   4:	e9000025 	bez      	r0, 0x4e	// 4e <wpa_auth_ensure_group+0x4e>
   8:	9000      	ld.w      	r0, (r0, 0x0)
   a:	e920000a 	bnez      	r0, 0x1e	// 1e <wpa_auth_ensure_group+0x1e>
   e:	6c13      	mov      	r0, r4
  10:	e0000000 	bsr      	0x0	// 0 <wpa_auth_ensure_group>
  14:	e920000a 	bnez      	r0, 0x28	// 28 <wpa_auth_ensure_group+0x28>
  18:	3000      	movi      	r0, 0
  1a:	2800      	subi      	r0, 1
  1c:	0418      	br      	0x4c	// 4c <wpa_auth_ensure_group+0x4c>
  1e:	9061      	ld.w      	r3, (r0, 0x4)
  20:	644e      	cmpne      	r3, r1
  22:	0c03      	bf      	0x28	// 28 <wpa_auth_ensure_group+0x28>
  24:	9000      	ld.w      	r0, (r0, 0x0)
  26:	07f2      	br      	0xa	// a <wpa_auth_ensure_group+0xa>
  28:	9460      	ld.w      	r3, (r4, 0x0)
  2a:	64c2      	cmpne      	r0, r3
  2c:	0c06      	bf      	0x38	// 38 <wpa_auth_ensure_group+0x38>
  2e:	d8602035 	ld.w      	r3, (r0, 0xd4)
  32:	2300      	addi      	r3, 1
  34:	dc602035 	st.w      	r3, (r0, 0xd4)
  38:	d8602036 	ld.w      	r3, (r0, 0xd8)
  3c:	2300      	addi      	r3, 1
  3e:	dc602036 	st.w      	r3, (r0, 0xd8)
  42:	9071      	ld.w      	r3, (r0, 0x44)
  44:	3b43      	cmpnei      	r3, 3
  46:	6503      	mvcv      	r4
  48:	3000      	movi      	r0, 0
  4a:	6012      	subu      	r0, r4
  4c:	1491      	pop      	r4, r15
  4e:	07ff      	br      	0x4c	// 4c <wpa_auth_ensure_group+0x4c>

Disassembly of section .text.wpa_auth_release_group:

00000000 <wpa_auth_release_group>:
   0:	14d1      	push      	r4, r15
   2:	e9000022 	bez      	r0, 0x46	// 46 <wpa_auth_release_group+0x46>
   6:	9000      	ld.w      	r0, (r0, 0x0)
   8:	6cc3      	mov      	r3, r0
   a:	e9230006 	bnez      	r3, 0x16	// 16 <wpa_auth_release_group+0x16>
   e:	3400      	movi      	r4, 0
  10:	2c00      	subi      	r4, 1
  12:	6c13      	mov      	r0, r4
  14:	1491      	pop      	r4, r15
  16:	9341      	ld.w      	r2, (r3, 0x4)
  18:	644a      	cmpne      	r2, r1
  1a:	0c18      	bf      	0x4a	// 4a <wpa_auth_release_group+0x4a>
  1c:	9360      	ld.w      	r3, (r3, 0x0)
  1e:	07f6      	br      	0xa	// a <wpa_auth_release_group+0xa>
  20:	d8232035 	ld.w      	r1, (r3, 0xd4)
  24:	3901      	cmphsi      	r1, 2
  26:	2a00      	subi      	r2, 1
  28:	dc432036 	st.w      	r2, (r3, 0xd8)
  2c:	9351      	ld.w      	r2, (r3, 0x44)
  2e:	0809      	bt      	0x40	// 40 <wpa_auth_release_group+0x40>
  30:	3a43      	cmpnei      	r2, 3
  32:	6483      	mvcv      	r2
  34:	3400      	movi      	r4, 0
  36:	610a      	subu      	r4, r2
  38:	6c4f      	mov      	r1, r3
  3a:	e0000000 	bsr      	0x0	// 0 <wpa_auth_release_group>
  3e:	07ea      	br      	0x12	// 12 <wpa_auth_release_group+0x12>
  40:	3400      	movi      	r4, 0
  42:	2c01      	subi      	r4, 2
  44:	07fa      	br      	0x38	// 38 <wpa_auth_release_group+0x38>
  46:	6d03      	mov      	r4, r0
  48:	07e5      	br      	0x12	// 12 <wpa_auth_release_group+0x12>
  4a:	d8432036 	ld.w      	r2, (r3, 0xd8)
  4e:	e922ffe9 	bnez      	r2, 0x20	// 20 <wpa_auth_release_group+0x20>
  52:	1003      	lrw      	r0, 0x0	// 5c <hgprintf+0x5c>
  54:	e0000000 	bsr      	0x0	// 0 <hgprintf>
  58:	07db      	br      	0xe	// e <wpa_auth_release_group+0xe>
  5a:	0000      	.short	0x0000
  5c:	00000000 	.long	0x00000000

Disassembly of section .text.wpa_auth_sta_set_vlan:

00000000 <wpa_auth_sta_set_vlan>:
   0:	14d2      	push      	r4-r5, r15
   2:	6d43      	mov      	r5, r0
   4:	e9200004 	bnez      	r0, 0xc	// c <wpa_auth_sta_set_vlan+0xc>
   8:	3000      	movi      	r0, 0
   a:	0414      	br      	0x32	// 32 <wpa_auth_sta_set_vlan+0x32>
   c:	9000      	ld.w      	r0, (r0, 0x0)
   e:	e900fffd 	bez      	r0, 0x8	// 8 <wpa_auth_sta_set_vlan+0x8>
  12:	9080      	ld.w      	r4, (r0, 0x0)
  14:	e9240010 	bnez      	r4, 0x34	// 34 <wpa_auth_sta_set_vlan+0x34>
  18:	e0000000 	bsr      	0x0	// 0 <wpa_auth_sta_set_vlan>
  1c:	6d03      	mov      	r4, r0
  1e:	e9000008 	bez      	r0, 0x2e	// 2e <wpa_auth_sta_set_vlan+0x2e>
  22:	9521      	ld.w      	r1, (r5, 0x4)
  24:	6452      	cmpne      	r4, r1
  26:	0ff1      	bf      	0x8	// 8 <wpa_auth_sta_set_vlan+0x8>
  28:	9471      	ld.w      	r3, (r4, 0x44)
  2a:	3b43      	cmpnei      	r3, 3
  2c:	0809      	bt      	0x3e	// 3e <wpa_auth_sta_set_vlan+0x3e>
  2e:	3000      	movi      	r0, 0
  30:	2800      	subi      	r0, 1
  32:	1492      	pop      	r4-r5, r15
  34:	9461      	ld.w      	r3, (r4, 0x4)
  36:	644e      	cmpne      	r3, r1
  38:	0ff5      	bf      	0x22	// 22 <wpa_auth_sta_set_vlan+0x22>
  3a:	9480      	ld.w      	r4, (r4, 0x0)
  3c:	07ec      	br      	0x14	// 14 <wpa_auth_sta_set_vlan+0x14>
  3e:	9560      	ld.w      	r3, (r5, 0x0)
  40:	9300      	ld.w      	r0, (r3, 0x0)
  42:	6412      	cmpne      	r4, r0
  44:	0c06      	bf      	0x50	// 50 <wpa_auth_sta_set_vlan+0x50>
  46:	d8642035 	ld.w      	r3, (r4, 0xd4)
  4a:	2300      	addi      	r3, 1
  4c:	dc642035 	st.w      	r3, (r4, 0xd4)
  50:	e0000000 	bsr      	0x0	// 0 <wpa_auth_sta_set_vlan>
  54:	b581      	st.w      	r4, (r5, 0x4)
  56:	07d9      	br      	0x8	// 8 <wpa_auth_sta_set_vlan+0x8>

Disassembly of section .text.wpa_auth_eapol_key_tx_status:

00000000 <wpa_auth_eapol_key_tx_status>:
   0:	14d2      	push      	r4-r5, r15
   2:	1421      	subi      	r14, r14, 4
   4:	6d43      	mov      	r5, r0
   6:	6d07      	mov      	r4, r1
   8:	e9000016 	bez      	r0, 0x34	// 34 <wpa_auth_eapol_key_tx_status+0x34>
   c:	e9010014 	bez      	r1, 0x34	// 34 <wpa_auth_eapol_key_tx_status+0x34>
  10:	d86120bb 	ld.w      	r3, (r1, 0x2ec)
  14:	e9030010 	bez      	r3, 0x34	// 34 <wpa_auth_eapol_key_tx_status+0x34>
  18:	e902000e 	bez      	r2, 0x34	// 34 <wpa_auth_eapol_key_tx_status+0x34>
  1c:	6c87      	mov      	r2, r1
  1e:	6c43      	mov      	r1, r0
  20:	1006      	lrw      	r0, 0x0	// 38 <wpa_auth_eapol_key_tx_status+0x38>
  22:	e0000000 	bsr      	0x0	// 0 <eloop_cancel_timeout>
  26:	b880      	st.w      	r4, (r14, 0x0)
  28:	6cd7      	mov      	r3, r5
  2a:	1044      	lrw      	r2, 0x0	// 38 <wpa_auth_eapol_key_tx_status+0x38>
  2c:	3100      	movi      	r1, 0
  2e:	3001      	movi      	r0, 1
  30:	e0000000 	bsr      	0x0	// 0 <eloop_register_timeout>
  34:	1401      	addi      	r14, r14, 4
  36:	1492      	pop      	r4-r5, r15
  38:	00000000 	.long	0x00000000

Disassembly of section .text.wpa_auth_uses_sae:

00000000 <wpa_auth_uses_sae>:
   0:	e900000a 	bez      	r0, 0x14	// 14 <wpa_auth_uses_sae+0x14>
   4:	d86020b7 	ld.w      	r3, (r0, 0x2dc)
   8:	e4632c00 	andi      	r3, r3, 3072
   c:	3b40      	cmpnei      	r3, 0
   e:	c4000500 	mvc      	r0
  12:	7400      	zextb      	r0, r0
  14:	783c      	jmp      	r15

Disassembly of section .text.wpa_auth_uses_ft_sae:

00000000 <wpa_auth_uses_ft_sae>:
   0:	e9000008 	bez      	r0, 0x10	// 10 <wpa_auth_uses_ft_sae+0x10>
   4:	d86020b7 	ld.w      	r3, (r0, 0x2dc)
   8:	eb430800 	cmpnei      	r3, 2048
   c:	6403      	mvcv      	r0
   e:	7400      	zextb      	r0, r0
  10:	783c      	jmp      	r15

Disassembly of section .text.wpa_auth_reconfig_group_keys:

00000000 <wpa_auth_reconfig_group_keys>:
   0:	14d2      	push      	r4-r5, r15
   2:	6d43      	mov      	r5, r0
   4:	e9000005 	bez      	r0, 0xe	// e <wpa_auth_reconfig_group_keys+0xe>
   8:	9080      	ld.w      	r4, (r0, 0x0)
   a:	e9240003 	bnez      	r4, 0x10	// 10 <wpa_auth_reconfig_group_keys+0x10>
   e:	1492      	pop      	r4-r5, r15
  10:	6c53      	mov      	r1, r4
  12:	6c17      	mov      	r0, r5
  14:	e0000000 	bsr      	0x0	// 0 <wpa_auth_reconfig_group_keys>
  18:	9480      	ld.w      	r4, (r4, 0x0)
  1a:	07f8      	br      	0xa	// a <wpa_auth_reconfig_group_keys+0xa>

Disassembly of section .text.wpa_auth_set_auth_alg:

00000000 <wpa_auth_set_auth_alg>:
   0:	e9000003 	bez      	r0, 0x6	// 6 <wpa_auth_set_auth_alg+0x6>
   4:	a82a      	st.h      	r1, (r0, 0x14)
   6:	783c      	jmp      	r15

Disassembly of section .text.wpa_auth_rx_eapol:

00000000 <wpa_auth_rx_eapol>:
   0:	14d2      	push      	r4-r5, r15
   2:	1421      	subi      	r14, r14, 4
   4:	6d0f      	mov      	r4, r3
   6:	6d43      	mov      	r5, r0
   8:	d8002024 	ld.w      	r0, (r0, 0x90)
   c:	b840      	st.w      	r2, (r14, 0x0)
   e:	e0000000 	bsr      	0x0	// 0 <ieee80211_sta_wpasm>
  12:	3c03      	cmphsi      	r4, 4
  14:	6c43      	mov      	r1, r0
  16:	9840      	ld.w      	r2, (r14, 0x0)
  18:	0806      	bt      	0x24	// 24 <wpa_auth_rx_eapol+0x24>
  1a:	1017      	lrw      	r0, 0x0	// 74 <wpa_auth_rx_eapol+0x74>
  1c:	e0000000 	bsr      	0x0	// 0 <hgprintf>
  20:	1401      	addi      	r14, r14, 4
  22:	1492      	pop      	r4-r5, r15
  24:	e9200004 	bnez      	r0, 0x2c	// 2c <wpa_auth_rx_eapol+0x2c>
  28:	1014      	lrw      	r0, 0x0	// 78 <wpa_auth_rx_eapol+0x78>
  2a:	07f9      	br      	0x1c	// 1c <wpa_auth_rx_eapol+0x1c>
  2c:	d9820003 	ld.b      	r12, (r2, 0x3)
  30:	8262      	ld.b      	r3, (r2, 0x2)
  32:	c50c482c 	lsli      	r12, r12, 8
  36:	6f0c      	or      	r12, r3
  38:	c50c482d 	lsli      	r13, r12, 8
  3c:	c50c484c 	lsri      	r12, r12, 8
  40:	6f34      	or      	r12, r13
  42:	7731      	zexth      	r12, r12
  44:	2c03      	subi      	r4, 4
  46:	6710      	cmphs      	r4, r12
  48:	0803      	bt      	0x4e	// 4e <wpa_auth_rx_eapol+0x4e>
  4a:	100d      	lrw      	r0, 0x0	// 7c <wpa_auth_rx_eapol+0x7c>
  4c:	07e8      	br      	0x1c	// 1c <wpa_auth_rx_eapol+0x1c>
  4e:	eb0c002b 	cmphsi      	r12, 44
  52:	0fe7      	bf      	0x20	// 20 <wpa_auth_rx_eapol+0x20>
  54:	8261      	ld.b      	r3, (r2, 0x1)
  56:	3b43      	cmpnei      	r3, 3
  58:	0be4      	bt      	0x20	// 20 <wpa_auth_rx_eapol+0x20>
  5a:	8264      	ld.b      	r3, (r2, 0x4)
  5c:	eb4300fe 	cmpnei      	r3, 254
  60:	0c03      	bf      	0x66	// 66 <wpa_auth_rx_eapol+0x66>
  62:	3b42      	cmpnei      	r3, 2
  64:	0bde      	bt      	0x20	// 20 <wpa_auth_rx_eapol+0x20>
  66:	e46c0003 	addi      	r3, r12, 4
  6a:	6c17      	mov      	r0, r5
  6c:	e0000000 	bsr      	0x0	// 0 <wpa_auth_rx_eapol>
  70:	07d8      	br      	0x20	// 20 <wpa_auth_rx_eapol+0x20>
	...

Disassembly of section .text.wpa_auth_release:

00000000 <wpa_auth_release>:
   0:	14d0      	push      	r15
   2:	e9000004 	bez      	r0, 0xa	// a <wpa_auth_release+0xa>
   6:	e0000000 	bsr      	0x0	// 0 <wpa_auth_release>
   a:	1490      	pop      	r15

Disassembly of section .text.wpa_auth_setup:

00000000 <wpa_auth_setup>:
   0:	14d5      	push      	r4-r8, r15
   2:	1435      	subi      	r14, r14, 84
   4:	6d0f      	mov      	r4, r3
   6:	6d83      	mov      	r6, r0
   8:	987b      	ld.w      	r3, (r14, 0x6c)
   a:	6d47      	mov      	r5, r1
   c:	6dcb      	mov      	r7, r2
   e:	3100      	movi      	r1, 0
  10:	3254      	movi      	r2, 84
  12:	6c3b      	mov      	r0, r14
  14:	6e0f      	mov      	r8, r3
  16:	e0000000 	bsr      	0x0	// 0 <memset>
  1a:	ea035180 	movi      	r3, 20864
  1e:	3bb0      	bseti      	r3, 16
  20:	b864      	st.w      	r3, (r14, 0x10)
  22:	b866      	st.w      	r3, (r14, 0x18)
  24:	3304      	movi      	r3, 4
  26:	b868      	st.w      	r3, (r14, 0x20)
  28:	b869      	st.w      	r3, (r14, 0x24)
  2a:	3300      	movi      	r3, 0
  2c:	3101      	movi      	r1, 1
  2e:	3202      	movi      	r2, 2
  30:	2b00      	subi      	r3, 1
  32:	b832      	st.w      	r1, (r14, 0x48)
  34:	b841      	st.w      	r2, (r14, 0x4)
  36:	b86e      	st.w      	r3, (r14, 0x38)
  38:	b830      	st.w      	r1, (r14, 0x40)
  3a:	b84d      	st.w      	r2, (r14, 0x34)
  3c:	6cdb      	mov      	r3, r6
  3e:	104a      	lrw      	r2, 0x0	// 64 <wpa_auth_setup+0x64>
  40:	6c7b      	mov      	r1, r14
  42:	6c17      	mov      	r0, r5
  44:	b882      	st.w      	r4, (r14, 0x8)
  46:	b88b      	st.w      	r4, (r14, 0x2c)
  48:	b8e0      	st.w      	r7, (r14, 0x0)
  4a:	dd0e2003 	st.w      	r8, (r14, 0xc)
  4e:	e0000000 	bsr      	0x0	// 0 <wpa_auth_setup>
  52:	6d03      	mov      	r4, r0
  54:	e9200005 	bnez      	r0, 0x5e	// 5e <wpa_auth_setup+0x5e>
  58:	1004      	lrw      	r0, 0x0	// 68 <hgprintf+0x68>
  5a:	e0000000 	bsr      	0x0	// 0 <hgprintf>
  5e:	6c13      	mov      	r0, r4
  60:	1415      	addi      	r14, r14, 84
  62:	1495      	pop      	r4-r8, r15
	...

Disassembly of section .text.wpa_auth_set_own_addr:

00000000 <wpa_auth_set_own_addr>:
   0:	14d0      	push      	r15
   2:	e9000008 	bez      	r0, 0x12	// 12 <wpa_auth_set_own_addr+0x12>
   6:	e9010006 	bez      	r1, 0x12	// 12 <wpa_auth_set_own_addr+0x12>
   a:	3206      	movi      	r2, 6
   c:	209b      	addi      	r0, 156
   e:	e0000000 	bsr      	0x0	// 0 <memcpy>
  12:	1490      	pop      	r15

Disassembly of section .text.wpa_auth_reconfig:

00000000 <wpa_auth_reconfig>:
   0:	14d0      	push      	r15
   2:	e9000009 	bez      	r0, 0x14	// 14 <wpa_auth_reconfig+0x14>
   6:	b02e      	st.w      	r1, (r0, 0x38)
   8:	b050      	st.w      	r2, (r0, 0x40)
   a:	b071      	st.w      	r3, (r0, 0x44)
   c:	b059      	st.w      	r2, (r0, 0x64)
   e:	3100      	movi      	r1, 0
  10:	e0000000 	bsr      	0x0	// 0 <wpa_auth_reconfig>
  14:	1490      	pop      	r15

Disassembly of section .text.wpa_auth_set_group_rekey:

00000000 <wpa_auth_set_group_rekey>:
   0:	14d1      	push      	r4, r15
   2:	1421      	subi      	r14, r14, 4
   4:	6d03      	mov      	r4, r0
   6:	e9000020 	bez      	r0, 0x46	// 46 <wpa_auth_set_group_rekey+0x46>
   a:	b032      	st.w      	r1, (r0, 0x48)
   c:	b034      	st.w      	r1, (r0, 0x50)
   e:	3200      	movi      	r2, 0
  10:	6c43      	mov      	r1, r0
  12:	100f      	lrw      	r0, 0x0	// 4c <wpa_auth_set_group_rekey+0x4c>
  14:	e0000000 	bsr      	0x0	// 0 <eloop_cancel_timeout>
  18:	3200      	movi      	r2, 0
  1a:	6c53      	mov      	r1, r4
  1c:	100d      	lrw      	r0, 0x0	// 50 <wpa_auth_set_group_rekey+0x50>
  1e:	e0000000 	bsr      	0x0	// 0 <eloop_cancel_timeout>
  22:	9414      	ld.w      	r0, (r4, 0x50)
  24:	e9000008 	bez      	r0, 0x34	// 34 <wpa_auth_set_group_rekey+0x34>
  28:	3100      	movi      	r1, 0
  2a:	b820      	st.w      	r1, (r14, 0x0)
  2c:	6cd3      	mov      	r3, r4
  2e:	1048      	lrw      	r2, 0x0	// 4c <wpa_auth_set_group_rekey+0x4c>
  30:	e0000000 	bsr      	0x0	// 0 <eloop_register_timeout>
  34:	9412      	ld.w      	r0, (r4, 0x48)
  36:	e9000008 	bez      	r0, 0x46	// 46 <wpa_auth_set_group_rekey+0x46>
  3a:	3100      	movi      	r1, 0
  3c:	b820      	st.w      	r1, (r14, 0x0)
  3e:	6cd3      	mov      	r3, r4
  40:	1044      	lrw      	r2, 0x0	// 50 <wpa_auth_set_group_rekey+0x50>
  42:	e0000000 	bsr      	0x0	// 0 <eloop_register_timeout>
  46:	1401      	addi      	r14, r14, 4
  48:	1491      	pop      	r4, r15
	...

Disassembly of section .text.wpa_auth_set_mgmt_group_cipher:

00000000 <wpa_auth_set_mgmt_group_cipher>:
   0:	783c      	jmp      	r15

Disassembly of section .text.wpa_auth_set_pmf:

00000000 <wpa_auth_set_pmf>:
   0:	783c      	jmp      	r15
