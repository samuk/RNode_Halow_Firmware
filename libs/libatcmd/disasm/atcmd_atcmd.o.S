
libatcmd/o/atcmd_atcmd.o:     file format elf32-csky-little


Disassembly of section .text.atcmd_match:

00000000 <atcmd_match>:
   0:	14d3      	push      	r4-r6, r15
   2:	6d47      	mov      	r5, r1
   4:	313d      	movi      	r1, 61
   6:	6d03      	mov      	r4, r0
   8:	6d8b      	mov      	r6, r2
   a:	e0000000 	bsr      	0x0	// 0 <strchr>
   e:	e920000e 	bnez      	r0, 0x2a	// 2a <atcmd_match+0x2a>
  12:	313f      	movi      	r1, 63
  14:	6c13      	mov      	r0, r4
  16:	e0000000 	bsr      	0x0	// 0 <strchr>
  1a:	e9200008 	bnez      	r0, 0x2a	// 2a <atcmd_match+0x2a>
  1e:	3120      	movi      	r1, 32
  20:	6c13      	mov      	r0, r4
  22:	e0000000 	bsr      	0x0	// 0 <strchr>
  26:	e9000003 	bez      	r0, 0x2c	// 2c <atcmd_match+0x2c>
  2a:	58b1      	subu      	r5, r0, r4
  2c:	6c1b      	mov      	r0, r6
  2e:	e0000000 	bsr      	0x0	// 0 <strlen>
  32:	6416      	cmpne      	r5, r0
  34:	080a      	bt      	0x48	// 48 <atcmd_match+0x48>
  36:	6c97      	mov      	r2, r5
  38:	6c5b      	mov      	r1, r6
  3a:	6c13      	mov      	r0, r4
  3c:	e0000000 	bsr      	0x0	// 0 <strncasecmp>
  40:	3840      	cmpnei      	r0, 0
  42:	6403      	mvcv      	r0
  44:	7400      	zextb      	r0, r0
  46:	1493      	pop      	r4-r6, r15
  48:	3000      	movi      	r0, 0
  4a:	07fe      	br      	0x46	// 46 <atcmd_match+0x46>

Disassembly of section .text.atcmd_find:

00000000 <atcmd_find>:
   0:	14d6      	push      	r4-r9, r15
   2:	6e43      	mov      	r9, r0
   4:	6c07      	mov      	r0, r1
   6:	6dc7      	mov      	r7, r1
   8:	6d4b      	mov      	r5, r2
   a:	e0000000 	bsr      	0x0	// 0 <strlen>
   e:	6d83      	mov      	r6, r0
  10:	5e63      	subi      	r3, r6, 1
  12:	d0670022 	ldr.b      	r2, (r7, r3 << 0)
  16:	3a4d      	cmpnei      	r2, 13
  18:	0c15      	bf      	0x42	// 42 <atcmd_find+0x42>
  1a:	3a4a      	cmpnei      	r2, 10
  1c:	0c13      	bf      	0x42	// 42 <atcmd_find+0x42>
  1e:	d8692015 	ld.w      	r3, (r9, 0x54)
  22:	5b9f      	subi      	r4, r3, 8
  24:	e5090053 	addi      	r8, r9, 84
  28:	5c7e      	addi      	r3, r4, 8
  2a:	660e      	cmpne      	r3, r8
  2c:	080d      	bt      	0x46	// 46 <atcmd_find+0x46>
  2e:	ea080000 	movi      	r8, 0
  32:	e9050025 	bez      	r5, 0x7c	// 7c <atcmd_find+0x7c>
  36:	d8692017 	ld.w      	r3, (r9, 0x5c)
  3a:	64e0      	cmphs      	r8, r3
  3c:	0c11      	bf      	0x5e	// 5e <atcmd_find+0x5e>
  3e:	3000      	movi      	r0, 0
  40:	1496      	pop      	r4-r9, r15
  42:	6d8f      	mov      	r6, r3
  44:	07e6      	br      	0x10	// 10 <atcmd_find+0x10>
  46:	9440      	ld.w      	r2, (r4, 0x0)
  48:	6c5b      	mov      	r1, r6
  4a:	6c1f      	mov      	r0, r7
  4c:	e0000000 	bsr      	0x0	// 0 <atcmd_find>
  50:	e9000004 	bez      	r0, 0x58	// 58 <atcmd_find+0x58>
  54:	6c13      	mov      	r0, r4
  56:	07f5      	br      	0x40	// 40 <atcmd_find+0x40>
  58:	9462      	ld.w      	r3, (r4, 0x8)
  5a:	5b9f      	subi      	r4, r3, 8
  5c:	07e6      	br      	0x28	// 28 <atcmd_find+0x28>
  5e:	c4684820 	lsli      	r0, r8, 3
  62:	d8692018 	ld.w      	r3, (r9, 0x60)
  66:	5b80      	addu      	r4, r3, r0
  68:	6c5b      	mov      	r1, r6
  6a:	9440      	ld.w      	r2, (r4, 0x0)
  6c:	6c1f      	mov      	r0, r7
  6e:	e0000000 	bsr      	0x0	// 0 <atcmd_find>
  72:	e920fff1 	bnez      	r0, 0x54	// 54 <atcmd_find+0x54>
  76:	e5080000 	addi      	r8, r8, 1
  7a:	07dc      	br      	0x32	// 32 <atcmd_find+0x32>
  7c:	6c17      	mov      	r0, r5
  7e:	07e1      	br      	0x40	// 40 <atcmd_find+0x40>

