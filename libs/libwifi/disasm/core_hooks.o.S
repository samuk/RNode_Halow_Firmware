
libwifi/o/core_hooks.o:     file format elf32-csky-little


Disassembly of section .text.ieee80211_register_pkthook:

00000000 <ieee80211_register_pkthook>:
   0:	c0006023 	mfcr      	r3, cr<0, 0>
   4:	c0807020 	psrclr      	ie
   8:	1047      	lrw      	r2, 0x0	// 24 <ieee80211_register_pkthook+0x24>
   a:	e4632040 	andi      	r3, r3, 64
   e:	d8222023 	ld.w      	r1, (r2, 0x8c)
  12:	b020      	st.w      	r1, (r0, 0x0)
  14:	dc022023 	st.w      	r0, (r2, 0x8c)
  18:	e9030004 	bez      	r3, 0x20	// 20 <ieee80211_register_pkthook+0x20>
  1c:	c0807420 	psrset      	ie
  20:	3000      	movi      	r0, 0
  22:	783c      	jmp      	r15
  24:	00000000 	.long	0x00000000

Disassembly of section .text.ieee80211_pkthook_handle_data:

00000000 <ieee80211_pkthook_handle_data>:
   0:	14d8      	push      	r4-r11, r15
   2:	1423      	subi      	r14, r14, 12
   4:	d860202a 	ld.w      	r3, (r0, 0xa8)
   8:	3500      	movi      	r5, 0
   a:	d8c32023 	ld.w      	r6, (r3, 0x8c)
   e:	9167      	ld.w      	r3, (r1, 0x1c)
  10:	6e03      	mov      	r8, r0
  12:	83ec      	ld.b      	r7, (r3, 0xc)
  14:	47e8      	lsli      	r7, r7, 8
  16:	836d      	ld.b      	r3, (r3, 0xd)
  18:	6d07      	mov      	r4, r1
  1a:	6e8b      	mov      	r10, r2
  1c:	6dcc      	or      	r7, r3
  1e:	6ed7      	mov      	r11, r5
  20:	e926000a 	bnez      	r6, 0x34	// 34 <ieee80211_pkthook_handle_data+0x34>
  24:	e9050005 	bez      	r5, 0x2e	// 2e <ieee80211_pkthook_handle_data+0x2e>
  28:	6c13      	mov      	r0, r4
  2a:	e0000000 	bsr      	0x0	// 0 <kfree_skb>
  2e:	6c17      	mov      	r0, r5
  30:	1403      	addi      	r14, r14, 12
  32:	1498      	pop      	r4-r11, r15
  34:	9661      	ld.w      	r3, (r6, 0x4)
  36:	8b44      	ld.h      	r2, (r3, 0x8)
  38:	65ca      	cmpne      	r2, r7
  3a:	0c16      	bf      	0x66	// 66 <ieee80211_pkthook_handle_data+0x66>
  3c:	834a      	ld.b      	r2, (r3, 0xa)
  3e:	e4222001 	andi      	r1, r2, 1
  42:	e9010008 	bez      	r1, 0x52	// 52 <ieee80211_pkthook_handle_data+0x52>
  46:	9427      	ld.w      	r1, (r4, 0x1c)
  48:	8120      	ld.b      	r1, (r1, 0x0)
  4a:	e4212001 	andi      	r1, r1, 1
  4e:	e921000c 	bnez      	r1, 0x66	// 66 <ieee80211_pkthook_handle_data+0x66>
  52:	e4422002 	andi      	r2, r2, 2
  56:	e9020034 	bez      	r2, 0xbe	// be <ieee80211_pkthook_handle_data+0xbe>
  5a:	9447      	ld.w      	r2, (r4, 0x1c)
  5c:	8240      	ld.b      	r2, (r2, 0x0)
  5e:	e4422001 	andi      	r2, r2, 1
  62:	e922002e 	bnez      	r2, 0xbe	// be <ieee80211_pkthook_handle_data+0xbe>
  66:	d9232003 	ld.w      	r9, (r3, 0xc)
  6a:	eb4a0000 	cmpnei      	r10, 0
  6e:	9364      	ld.w      	r3, (r3, 0x10)
  70:	c5230c20 	incf      	r9, r3, 0
  74:	e9090025 	bez      	r9, 0xbe	// be <ieee80211_pkthook_handle_data+0xbe>
  78:	9467      	ld.w      	r3, (r4, 0x1c)
  7a:	b860      	st.w      	r3, (r14, 0x0)
  7c:	8c74      	ld.h      	r3, (r4, 0x28)
  7e:	dc6e1002 	st.h      	r3, (r14, 0x4)
  82:	d808202a 	ld.w      	r0, (r8, 0xa8)
  86:	d86e0006 	ld.b      	r3, (r14, 0x6)
  8a:	3100      	movi      	r1, 0
  8c:	c46b5c00 	ins      	r3, r11, 0, 0
  90:	2900      	subi      	r1, 1
  92:	e400018f 	addi      	r0, r0, 400
  96:	dc6e0006 	st.b      	r3, (r14, 0x6)
  9a:	b882      	st.w      	r4, (r14, 0x8)
  9c:	e0000000 	bsr      	0x0	// 0 <os_mutex_lock>
  a0:	6cbb      	mov      	r2, r14
  a2:	d8280004 	ld.b      	r1, (r8, 0x4)
  a6:	6c1b      	mov      	r0, r6
  a8:	7be5      	jsr      	r9
  aa:	3840      	cmpnei      	r0, 0
  ac:	d808202a 	ld.w      	r0, (r8, 0xa8)
  b0:	3301      	movi      	r3, 1
  b2:	e400018f 	addi      	r0, r0, 400
  b6:	c4a30c40 	inct      	r5, r3, 0
  ba:	e0000000 	bsr      	0x0	// 0 <os_mutex_unlock>
  be:	96c0      	ld.w      	r6, (r6, 0x0)
  c0:	07b0      	br      	0x20	// 20 <ieee80211_pkthook_handle_data+0x20>

