
libwifi/o/wpa_wpa_i.o:     file format elf32-csky-little


Disassembly of section .text.wpas_set_key:

00000000 <wpas_set_key>:
   0:	14d4      	push      	r4-r7, r15
   2:	142e      	subi      	r14, r14, 56
   4:	6d0b      	mov      	r4, r2
   6:	9856      	ld.w      	r2, (r14, 0x58)
   8:	b842      	st.w      	r2, (r14, 0x8)
   a:	e4ce0015 	addi      	r6, r14, 22
   e:	9857      	ld.w      	r2, (r14, 0x5c)
  10:	6d43      	mov      	r5, r0
  12:	6dc7      	mov      	r7, r1
  14:	6c1b      	mov      	r0, r6
  16:	9822      	ld.w      	r1, (r14, 0x8)
  18:	dc6e0014 	st.b      	r3, (r14, 0x14)
  1c:	dc4e0015 	st.b      	r2, (r14, 0x15)
  20:	e0000000 	bsr      	0x0	// 0 <memcpy>
  24:	6c1f      	mov      	r0, r7
  26:	e0000000 	bsr      	0x0	// 0 <wpa_alg_to_suite>
  2a:	4870      	lsri      	r3, r0, 16
  2c:	dc6e000e 	st.b      	r3, (r14, 0xe)
  30:	dc0e000c 	st.b      	r0, (r14, 0xc)
  34:	4b68      	lsri      	r3, r3, 8
  36:	c50055e0 	zext      	r0, r0, 15, 8
  3a:	dc0e000d 	st.b      	r0, (r14, 0xd)
  3e:	dc6e000f 	st.b      	r3, (r14, 0xf)
  42:	d8052063 	ld.w      	r0, (r5, 0x18c)
  46:	e9040039 	bez      	r4, 0xb8	// b8 <wpas_set_key+0xb8>
  4a:	8460      	ld.b      	r3, (r4, 0x0)
  4c:	e4632001 	andi      	r3, r3, 1
  50:	e9230034 	bnez      	r3, 0xb8	// b8 <wpas_set_key+0xb8>
  54:	3208      	movi      	r2, 8
  56:	dc4e0010 	st.b      	r2, (r14, 0x10)
  5a:	320c      	movi      	r2, 12
  5c:	dc6e0012 	st.b      	r3, (r14, 0x12)
  60:	dc6e0013 	st.b      	r3, (r14, 0x13)
  64:	dc6e0011 	st.b      	r3, (r14, 0x11)
  68:	c44e0021 	addu      	r1, r14, r2
  6c:	20ab      	addi      	r0, 172
  6e:	e0000000 	bsr      	0x0	// 0 <memcpy>
  72:	9844      	ld.w      	r2, (r14, 0x10)
  74:	b842      	st.w      	r2, (r14, 0x8)
  76:	d84e0015 	ld.b      	r2, (r14, 0x15)
  7a:	d86e0014 	ld.b      	r3, (r14, 0x14)
  7e:	b840      	st.w      	r2, (r14, 0x0)
  80:	9823      	ld.w      	r1, (r14, 0xc)
  82:	9842      	ld.w      	r2, (r14, 0x8)
  84:	b8c1      	st.w      	r6, (r14, 0x4)
  86:	1016      	lrw      	r0, 0x0	// dc <wpas_set_key+0xdc>
  88:	e0000000 	bsr      	0x0	// 0 <hgprintf>
  8c:	d84e0015 	ld.b      	r2, (r14, 0x15)
  90:	6c5b      	mov      	r1, r6
  92:	3300      	movi      	r3, 0
  94:	1013      	lrw      	r0, 0x0	// e0 <wpas_set_key+0xe0>
  96:	e0000000 	bsr      	0x0	// 0 <dump_hex>
  9a:	d86e0015 	ld.b      	r3, (r14, 0x15)
  9e:	d8052029 	ld.w      	r0, (r5, 0xa4)
  a2:	3f40      	cmpnei      	r7, 0
  a4:	b860      	st.w      	r3, (r14, 0x0)
  a6:	6443      	mvcv      	r1
  a8:	d9802010 	ld.w      	r12, (r0, 0x40)
  ac:	1b03      	addi      	r3, r14, 12
  ae:	6c93      	mov      	r2, r4
  b0:	7444      	zextb      	r1, r1
  b2:	7bf1      	jsr      	r12
  b4:	140e      	addi      	r14, r14, 56
  b6:	1494      	pop      	r4-r7, r15
  b8:	3300      	movi      	r3, 0
  ba:	dc6e0012 	st.b      	r3, (r14, 0x12)
  be:	dc6e0013 	st.b      	r3, (r14, 0x13)
  c2:	dc6e0010 	st.b      	r3, (r14, 0x10)
  c6:	320c      	movi      	r2, 12
  c8:	3301      	movi      	r3, 1
  ca:	e480001b 	addi      	r4, r0, 28
  ce:	dc6e0011 	st.b      	r3, (r14, 0x11)
  d2:	c44e0021 	addu      	r1, r14, r2
  d6:	e40501af 	addi      	r0, r5, 432
  da:	07ca      	br      	0x6e	// 6e <wpas_set_key+0x6e>
	...