Disassembly of section .text.atcmd_super_at_top:

00000000 <atcmd_super_at_top>:
   0:	14d1      	push      	r4, r15
   2:	30f0      	movi      	r0, 240
   4:	4001      	lsli      	r0, r0, 1
   6:	e0000000 	bsr      	0x0	// 0 <_os_malloc>
   a:	6d03      	mov      	r4, r0
   c:	e900000c 	bez      	r0, 0x24	// 24 <atcmd_super_at_top+0x24>
  10:	6c43      	mov      	r1, r0
  12:	3214      	movi      	r2, 20
  14:	3001      	movi      	r0, 1
  16:	e0000000 	bsr      	0x0	// 0 <cpu_loading_print>
  1a:	6c13      	mov      	r0, r4
  1c:	e0000000 	bsr      	0x0	// 0 <_os_free>
  20:	3000      	movi      	r0, 0
  22:	1491      	pop      	r4, r15
  24:	1002      	lrw      	r0, 0x0	// 2c <atcmd_super_at_top+0x2c>
  26:	e0000000 	bsr      	0x0	// 0 <hgprintf>
  2a:	07fb      	br      	0x20	// 20 <atcmd_super_at_top+0x20>
  2c:	00000000 	.long	0x00000000

Disassembly of section .text.atcmd_parse_args:

00000000 <atcmd_parse_args>:
   0:	14d5      	push      	r4-r8, r15
   2:	6d03      	mov      	r4, r0
   4:	e901000f 	bez      	r1, 0x22	// 22 <atcmd_parse_args+0x22>
   8:	6084      	addu      	r2, r1
   a:	8200      	ld.b      	r0, (r2, 0x0)
   c:	eb40003f 	cmpnei      	r0, 63
  10:	080a      	bt      	0x24	// 24 <atcmd_parse_args+0x24>
  12:	d8640044 	ld.b      	r3, (r4, 0x44)
  16:	942e      	ld.w      	r1, (r4, 0x38)
  18:	5b02      	addi      	r0, r3, 1
  1a:	dc040044 	st.b      	r0, (r4, 0x44)
  1e:	d4610882 	str.w      	r2, (r1, r3 << 2)
  22:	1495      	pop      	r4-r8, r15
  24:	eb40003d 	cmpnei      	r0, 61
  28:	0c04      	bf      	0x30	// 30 <atcmd_parse_args+0x30>
  2a:	eb400020 	cmpnei      	r0, 32
  2e:	0802      	bt      	0x32	// 32 <atcmd_parse_args+0x32>
  30:	2200      	addi      	r2, 1
  32:	6f0b      	mov      	r12, r2
  34:	604c      	addu      	r1, r3
  36:	3500      	movi      	r5, 0
  38:	3600      	movi      	r6, 0
  3a:	6470      	cmphs      	r12, r1
  3c:	d8640044 	ld.b      	r3, (r4, 0x44)
  40:	083c      	bt      	0xb8	// b8 <atcmd_parse_args+0xb8>
  42:	d8040047 	ld.b      	r0, (r4, 0x47)
  46:	640c      	cmphs      	r3, r0
  48:	0c0f      	bf      	0x66	// 66 <atcmd_parse_args+0x66>
  4a:	3600      	movi      	r6, 0
  4c:	6e1b      	mov      	r8, r6
  4e:	d8640044 	ld.b      	r3, (r4, 0x44)
  52:	64d9      	cmplt      	r6, r3
  54:	0fe7      	bf      	0x22	// 22 <atcmd_parse_args+0x22>
  56:	946e      	ld.w      	r3, (r4, 0x38)
  58:	d0c30880 	ldr.w      	r0, (r3, r6 << 2)
  5c:	e920003f 	bnez      	r0, 0xda	// da <atcmd_parse_args+0xda>
  60:	2600      	addi      	r6, 1
  62:	759a      	sextb      	r6, r6
  64:	07f5      	br      	0x4e	// 4e <atcmd_parse_args+0x4e>
  66:	d9ac0000 	ld.b      	r13, (r12, 0x0)
  6a:	eb4d005c 	cmpnei      	r13, 92
  6e:	0805      	bt      	0x78	// 78 <atcmd_parse_args+0x78>
  70:	e40c0001 	addi      	r0, r12, 2
  74:	6f03      	mov      	r12, r0
  76:	07e2      	br      	0x3a	// 3a <atcmd_parse_args+0x3a>
  78:	d8640045 	ld.b      	r3, (r4, 0x45)
  7c:	674e      	cmpne      	r3, r13
  7e:	e40c0000 	addi      	r0, r12, 1
  82:	0812      	bt      	0xa6	// a6 <atcmd_parse_args+0xa6>
  84:	dcac0000 	st.b      	r5, (r12, 0x0)
  88:	d8640044 	ld.b      	r3, (r4, 0x44)
  8c:	d984200e 	ld.w      	r12, (r4, 0x38)
  90:	e5a30000 	addi      	r13, r3, 1
  94:	dda40044 	st.b      	r13, (r4, 0x44)
  98:	6440      	cmphs      	r0, r1
  9a:	d46c0882 	str.w      	r2, (r12, r3 << 2)
  9e:	6c9b      	mov      	r2, r6
  a0:	c4400c20 	incf      	r2, r0, 0
  a4:	07e8      	br      	0x74	// 74 <atcmd_parse_args+0x74>
  a6:	eb4d0022 	cmpnei      	r13, 34
  aa:	0be5      	bt      	0x74	// 74 <atcmd_parse_args+0x74>
  ac:	64b2      	cmpne      	r12, r2
  ae:	c4400c20 	incf      	r2, r0, 0
  b2:	dcac0000 	st.b      	r5, (r12, 0x0)
  b6:	07df      	br      	0x74	// 74 <atcmd_parse_args+0x74>
  b8:	e902ffc9 	bez      	r2, 0x4a	// 4a <atcmd_parse_args+0x4a>
  bc:	74cc      	zextb      	r3, r3
  be:	d8240047 	ld.b      	r1, (r4, 0x47)
  c2:	644c      	cmphs      	r3, r1
  c4:	0bc3      	bt      	0x4a	// 4a <atcmd_parse_args+0x4a>
  c6:	8220      	ld.b      	r1, (r2, 0x0)
  c8:	e901ffc1 	bez      	r1, 0x4a	// 4a <atcmd_parse_args+0x4a>
  cc:	942e      	ld.w      	r1, (r4, 0x38)
  ce:	5b02      	addi      	r0, r3, 1
  d0:	dc040044 	st.b      	r0, (r4, 0x44)
  d4:	d4610882 	str.w      	r2, (r1, r3 << 2)
  d8:	07b9      	br      	0x4a	// 4a <atcmd_parse_args+0x4a>
  da:	315c      	movi      	r1, 92
  dc:	e0000000 	bsr      	0x0	// 0 <strchr>
  e0:	6d43      	mov      	r5, r0
  e2:	e900ffbf 	bez      	r0, 0x60	// 60 <atcmd_parse_args+0x60>
  e6:	6c17      	mov      	r0, r5
  e8:	e0000000 	bsr      	0x0	// 0 <strlen>
  ec:	5de2      	addi      	r7, r5, 1
  ee:	5843      	subi      	r2, r0, 1
  f0:	6c5f      	mov      	r1, r7
  f2:	6c17      	mov      	r0, r5
  f4:	e0000000 	bsr      	0x0	// 0 <memmove>
  f8:	6c17      	mov      	r0, r5
  fa:	e0000000 	bsr      	0x0	// 0 <strlen>
  fe:	6014      	addu      	r0, r5
 100:	2800      	subi      	r0, 1
 102:	315c      	movi      	r1, 92
 104:	dd000000 	st.b      	r8, (r0, 0x0)
 108:	6c1f      	mov      	r0, r7
 10a:	07e9      	br      	0xdc	// dc <atcmd_parse_args+0xdc>

