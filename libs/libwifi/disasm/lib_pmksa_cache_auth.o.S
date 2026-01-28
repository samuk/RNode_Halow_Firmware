
libwifi/o/lib_pmksa_cache_auth.o:     file format elf32-csky-little


Disassembly of section .text.pmksa_cache_set_expiration:

00000000 <pmksa_cache_set_expiration>:
   0:	14d1      	push      	r4, r15
   2:	1423      	subi      	r14, r14, 12
   4:	6d03      	mov      	r4, r0
   6:	6c43      	mov      	r1, r0
   8:	3200      	movi      	r2, 0
   a:	100d      	lrw      	r0, 0x0	// 3c <pmksa_cache_set_expiration+0x3c>
   c:	e0000000 	bsr      	0x0	// 0 <eloop_cancel_timeout>
  10:	9470      	ld.w      	r3, (r4, 0x40)
  12:	e9030013 	bez      	r3, 0x38	// 38 <pmksa_cache_set_expiration+0x38>
  16:	1801      	addi      	r0, r14, 4
  18:	e0000000 	bsr      	0x0	// 0 <os_systime>
  1c:	9470      	ld.w      	r3, (r4, 0x40)
  1e:	3100      	movi      	r1, 0
  20:	9317      	ld.w      	r0, (r3, 0x5c)
  22:	9861      	ld.w      	r3, (r14, 0x4)
  24:	600e      	subu      	r0, r3
  26:	38df      	btsti      	r0, 31
  28:	c4010c40 	inct      	r0, r1, 0
  2c:	b820      	st.w      	r1, (r14, 0x0)
  2e:	6cd3      	mov      	r3, r4
  30:	1043      	lrw      	r2, 0x0	// 3c <pmksa_cache_set_expiration+0x3c>
  32:	2000      	addi      	r0, 1
  34:	e0000000 	bsr      	0x0	// 0 <eloop_register_timeout>
  38:	1403      	addi      	r14, r14, 12
  3a:	1491      	pop      	r4, r15
  3c:	00000000 	.long	0x00000000

Disassembly of section .text.pmksa_cache_link_entry:

00000000 <pmksa_cache_link_entry>:
   0:	14d1      	push      	r4, r15
   2:	d9802010 	ld.w      	r12, (r0, 0x40)
   6:	6cf3      	mov      	r3, r12
   8:	3200      	movi      	r2, 0
   a:	e9030007 	bez      	r3, 0x18	// 18 <pmksa_cache_link_entry+0x18>
   e:	d9a12017 	ld.w      	r13, (r1, 0x5c)
  12:	9397      	ld.w      	r4, (r3, 0x5c)
  14:	6534      	cmphs      	r13, r4
  16:	0818      	bt      	0x46	// 46 <pmksa_cache_link_entry+0x46>
  18:	e922001a 	bnez      	r2, 0x4c	// 4c <pmksa_cache_link_entry+0x4c>
  1c:	dd812000 	st.w      	r12, (r1, 0x0)
  20:	b030      	st.w      	r1, (r0, 0x40)
  22:	8168      	ld.b      	r3, (r1, 0x8)
  24:	e463200f 	andi      	r3, r3, 15
  28:	4362      	lsli      	r3, r3, 2
  2a:	60c0      	addu      	r3, r0
  2c:	d9832000 	ld.w      	r12, (r3, 0x0)
  30:	dd812001 	st.w      	r12, (r1, 0x4)
  34:	b320      	st.w      	r1, (r3, 0x0)
  36:	9071      	ld.w      	r3, (r0, 0x44)
  38:	2300      	addi      	r3, 1
  3a:	b071      	st.w      	r3, (r0, 0x44)
  3c:	e9220004 	bnez      	r2, 0x44	// 44 <pmksa_cache_link_entry+0x44>
  40:	e0000000 	bsr      	0x0	// 0 <pmksa_cache_link_entry>
  44:	1491      	pop      	r4, r15
  46:	6c8f      	mov      	r2, r3
  48:	9360      	ld.w      	r3, (r3, 0x0)
  4a:	07e0      	br      	0xa	// a <pmksa_cache_link_entry+0xa>
  4c:	9260      	ld.w      	r3, (r2, 0x0)
  4e:	b160      	st.w      	r3, (r1, 0x0)
  50:	b220      	st.w      	r1, (r2, 0x0)
  52:	07e8      	br      	0x22	// 22 <pmksa_cache_link_entry+0x22>