Disassembly of section .text.wpas_get_bssid:

00000000 <wpas_get_bssid>:
   0:	14d0      	push      	r15
   2:	6cc3      	mov      	r3, r0
   4:	6c07      	mov      	r0, r1
   6:	e903000a 	bez      	r3, 0x1a	// 1a <wpas_get_bssid+0x1a>
   a:	d8232063 	ld.w      	r1, (r3, 0x18c)
   e:	3206      	movi      	r2, 6
  10:	211b      	addi      	r1, 28
  12:	e0000000 	bsr      	0x0	// 0 <memcpy>
  16:	3000      	movi      	r0, 0
  18:	1490      	pop      	r15
  1a:	3000      	movi      	r0, 0
  1c:	2800      	subi      	r0, 1
  1e:	07fd      	br      	0x18	// 18 <wpas_get_bssid+0x18>

Disassembly of section .text.wpas_deauthenticate:

00000000 <wpas_deauthenticate>:
   0:	14d1      	push      	r4, r15
   2:	a827      	st.h      	r1, (r0, 0xe)
   4:	6d03      	mov      	r4, r0
   6:	3200      	movi      	r2, 0
   8:	e0000000 	bsr      	0x0	// 0 <ieee80211_sta_disable_bss>
   c:	6c13      	mov      	r0, r4
   e:	e0000000 	bsr      	0x0	// 0 <ieee80211_sta_disconnect>
  12:	1491      	pop      	r4, r15

Disassembly of section .text.wpas_set_state:

00000000 <wpas_set_state>:
   0:	14d0      	push      	r15
   2:	e0000000 	bsr      	0x0	// 0 <ieee80211_state>
   6:	1490      	pop      	r15

Disassembly of section .text.wpas_get_state:

00000000 <wpas_get_state>:
   0:	8012      	ld.b      	r0, (r0, 0x12)
   2:	783c      	jmp      	r15

Disassembly of section .text.wpas_get_beacon_ie:

00000000 <wpas_get_beacon_ie>:
   0:	3000      	movi      	r0, 0
   2:	783c      	jmp      	r15

Disassembly of section .text.wpas_alloc_eapol:

00000000 <wpas_alloc_eapol>:
   0:	14d5      	push      	r4-r8, r15
   2:	1421      	subi      	r14, r14, 4
   4:	6dcb      	mov      	r7, r2
   6:	6c8f      	mov      	r2, r3
   8:	9867      	ld.w      	r3, (r14, 0x1c)
   a:	6e03      	mov      	r8, r0
   c:	5a0e      	addi      	r0, r2, 4
   e:	b300      	st.w      	r0, (r3, 0x0)
  10:	6d87      	mov      	r6, r1
  12:	98a8      	ld.w      	r5, (r14, 0x20)
  14:	b840      	st.w      	r2, (r14, 0x0)
  16:	e0000000 	bsr      	0x0	// 0 <_os_zalloc>
  1a:	6d03      	mov      	r4, r0
  1c:	e900001a 	bez      	r0, 0x50	// 50 <wpas_alloc_eapol+0x50>
  20:	d8680110 	ld.b      	r3, (r8, 0x110)
  24:	c4035463 	zext      	r3, r3, 3, 0
  28:	9840      	ld.w      	r2, (r14, 0x0)
  2a:	a060      	st.b      	r3, (r0, 0x0)
  2c:	a0c1      	st.b      	r6, (r0, 0x1)
  2e:	4a68      	lsri      	r3, r2, 8
  30:	4208      	lsli      	r0, r2, 8
  32:	6c0c      	or      	r0, r3
  34:	7401      	zexth      	r0, r0
  36:	a402      	st.b      	r0, (r4, 0x2)
  38:	5cce      	addi      	r6, r4, 4
  3a:	4808      	lsri      	r0, r0, 8
  3c:	a403      	st.b      	r0, (r4, 0x3)
  3e:	6c5f      	mov      	r1, r7
  40:	6c1b      	mov      	r0, r6
  42:	e907000a 	bez      	r7, 0x56	// 56 <wpas_alloc_eapol+0x56>
  46:	e0000000 	bsr      	0x0	// 0 <memcpy>
  4a:	e9050003 	bez      	r5, 0x50	// 50 <wpas_alloc_eapol+0x50>
  4e:	b5c0      	st.w      	r6, (r5, 0x0)
  50:	6c13      	mov      	r0, r4
  52:	1401      	addi      	r14, r14, 4
  54:	1495      	pop      	r4-r8, r15
  56:	e0000000 	bsr      	0x0	// 0 <memset>
  5a:	07f8      	br      	0x4a	// 4a <wpas_alloc_eapol+0x4a>

Disassembly of section .text.wpas_cancel_auth_timeout:

00000000 <wpas_cancel_auth_timeout>:
   0:	783c      	jmp      	r15

Disassembly of section .text.wpas_mlme_setprotection:

00000000 <wpas_mlme_setprotection>:
   0:	3000      	movi      	r0, 0
   2:	783c      	jmp      	r15

Disassembly of section .text.wpas_set_rekey_offload:

00000000 <wpas_set_rekey_offload>:
   0:	783c      	jmp      	r15