Disassembly of section .text.atcmd_work:

00000000 <atcmd_work>:
   0:	14d6      	push      	r4-r9, r15
   2:	e4801013 	subi      	r4, r0, 20
   6:	58ff      	subi      	r7, r0, 8
   8:	ea080000 	movi      	r8, 0
   c:	6c13      	mov      	r0, r4
   e:	e0000000 	bsr      	0x0	// 0 <skb_list_count>
  12:	e9200003 	bnez      	r0, 0x18	// 18 <atcmd_work+0x18>
  16:	1496      	pop      	r4-r9, r15
  18:	6c13      	mov      	r0, r4
  1a:	e0000000 	bsr      	0x0	// 0 <skb_list_dequeue>
  1e:	6d43      	mov      	r5, r0
  20:	e900fff6 	bez      	r0, 0xc	// c <atcmd_work+0xc>
  24:	3100      	movi      	r1, 0
  26:	2900      	subi      	r1, 1
  28:	6c1f      	mov      	r0, r7
  2a:	e0000000 	bsr      	0x0	// 0 <os_mutex_lock>
  2e:	d8440047 	ld.b      	r2, (r4, 0x47)
  32:	4242      	lsli      	r2, r2, 2
  34:	3100      	movi      	r1, 0
  36:	940e      	ld.w      	r0, (r4, 0x38)
  38:	e0000000 	bsr      	0x0	// 0 <memset>
  3c:	94cd      	ld.w      	r6, (r4, 0x34)
  3e:	dd040044 	st.b      	r8, (r4, 0x44)
  42:	e9260038 	bnez      	r6, 0xb2	// b2 <atcmd_work+0xb2>
  46:	9507      	ld.w      	r0, (r5, 0x1c)
  48:	e0000000 	bsr      	0x0	// 0 <strlen>
  4c:	2800      	subi      	r0, 1
  4e:	e9800009 	blz      	r0, 0x60	// 60 <atcmd_work+0x60>
  52:	9567      	ld.w      	r3, (r5, 0x1c)
  54:	60c0      	addu      	r3, r0
  56:	8340      	ld.b      	r2, (r3, 0x0)
  58:	3a4d      	cmpnei      	r2, 13
  5a:	0c28      	bf      	0xaa	// aa <atcmd_work+0xaa>
  5c:	3a4a      	cmpnei      	r2, 10
  5e:	0c26      	bf      	0xaa	// aa <atcmd_work+0xaa>
  60:	d9252007 	ld.w      	r9, (r5, 0x1c)
  64:	3201      	movi      	r2, 1
  66:	6c67      	mov      	r1, r9
  68:	6c13      	mov      	r0, r4
  6a:	e0000000 	bsr      	0x0	// 0 <atcmd_work>
  6e:	6d83      	mov      	r6, r0
  70:	e9000016 	bez      	r0, 0x9c	// 9c <atcmd_work+0x9c>
  74:	9000      	ld.w      	r0, (r0, 0x0)
  76:	e0000000 	bsr      	0x0	// 0 <strlen>
  7a:	6c83      	mov      	r2, r0
  7c:	8d74      	ld.h      	r3, (r5, 0x28)
  7e:	6c67      	mov      	r1, r9
  80:	6c13      	mov      	r0, r4
  82:	e0000000 	bsr      	0x0	// 0 <atcmd_work>
  86:	9661      	ld.w      	r3, (r6, 0x4)
  88:	d8440044 	ld.b      	r2, (r4, 0x44)
  8c:	942e      	ld.w      	r1, (r4, 0x38)
  8e:	9600      	ld.w      	r0, (r6, 0x0)
  90:	7bcd      	jsr      	r3
  92:	3840      	cmpnei      	r0, 0
  94:	3300      	movi      	r3, 0
  96:	c4c30c20 	incf      	r6, r3, 0
  9a:	b4cd      	st.w      	r6, (r4, 0x34)
  9c:	6c1f      	mov      	r0, r7
  9e:	e0000000 	bsr      	0x0	// 0 <os_mutex_unlock>
  a2:	6c17      	mov      	r0, r5
  a4:	e0000000 	bsr      	0x0	// 0 <kfree_skb>
  a8:	07b2      	br      	0xc	// c <atcmd_work+0xc>
  aa:	2800      	subi      	r0, 1
  ac:	dd030000 	st.b      	r8, (r3, 0x0)
  b0:	07cf      	br      	0x4e	// 4e <atcmd_work+0x4e>
  b2:	942e      	ld.w      	r1, (r4, 0x38)
  b4:	9567      	ld.w      	r3, (r5, 0x1c)
  b6:	b160      	st.w      	r3, (r1, 0x0)
  b8:	8d54      	ld.h      	r2, (r5, 0x28)
  ba:	9661      	ld.w      	r3, (r6, 0x4)
  bc:	07e9      	br      	0x8e	// 8e <atcmd_work+0x8e>