Disassembly of section .text.pmksa_cache_auth_get.part.3:

00000000 <pmksa_cache_auth_get.part.3>:
   0:	14d2      	push      	r4-r5, r15
   2:	6d47      	mov      	r5, r1
   4:	9090      	ld.w      	r4, (r0, 0x40)
   6:	e9240004 	bnez      	r4, 0xe	// e <pmksa_cache_auth_get.part.3+0xe>
   a:	6c13      	mov      	r0, r4
   c:	1492      	pop      	r4-r5, r15
   e:	e905fffe 	bez      	r5, 0xa	// a <pmksa_cache_auth_get.part.3+0xa>
  12:	3206      	movi      	r2, 6
  14:	6c57      	mov      	r1, r5
  16:	e4040063 	addi      	r0, r4, 100
  1a:	e0000000 	bsr      	0x0	// 0 <memcmp>
  1e:	e900fff6 	bez      	r0, 0xa	// a <pmksa_cache_auth_get.part.3+0xa>
  22:	9480      	ld.w      	r4, (r4, 0x0)
  24:	07f1      	br      	0x6	// 6 <pmksa_cache_auth_get.part.3+0x6>

Disassembly of section .text.pmksa_cache_free_entry:

00000000 <pmksa_cache_free_entry>:
   0:	14d2      	push      	r4-r5, r15
   2:	9071      	ld.w      	r3, (r0, 0x44)
   4:	6d07      	mov      	r4, r1
   6:	2b00      	subi      	r3, 1
   8:	b071      	st.w      	r3, (r0, 0x44)
   a:	9033      	ld.w      	r1, (r0, 0x4c)
   c:	9072      	ld.w      	r3, (r0, 0x48)
   e:	6d43      	mov      	r5, r0
  10:	6c13      	mov      	r0, r4
  12:	7bcd      	jsr      	r3
  14:	8468      	ld.b      	r3, (r4, 0x8)
  16:	e463200f 	andi      	r3, r3, 15
  1a:	4362      	lsli      	r3, r3, 2
  1c:	60d4      	addu      	r3, r5
  1e:	3100      	movi      	r1, 0
  20:	9340      	ld.w      	r2, (r3, 0x0)
  22:	e9020008 	bez      	r2, 0x32	// 32 <pmksa_cache_free_entry+0x32>
  26:	650a      	cmpne      	r2, r4
  28:	081d      	bt      	0x62	// 62 <pmksa_cache_free_entry+0x62>
  2a:	9441      	ld.w      	r2, (r4, 0x4)
  2c:	e9010019 	bez      	r1, 0x5e	// 5e <pmksa_cache_free_entry+0x5e>
  30:	b141      	st.w      	r2, (r1, 0x4)
  32:	9570      	ld.w      	r3, (r5, 0x40)
  34:	3200      	movi      	r2, 0
  36:	e9030008 	bez      	r3, 0x46	// 46 <pmksa_cache_free_entry+0x46>
  3a:	650e      	cmpne      	r3, r4
  3c:	0818      	bt      	0x6c	// 6c <pmksa_cache_free_entry+0x6c>
  3e:	9460      	ld.w      	r3, (r4, 0x0)
  40:	e9020014 	bez      	r2, 0x68	// 68 <pmksa_cache_free_entry+0x68>
  44:	b260      	st.w      	r3, (r2, 0x0)
  46:	941b      	ld.w      	r0, (r4, 0x6c)
  48:	e0000000 	bsr      	0x0	// 0 <_os_free>
  4c:	3300      	movi      	r3, 0
  4e:	b47b      	st.w      	r3, (r4, 0x6c)
  50:	941d      	ld.w      	r0, (r4, 0x74)
  52:	e0000000 	bsr      	0x0	// 0 <wpabuf_free>
  56:	6c13      	mov      	r0, r4
  58:	e0000000 	bsr      	0x0	// 0 <_os_free>
  5c:	1492      	pop      	r4-r5, r15
  5e:	b340      	st.w      	r2, (r3, 0x0)
  60:	07e9      	br      	0x32	// 32 <pmksa_cache_free_entry+0x32>
  62:	6c4b      	mov      	r1, r2
  64:	9241      	ld.w      	r2, (r2, 0x4)
  66:	07de      	br      	0x22	// 22 <pmksa_cache_free_entry+0x22>
  68:	b570      	st.w      	r3, (r5, 0x40)
  6a:	07ee      	br      	0x46	// 46 <pmksa_cache_free_entry+0x46>
  6c:	6c8f      	mov      	r2, r3
  6e:	9360      	ld.w      	r3, (r3, 0x0)
  70:	07e3      	br      	0x36	// 36 <pmksa_cache_free_entry+0x36>

