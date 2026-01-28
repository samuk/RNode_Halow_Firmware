
libwifi/o/lib_wpabuf.o:     file format elf32-csky-little


Disassembly of section .text.wpabuf_alloc:

00000000 <wpabuf_alloc>:
   0:	14d1      	push      	r4, r15
   2:	6d03      	mov      	r4, r0
   4:	200f      	addi      	r0, 16
   6:	e0000000 	bsr      	0x0	// 0 <_os_zalloc>
   a:	e9000006 	bez      	r0, 0x16	// 16 <wpabuf_alloc+0x16>
   e:	e460000f 	addi      	r3, r0, 16
  12:	b080      	st.w      	r4, (r0, 0x0)
  14:	b062      	st.w      	r3, (r0, 0x8)
  16:	1491      	pop      	r4, r15

Disassembly of section .text.wpabuf_resize:

00000000 <wpabuf_resize>:
   0:	14d4      	push      	r4-r7, r15
   2:	9080      	ld.w      	r4, (r0, 0x0)
   4:	6dc3      	mov      	r7, r0
   6:	6d47      	mov      	r5, r1
   8:	e924000a 	bnez      	r4, 0x1c	// 1c <wpabuf_resize+0x1c>
   c:	6c07      	mov      	r0, r1
   e:	e0000000 	bsr      	0x0	// 0 <wpabuf_resize>
  12:	3840      	cmpnei      	r0, 0
  14:	b700      	st.w      	r0, (r7, 0x0)
  16:	6403      	mvcv      	r0
  18:	5c01      	subu      	r0, r4, r0
  1a:	1494      	pop      	r4-r7, r15
  1c:	9421      	ld.w      	r1, (r4, 0x4)
  1e:	6054      	addu      	r1, r5
  20:	9460      	ld.w      	r3, (r4, 0x0)
  22:	644c      	cmphs      	r3, r1
  24:	0819      	bt      	0x56	// 56 <wpabuf_resize+0x56>
  26:	94c3      	ld.w      	r6, (r4, 0xc)
  28:	e4c62001 	andi      	r6, r6, 1
  2c:	e9060017 	bez      	r6, 0x5a	// 5a <wpabuf_resize+0x5a>
  30:	9402      	ld.w      	r0, (r4, 0x8)
  32:	e0000000 	bsr      	0x0	// 0 <_os_realloc>
  36:	6d83      	mov      	r6, r0
  38:	e9200005 	bnez      	r0, 0x42	// 42 <wpabuf_resize+0x42>
  3c:	3000      	movi      	r0, 0
  3e:	2800      	subi      	r0, 1
  40:	07ed      	br      	0x1a	// 1a <wpabuf_resize+0x1a>
  42:	9401      	ld.w      	r0, (r4, 0x4)
  44:	6c97      	mov      	r2, r5
  46:	3100      	movi      	r1, 0
  48:	6018      	addu      	r0, r6
  4a:	e0000000 	bsr      	0x0	// 0 <memset>
  4e:	b4c2      	st.w      	r6, (r4, 0x8)
  50:	9461      	ld.w      	r3, (r4, 0x4)
  52:	614c      	addu      	r5, r3
  54:	b4a0      	st.w      	r5, (r4, 0x0)
  56:	3000      	movi      	r0, 0
  58:	07e1      	br      	0x1a	// 1a <wpabuf_resize+0x1a>
  5a:	6c13      	mov      	r0, r4
  5c:	210f      	addi      	r1, 16
  5e:	e0000000 	bsr      	0x0	// 0 <_os_realloc>
  62:	6d03      	mov      	r4, r0
  64:	e900ffec 	bez      	r0, 0x3c	// 3c <wpabuf_resize+0x3c>
  68:	9001      	ld.w      	r0, (r0, 0x4)
  6a:	200f      	addi      	r0, 16
  6c:	6c97      	mov      	r2, r5
  6e:	6c5b      	mov      	r1, r6
  70:	6010      	addu      	r0, r4
  72:	e0000000 	bsr      	0x0	// 0 <memset>
  76:	e464000f 	addi      	r3, r4, 16
  7a:	b462      	st.w      	r3, (r4, 0x8)
  7c:	b780      	st.w      	r4, (r7, 0x0)
  7e:	07e9      	br      	0x50	// 50 <wpabuf_resize+0x50>