Disassembly of section .text.atcmd_super_at_dumpmem:

00000000 <atcmd_super_at_dumpmem>:
   0:	14d3      	push      	r4-r6, r15
   2:	3a42      	cmpnei      	r2, 2
   4:	6d47      	mov      	r5, r1
   6:	0818      	bt      	0x36	// 36 <atcmd_super_at_dumpmem+0x36>
   8:	1010      	lrw      	r0, 0x0	// 48 <atcmd_super_at_dumpmem+0x48>
   a:	e0000000 	bsr      	0x0	// 0 <hgprintf>
   e:	9500      	ld.w      	r0, (r5, 0x0)
  10:	e0000000 	bsr      	0x0	// 0 <os_atoh>
  14:	c4002824 	bclri      	r4, r0, 0
  18:	3c81      	bclri      	r4, 1
  1a:	9501      	ld.w      	r0, (r5, 0x4)
  1c:	e0000000 	bsr      	0x0	// 0 <atoi>
  20:	3880      	bclri      	r0, 0
  22:	3881      	bclri      	r0, 1
  24:	5ca0      	addu      	r5, r4, r0
  26:	e9040005 	bez      	r4, 0x30	// 30 <atcmd_super_at_dumpmem+0x30>
  2a:	10c9      	lrw      	r6, 0x0	// 4c <atcmd_super_at_dumpmem+0x4c>
  2c:	6550      	cmphs      	r4, r5
  2e:	0c06      	bf      	0x3a	// 3a <atcmd_super_at_dumpmem+0x3a>
  30:	1006      	lrw      	r0, 0x0	// 48 <atcmd_super_at_dumpmem+0x48>
  32:	e0000000 	bsr      	0x0	// 0 <hgprintf>
  36:	3000      	movi      	r0, 0
  38:	1493      	pop      	r4-r6, r15
  3a:	9440      	ld.w      	r2, (r4, 0x0)
  3c:	6c53      	mov      	r1, r4
  3e:	6c1b      	mov      	r0, r6
  40:	e0000000 	bsr      	0x0	// 0 <hgprintf>
  44:	2403      	addi      	r4, 4
  46:	07f3      	br      	0x2c	// 2c <atcmd_super_at_dumpmem+0x2c>
	...

Disassembly of section .text.atcmd_super_at_dumptask:

00000000 <atcmd_super_at_dumptask>:
   0:	14d0      	push      	r15
   2:	3a41      	cmpnei      	r2, 1
   4:	0809      	bt      	0x16	// 16 <atcmd_super_at_dumptask+0x16>
   6:	9100      	ld.w      	r0, (r1, 0x0)
   8:	e0000000 	bsr      	0x0	// 0 <os_atoh>
   c:	e9000005 	bez      	r0, 0x16	// 16 <atcmd_super_at_dumptask+0x16>
  10:	3100      	movi      	r1, 0
  12:	e0000000 	bsr      	0x0	// 0 <os_task_dump>
  16:	3000      	movi      	r0, 0
  18:	1490      	pop      	r15

Disassembly of section .text.atcmd_register:

