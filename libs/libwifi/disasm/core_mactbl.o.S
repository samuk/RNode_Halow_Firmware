
libwifi/o/core_mactbl.o:     file format elf32-csky-little


Disassembly of section .text.list_del:

00000000 <list_del>:
   0:	9061      	ld.w      	r3, (r0, 0x4)
   2:	9040      	ld.w      	r2, (r0, 0x0)
   4:	e9030006 	bez      	r3, 0x10	// 10 <list_del+0x10>
   8:	e9020004 	bez      	r2, 0x10	// 10 <list_del+0x10>
   c:	b261      	st.w      	r3, (r2, 0x4)
   e:	b340      	st.w      	r2, (r3, 0x0)
  10:	3300      	movi      	r3, 0
  12:	b060      	st.w      	r3, (r0, 0x0)
  14:	b061      	st.w      	r3, (r0, 0x4)
  16:	783c      	jmp      	r15

Disassembly of section .text.ieee80211_mactbl_get:

00000000 <ieee80211_mactbl_get>:
   0:	14d4      	push      	r4-r7, r15
   2:	6d47      	mov      	r5, r1
   4:	6dcb      	mov      	r7, r2
   6:	e901000e 	bez      	r1, 0x22	// 22 <ieee80211_mactbl_get+0x22>
   a:	8165      	ld.b      	r3, (r1, 0x5)
   c:	e463200f 	andi      	r3, r3, 15
  10:	2300      	addi      	r3, 1
  12:	43c3      	lsli      	r6, r3, 3
  14:	6180      	addu      	r6, r0
  16:	d0600904 	ldr.w      	r4, (r0, r3 << 3)
  1a:	651a      	cmpne      	r6, r4
  1c:	0c03      	bf      	0x22	// 22 <ieee80211_mactbl_get+0x22>
  1e:	651a      	cmpne      	r6, r4
  20:	0804      	bt      	0x28	// 28 <ieee80211_mactbl_get+0x28>
  22:	3400      	movi      	r4, 0
  24:	6c13      	mov      	r0, r4
  26:	1494      	pop      	r4-r7, r15
  28:	3206      	movi      	r2, 6
  2a:	6c57      	mov      	r1, r5
  2c:	e4040019 	addi      	r0, r4, 26
  30:	e0000000 	bsr      	0x0	// 0 <memcmp>
  34:	e9200007 	bnez      	r0, 0x42	// 42 <ieee80211_mactbl_get+0x42>
  38:	e907fff6 	bez      	r7, 0x24	// 24 <ieee80211_mactbl_get+0x24>
  3c:	9462      	ld.w      	r3, (r4, 0x8)
  3e:	64de      	cmpne      	r7, r3
  40:	0ff2      	bf      	0x24	// 24 <ieee80211_mactbl_get+0x24>
  42:	9480      	ld.w      	r4, (r4, 0x0)
  44:	07ed      	br      	0x1e	// 1e <ieee80211_mactbl_get+0x1e>

Disassembly of section .text.ieee80211_mactbl_expired:

00000000 <ieee80211_mactbl_expired>:
   0:	14d8      	push      	r4-r11, r15
   2:	1421      	subi      	r14, r14, 4
   4:	6e83      	mov      	r10, r0
   6:	d8401045 	ld.h      	r2, (r0, 0x8a)
   a:	d8601044 	ld.h      	r3, (r0, 0x88)
   e:	e9210007 	bnez      	r1, 0x1c	// 1c <ieee80211_mactbl_expired+0x1c>
  12:	744d      	zexth      	r1, r3
  14:	c42255e0 	zext      	r0, r2, 15, 1
  18:	6404      	cmphs      	r1, r0
  1a:	0c2c      	bf      	0x72	// 72 <ieee80211_mactbl_expired+0x72>
  1c:	74cd      	zexth      	r3, r3
  1e:	7489      	zexth      	r2, r2
  20:	64c8      	cmphs      	r2, r3
  22:	d88a2023 	ld.w      	r4, (r10, 0x8c)
  26:	0c28      	bf      	0x76	// 76 <ieee80211_mactbl_expired+0x76>
  28:	60cc      	addu      	r3, r3
  2a:	64c9      	cmplt      	r2, r3
  2c:	0c05      	bf      	0x36	// 36 <ieee80211_mactbl_expired+0x36>
  2e:	eb04270f 	cmphsi      	r4, 10000
  32:	0825      	bt      	0x7c	// 7c <ieee80211_mactbl_expired+0x7c>
  34:	4c81      	lsri      	r4, r4, 1
  36:	e46a0087 	addi      	r3, r10, 136
  3a:	e56a0007 	addi      	r11, r10, 8
  3e:	b860      	st.w      	r3, (r14, 0x0)
  40:	d86b2000 	ld.w      	r3, (r11, 0x0)
  44:	66ce      	cmpne      	r3, r11
  46:	0c11      	bf      	0x68	// 68 <ieee80211_mactbl_expired+0x68>
  48:	d8ab2001 	ld.w      	r5, (r11, 0x4)
  4c:	8d4c      	ld.h      	r2, (r5, 0x18)
  4e:	e4422001 	andi      	r2, r2, 1
  52:	e9020018 	bez      	r2, 0x82	// 82 <ieee80211_mactbl_expired+0x82>
  56:	d82a2023 	ld.w      	r1, (r10, 0x8c)
  5a:	9543      	ld.w      	r2, (r5, 0xc)
  5c:	d8420025 	ld.b      	r2, (r2, 0x25)
  60:	e4422001 	andi      	r2, r2, 1
  64:	e9020011 	bez      	r2, 0x86	// 86 <ieee80211_mactbl_expired+0x86>
  68:	e56b0007 	addi      	r11, r11, 8
  6c:	9860      	ld.w      	r3, (r14, 0x0)
  6e:	64ee      	cmpne      	r11, r3
  70:	0be8      	bt      	0x40	// 40 <ieee80211_mactbl_expired+0x40>
  72:	1401      	addi      	r14, r14, 4
  74:	1498      	pop      	r4-r11, r15
  76:	34fa      	movi      	r4, 250
  78:	4481      	lsli      	r4, r4, 1
  7a:	07de      	br      	0x36	// 36 <ieee80211_mactbl_expired+0x36>
  7c:	ea041388 	movi      	r4, 5000
  80:	07db      	br      	0x36	// 36 <ieee80211_mactbl_expired+0x36>
  82:	6c53      	mov      	r1, r4
  84:	07eb      	br      	0x5a	// 5a <ieee80211_mactbl_expired+0x5a>
  86:	6d87      	mov      	r6, r1
  88:	51ff      	asri      	r7, r1, 31
  8a:	d9052004 	ld.w      	r8, (r5, 0x10)
  8e:	d9252005 	ld.w      	r9, (r5, 0x14)
  92:	6621      	cmplt      	r8, r8
  94:	6219      	addc      	r8, r6
  96:	625d      	addc      	r9, r7
  98:	e0000000 	bsr      	0x0	// 0 <os_jiffies>
  9c:	6400      	cmphs      	r0, r0
  9e:	c4080100 	subc      	r0, r8, r0
  a2:	c4290101 	subc      	r1, r9, r1
  a6:	e9a1ffe1 	bhsz      	r1, 0x68	// 68 <ieee80211_mactbl_expired+0x68>
  aa:	6c17      	mov      	r0, r5
  ac:	e0000000 	bsr      	0x0	// 0 <ieee80211_mactbl_expired>
  b0:	6c17      	mov      	r0, r5
  b2:	e0000000 	bsr      	0x0	// 0 <_os_free>
  b6:	d86a1044 	ld.h      	r3, (r10, 0x88)
  ba:	2b00      	subi      	r3, 1
  bc:	dc6a1044 	st.h      	r3, (r10, 0x88)
  c0:	07c0      	br      	0x40	// 40 <ieee80211_mactbl_expired+0x40>

Disassembly of section .text.ieee80211_mactbl_update:

00000000 <ieee80211_mactbl_update>:
   0:	14d6      	push      	r4-r9, r15
   2:	6d83      	mov      	r6, r0
   4:	6dc7      	mov      	r7, r1
   6:	6e0b      	mov      	r8, r2
   8:	6e4f      	mov      	r9, r3
   a:	d8ae100e 	ld.h      	r5, (r14, 0x1c)
   e:	e901003c 	bez      	r1, 0x86	// 86 <ieee80211_mactbl_update+0x86>
  12:	3100      	movi      	r1, 0
  14:	2900      	subi      	r1, 1
  16:	e0000000 	bsr      	0x0	// 0 <os_mutex_lock>
  1a:	6ca3      	mov      	r2, r8
  1c:	6c5f      	mov      	r1, r7
  1e:	6c1b      	mov      	r0, r6
  20:	e0000000 	bsr      	0x0	// 0 <ieee80211_mactbl_update>
  24:	6d03      	mov      	r4, r0
  26:	e9200012 	bnez      	r0, 0x4a	// 4a <ieee80211_mactbl_update+0x4a>
  2a:	3020      	movi      	r0, 32
  2c:	e0000000 	bsr      	0x0	// 0 <_os_zalloc>
  30:	6d03      	mov      	r4, r0
  32:	e9000027 	bez      	r0, 0x80	// 80 <ieee80211_mactbl_update+0x80>
  36:	3206      	movi      	r2, 6
  38:	6c5f      	mov      	r1, r7
  3a:	2019      	addi      	r0, 26
  3c:	e0000000 	bsr      	0x0	// 0 <memcpy>
  40:	d8661044 	ld.h      	r3, (r6, 0x88)
  44:	2300      	addi      	r3, 1
  46:	dc661044 	st.h      	r3, (r6, 0x88)
  4a:	e0000000 	bsr      	0x0	// 0 <os_jiffies>
  4e:	8c6c      	ld.h      	r3, (r4, 0x18)
  50:	6d4c      	or      	r5, r3
  52:	acac      	st.h      	r5, (r4, 0x18)
  54:	84bf      	ld.b      	r5, (r4, 0x1f)
  56:	e4a5200f 	andi      	r5, r5, 15
  5a:	5de2      	addi      	r7, r5, 1
  5c:	45a3      	lsli      	r5, r5, 3
  5e:	6158      	addu      	r5, r6
  60:	b404      	st.w      	r0, (r4, 0x10)
  62:	b425      	st.w      	r1, (r4, 0x14)
  64:	dd042002 	st.w      	r8, (r4, 0x8)
  68:	dd242003 	st.w      	r9, (r4, 0xc)
  6c:	6c13      	mov      	r0, r4
  6e:	e0000000 	bsr      	0x0	// 0 <ieee80211_mactbl_update>
  72:	47e3      	lsli      	r7, r7, 3
  74:	9562      	ld.w      	r3, (r5, 0x8)
  76:	61d8      	addu      	r7, r6
  78:	b381      	st.w      	r4, (r3, 0x4)
  7a:	b460      	st.w      	r3, (r4, 0x0)
  7c:	b4e1      	st.w      	r7, (r4, 0x4)
  7e:	b582      	st.w      	r4, (r5, 0x8)
  80:	6c1b      	mov      	r0, r6
  82:	e0000000 	bsr      	0x0	// 0 <os_mutex_unlock>
  86:	1496      	pop      	r4-r9, r15

Disassembly of section .text.ieee80211_mactbl_find:

00000000 <ieee80211_mactbl_find>:
   0:	14d2      	push      	r4-r5, r15
   2:	1421      	subi      	r14, r14, 4
   4:	6d43      	mov      	r5, r0
   6:	6d07      	mov      	r4, r1
   8:	b840      	st.w      	r2, (r14, 0x0)
   a:	e901000f 	bez      	r1, 0x28	// 28 <ieee80211_mactbl_find+0x28>
   e:	3100      	movi      	r1, 0
  10:	2900      	subi      	r1, 1
  12:	e0000000 	bsr      	0x0	// 0 <os_mutex_lock>
  16:	6c53      	mov      	r1, r4
  18:	9840      	ld.w      	r2, (r14, 0x0)
  1a:	6c17      	mov      	r0, r5
  1c:	e0000000 	bsr      	0x0	// 0 <ieee80211_mactbl_find>
  20:	6d03      	mov      	r4, r0
  22:	6c17      	mov      	r0, r5
  24:	e0000000 	bsr      	0x0	// 0 <os_mutex_unlock>
  28:	6c13      	mov      	r0, r4
  2a:	1401      	addi      	r14, r14, 4
  2c:	1492      	pop      	r4-r5, r15

Disassembly of section .text.ieee80211_mactbl_delete:

00000000 <ieee80211_mactbl_delete>:
   0:	14d2      	push      	r4-r5, r15
   2:	1421      	subi      	r14, r14, 4
   4:	6d03      	mov      	r4, r0
   6:	6d47      	mov      	r5, r1
   8:	b840      	st.w      	r2, (r14, 0x0)
   a:	e901001b 	bez      	r1, 0x40	// 40 <ieee80211_mactbl_delete+0x40>
   e:	3100      	movi      	r1, 0
  10:	2900      	subi      	r1, 1
  12:	e0000000 	bsr      	0x0	// 0 <os_mutex_lock>
  16:	6c57      	mov      	r1, r5
  18:	9840      	ld.w      	r2, (r14, 0x0)
  1a:	6c13      	mov      	r0, r4
  1c:	e0000000 	bsr      	0x0	// 0 <ieee80211_mactbl_delete>
  20:	6d43      	mov      	r5, r0
  22:	e900000c 	bez      	r0, 0x3a	// 3a <ieee80211_mactbl_delete+0x3a>
  26:	e0000000 	bsr      	0x0	// 0 <ieee80211_mactbl_delete>
  2a:	6c17      	mov      	r0, r5
  2c:	e0000000 	bsr      	0x0	// 0 <_os_free>
  30:	d8641044 	ld.h      	r3, (r4, 0x88)
  34:	2b00      	subi      	r3, 1
  36:	dc641044 	st.h      	r3, (r4, 0x88)
  3a:	6c13      	mov      	r0, r4
  3c:	e0000000 	bsr      	0x0	// 0 <os_mutex_unlock>
  40:	1401      	addi      	r14, r14, 4
  42:	1492      	pop      	r4-r5, r15

Disassembly of section .text.ieee80211_mactbl_dump:

00000000 <ieee80211_mactbl_dump>:
   0:	14d8      	push      	r4-r11, r15
   2:	3a0e      	cmphsi      	r2, 15
   4:	6e03      	mov      	r8, r0
   6:	6ec7      	mov      	r11, r1
   8:	6e4b      	mov      	r9, r2
   a:	0c3d      	bf      	0x84	// 84 <ieee80211_mactbl_dump+0x84>
   c:	3100      	movi      	r1, 0
   e:	2900      	subi      	r1, 1
  10:	e0000000 	bsr      	0x0	// 0 <os_mutex_lock>
  14:	e4e80007 	addi      	r7, r8, 8
  18:	e5480087 	addi      	r10, r8, 136
  1c:	3500      	movi      	r5, 0
  1e:	e465000e 	addi      	r3, r5, 15
  22:	64e4      	cmphs      	r9, r3
  24:	0c0b      	bf      	0x3a	// 3a <ieee80211_mactbl_dump+0x3a>
  26:	9780      	ld.w      	r4, (r7, 0x0)
  28:	651e      	cmpne      	r7, r4
  2a:	0c05      	bf      	0x34	// 34 <ieee80211_mactbl_dump+0x34>
  2c:	c4ab0026 	addu      	r6, r11, r5
  30:	65d2      	cmpne      	r4, r7
  32:	0809      	bt      	0x44	// 44 <ieee80211_mactbl_dump+0x44>
  34:	2707      	addi      	r7, 8
  36:	669e      	cmpne      	r7, r10
  38:	0bf3      	bt      	0x1e	// 1e <ieee80211_mactbl_dump+0x1e>
  3a:	6c23      	mov      	r0, r8
  3c:	e0000000 	bsr      	0x0	// 0 <os_mutex_unlock>
  40:	6c17      	mov      	r0, r5
  42:	1498      	pop      	r4-r11, r15
  44:	3206      	movi      	r2, 6
  46:	e4240019 	addi      	r1, r4, 26
  4a:	6c1b      	mov      	r0, r6
  4c:	e0000000 	bsr      	0x0	// 0 <memcpy>
  50:	9462      	ld.w      	r3, (r4, 0x8)
  52:	5e1a      	addi      	r0, r6, 7
  54:	8364      	ld.b      	r3, (r3, 0x4)
  56:	a666      	st.b      	r3, (r6, 0x6)
  58:	9423      	ld.w      	r1, (r4, 0xc)
  5a:	3206      	movi      	r2, 6
  5c:	e9010011 	bez      	r1, 0x7e	// 7e <ieee80211_mactbl_dump+0x7e>
  60:	211b      	addi      	r1, 28
  62:	e0000000 	bsr      	0x0	// 0 <memcpy>
  66:	8c6c      	ld.h      	r3, (r4, 0x18)
  68:	a66d      	st.b      	r3, (r6, 0xd)
  6a:	250e      	addi      	r5, 15
  6c:	4b68      	lsri      	r3, r3, 8
  6e:	a66e      	st.b      	r3, (r6, 0xe)
  70:	e465000e 	addi      	r3, r5, 15
  74:	64e4      	cmphs      	r9, r3
  76:	260e      	addi      	r6, 15
  78:	0fde      	bf      	0x34	// 34 <ieee80211_mactbl_dump+0x34>
  7a:	9480      	ld.w      	r4, (r4, 0x0)
  7c:	07da      	br      	0x30	// 30 <ieee80211_mactbl_dump+0x30>
  7e:	e0000000 	bsr      	0x0	// 0 <memset>
  82:	07f2      	br      	0x66	// 66 <ieee80211_mactbl_dump+0x66>
  84:	3500      	movi      	r5, 0
  86:	07dd      	br      	0x40	// 40 <ieee80211_mactbl_dump+0x40>