Disassembly of section .text.wpabuf_alloc_ext_data:

00000000 <wpabuf_alloc_ext_data>:
   0:	14d2      	push      	r4-r5, r15
   2:	6d43      	mov      	r5, r0
   4:	3010      	movi      	r0, 16
   6:	6d07      	mov      	r4, r1
   8:	e0000000 	bsr      	0x0	// 0 <_os_zalloc>
   c:	e9000009 	bez      	r0, 0x1e	// 1e <wpabuf_alloc_ext_data+0x1e>
  10:	9063      	ld.w      	r3, (r0, 0xc)
  12:	ec630001 	ori      	r3, r3, 1
  16:	b080      	st.w      	r4, (r0, 0x0)
  18:	b081      	st.w      	r4, (r0, 0x4)
  1a:	b0a2      	st.w      	r5, (r0, 0x8)
  1c:	b063      	st.w      	r3, (r0, 0xc)
  1e:	1492      	pop      	r4-r5, r15

Disassembly of section .text.wpabuf_free:

00000000 <wpabuf_free>:
   0:	14d1      	push      	r4, r15
   2:	6d03      	mov      	r4, r0
   4:	e900000f 	bez      	r0, 0x22	// 22 <wpabuf_free+0x22>
   8:	9063      	ld.w      	r3, (r0, 0xc)
   a:	e4632001 	andi      	r3, r3, 1
   e:	e9030007 	bez      	r3, 0x1c	// 1c <wpabuf_free+0x1c>
  12:	9002      	ld.w      	r0, (r0, 0x8)
  14:	e0000000 	bsr      	0x0	// 0 <_os_free>
  18:	3300      	movi      	r3, 0
  1a:	b462      	st.w      	r3, (r4, 0x8)
  1c:	6c13      	mov      	r0, r4
  1e:	e0000000 	bsr      	0x0	// 0 <_os_free>
  22:	1491      	pop      	r4, r15

Disassembly of section .text.wpabuf_clear_free:

00000000 <wpabuf_clear_free>:
   0:	14d1      	push      	r4, r15
   2:	6d03      	mov      	r4, r0
   4:	e900000a 	bez      	r0, 0x18	// 18 <wpabuf_clear_free+0x18>
   8:	9041      	ld.w      	r2, (r0, 0x4)
   a:	3100      	movi      	r1, 0
   c:	9002      	ld.w      	r0, (r0, 0x8)
   e:	e0000000 	bsr      	0x0	// 0 <memset>
  12:	6c13      	mov      	r0, r4
  14:	e0000000 	bsr      	0x0	// 0 <wpabuf_clear_free>
  18:	1491      	pop      	r4, r15

Disassembly of section .text.wpabuf_put:

00000000 <wpabuf_put>:
   0:	14d1      	push      	r4, r15
   2:	1421      	subi      	r14, r14, 4
   4:	9061      	ld.w      	r3, (r0, 0x4)
   6:	9082      	ld.w      	r4, (r0, 0x8)
   8:	610c      	addu      	r4, r3
   a:	9040      	ld.w      	r2, (r0, 0x0)
   c:	60c4      	addu      	r3, r1
   e:	64c8      	cmphs      	r2, r3
  10:	b061      	st.w      	r3, (r0, 0x4)
  12:	0806      	bt      	0x1e	// 1e <wpabuf_put+0x1e>
  14:	b820      	st.w      	r1, (r14, 0x0)
  16:	6c43      	mov      	r1, r0
  18:	1003      	lrw      	r0, 0x0	// 24 <wpabuf_put+0x24>
  1a:	e0000000 	bsr      	0x0	// 0 <hgprintf>
  1e:	6c13      	mov      	r0, r4
  20:	1401      	addi      	r14, r14, 4
  22:	1491      	pop      	r4, r15
  24:	00000000 	.long	0x00000000