00000000 <atcmd_register>:
   0:	14d5      	push      	r4-r8, r15
   2:	10bf      	lrw      	r5, 0x0	// 7c <atcmd_register+0x7c>
   4:	6dc3      	mov      	r7, r0
   6:	d8650046 	ld.b      	r3, (r5, 0x46)
   a:	6e07      	mov      	r8, r1
   c:	e9030032 	bez      	r3, 0x70	// 70 <atcmd_register+0x70>
  10:	e9000033 	bez      	r0, 0x76	// 76 <atcmd_register+0x76>
  14:	3100      	movi      	r1, 0
  16:	2900      	subi      	r1, 1
  18:	e405000b 	addi      	r0, r5, 12
  1c:	e0000000 	bsr      	0x0	// 0 <os_mutex_lock>
  20:	3200      	movi      	r2, 0
  22:	6c5f      	mov      	r1, r7
  24:	6c17      	mov      	r0, r5
  26:	e0000000 	bsr      	0x0	// 0 <atcmd_register>
  2a:	6d83      	mov      	r6, r0
  2c:	e9000011 	bez      	r0, 0x4e	// 4e <atcmd_register+0x4e>
  30:	b0e0      	st.w      	r7, (r0, 0x0)
  32:	dd002001 	st.w      	r8, (r0, 0x4)
  36:	3400      	movi      	r4, 0
  38:	1012      	lrw      	r0, 0x0	// 80 <atcmd_register+0x80>
  3a:	e0000000 	bsr      	0x0	// 0 <os_mutex_unlock>
  3e:	3000      	movi      	r0, 0
  40:	e9240006 	bnez      	r4, 0x4c	// 4c <atcmd_register+0x4c>
  44:	280b      	subi      	r0, 12
  46:	3e40      	cmpnei      	r6, 0
  48:	c4040c40 	inct      	r0, r4, 0
  4c:	1495      	pop      	r4-r8, r15
  4e:	3010      	movi      	r0, 16
  50:	e0000000 	bsr      	0x0	// 0 <_os_zalloc>
  54:	6d03      	mov      	r4, r0
  56:	e900fff1 	bez      	r0, 0x38	// 38 <atcmd_register+0x38>
  5a:	9555      	ld.w      	r2, (r5, 0x54)
  5c:	587e      	addi      	r3, r0, 8
  5e:	b0e0      	st.w      	r7, (r0, 0x0)
  60:	dd002001 	st.w      	r8, (r0, 0x4)
  64:	b261      	st.w      	r3, (r2, 0x4)
  66:	b042      	st.w      	r2, (r0, 0x8)
  68:	1047      	lrw      	r2, 0x0	// 84 <atcmd_register+0x84>
  6a:	b043      	st.w      	r2, (r0, 0xc)
  6c:	b575      	st.w      	r3, (r5, 0x54)
  6e:	07e5      	br      	0x38	// 38 <atcmd_register+0x38>
  70:	3000      	movi      	r0, 0
  72:	2808      	subi      	r0, 9
  74:	07ec      	br      	0x4c	// 4c <atcmd_register+0x4c>
  76:	3000      	movi      	r0, 0
  78:	2815      	subi      	r0, 22
  7a:	07e9      	br      	0x4c	// 4c <atcmd_register+0x4c>
	...

Disassembly of section .text.atcmd_unregister:

00000000 <atcmd_unregister>:
   0:	14d2      	push      	r4-r5, r15
   2:	1097      	lrw      	r4, 0x0	// 5c <atcmd_unregister+0x5c>
   4:	6d43      	mov      	r5, r0
   6:	d8640046 	ld.b      	r3, (r4, 0x46)
   a:	e9030026 	bez      	r3, 0x56	// 56 <atcmd_unregister+0x56>
   e:	3100      	movi      	r1, 0
  10:	2900      	subi      	r1, 1
  12:	e404000b 	addi      	r0, r4, 12
  16:	e0000000 	bsr      	0x0	// 0 <os_mutex_lock>
  1a:	3200      	movi      	r2, 0
  1c:	6c57      	mov      	r1, r5
  1e:	6c13      	mov      	r0, r4
  20:	e0000000 	bsr      	0x0	// 0 <atcmd_unregister>
  24:	e9000014 	bez      	r0, 0x4c	// 4c <atcmd_unregister+0x4c>
  28:	9563      	ld.w      	r3, (r5, 0xc)
  2a:	9542      	ld.w      	r2, (r5, 0x8)
  2c:	e9030006 	bez      	r3, 0x38	// 38 <atcmd_unregister+0x38>
  30:	e9020004 	bez      	r2, 0x38	// 38 <atcmd_unregister+0x38>
  34:	b261      	st.w      	r3, (r2, 0x4)
  36:	b340      	st.w      	r2, (r3, 0x0)
  38:	944d      	ld.w      	r2, (r4, 0x34)
  3a:	6482      	cmpne      	r0, r2
  3c:	3300      	movi      	r3, 0
  3e:	b562      	st.w      	r3, (r5, 0x8)
  40:	b563      	st.w      	r3, (r5, 0xc)
  42:	0802      	bt      	0x46	// 46 <atcmd_unregister+0x46>
  44:	b46d      	st.w      	r3, (r4, 0x34)
  46:	6c17      	mov      	r0, r5
  48:	e0000000 	bsr      	0x0	// 0 <_os_free>
  4c:	1005      	lrw      	r0, 0x0	// 60 <os_mutex_unlock+0x60>
  4e:	e0000000 	bsr      	0x0	// 0 <os_mutex_unlock>
  52:	3000      	movi      	r0, 0
  54:	1492      	pop      	r4-r5, r15
  56:	3000      	movi      	r0, 0
  58:	2808      	subi      	r0, 9
  5a:	07fd      	br      	0x54	// 54 <atcmd_unregister+0x54>
	...

Disassembly of section .text.atcmd_output:

00000000 <atcmd_output>:
   0:	14d0      	push      	r15
   2:	6c87      	mov      	r2, r1
   4:	e9000014 	bez      	r0, 0x2c	// 2c <atcmd_output+0x2c>
   8:	c000602c 	mfcr      	r12, cr<0, 0>
   c:	c0807020 	psrclr      	ie
  10:	106d      	lrw      	r3, 0x0	// 44 <atcmd_output+0x44>
  12:	e58c2040 	andi      	r12, r12, 64
  16:	d9a32012 	ld.w      	r13, (r3, 0x48)
  1a:	e90c0004 	bez      	r12, 0x22	// 22 <atcmd_output+0x22>
  1e:	c0807420 	psrset      	ie
  22:	e90d0006 	bez      	r13, 0x2e	// 2e <atcmd_output+0x2e>
  26:	6c43      	mov      	r1, r0
  28:	9313      	ld.w      	r0, (r3, 0x4c)
  2a:	7bf5      	jsr      	r13
  2c:	1490      	pop      	r15
  2e:	d9832014 	ld.w      	r12, (r3, 0x50)
  32:	d86c2000 	ld.w      	r3, (r12, 0x0)
  36:	e903fffb 	bez      	r3, 0x2c	// 2c <atcmd_output+0x2c>
  3a:	6c43      	mov      	r1, r0
  3c:	6c33      	mov      	r0, r12
  3e:	7bcd      	jsr      	r3
  40:	07f6      	br      	0x2c	// 2c <atcmd_output+0x2c>
  42:	0000      	.short	0x0000
  44:	00000000 	.long	0x00000000

Disassembly of section .text.atcmd_output_hdl:

00000000 <atcmd_output_hdl>:
   0:	c0006023 	mfcr      	r3, cr<0, 0>
   4:	c0807020 	psrclr      	ie
   8:	1045      	lrw      	r2, 0x0	// 1c <atcmd_output_hdl+0x1c>
   a:	e4632040 	andi      	r3, r3, 64
   e:	b212      	st.w      	r0, (r2, 0x48)
  10:	b233      	st.w      	r1, (r2, 0x4c)
  12:	e9030004 	bez      	r3, 0x1a	// 1a <atcmd_output_hdl+0x1a>
  16:	c0807420 	psrset      	ie
  1a:	783c      	jmp      	r15
  1c:	00000000 	.long	0x00000000

Disassembly of section .text.atcmd_read:

00000000 <atcmd_read>:
   0:	14d0      	push      	r15
   2:	1067      	lrw      	r3, 0x0	// 1c <atcmd_read+0x1c>
   4:	6f03      	mov      	r12, r0
   6:	9314      	ld.w      	r0, (r3, 0x50)
   8:	6c87      	mov      	r2, r1
   a:	9061      	ld.w      	r3, (r0, 0x4)
   c:	e9030005 	bez      	r3, 0x16	// 16 <atcmd_read+0x16>
  10:	6c73      	mov      	r1, r12
  12:	7bcd      	jsr      	r3
  14:	1490      	pop      	r15
  16:	3000      	movi      	r0, 0
  18:	2800      	subi      	r0, 1
  1a:	07fd      	br      	0x14	// 14 <atcmd_read+0x14>
  1c:	00000000 	.long	0x00000000

Disassembly of section .text.atcmd_printf:

00000000 <atcmd_printf>:
   0:	1424      	subi      	r14, r14, 16
   2:	b863      	st.w      	r3, (r14, 0xc)
   4:	b842      	st.w      	r2, (r14, 0x8)
   6:	b821      	st.w      	r1, (r14, 0x4)
   8:	b800      	st.w      	r0, (r14, 0x0)
   a:	14d1      	push      	r4, r15
   c:	1421      	subi      	r14, r14, 4
   e:	108c      	lrw      	r4, 0x0	// 3c <atcmd_printf+0x3c>
  10:	9863      	ld.w      	r3, (r14, 0xc)
  12:	b860      	st.w      	r3, (r14, 0x0)
  14:	d8640046 	ld.b      	r3, (r4, 0x46)
  18:	e903000c 	bez      	r3, 0x30	// 30 <atcmd_printf+0x30>
  1c:	9430      	ld.w      	r1, (r4, 0x40)
  1e:	1b04      	addi      	r3, r14, 16
  20:	9840      	ld.w      	r2, (r14, 0x0)
  22:	940f      	ld.w      	r0, (r4, 0x3c)
  24:	e0000000 	bsr      	0x0	// 0 <vsnprintf>
  28:	6c43      	mov      	r1, r0
  2a:	940f      	ld.w      	r0, (r4, 0x3c)
  2c:	e0000000 	bsr      	0x0	// 0 <atcmd_printf>
  30:	1401      	addi      	r14, r14, 4
  32:	d9ee2001 	ld.w      	r15, (r14, 0x4)
  36:	9880      	ld.w      	r4, (r14, 0x0)
  38:	1406      	addi      	r14, r14, 24
  3a:	783c      	jmp      	r15
  3c:	00000000 	.long	0x00000000

Disassembly of section .text.atcmd_recv:

00000000 <atcmd_recv>:
   0:	14d8      	push      	r4-r11, r15
   2:	1423      	subi      	r14, r14, 12
   4:	6d83      	mov      	r6, r0
   6:	6d47      	mov      	r5, r1
   8:	e9000070 	bez      	r0, 0xe8	// e8 <atcmd_recv+0xe8>
   c:	e961006e 	blsz      	r1, 0xe8	// e8 <atcmd_recv+0xe8>
  10:	11f9      	lrw      	r7, 0x0	// f4 <atcmd_recv+0xf4>
  12:	d8670046 	ld.b      	r3, (r7, 0x46)
  16:	e9030069 	bez      	r3, 0xe8	// e8 <atcmd_recv+0xe8>
  1a:	e0000000 	bsr      	0x0	// 0 <strlen>
  1e:	6540      	cmphs      	r0, r5
  20:	c4050c40 	inct      	r0, r5, 0
  24:	6e43      	mov      	r9, r0
  26:	e4691000 	subi      	r3, r9, 1
  2a:	d0660022 	ldr.b      	r2, (r6, r3 << 0)
  2e:	3a4d      	cmpnei      	r2, 13
  30:	0c39      	bf      	0xa2	// a2 <atcmd_recv+0xa2>
  32:	3a4a      	cmpnei      	r2, 10
  34:	0c37      	bf      	0xa2	// a2 <atcmd_recv+0xa2>
  36:	c5260023 	addu      	r3, r6, r9
  3a:	3200      	movi      	r2, 0
  3c:	d9a30000 	ld.b      	r13, (r3, 0x0)
  40:	a340      	st.b      	r2, (r3, 0x0)
  42:	ea080000 	movi      	r8, 0
  46:	114d      	lrw      	r2, 0x0	// f8 <atcmd_recv+0xf8>
  48:	b840      	st.w      	r2, (r14, 0x0)
  4a:	b861      	st.w      	r3, (r14, 0x4)
  4c:	9860      	ld.w      	r3, (r14, 0x0)
  4e:	d103090b 	ldr.w      	r11, (r3, r8 << 3)
  52:	6caf      	mov      	r2, r11
  54:	6c67      	mov      	r1, r9
  56:	6c1b      	mov      	r0, r6
  58:	ddae2002 	st.w      	r13, (r14, 0x8)
  5c:	e0000000 	bsr      	0x0	// 0 <atcmd_recv>
  60:	c468482a 	lsli      	r10, r8, 3
  64:	6d03      	mov      	r4, r0
  66:	9861      	ld.w      	r3, (r14, 0x4)
  68:	d9ae2002 	ld.w      	r13, (r14, 0x8)
  6c:	e900001d 	bez      	r0, 0xa6	// a6 <atcmd_recv+0xa6>
  70:	3300      	movi      	r3, 0
  72:	6c2f      	mov      	r0, r11
  74:	dc670044 	st.b      	r3, (r7, 0x44)
  78:	e0000000 	bsr      	0x0	// 0 <strlen>
  7c:	6c83      	mov      	r2, r0
  7e:	6cd7      	mov      	r3, r5
  80:	6c5b      	mov      	r1, r6
  82:	101d      	lrw      	r0, 0x0	// f4 <atcmd_recv+0xf4>
  84:	e0000000 	bsr      	0x0	// 0 <atcmd_recv>
  88:	9860      	ld.w      	r3, (r14, 0x0)
  8a:	60e8      	addu      	r3, r10
  8c:	6e8f      	mov      	r10, r3
  8e:	d8470044 	ld.b      	r2, (r7, 0x44)
  92:	9361      	ld.w      	r3, (r3, 0x4)
  94:	972e      	ld.w      	r1, (r7, 0x38)
  96:	6c2f      	mov      	r0, r11
  98:	7bcd      	jsr      	r3
  9a:	3400      	movi      	r4, 0
  9c:	6c13      	mov      	r0, r4
  9e:	1403      	addi      	r14, r14, 12
  a0:	1498      	pop      	r4-r11, r15
  a2:	6e4f      	mov      	r9, r3
  a4:	07c1      	br      	0x26	// 26 <atcmd_recv+0x26>
  a6:	e5080000 	addi      	r8, r8, 1
  aa:	eb480003 	cmpnei      	r8, 3
  ae:	0bce      	bt      	0x4a	// 4a <atcmd_recv+0x4a>
  b0:	dda30000 	st.b      	r13, (r3, 0x0)
  b4:	5d0e      	addi      	r0, r5, 4
  b6:	e0000000 	bsr      	0x0	// 0 <alloc_skb>
  ba:	6dc3      	mov      	r7, r0
  bc:	e9000019 	bez      	r0, 0xee	// ee <atcmd_recv+0xee>
  c0:	6c97      	mov      	r2, r5
  c2:	6c5b      	mov      	r1, r6
  c4:	9007      	ld.w      	r0, (r0, 0x1c)
  c6:	e0000000 	bsr      	0x0	// 0 <memcpy>
  ca:	9767      	ld.w      	r3, (r7, 0x1c)
  cc:	6c57      	mov      	r1, r5
  ce:	d4a30024 	str.b      	r4, (r3, r5 << 0)
  d2:	6c1f      	mov      	r0, r7
  d4:	e0000000 	bsr      	0x0	// 0 <skb_put>
  d8:	6c5f      	mov      	r1, r7
  da:	1007      	lrw      	r0, 0x0	// f4 <atcmd_recv+0xf4>
  dc:	e0000000 	bsr      	0x0	// 0 <skb_list_queue>
  e0:	1007      	lrw      	r0, 0x0	// fc <os_run_work+0xfc>
  e2:	e0000000 	bsr      	0x0	// 0 <os_run_work>
  e6:	07db      	br      	0x9c	// 9c <atcmd_recv+0x9c>
  e8:	3400      	movi      	r4, 0
  ea:	2c00      	subi      	r4, 1
  ec:	07d8      	br      	0x9c	// 9c <atcmd_recv+0x9c>
  ee:	3400      	movi      	r4, 0
  f0:	2c0b      	subi      	r4, 12
  f2:	07d5      	br      	0x9c	// 9c <atcmd_recv+0x9c>
	...