Disassembly of section .text.pmksa_cache_expire:

00000000 <pmksa_cache_expire>:
   0:	14d1      	push      	r4, r15
   2:	1422      	subi      	r14, r14, 8
   4:	6d03      	mov      	r4, r0
   6:	6c3b      	mov      	r0, r14
   8:	e0000000 	bsr      	0x0	// 0 <os_systime>
   c:	9430      	ld.w      	r1, (r4, 0x40)
   e:	6c13      	mov      	r0, r4
  10:	e9010006 	bez      	r1, 0x1c	// 1c <pmksa_cache_expire+0x1c>
  14:	9157      	ld.w      	r2, (r1, 0x5c)
  16:	9860      	ld.w      	r3, (r14, 0x0)
  18:	648c      	cmphs      	r3, r2
  1a:	0805      	bt      	0x24	// 24 <pmksa_cache_expire+0x24>
  1c:	e0000000 	bsr      	0x0	// 0 <pmksa_cache_expire>
  20:	1402      	addi      	r14, r14, 8
  22:	1491      	pop      	r4, r15
  24:	e0000000 	bsr      	0x0	// 0 <pmksa_cache_expire>
  28:	07f2      	br      	0xc	// c <pmksa_cache_expire+0xc>

Disassembly of section .text.pmksa_cache_auth_flush:

00000000 <pmksa_cache_auth_flush>:
   0:	14d1      	push      	r4, r15
   2:	6d03      	mov      	r4, r0
   4:	9430      	ld.w      	r1, (r4, 0x40)
   6:	e9210003 	bnez      	r1, 0xc	// c <pmksa_cache_auth_flush+0xc>
   a:	1491      	pop      	r4, r15
   c:	6c13      	mov      	r0, r4
   e:	e0000000 	bsr      	0x0	// 0 <pmksa_cache_auth_flush>
  12:	07f9      	br      	0x4	// 4 <pmksa_cache_auth_flush+0x4>

Disassembly of section .text.pmksa_cache_auth_create_entry:

00000000 <pmksa_cache_auth_create_entry>:
   0:	14d7      	push      	r4-r10, r15
   2:	1426      	subi      	r14, r14, 24
   4:	6e8b      	mov      	r10, r2
   6:	eb010040 	cmphsi      	r1, 65
   a:	984f      	ld.w      	r2, (r14, 0x3c)
   c:	b843      	st.w      	r2, (r14, 0xc)
   e:	9850      	ld.w      	r2, (r14, 0x40)
  10:	6e03      	mov      	r8, r0
  12:	6dc7      	mov      	r7, r1
  14:	b842      	st.w      	r2, (r14, 0x8)
  16:	98d1      	ld.w      	r6, (r14, 0x44)
  18:	98b3      	ld.w      	r5, (r14, 0x4c)
  1a:	0c05      	bf      	0x24	// 24 <pmksa_cache_auth_create_entry+0x24>
  1c:	3400      	movi      	r4, 0
  1e:	6c13      	mov      	r0, r4
  20:	1406      	addi      	r14, r14, 24
  22:	1497      	pop      	r4-r10, r15
  24:	32c0      	movi      	r2, 192
  26:	424a      	lsli      	r2, r2, 10
  28:	c4452029 	and      	r9, r5, r2
  2c:	e9090004 	bez      	r9, 0x34	// 34 <pmksa_cache_auth_create_entry+0x34>
  30:	e903fff6 	bez      	r3, 0x1c	// 1c <pmksa_cache_auth_create_entry+0x1c>
  34:	3088      	movi      	r0, 136
  36:	e0000000 	bsr      	0x0	// 0 <_os_zalloc>
  3a:	6d03      	mov      	r4, r0
  3c:	e900fff0 	bez      	r0, 0x1c	// 1c <pmksa_cache_auth_create_entry+0x1c>
  40:	6c9f      	mov      	r2, r7
  42:	6c63      	mov      	r1, r8
  44:	2017      	addi      	r0, 24
  46:	e0000000 	bsr      	0x0	// 0 <memcpy>
  4a:	b4f6      	st.w      	r7, (r4, 0x58)
  4c:	e90a0018 	bez      	r10, 0x7c	// 7c <pmksa_cache_auth_create_entry+0x7c>
  50:	3210      	movi      	r2, 16
  52:	6c6b      	mov      	r1, r10
  54:	5c1e      	addi      	r0, r4, 8
  56:	e0000000 	bsr      	0x0	// 0 <memcpy>
  5a:	1804      	addi      	r0, r14, 16
  5c:	e0000000 	bsr      	0x0	// 0 <os_systime>
  60:	9864      	ld.w      	r3, (r14, 0x10)
  62:	b477      	st.w      	r3, (r4, 0x5c)
  64:	e966001c 	blsz      	r6, 0x9c	// 9c <pmksa_cache_auth_create_entry+0x9c>
  68:	60d8      	addu      	r3, r6
  6a:	b477      	st.w      	r3, (r4, 0x5c)
  6c:	b4b8      	st.w      	r5, (r4, 0x60)
  6e:	3206      	movi      	r2, 6
  70:	9822      	ld.w      	r1, (r14, 0x8)
  72:	e4040063 	addi      	r0, r4, 100
  76:	e0000000 	bsr      	0x0	// 0 <memcpy>
  7a:	07d2      	br      	0x1e	// 1e <pmksa_cache_auth_create_entry+0x1e>
  7c:	3380      	movi      	r3, 128
  7e:	436a      	lsli      	r3, r3, 10
  80:	64d6      	cmpne      	r5, r3
  82:	0fec      	bf      	0x5a	// 5a <pmksa_cache_auth_create_entry+0x5a>
  84:	e929ffeb 	bnez      	r9, 0x5a	// 5a <pmksa_cache_auth_create_entry+0x5a>
  88:	5c7e      	addi      	r3, r4, 8
  8a:	b860      	st.w      	r3, (r14, 0x0)
  8c:	b8a1      	st.w      	r5, (r14, 0x4)
  8e:	9862      	ld.w      	r3, (r14, 0x8)
  90:	9843      	ld.w      	r2, (r14, 0xc)
  92:	6c5f      	mov      	r1, r7
  94:	6c23      	mov      	r0, r8
  96:	e0000000 	bsr      	0x0	// 0 <rsn_pmkid>
  9a:	07e0      	br      	0x5a	// 5a <pmksa_cache_auth_create_entry+0x5a>
  9c:	ea02a8c0 	movi      	r2, 43200
  a0:	60c8      	addu      	r3, r2
  a2:	07e4      	br      	0x6a	// 6a <pmksa_cache_auth_create_entry+0x6a>

Disassembly of section .text.pmksa_cache_auth_add_entry:

00000000 <pmksa_cache_auth_add_entry>:
   0:	14d2      	push      	r4-r5, r15
   2:	6d03      	mov      	r4, r0
   4:	6d47      	mov      	r5, r1
   6:	e901001b 	bez      	r1, 0x3c	// 3c <pmksa_cache_auth_add_entry+0x3c>
   a:	2163      	addi      	r1, 100
   c:	e0000000 	bsr      	0x0	// 0 <pmksa_cache_auth_add_entry>
  10:	6c43      	mov      	r1, r0
  12:	e9000005 	bez      	r0, 0x1c	// 1c <pmksa_cache_auth_add_entry+0x1c>
  16:	6c13      	mov      	r0, r4
  18:	e0000000 	bsr      	0x0	// 0 <pmksa_cache_auth_add_entry>
  1c:	9471      	ld.w      	r3, (r4, 0x44)
  1e:	eb23003f 	cmplti      	r3, 64
  22:	0807      	bt      	0x30	// 30 <pmksa_cache_auth_add_entry+0x30>
  24:	9430      	ld.w      	r1, (r4, 0x40)
  26:	e9010005 	bez      	r1, 0x30	// 30 <pmksa_cache_auth_add_entry+0x30>
  2a:	6c13      	mov      	r0, r4
  2c:	e0000000 	bsr      	0x0	// 0 <pmksa_cache_auth_add_entry>
  30:	6c13      	mov      	r0, r4
  32:	6c57      	mov      	r1, r5
  34:	e0000000 	bsr      	0x0	// 0 <pmksa_cache_auth_add_entry>
  38:	3000      	movi      	r0, 0
  3a:	1492      	pop      	r4-r5, r15
  3c:	3000      	movi      	r0, 0
  3e:	2800      	subi      	r0, 1
  40:	07fd      	br      	0x3a	// 3a <pmksa_cache_auth_add_entry+0x3a>