Disassembly of section .text.ieee80211_hook_ext_data:

00000000 <ieee80211_hook_ext_data>:
   0:	14d8      	push      	r4-r11, r15
   2:	1426      	subi      	r14, r14, 24
   4:	82ac      	ld.b      	r5, (r2, 0xc)
   6:	11ca      	lrw      	r6, 0x0	// ac <ieee80211_hook_ext_data+0xac>
   8:	6e0b      	mov      	r8, r2
   a:	45a8      	lsli      	r5, r5, 8
   c:	824d      	ld.b      	r2, (r2, 0xd)
   e:	3700      	movi      	r7, 0
  10:	d8862023 	ld.w      	r4, (r6, 0x8c)
  14:	6e83      	mov      	r10, r0
  16:	6ec7      	mov      	r11, r1
  18:	6d48      	or      	r5, r2
  1a:	6f1f      	mov      	r12, r7
  1c:	e4c6018f 	addi      	r6, r6, 400
  20:	e9240005 	bnez      	r4, 0x2a	// 2a <ieee80211_hook_ext_data+0x2a>
  24:	6c1f      	mov      	r0, r7
  26:	1406      	addi      	r14, r14, 24
  28:	1498      	pop      	r4-r11, r15
  2a:	9441      	ld.w      	r2, (r4, 0x4)
  2c:	8a24      	ld.h      	r1, (r2, 0x8)
  2e:	6546      	cmpne      	r1, r5
  30:	0c0c      	bf      	0x48	// 48 <ieee80211_hook_ext_data+0x48>
  32:	822a      	ld.b      	r1, (r2, 0xa)
  34:	e4212001 	andi      	r1, r1, 1
  38:	e9010038 	bez      	r1, 0xa8	// a8 <ieee80211_hook_ext_data+0xa8>
  3c:	d8280000 	ld.b      	r1, (r8, 0x0)
  40:	e4212001 	andi      	r1, r1, 1
  44:	e9010032 	bez      	r1, 0xa8	// a8 <ieee80211_hook_ext_data+0xa8>
  48:	d9222003 	ld.w      	r9, (r2, 0xc)
  4c:	eb4b0000 	cmpnei      	r11, 0
  50:	9244      	ld.w      	r2, (r2, 0x10)
  52:	c5220c20 	incf      	r9, r2, 0
  56:	e9090029 	bez      	r9, 0xa8	// a8 <ieee80211_hook_ext_data+0xa8>
  5a:	ea0d0001 	movi      	r13, 1
  5e:	d84e0012 	ld.b      	r2, (r14, 0x12)
  62:	3100      	movi      	r1, 0
  64:	c44d5c00 	ins      	r2, r13, 0, 0
  68:	6076      	subu      	r1, r13
  6a:	6c1b      	mov      	r0, r6
  6c:	dc6e1008 	st.h      	r3, (r14, 0x10)
  70:	b862      	st.w      	r3, (r14, 0x8)
  72:	dd8e2005 	st.w      	r12, (r14, 0x14)
  76:	dd8e2001 	st.w      	r12, (r14, 0x4)
  7a:	ddae2000 	st.w      	r13, (r14, 0x0)
  7e:	dc4e0012 	st.b      	r2, (r14, 0x12)
  82:	dd0e2003 	st.w      	r8, (r14, 0xc)
  86:	e0000000 	bsr      	0x0	// 0 <os_mutex_lock>
  8a:	1a03      	addi      	r2, r14, 12
  8c:	6c6b      	mov      	r1, r10
  8e:	6c13      	mov      	r0, r4
  90:	7be5      	jsr      	r9
  92:	3840      	cmpnei      	r0, 0
  94:	d9ae2000 	ld.w      	r13, (r14, 0x0)
  98:	6c1b      	mov      	r0, r6
  9a:	c4ed0c40 	inct      	r7, r13, 0
  9e:	e0000000 	bsr      	0x0	// 0 <os_mutex_unlock>
  a2:	9862      	ld.w      	r3, (r14, 0x8)
  a4:	d98e2001 	ld.w      	r12, (r14, 0x4)
  a8:	9480      	ld.w      	r4, (r4, 0x0)
  aa:	07bb      	br      	0x20	// 20 <ieee80211_hook_ext_data+0x20>
  ac:	00000000 	.long	0x00000000