Disassembly of section .text.atcmd_dumphex:

00000000 <atcmd_dumphex>:
   0:	14d5      	push      	r4-r8, r15
   2:	6d47      	mov      	r5, r1
   4:	6c43      	mov      	r1, r0
   6:	100c      	lrw      	r0, 0x0	// 34 <atcmd_dumphex+0x34>
   8:	6dcb      	mov      	r7, r2
   a:	6d8f      	mov      	r6, r3
   c:	6d17      	mov      	r4, r5
   e:	e0000000 	bsr      	0x0	// 0 <atcmd_dumphex>
  12:	ea88000a 	lrw      	r8, 0x0	// 38 <atcmd_dumphex+0x38>
  16:	5c75      	subu      	r3, r4, r5
  18:	65cd      	cmplt      	r3, r7
  1a:	0807      	bt      	0x28	// 28 <atcmd_dumphex+0x28>
  1c:	e9060005 	bez      	r6, 0x26	// 26 <atcmd_dumphex+0x26>
  20:	1007      	lrw      	r0, 0x0	// 3c <atcmd_dumphex+0x3c>
  22:	e0000000 	bsr      	0x0	// 0 <atcmd_dumphex>
  26:	1495      	pop      	r4-r8, r15
  28:	8420      	ld.b      	r1, (r4, 0x0)
  2a:	6c23      	mov      	r0, r8
  2c:	e0000000 	bsr      	0x0	// 0 <atcmd_dumphex>
  30:	2400      	addi      	r4, 1
  32:	07f2      	br      	0x16	// 16 <atcmd_dumphex+0x16>
	...

Disassembly of section .text.atcmd_init:

00000000 <atcmd_init>:
   0:	14d4      	push      	r4-r7, r15
   2:	6dc3      	mov      	r7, r0
   4:	6d47      	mov      	r5, r1
   6:	e9010007 	bez      	r1, 0x14	// 14 <atcmd_init+0x14>
   a:	e9000005 	bez      	r0, 0x14	// 14 <atcmd_init+0x14>
   e:	9060      	ld.w      	r3, (r0, 0x0)
  10:	e9230008 	bnez      	r3, 0x20	// 20 <atcmd_init+0x20>
  14:	1141      	lrw      	r2, 0x0	// 98 <atcmd_init+0x98>
  16:	ea01013d 	movi      	r1, 317
  1a:	1101      	lrw      	r0, 0x0	// 9c <assert_internal+0x9c>
  1c:	e0000000 	bsr      	0x0	// 0 <assert_internal>
  20:	8560      	ld.b      	r3, (r5, 0x0)
  22:	4362      	lsli      	r3, r3, 2
  24:	9501      	ld.w      	r0, (r5, 0x4)
  26:	600c      	addu      	r0, r3
  28:	e0000000 	bsr      	0x0	// 0 <_os_malloc>
  2c:	6d83      	mov      	r6, r0
  2e:	e9000031 	bez      	r0, 0x90	// 90 <atcmd_init+0x90>
  32:	109c      	lrw      	r4, 0x0	// a0 <atcmd_init+0xa0>
  34:	e4640053 	addi      	r3, r4, 84
  38:	6c13      	mov      	r0, r4
  3a:	b475      	st.w      	r3, (r4, 0x54)
  3c:	b476      	st.w      	r3, (r4, 0x58)
  3e:	e0000000 	bsr      	0x0	// 0 <skb_list_init>
  42:	e404000b 	addi      	r0, r4, 12
  46:	e0000000 	bsr      	0x0	// 0 <os_mutex_init>
  4a:	9562      	ld.w      	r3, (r5, 0x8)
  4c:	b478      	st.w      	r3, (r4, 0x60)
  4e:	8d61      	ld.h      	r3, (r5, 0x2)
  50:	b4f4      	st.w      	r7, (r4, 0x50)
  52:	b477      	st.w      	r3, (r4, 0x5c)
  54:	8561      	ld.b      	r3, (r5, 0x1)
  56:	322c      	movi      	r2, 44
  58:	3b40      	cmpnei      	r3, 0
  5a:	c4620c20 	incf      	r3, r2, 0
  5e:	dc640045 	st.b      	r3, (r4, 0x45)
  62:	8560      	ld.b      	r3, (r5, 0x0)
  64:	dc640047 	st.b      	r3, (r4, 0x47)
  68:	4362      	lsli      	r3, r3, 2
  6a:	9541      	ld.w      	r2, (r5, 0x4)
  6c:	b4ce      	st.w      	r6, (r4, 0x38)
  6e:	618c      	addu      	r6, r3
  70:	3301      	movi      	r3, 1
  72:	dc640046 	st.b      	r3, (r4, 0x46)
  76:	b450      	st.w      	r2, (r4, 0x40)
  78:	321f      	movi      	r2, 31
  7a:	106b      	lrw      	r3, 0x0	// a4 <atcmd_init+0xa4>
  7c:	3000      	movi      	r0, 0
  7e:	b46c      	st.w      	r3, (r4, 0x30)
  80:	d8640020 	ld.b      	r3, (r4, 0x20)
  84:	c4625c83 	ins      	r3, r2, 7, 3
  88:	b4cf      	st.w      	r6, (r4, 0x3c)
  8a:	dc640020 	st.b      	r3, (r4, 0x20)
  8e:	1494      	pop      	r4-r7, r15
  90:	3000      	movi      	r0, 0
  92:	280b      	subi      	r0, 12
  94:	07fd      	br      	0x8e	// 8e <atcmd_init+0x8e>
	...