Disassembly of section .text.pmksa_cache_auth_add:

00000000 <pmksa_cache_auth_add>:
   0:	14d4      	push      	r4-r7, r15
   2:	1427      	subi      	r14, r14, 28
   4:	98d1      	ld.w      	r6, (r14, 0x44)
   6:	6d43      	mov      	r5, r0
   8:	6c07      	mov      	r0, r1
   a:	6c4b      	mov      	r1, r2
   c:	6c8f      	mov      	r2, r3
   e:	986c      	ld.w      	r3, (r14, 0x30)
  10:	b866      	st.w      	r3, (r14, 0x18)
  12:	d98e200e 	ld.w      	r12, (r14, 0x38)
  16:	986d      	ld.w      	r3, (r14, 0x34)
  18:	d9ae200f 	ld.w      	r13, (r14, 0x3c)
  1c:	9890      	ld.w      	r4, (r14, 0x40)
  1e:	6ddb      	mov      	r7, r6
  20:	98d2      	ld.w      	r6, (r14, 0x48)
  22:	b8c5      	st.w      	r6, (r14, 0x14)
  24:	b883      	st.w      	r4, (r14, 0xc)
  26:	ddae2002 	st.w      	r13, (r14, 0x8)
  2a:	dd8e2001 	st.w      	r12, (r14, 0x4)
  2e:	b860      	st.w      	r3, (r14, 0x0)
  30:	b8e4      	st.w      	r7, (r14, 0x10)
  32:	9866      	ld.w      	r3, (r14, 0x18)
  34:	e0000000 	bsr      	0x0	// 0 <pmksa_cache_auth_add>
  38:	6c43      	mov      	r1, r0
  3a:	6d03      	mov      	r4, r0
  3c:	6c17      	mov      	r0, r5
  3e:	e0000000 	bsr      	0x0	// 0 <pmksa_cache_auth_add>
  42:	38df      	btsti      	r0, 31
  44:	3300      	movi      	r3, 0
  46:	c4830c40 	inct      	r4, r3, 0
  4a:	6c13      	mov      	r0, r4
  4c:	6d9f      	mov      	r6, r7
  4e:	1407      	addi      	r14, r14, 28
  50:	1494      	pop      	r4-r7, r15

Disassembly of section .text.pmksa_cache_add_okc:

00000000 <pmksa_cache_add_okc>:
   0:	14d4      	push      	r4-r7, r15
   2:	6d83      	mov      	r6, r0
   4:	3088      	movi      	r0, 136
   6:	6d47      	mov      	r5, r1
   8:	6dcf      	mov      	r7, r3
   a:	e0000000 	bsr      	0x0	// 0 <_os_zalloc>
   e:	6d03      	mov      	r4, r0
  10:	e900003c 	bez      	r0, 0x88	// 88 <pmksa_cache_add_okc+0x88>
  14:	3210      	movi      	r2, 16
  16:	6c5f      	mov      	r1, r7
  18:	2007      	addi      	r0, 8
  1a:	e0000000 	bsr      	0x0	// 0 <memcpy>
  1e:	9556      	ld.w      	r2, (r5, 0x58)
  20:	e4250017 	addi      	r1, r5, 24
  24:	e4040017 	addi      	r0, r4, 24
  28:	e0000000 	bsr      	0x0	// 0 <memcpy>
  2c:	9576      	ld.w      	r3, (r5, 0x58)
  2e:	b476      	st.w      	r3, (r4, 0x58)
  30:	9577      	ld.w      	r3, (r5, 0x5c)
  32:	b477      	st.w      	r3, (r4, 0x5c)
  34:	9578      	ld.w      	r3, (r5, 0x60)
  36:	b478      	st.w      	r3, (r4, 0x60)
  38:	3206      	movi      	r2, 6
  3a:	e4250063 	addi      	r1, r5, 100
  3e:	e4040063 	addi      	r0, r4, 100
  42:	e0000000 	bsr      	0x0	// 0 <memcpy>
  46:	3301      	movi      	r3, 1
  48:	b47f      	st.w      	r3, (r4, 0x7c)
  4a:	957b      	ld.w      	r3, (r5, 0x6c)
  4c:	e903000e 	bez      	r3, 0x68	// 68 <pmksa_cache_add_okc+0x68>
  50:	951c      	ld.w      	r0, (r5, 0x70)
  52:	e0000000 	bsr      	0x0	// 0 <_os_malloc>
  56:	b41b      	st.w      	r0, (r4, 0x6c)
  58:	e9000008 	bez      	r0, 0x68	// 68 <pmksa_cache_add_okc+0x68>
  5c:	957c      	ld.w      	r3, (r5, 0x70)
  5e:	b47c      	st.w      	r3, (r4, 0x70)
  60:	955c      	ld.w      	r2, (r5, 0x70)
  62:	953b      	ld.w      	r1, (r5, 0x6c)
  64:	e0000000 	bsr      	0x0	// 0 <memcpy>
  68:	951d      	ld.w      	r0, (r5, 0x74)
  6a:	e9000005 	bez      	r0, 0x74	// 74 <pmksa_cache_add_okc+0x74>
  6e:	e0000000 	bsr      	0x0	// 0 <wpabuf_dup>
  72:	b41d      	st.w      	r0, (r4, 0x74)
  74:	d8650078 	ld.b      	r3, (r5, 0x78)
  78:	dc640078 	st.b      	r3, (r4, 0x78)
  7c:	3301      	movi      	r3, 1
  7e:	b47f      	st.w      	r3, (r4, 0x7c)
  80:	6c53      	mov      	r1, r4
  82:	6c1b      	mov      	r0, r6
  84:	e0000000 	bsr      	0x0	// 0 <pmksa_cache_add_okc>
  88:	6c13      	mov      	r0, r4
  8a:	1494      	pop      	r4-r7, r15

