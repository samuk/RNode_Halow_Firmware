
libwifi/o/lib_sha1-pbkdf2.o:     file format elf32-csky-little


Disassembly of section .text.pbkdf2_sha1:

00000000 <pbkdf2_sha1>:
   0:	14d8      	push      	r4-r11, r15
   2:	143b      	subi      	r14, r14, 108
   4:	b865      	st.w      	r3, (r14, 0x14)
   6:	9964      	ld.w      	r3, (r14, 0x90)
   8:	6e03      	mov      	r8, r0
   a:	b823      	st.w      	r1, (r14, 0xc)
   c:	b844      	st.w      	r2, (r14, 0x10)
   e:	b862      	st.w      	r3, (r14, 0x8)
  10:	9985      	ld.w      	r4, (r14, 0x94)
  12:	3500      	movi      	r5, 0
  14:	e52e0057 	addi      	r9, r14, 88
  18:	e9240005 	bnez      	r4, 0x22	// 22 <pbkdf2_sha1+0x22>
  1c:	6c13      	mov      	r0, r4
  1e:	141b      	addi      	r14, r14, 108
  20:	1498      	pop      	r4-r11, r15
  22:	6c23      	mov      	r0, r8
  24:	e0000000 	bsr      	0x0	// 0 <strlen>
  28:	2500      	addi      	r5, 1
  2a:	3104      	movi      	r1, 4
  2c:	9863      	ld.w      	r3, (r14, 0xc)
  2e:	b82b      	st.w      	r1, (r14, 0x2c)
  30:	4d38      	lsri      	r1, r5, 24
  32:	b868      	st.w      	r3, (r14, 0x20)
  34:	dc2e001c 	st.b      	r1, (r14, 0x1c)
  38:	9864      	ld.w      	r3, (r14, 0x10)
  3a:	4d30      	lsri      	r1, r5, 16
  3c:	1a0a      	addi      	r2, r14, 40
  3e:	b86a      	st.w      	r3, (r14, 0x28)
  40:	dc2e001d 	st.b      	r1, (r14, 0x1d)
  44:	1b07      	addi      	r3, r14, 28
  46:	4d28      	lsri      	r1, r5, 8
  48:	1e11      	addi      	r6, r14, 68
  4a:	6e83      	mov      	r10, r0
  4c:	b869      	st.w      	r3, (r14, 0x24)
  4e:	dc2e001e 	st.b      	r1, (r14, 0x1e)
  52:	b840      	st.w      	r2, (r14, 0x0)
  54:	6c43      	mov      	r1, r0
  56:	b8c1      	st.w      	r6, (r14, 0x4)
  58:	1b08      	addi      	r3, r14, 32
  5a:	3202      	movi      	r2, 2
  5c:	6c23      	mov      	r0, r8
  5e:	dcae001f 	st.b      	r5, (r14, 0x1f)
  62:	e0000000 	bsr      	0x0	// 0 <hmac_sha1_vector>
  66:	e9200039 	bnez      	r0, 0xd8	// d8 <pbkdf2_sha1+0xd8>
  6a:	1f0c      	addi      	r7, r14, 48
  6c:	3214      	movi      	r2, 20
  6e:	6c5b      	mov      	r1, r6
  70:	6c1f      	mov      	r0, r7
  72:	e0000000 	bsr      	0x0	// 0 <memcpy>
  76:	ea0b0001 	movi      	r11, 1
  7a:	9865      	ld.w      	r3, (r14, 0x14)
  7c:	64ed      	cmplt      	r11, r3
  7e:	080f      	bt      	0x9c	// 9c <pbkdf2_sha1+0x9c>
  80:	3c14      	cmphsi      	r4, 21
  82:	3614      	movi      	r6, 20
  84:	c4c40c20 	incf      	r6, r4, 0
  88:	6c9b      	mov      	r2, r6
  8a:	6c5f      	mov      	r1, r7
  8c:	9802      	ld.w      	r0, (r14, 0x8)
  8e:	e0000000 	bsr      	0x0	// 0 <memcpy>
  92:	9862      	ld.w      	r3, (r14, 0x8)
  94:	60d8      	addu      	r3, r6
  96:	b862      	st.w      	r3, (r14, 0x8)
  98:	611a      	subu      	r4, r6
  9a:	07bf      	br      	0x18	// 18 <pbkdf2_sha1+0x18>
  9c:	dd2e2000 	st.w      	r9, (r14, 0x0)
  a0:	3314      	movi      	r3, 20
  a2:	6c9b      	mov      	r2, r6
  a4:	6c6b      	mov      	r1, r10
  a6:	6c23      	mov      	r0, r8
  a8:	e0000000 	bsr      	0x0	// 0 <hmac_sha1>
  ac:	b806      	st.w      	r0, (r14, 0x18)
  ae:	e9200015 	bnez      	r0, 0xd8	// d8 <pbkdf2_sha1+0xd8>
  b2:	3214      	movi      	r2, 20
  b4:	6c67      	mov      	r1, r9
  b6:	6c1b      	mov      	r0, r6
  b8:	e0000000 	bsr      	0x0	// 0 <memcpy>
  bc:	9866      	ld.w      	r3, (r14, 0x18)
  be:	d0670022 	ldr.b      	r2, (r7, r3 << 0)
  c2:	d1230021 	ldr.b      	r1, (r3, r9 << 0)
  c6:	6c85      	xor      	r2, r1
  c8:	d4670022 	str.b      	r2, (r7, r3 << 0)
  cc:	2300      	addi      	r3, 1
  ce:	3b54      	cmpnei      	r3, 20
  d0:	0bf7      	bt      	0xbe	// be <pbkdf2_sha1+0xbe>
  d2:	e56b0000 	addi      	r11, r11, 1
  d6:	07d2      	br      	0x7a	// 7a <pbkdf2_sha1+0x7a>
  d8:	3000      	movi      	r0, 0
  da:	2800      	subi      	r0, 1
  dc:	07a1      	br      	0x1e	// 1e <pbkdf2_sha1+0x1e>

Disassembly of section .text.wpa_passphrase:

00000000 <wpa_passphrase>:
   0:	14d3      	push      	r4-r6, r15
   2:	1422      	subi      	r14, r14, 8
   4:	6d07      	mov      	r4, r1
   6:	6d8b      	mov      	r6, r2
   8:	6d43      	mov      	r5, r0
   a:	e0000000 	bsr      	0x0	// 0 <strlen>
   e:	3320      	movi      	r3, 32
  10:	b861      	st.w      	r3, (r14, 0x4)
  12:	3380      	movi      	r3, 128
  14:	6c83      	mov      	r2, r0
  16:	b8c0      	st.w      	r6, (r14, 0x0)
  18:	4365      	lsli      	r3, r3, 5
  1a:	6c57      	mov      	r1, r5
  1c:	6c13      	mov      	r0, r4
  1e:	e0000000 	bsr      	0x0	// 0 <wpa_passphrase>
  22:	1402      	addi      	r14, r14, 8
  24:	1493      	pop      	r4-r6, r15
