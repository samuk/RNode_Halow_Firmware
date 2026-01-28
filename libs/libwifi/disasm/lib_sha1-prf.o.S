
libwifi/o/lib_sha1-prf.o:     file format elf32-csky-little


Disassembly of section .text.sha1_prf:

00000000 <sha1_prf>:
   0:	14d8      	push      	r4-r11, r15
   2:	142e      	subi      	r14, r14, 56
   4:	e4ce000a 	addi      	r6, r14, 11
   8:	6d0b      	mov      	r4, r2
   a:	6ecf      	mov      	r11, r3
   c:	6e03      	mov      	r8, r0
   e:	3300      	movi      	r3, 0
  10:	6c0b      	mov      	r0, r2
  12:	a660      	st.b      	r3, (r6, 0x0)
  14:	6e87      	mov      	r10, r1
  16:	e0000000 	bsr      	0x0	// 0 <strlen>
  1a:	b883      	st.w      	r4, (r14, 0xc)
  1c:	1c06      	addi      	r4, r14, 24
  1e:	98b7      	ld.w      	r5, (r14, 0x5c)
  20:	2000      	addi      	r0, 1
  22:	3301      	movi      	r3, 1
  24:	b4a1      	st.w      	r5, (r4, 0x4)
  26:	d92e2018 	ld.w      	r9, (r14, 0x60)
  2a:	98f9      	ld.w      	r7, (r14, 0x64)
  2c:	b400      	st.w      	r0, (r4, 0x0)
  2e:	dd6e2004 	st.w      	r11, (r14, 0x10)
  32:	b8c5      	st.w      	r6, (r14, 0x14)
  34:	b462      	st.w      	r3, (r4, 0x8)
  36:	3500      	movi      	r5, 0
  38:	65d4      	cmphs      	r5, r7
  3a:	0c03      	bf      	0x40	// 40 <sha1_prf+0x40>
  3c:	3400      	movi      	r4, 0
  3e:	0414      	br      	0x66	// 66 <sha1_prf+0x66>
  40:	c4a7008b 	subu      	r11, r7, r5
  44:	eb0b0013 	cmphsi      	r11, 20
  48:	0c17      	bf      	0x76	// 76 <sha1_prf+0x76>
  4a:	c4a90023 	addu      	r3, r9, r5
  4e:	b861      	st.w      	r3, (r14, 0x4)
  50:	b880      	st.w      	r4, (r14, 0x0)
  52:	1b03      	addi      	r3, r14, 12
  54:	3203      	movi      	r2, 3
  56:	6c6b      	mov      	r1, r10
  58:	6c23      	mov      	r0, r8
  5a:	e0000000 	bsr      	0x0	// 0 <hmac_sha1_vector>
  5e:	e9000007 	bez      	r0, 0x6c	// 6c <sha1_prf+0x6c>
  62:	3400      	movi      	r4, 0
  64:	2c00      	subi      	r4, 1
  66:	6c13      	mov      	r0, r4
  68:	140e      	addi      	r14, r14, 56
  6a:	1498      	pop      	r4-r11, r15
  6c:	8660      	ld.b      	r3, (r6, 0x0)
  6e:	2300      	addi      	r3, 1
  70:	2513      	addi      	r5, 20
  72:	a660      	st.b      	r3, (r6, 0x0)
  74:	07e2      	br      	0x38	// 38 <sha1_prf+0x38>
  76:	1e09      	addi      	r6, r14, 36
  78:	b880      	st.w      	r4, (r14, 0x0)
  7a:	b8c1      	st.w      	r6, (r14, 0x4)
  7c:	1b03      	addi      	r3, r14, 12
  7e:	3203      	movi      	r2, 3
  80:	6c6b      	mov      	r1, r10
  82:	6c23      	mov      	r0, r8
  84:	e0000000 	bsr      	0x0	// 0 <hmac_sha1_vector>
  88:	6d03      	mov      	r4, r0
  8a:	e920ffec 	bnez      	r0, 0x62	// 62 <sha1_prf+0x62>
  8e:	6caf      	mov      	r2, r11
  90:	6c5b      	mov      	r1, r6
  92:	c4a90020 	addu      	r0, r9, r5
  96:	e0000000 	bsr      	0x0	// 0 <memcpy>
  9a:	07e6      	br      	0x66	// 66 <sha1_prf+0x66>