Disassembly of section .text.wpabuf_put_data:

00000000 <wpabuf_put_data>:
   0:	14d1      	push      	r4, r15
   2:	1421      	subi      	r14, r14, 4
   4:	6d07      	mov      	r4, r1
   6:	e901000a 	bez      	r1, 0x1a	// 1a <wpabuf_put_data+0x1a>
   a:	6c4b      	mov      	r1, r2
   c:	b840      	st.w      	r2, (r14, 0x0)
   e:	e0000000 	bsr      	0x0	// 0 <wpabuf_put_data>
  12:	9840      	ld.w      	r2, (r14, 0x0)
  14:	6c53      	mov      	r1, r4
  16:	e0000000 	bsr      	0x0	// 0 <memcpy>
  1a:	1401      	addi      	r14, r14, 4
  1c:	1491      	pop      	r4, r15

Disassembly of section .text.wpabuf_alloc_copy:

00000000 <wpabuf_alloc_copy>:
   0:	14d3      	push      	r4-r6, r15
   2:	6d83      	mov      	r6, r0
   4:	6c07      	mov      	r0, r1
   6:	6d47      	mov      	r5, r1
   8:	e0000000 	bsr      	0x0	// 0 <wpabuf_alloc_copy>
   c:	6d03      	mov      	r4, r0
   e:	e9000006 	bez      	r0, 0x1a	// 1a <wpabuf_alloc_copy+0x1a>
  12:	6c97      	mov      	r2, r5
  14:	6c5b      	mov      	r1, r6
  16:	e0000000 	bsr      	0x0	// 0 <wpabuf_alloc_copy>
  1a:	6c13      	mov      	r0, r4
  1c:	1493      	pop      	r4-r6, r15

Disassembly of section .text.wpabuf_dup:

00000000 <wpabuf_dup>:
   0:	14d2      	push      	r4-r5, r15
   2:	6d03      	mov      	r4, r0
   4:	9001      	ld.w      	r0, (r0, 0x4)
   6:	e0000000 	bsr      	0x0	// 0 <wpabuf_dup>
   a:	6d43      	mov      	r5, r0
   c:	e9000006 	bez      	r0, 0x18	// 18 <wpabuf_dup+0x18>
  10:	9441      	ld.w      	r2, (r4, 0x4)
  12:	9422      	ld.w      	r1, (r4, 0x8)
  14:	e0000000 	bsr      	0x0	// 0 <wpabuf_dup>
  18:	6c17      	mov      	r0, r5
  1a:	1492      	pop      	r4-r5, r15

Disassembly of section .text.wpabuf_concat:

00000000 <wpabuf_concat>:
   0:	14d3      	push      	r4-r6, r15
   2:	6d03      	mov      	r4, r0
   4:	6d47      	mov      	r5, r1
   6:	e901001e 	bez      	r1, 0x42	// 42 <wpabuf_concat+0x42>
   a:	e900001e 	bez      	r0, 0x46	// 46 <wpabuf_concat+0x46>
   e:	9061      	ld.w      	r3, (r0, 0x4)
  10:	9501      	ld.w      	r0, (r5, 0x4)
  12:	600c      	addu      	r0, r3
  14:	e0000000 	bsr      	0x0	// 0 <wpabuf_concat>
  18:	6d83      	mov      	r6, r0
  1a:	e900000d 	bez      	r0, 0x34	// 34 <wpabuf_concat+0x34>
  1e:	e9040006 	bez      	r4, 0x2a	// 2a <wpabuf_concat+0x2a>
  22:	9441      	ld.w      	r2, (r4, 0x4)
  24:	9422      	ld.w      	r1, (r4, 0x8)
  26:	e0000000 	bsr      	0x0	// 0 <wpabuf_concat>
  2a:	9541      	ld.w      	r2, (r5, 0x4)
  2c:	9522      	ld.w      	r1, (r5, 0x8)
  2e:	6c1b      	mov      	r0, r6
  30:	e0000000 	bsr      	0x0	// 0 <wpabuf_concat>
  34:	6c13      	mov      	r0, r4
  36:	e0000000 	bsr      	0x0	// 0 <wpabuf_concat>
  3a:	6c17      	mov      	r0, r5
  3c:	e0000000 	bsr      	0x0	// 0 <wpabuf_concat>
  40:	6d1b      	mov      	r4, r6
  42:	6c13      	mov      	r0, r4
  44:	1493      	pop      	r4-r6, r15
  46:	6cc3      	mov      	r3, r0
  48:	07e4      	br      	0x10	// 10 <wpabuf_concat+0x10>