Disassembly of section .text.ieee80211_mactbl_release:

00000000 <ieee80211_mactbl_release>:
   0:	14d7      	push      	r4-r10, r15
   2:	6e07      	mov      	r8, r1
   4:	3100      	movi      	r1, 0
   6:	6d83      	mov      	r6, r0
   8:	2900      	subi      	r1, 1
   a:	6e4b      	mov      	r9, r2
   c:	5ebe      	addi      	r5, r6, 8
   e:	e0000000 	bsr      	0x0	// 0 <os_mutex_lock>
  12:	e5460087 	addi      	r10, r6, 136
  16:	9580      	ld.w      	r4, (r5, 0x0)
  18:	6516      	cmpne      	r5, r4
  1a:	0808      	bt      	0x2a	// 2a <ieee80211_mactbl_release+0x2a>
  1c:	2507      	addi      	r5, 8
  1e:	6696      	cmpne      	r5, r10
  20:	0bfb      	bt      	0x16	// 16 <ieee80211_mactbl_release+0x16>
  22:	6c1b      	mov      	r0, r6
  24:	e0000000 	bsr      	0x0	// 0 <os_mutex_unlock>
  28:	1497      	pop      	r4-r10, r15
  2a:	94e0      	ld.w      	r7, (r4, 0x0)
  2c:	6552      	cmpne      	r4, r5
  2e:	0ff7      	bf      	0x1c	// 1c <ieee80211_mactbl_release+0x1c>
  30:	e9080005 	bez      	r8, 0x3a	// 3a <ieee80211_mactbl_release+0x3a>
  34:	9462      	ld.w      	r3, (r4, 0x8)
  36:	64e2      	cmpne      	r8, r3
  38:	0c06      	bf      	0x44	// 44 <ieee80211_mactbl_release+0x44>
  3a:	e9090010 	bez      	r9, 0x5a	// 5a <ieee80211_mactbl_release+0x5a>
  3e:	9463      	ld.w      	r3, (r4, 0xc)
  40:	64e6      	cmpne      	r9, r3
  42:	080c      	bt      	0x5a	// 5a <ieee80211_mactbl_release+0x5a>
  44:	6c13      	mov      	r0, r4
  46:	e0000000 	bsr      	0x0	// 0 <ieee80211_mactbl_release>
  4a:	6c13      	mov      	r0, r4
  4c:	e0000000 	bsr      	0x0	// 0 <_os_free>
  50:	d8661044 	ld.h      	r3, (r6, 0x88)
  54:	2b00      	subi      	r3, 1
  56:	dc661044 	st.h      	r3, (r6, 0x88)
  5a:	6d1f      	mov      	r4, r7
  5c:	97e0      	ld.w      	r7, (r7, 0x0)
  5e:	07e7      	br      	0x2c	// 2c <ieee80211_mactbl_release+0x2c>

Disassembly of section .text.ieee80211_mactbl_init:

00000000 <ieee80211_mactbl_init>:
   0:	14d1      	push      	r4, r15
   2:	3920      	cmplti      	r1, 1
   4:	3380      	movi      	r3, 128
   6:	c4230c40 	inct      	r1, r3, 0
   a:	6d03      	mov      	r4, r0
   c:	dc402023 	st.w      	r2, (r0, 0x8c)
  10:	dc201045 	st.h      	r1, (r0, 0x8a)
  14:	e0000000 	bsr      	0x0	// 0 <os_mutex_init>
  18:	5c7e      	addi      	r3, r4, 8
  1a:	2487      	addi      	r4, 136
  1c:	b360      	st.w      	r3, (r3, 0x0)
  1e:	b361      	st.w      	r3, (r3, 0x4)
  20:	2307      	addi      	r3, 8
  22:	650e      	cmpne      	r3, r4
  24:	0bfc      	bt      	0x1c	// 1c <ieee80211_mactbl_init+0x1c>
  26:	3000      	movi      	r0, 0
  28:	1491      	pop      	r4, r15