Disassembly of section .text.pmksa_cache_auth_deinit:

00000000 <pmksa_cache_auth_deinit>:
   0:	14d4      	push      	r4-r7, r15
   2:	6d43      	mov      	r5, r0
   4:	e9000016 	bez      	r0, 0x30	// 30 <pmksa_cache_auth_deinit+0x30>
   8:	9090      	ld.w      	r4, (r0, 0x40)
   a:	3600      	movi      	r6, 0
   c:	e9240013 	bnez      	r4, 0x32	// 32 <pmksa_cache_auth_deinit+0x32>
  10:	6c93      	mov      	r2, r4
  12:	6c57      	mov      	r1, r5
  14:	100e      	lrw      	r0, 0x0	// 4c <pmksa_cache_auth_deinit+0x4c>
  16:	e0000000 	bsr      	0x0	// 0 <eloop_cancel_timeout>
  1a:	b591      	st.w      	r4, (r5, 0x44)
  1c:	b590      	st.w      	r4, (r5, 0x40)
  1e:	6cd3      	mov      	r3, r4
  20:	d4850883 	str.w      	r3, (r5, r4 << 2)
  24:	2400      	addi      	r4, 1
  26:	3c50      	cmpnei      	r4, 16
  28:	0bfc      	bt      	0x20	// 20 <pmksa_cache_auth_deinit+0x20>
  2a:	6c17      	mov      	r0, r5
  2c:	e0000000 	bsr      	0x0	// 0 <_os_free>
  30:	1494      	pop      	r4-r7, r15
  32:	941b      	ld.w      	r0, (r4, 0x6c)
  34:	94e0      	ld.w      	r7, (r4, 0x0)
  36:	e0000000 	bsr      	0x0	// 0 <_os_free>
  3a:	941d      	ld.w      	r0, (r4, 0x74)
  3c:	b4db      	st.w      	r6, (r4, 0x6c)
  3e:	e0000000 	bsr      	0x0	// 0 <wpabuf_free>
  42:	6c13      	mov      	r0, r4
  44:	e0000000 	bsr      	0x0	// 0 <_os_free>
  48:	6d1f      	mov      	r4, r7
  4a:	07e1      	br      	0xc	// c <pmksa_cache_auth_deinit+0xc>
  4c:	00000000 	.long	0x00000000

Disassembly of section .text.pmksa_cache_auth_get:

00000000 <pmksa_cache_auth_get>:
   0:	14d3      	push      	r4-r6, r15
   2:	6d87      	mov      	r6, r1
   4:	6d4b      	mov      	r5, r2
   6:	e902001e 	bez      	r2, 0x42	// 42 <pmksa_cache_auth_get+0x42>
   a:	8260      	ld.b      	r3, (r2, 0x0)
   c:	e463200f 	andi      	r3, r3, 15
  10:	d0600884 	ldr.w      	r4, (r0, r3 << 2)
  14:	e9240004 	bnez      	r4, 0x1c	// 1c <pmksa_cache_auth_get+0x1c>
  18:	6c13      	mov      	r0, r4
  1a:	1493      	pop      	r4-r6, r15
  1c:	e906000a 	bez      	r6, 0x30	// 30 <pmksa_cache_auth_get+0x30>
  20:	3206      	movi      	r2, 6
  22:	6c5b      	mov      	r1, r6
  24:	e4040063 	addi      	r0, r4, 100
  28:	e0000000 	bsr      	0x0	// 0 <memcmp>
  2c:	e9200009 	bnez      	r0, 0x3e	// 3e <pmksa_cache_auth_get+0x3e>
  30:	3210      	movi      	r2, 16
  32:	6c57      	mov      	r1, r5
  34:	5c1e      	addi      	r0, r4, 8
  36:	e0000000 	bsr      	0x0	// 0 <memcmp>
  3a:	e900ffef 	bez      	r0, 0x18	// 18 <pmksa_cache_auth_get+0x18>
  3e:	9481      	ld.w      	r4, (r4, 0x4)
  40:	07ea      	br      	0x14	// 14 <pmksa_cache_auth_get+0x14>
  42:	e0000000 	bsr      	0x0	// 0 <pmksa_cache_auth_get>
  46:	6d03      	mov      	r4, r0
  48:	07e8      	br      	0x18	// 18 <pmksa_cache_auth_get+0x18>

Disassembly of section .text.pmksa_cache_get_okc:

00000000 <pmksa_cache_get_okc>:
   0:	14d5      	push      	r4-r8, r15
   2:	1426      	subi      	r14, r14, 24
   4:	6dc7      	mov      	r7, r1
   6:	6d4b      	mov      	r5, r2
   8:	6e0f      	mov      	r8, r3
   a:	9090      	ld.w      	r4, (r0, 0x40)
   c:	1e02      	addi      	r6, r14, 8
   e:	e904001d 	bez      	r4, 0x48	// 48 <pmksa_cache_get_okc+0x48>
  12:	3206      	movi      	r2, 6
  14:	6c57      	mov      	r1, r5
  16:	e4040063 	addi      	r0, r4, 100
  1a:	e0000000 	bsr      	0x0	// 0 <memcmp>
  1e:	e9000004 	bez      	r0, 0x26	// 26 <pmksa_cache_get_okc+0x26>
  22:	9480      	ld.w      	r4, (r4, 0x0)
  24:	07f5      	br      	0xe	// e <pmksa_cache_get_okc+0xe>
  26:	9478      	ld.w      	r3, (r4, 0x60)
  28:	9436      	ld.w      	r1, (r4, 0x58)
  2a:	6c9f      	mov      	r2, r7
  2c:	b861      	st.w      	r3, (r14, 0x4)
  2e:	e4040017 	addi      	r0, r4, 24
  32:	b8c0      	st.w      	r6, (r14, 0x0)
  34:	6cd7      	mov      	r3, r5
  36:	e0000000 	bsr      	0x0	// 0 <rsn_pmkid>
  3a:	3210      	movi      	r2, 16
  3c:	6c63      	mov      	r1, r8
  3e:	6c1b      	mov      	r0, r6
  40:	e0000000 	bsr      	0x0	// 0 <memcmp>
  44:	e920ffef 	bnez      	r0, 0x22	// 22 <pmksa_cache_get_okc+0x22>
  48:	6c13      	mov      	r0, r4
  4a:	1406      	addi      	r14, r14, 24
  4c:	1495      	pop      	r4-r8, r15

Disassembly of section .text.pmksa_cache_auth_init:

00000000 <pmksa_cache_auth_init>:
   0:	14d2      	push      	r4-r5, r15
   2:	6d43      	mov      	r5, r0
   4:	3050      	movi      	r0, 80
   6:	6d07      	mov      	r4, r1
   8:	e0000000 	bsr      	0x0	// 0 <_os_zalloc>
   c:	e9000004 	bez      	r0, 0x14	// 14 <pmksa_cache_auth_init+0x14>
  10:	b0b2      	st.w      	r5, (r0, 0x48)
  12:	b093      	st.w      	r4, (r0, 0x4c)
  14:	1492      	pop      	r4-r5, r15