Disassembly of section .text.wpabuf_zeropad:

00000000 <wpabuf_zeropad>:
   0:	14d4      	push      	r4-r7, r15
   2:	6d03      	mov      	r4, r0
   4:	6d47      	mov      	r5, r1
   6:	e900001c 	bez      	r0, 0x3e	// 3e <wpabuf_zeropad+0x3e>
   a:	90e1      	ld.w      	r7, (r0, 0x4)
   c:	645c      	cmphs      	r7, r1
   e:	0818      	bt      	0x3e	// 3e <wpabuf_zeropad+0x3e>
  10:	6c07      	mov      	r0, r1
  12:	e0000000 	bsr      	0x0	// 0 <wpabuf_zeropad>
  16:	6d83      	mov      	r6, r0
  18:	e900000f 	bez      	r0, 0x36	// 36 <wpabuf_zeropad+0x36>
  1c:	615e      	subu      	r5, r7
  1e:	6c57      	mov      	r1, r5
  20:	e0000000 	bsr      	0x0	// 0 <wpabuf_zeropad>
  24:	6c97      	mov      	r2, r5
  26:	3100      	movi      	r1, 0
  28:	e0000000 	bsr      	0x0	// 0 <memset>
  2c:	9441      	ld.w      	r2, (r4, 0x4)
  2e:	9422      	ld.w      	r1, (r4, 0x8)
  30:	6c1b      	mov      	r0, r6
  32:	e0000000 	bsr      	0x0	// 0 <wpabuf_zeropad>
  36:	6c13      	mov      	r0, r4
  38:	e0000000 	bsr      	0x0	// 0 <wpabuf_zeropad>
  3c:	6d1b      	mov      	r4, r6
  3e:	6c13      	mov      	r0, r4
  40:	1494      	pop      	r4-r7, r15

Disassembly of section .text.wpabuf_parse_bin:

00000000 <wpabuf_parse_bin>:
   0:	14d4      	push      	r4-r7, r15
   2:	6dc3      	mov      	r7, r0
   4:	e0000000 	bsr      	0x0	// 0 <strlen>
   8:	e4c02001 	andi      	r6, r0, 1
   c:	e9060005 	bez      	r6, 0x16	// 16 <wpabuf_parse_bin+0x16>
  10:	3500      	movi      	r5, 0
  12:	6c17      	mov      	r0, r5
  14:	1494      	pop      	r4-r7, r15
  16:	4881      	lsri      	r4, r0, 1
  18:	6c13      	mov      	r0, r4
  1a:	e0000000 	bsr      	0x0	// 0 <wpabuf_parse_bin>
  1e:	6d43      	mov      	r5, r0
  20:	e900fff8 	bez      	r0, 0x10	// 10 <wpabuf_parse_bin+0x10>
  24:	6c53      	mov      	r1, r4
  26:	e0000000 	bsr      	0x0	// 0 <wpabuf_parse_bin>
  2a:	6c43      	mov      	r1, r0
  2c:	6c93      	mov      	r2, r4
  2e:	6c1f      	mov      	r0, r7
  30:	e0000000 	bsr      	0x0	// 0 <hexstr2bin>
  34:	e900ffef 	bez      	r0, 0x12	// 12 <wpabuf_parse_bin+0x12>
  38:	6c17      	mov      	r0, r5
  3a:	e0000000 	bsr      	0x0	// 0 <wpabuf_parse_bin>
  3e:	6d5b      	mov      	r5, r6
  40:	07e9      	br      	0x12	// 12 <wpabuf_parse_bin+0x12>
