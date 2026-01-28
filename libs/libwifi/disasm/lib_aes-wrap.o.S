
libwifi/o/lib_aes-wrap.o:     file format elf32-csky-little


Disassembly of section .text.aes_wrap:

00000000 <aes_wrap>:
   0:	14d8      	push      	r4-r11, r15
   2:	1424      	subi      	r14, r14, 16
   4:	988d      	ld.w      	r4, (r14, 0x34)
   6:	6dcf      	mov      	r7, r3
   8:	6d43      	mov      	r5, r0
   a:	6d87      	mov      	r6, r1
   c:	6e8b      	mov      	r10, r2
   e:	31a6      	movi      	r1, 166
  10:	3208      	movi      	r2, 8
  12:	e5640007 	addi      	r11, r4, 8
  16:	6c13      	mov      	r0, r4
  18:	e0000000 	bsr      	0x0	// 0 <memset>
  1c:	c46a4822 	lsli      	r2, r10, 3
  20:	6c5f      	mov      	r1, r7
  22:	6c2f      	mov      	r0, r11
  24:	e0000000 	bsr      	0x0	// 0 <memcpy>
  28:	6c5b      	mov      	r1, r6
  2a:	6c17      	mov      	r0, r5
  2c:	e0000000 	bsr      	0x0	// 0 <aes_encrypt_init>
  30:	6e43      	mov      	r9, r0
  32:	e9000043 	bez      	r0, 0xb8	// b8 <aes_wrap+0xb8>
  36:	ea080000 	movi      	r8, 0
  3a:	3506      	movi      	r5, 6
  3c:	e4c80000 	addi      	r6, r8, 1
  40:	6def      	mov      	r7, r11
  42:	042d      	br      	0x9c	// 9c <aes_wrap+0x9c>
  44:	3208      	movi      	r2, 8
  46:	6c53      	mov      	r1, r4
  48:	6c3b      	mov      	r0, r14
  4a:	e0000000 	bsr      	0x0	// 0 <memcpy>
  4e:	3208      	movi      	r2, 8
  50:	6c5f      	mov      	r1, r7
  52:	c44e0020 	addu      	r0, r14, r2
  56:	e0000000 	bsr      	0x0	// 0 <memcpy>
  5a:	6cbb      	mov      	r2, r14
  5c:	6c7b      	mov      	r1, r14
  5e:	6c27      	mov      	r0, r9
  60:	e0000000 	bsr      	0x0	// 0 <aes_encrypt>
  64:	3208      	movi      	r2, 8
  66:	6c7b      	mov      	r1, r14
  68:	6c13      	mov      	r0, r4
  6a:	e0000000 	bsr      	0x0	// 0 <memcpy>
  6e:	8467      	ld.b      	r3, (r4, 0x7)
  70:	6cd9      	xor      	r3, r6
  72:	4e48      	lsri      	r2, r6, 8
  74:	a467      	st.b      	r3, (r4, 0x7)
  76:	8466      	ld.b      	r3, (r4, 0x6)
  78:	6cc9      	xor      	r3, r2
  7a:	a466      	st.b      	r3, (r4, 0x6)
  7c:	4e50      	lsri      	r2, r6, 16
  7e:	8465      	ld.b      	r3, (r4, 0x5)
  80:	6cc9      	xor      	r3, r2
  82:	a465      	st.b      	r3, (r4, 0x5)
  84:	4e58      	lsri      	r2, r6, 24
  86:	8464      	ld.b      	r3, (r4, 0x4)
  88:	6cc9      	xor      	r3, r2
  8a:	3208      	movi      	r2, 8
  8c:	6c1f      	mov      	r0, r7
  8e:	a464      	st.b      	r3, (r4, 0x4)
  90:	c44e0021 	addu      	r1, r14, r2
  94:	e0000000 	bsr      	0x0	// 0 <memcpy>
  98:	2707      	addi      	r7, 8
  9a:	2600      	addi      	r6, 1
  9c:	c5060083 	subu      	r3, r6, r8
  a0:	64e9      	cmplt      	r10, r3
  a2:	0fd1      	bf      	0x44	// 44 <aes_wrap+0x44>
  a4:	2d00      	subi      	r5, 1
  a6:	6228      	addu      	r8, r10
  a8:	e925ffca 	bnez      	r5, 0x3c	// 3c <aes_wrap+0x3c>
  ac:	6c27      	mov      	r0, r9
  ae:	e0000000 	bsr      	0x0	// 0 <aes_encrypt_deinit>
  b2:	6c17      	mov      	r0, r5
  b4:	1404      	addi      	r14, r14, 16
  b6:	1498      	pop      	r4-r11, r15
  b8:	3000      	movi      	r0, 0
  ba:	2800      	subi      	r0, 1
  bc:	07fc      	br      	0xb4	// b4 <aes_wrap+0xb4>
