
libwifi/o/lib_sha1.o:     file format elf32-csky-little


Disassembly of section .text.hmac_sha1_vector:

00000000 <hmac_sha1_vector>:
   0:	14d7      	push      	r4-r10, r15
   2:	1523      	subi      	r14, r14, 140
   4:	3a05      	cmphsi      	r2, 6
   6:	6e4f      	mov      	r9, r3
   8:	996b      	ld.w      	r3, (r14, 0xac)
   a:	b801      	st.w      	r0, (r14, 0x4)
   c:	b820      	st.w      	r1, (r14, 0x0)
   e:	6d0b      	mov      	r4, r2
  10:	6e8f      	mov      	r10, r3
  12:	d90e202c 	ld.w      	r8, (r14, 0xb0)
  16:	0c05      	bf      	0x20	// 20 <hmac_sha1_vector+0x20>
  18:	3000      	movi      	r0, 0
  1a:	2800      	subi      	r0, 1
  1c:	1503      	addi      	r14, r14, 140
  1e:	1497      	pop      	r4-r10, r15
  20:	eb010040 	cmphsi      	r1, 65
  24:	0c0d      	bf      	0x3e	// 3e <hmac_sha1_vector+0x3e>
  26:	1d02      	addi      	r5, r14, 8
  28:	6cd7      	mov      	r3, r5
  2a:	6cbb      	mov      	r2, r14
  2c:	1901      	addi      	r1, r14, 4
  2e:	3001      	movi      	r0, 1
  30:	e0000000 	bsr      	0x0	// 0 <sha1_vector>
  34:	e920fff2 	bnez      	r0, 0x18	// 18 <hmac_sha1_vector+0x18>
  38:	3314      	movi      	r3, 20
  3a:	b8a1      	st.w      	r5, (r14, 0x4)
  3c:	b860      	st.w      	r3, (r14, 0x0)
  3e:	1d13      	addi      	r5, r14, 76
  40:	3240      	movi      	r2, 64
  42:	3100      	movi      	r1, 0
  44:	6c17      	mov      	r0, r5
  46:	e0000000 	bsr      	0x0	// 0 <memset>
  4a:	9840      	ld.w      	r2, (r14, 0x0)
  4c:	9821      	ld.w      	r1, (r14, 0x4)
  4e:	6c17      	mov      	r0, r5
  50:	e0000000 	bsr      	0x0	// 0 <memcpy>
  54:	3300      	movi      	r3, 0
  56:	d0650022 	ldr.b      	r2, (r5, r3 << 0)
  5a:	e4424036 	xori      	r2, r2, 54
  5e:	d4650022 	str.b      	r2, (r5, r3 << 0)
  62:	2300      	addi      	r3, 1
  64:	eb430040 	cmpnei      	r3, 64
  68:	0bf7      	bt      	0x56	// 56 <hmac_sha1_vector+0x56>
  6a:	1e07      	addi      	r6, r14, 28
  6c:	1f0d      	addi      	r7, r14, 52
  6e:	b6a0      	st.w      	r5, (r6, 0x0)
  70:	b760      	st.w      	r3, (r7, 0x0)
  72:	3000      	movi      	r0, 0
  74:	6502      	cmpne      	r0, r4
  76:	2000      	addi      	r0, 1
  78:	082b      	bt      	0xce	// ce <hmac_sha1_vector+0xce>
  7a:	6ce3      	mov      	r3, r8
  7c:	6c9f      	mov      	r2, r7
  7e:	6c5b      	mov      	r1, r6
  80:	e0000000 	bsr      	0x0	// 0 <sha1_vector>
  84:	6d03      	mov      	r4, r0
  86:	e920ffc9 	bnez      	r0, 0x18	// 18 <hmac_sha1_vector+0x18>
  8a:	6c43      	mov      	r1, r0
  8c:	3240      	movi      	r2, 64
  8e:	6c17      	mov      	r0, r5
  90:	e0000000 	bsr      	0x0	// 0 <memset>
  94:	9840      	ld.w      	r2, (r14, 0x0)
  96:	9821      	ld.w      	r1, (r14, 0x4)
  98:	6c17      	mov      	r0, r5
  9a:	e0000000 	bsr      	0x0	// 0 <memcpy>
  9e:	6c13      	mov      	r0, r4
  a0:	d0050023 	ldr.b      	r3, (r5, r0 << 0)
  a4:	e463405c 	xori      	r3, r3, 92
  a8:	d4050023 	str.b      	r3, (r5, r0 << 0)
  ac:	2000      	addi      	r0, 1
  ae:	eb400040 	cmpnei      	r0, 64
  b2:	0bf7      	bt      	0xa0	// a0 <hmac_sha1_vector+0xa0>
  b4:	3314      	movi      	r3, 20
  b6:	b700      	st.w      	r0, (r7, 0x0)
  b8:	b761      	st.w      	r3, (r7, 0x4)
  ba:	6c9f      	mov      	r2, r7
  bc:	6ce3      	mov      	r3, r8
  be:	6c5b      	mov      	r1, r6
  c0:	3002      	movi      	r0, 2
  c2:	b6a0      	st.w      	r5, (r6, 0x0)
  c4:	dd062001 	st.w      	r8, (r6, 0x4)
  c8:	e0000000 	bsr      	0x0	// 0 <sha1_vector>
  cc:	07a8      	br      	0x1c	// 1c <hmac_sha1_vector+0x1c>
  ce:	4062      	lsli      	r3, r0, 2
  d0:	2b03      	subi      	r3, 4
  d2:	d0690822 	ldr.w      	r2, (r9, r3 << 0)
  d6:	d06a0823 	ldr.w      	r3, (r10, r3 << 0)
  da:	d4060882 	str.w      	r2, (r6, r0 << 2)
  de:	d4070883 	str.w      	r3, (r7, r0 << 2)
  e2:	07c9      	br      	0x74	// 74 <hmac_sha1_vector+0x74>

Disassembly of section .text.hmac_sha1:

00000000 <hmac_sha1>:
   0:	14d0      	push      	r15
   2:	1424      	subi      	r14, r14, 16
   4:	b843      	st.w      	r2, (r14, 0xc)
   6:	b862      	st.w      	r3, (r14, 0x8)
   8:	1a02      	addi      	r2, r14, 8
   a:	9865      	ld.w      	r3, (r14, 0x14)
   c:	b861      	st.w      	r3, (r14, 0x4)
   e:	b840      	st.w      	r2, (r14, 0x0)
  10:	1b03      	addi      	r3, r14, 12
  12:	3201      	movi      	r2, 1
  14:	e0000000 	bsr      	0x0	// 0 <hmac_sha1>
  18:	1404      	addi      	r14, r14, 16
  1a:	1490      	pop      	r15
