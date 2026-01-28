
libwifi/o/lib_aes-unwrap.o:     file format elf32-csky-little


Disassembly of section .text.aes_unwrap:

00000000 <aes_unwrap>:
   0:	14d7      	push      	r4-r10, r15
   2:	1426      	subi      	r14, r14, 24
   4:	6dcb      	mov      	r7, r2
   6:	6d4f      	mov      	r5, r3
   8:	6d83      	mov      	r6, r0
   a:	6e47      	mov      	r9, r1
   c:	d90e200e 	ld.w      	r8, (r14, 0x38)
  10:	6c4f      	mov      	r1, r3
  12:	3208      	movi      	r2, 8
  14:	6c3b      	mov      	r0, r14
  16:	4783      	lsli      	r4, r7, 3
  18:	e0000000 	bsr      	0x0	// 0 <memcpy>
  1c:	6c93      	mov      	r2, r4
  1e:	5d3e      	addi      	r1, r5, 8
  20:	6c23      	mov      	r0, r8
  22:	e0000000 	bsr      	0x0	// 0 <memcpy>
  26:	6c67      	mov      	r1, r9
  28:	6c1b      	mov      	r0, r6
  2a:	e0000000 	bsr      	0x0	// 0 <aes_decrypt_init>
  2e:	6e83      	mov      	r10, r0
  30:	e9200006 	bnez      	r0, 0x3c	// 3c <aes_unwrap+0x3c>
  34:	3000      	movi      	r0, 0
  36:	2800      	subi      	r0, 1
  38:	1406      	addi      	r14, r14, 24
  3a:	1497      	pop      	r4-r10, r15
  3c:	2c07      	subi      	r4, 8
  3e:	3605      	movi      	r6, 5
  40:	6210      	addu      	r8, r4
  42:	7d9c      	mult      	r6, r7
  44:	3406      	movi      	r4, 6
  46:	5ebc      	addu      	r5, r6, r7
  48:	6e63      	mov      	r9, r8
  4a:	5d79      	subu      	r3, r5, r6
  4c:	e9430013 	bhz      	r3, 0x72	// 72 <aes_unwrap+0x72>
  50:	2c00      	subi      	r4, 1
  52:	619e      	subu      	r6, r7
  54:	e924fff9 	bnez      	r4, 0x46	// 46 <aes_unwrap+0x46>
  58:	6c2b      	mov      	r0, r10
  5a:	e0000000 	bsr      	0x0	// 0 <aes_decrypt_deinit>
  5e:	d08e0023 	ldr.b      	r3, (r14, r4 << 0)
  62:	eb4300a6 	cmpnei      	r3, 166
  66:	0be7      	bt      	0x34	// 34 <aes_unwrap+0x34>
  68:	2400      	addi      	r4, 1
  6a:	3c48      	cmpnei      	r4, 8
  6c:	0bf9      	bt      	0x5e	// 5e <aes_unwrap+0x5e>
  6e:	3000      	movi      	r0, 0
  70:	07e4      	br      	0x38	// 38 <aes_unwrap+0x38>
  72:	9860      	ld.w      	r3, (r14, 0x0)
  74:	b862      	st.w      	r3, (r14, 0x8)
  76:	9861      	ld.w      	r3, (r14, 0x4)
  78:	b863      	st.w      	r3, (r14, 0xc)
  7a:	d86e000f 	ld.b      	r3, (r14, 0xf)
  7e:	6cd5      	xor      	r3, r5
  80:	4d48      	lsri      	r2, r5, 8
  82:	dc6e000f 	st.b      	r3, (r14, 0xf)
  86:	d86e000e 	ld.b      	r3, (r14, 0xe)
  8a:	6cc9      	xor      	r3, r2
  8c:	dc6e000e 	st.b      	r3, (r14, 0xe)
  90:	4d50      	lsri      	r2, r5, 16
  92:	d86e000d 	ld.b      	r3, (r14, 0xd)
  96:	6cc9      	xor      	r3, r2
  98:	dc6e000d 	st.b      	r3, (r14, 0xd)
  9c:	4d58      	lsri      	r2, r5, 24
  9e:	d86e000c 	ld.b      	r3, (r14, 0xc)
  a2:	6cc9      	xor      	r3, r2
  a4:	6c67      	mov      	r1, r9
  a6:	3208      	movi      	r2, 8
  a8:	1804      	addi      	r0, r14, 16
  aa:	dc6e000c 	st.b      	r3, (r14, 0xc)
  ae:	e0000000 	bsr      	0x0	// 0 <memcpy>
  b2:	1a02      	addi      	r2, r14, 8
  b4:	6c4b      	mov      	r1, r2
  b6:	6c2b      	mov      	r0, r10
  b8:	e0000000 	bsr      	0x0	// 0 <aes_decrypt>
  bc:	9862      	ld.w      	r3, (r14, 0x8)
  be:	b860      	st.w      	r3, (r14, 0x0)
  c0:	6c27      	mov      	r0, r9
  c2:	9863      	ld.w      	r3, (r14, 0xc)
  c4:	3208      	movi      	r2, 8
  c6:	1904      	addi      	r1, r14, 16
  c8:	b861      	st.w      	r3, (r14, 0x4)
  ca:	e5291007 	subi      	r9, r9, 8
  ce:	e0000000 	bsr      	0x0	// 0 <memcpy>
  d2:	2d00      	subi      	r5, 1
  d4:	07bb      	br      	0x4a	// 4a <aes_unwrap+0x4a>
