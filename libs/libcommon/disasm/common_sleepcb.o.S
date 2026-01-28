
libcommon/o/common_sleepcb.o:     file format elf32-csky-little


Disassembly of section .text.sys_sleepcb_call:

00000000 <sys_sleepcb_call>:
   0:	14d4      	push      	r4-r7, r15
   2:	6dc7      	mov      	r7, r1
   4:	3100      	movi      	r1, 0
   6:	6d83      	mov      	r6, r0
   8:	2900      	subi      	r1, 1
   a:	100b      	lrw      	r0, 0x0	// 34 <sys_sleepcb_call+0x34>
   c:	e0000000 	bsr      	0x0	// 0 <os_mutex_lock>
  10:	106a      	lrw      	r3, 0x0	// 38 <sys_sleepcb_call+0x38>
  12:	3500      	movi      	r5, 0
  14:	9380      	ld.w      	r4, (r3, 0x0)
  16:	e9240007 	bnez      	r4, 0x24	// 24 <sys_sleepcb_call+0x24>
  1a:	1007      	lrw      	r0, 0x0	// 34 <os_mutex_unlock+0x34>
  1c:	e0000000 	bsr      	0x0	// 0 <os_mutex_unlock>
  20:	6c17      	mov      	r0, r5
  22:	1494      	pop      	r4-r7, r15
  24:	9461      	ld.w      	r3, (r4, 0x4)
  26:	9442      	ld.w      	r2, (r4, 0x8)
  28:	6c5f      	mov      	r1, r7
  2a:	6c1b      	mov      	r0, r6
  2c:	7bcd      	jsr      	r3
  2e:	6d40      	or      	r5, r0
  30:	9480      	ld.w      	r4, (r4, 0x0)
  32:	07f2      	br      	0x16	// 16 <sys_sleepcb_call+0x16>
	...

Disassembly of section .text.sys_register_sleepcb:

00000000 <sys_register_sleepcb>:
   0:	14d5      	push      	r4-r8, r15
   2:	6dc7      	mov      	r7, r1
   4:	10b8      	lrw      	r5, 0x0	// 64 <sys_register_sleepcb+0x64>
   6:	3100      	movi      	r1, 0
   8:	6e03      	mov      	r8, r0
   a:	2900      	subi      	r1, 1
   c:	1017      	lrw      	r0, 0x0	// 68 <sys_register_sleepcb+0x68>
   e:	e0000000 	bsr      	0x0	// 0 <os_mutex_lock>
  12:	9580      	ld.w      	r4, (r5, 0x0)
  14:	e924001d 	bnez      	r4, 0x4e	// 4e <sys_register_sleepcb+0x4e>
  18:	1014      	lrw      	r0, 0x0	// 68 <os_mutex_unlock+0x68>
  1a:	e0000000 	bsr      	0x0	// 0 <os_mutex_unlock>
  1e:	e9240016 	bnez      	r4, 0x4a	// 4a <sys_register_sleepcb+0x4a>
  22:	300c      	movi      	r0, 12
  24:	e0000000 	bsr      	0x0	// 0 <_os_zalloc>
  28:	6d83      	mov      	r6, r0
  2a:	e900001a 	bez      	r0, 0x5e	// 5e <sys_register_sleepcb+0x5e>
  2e:	3100      	movi      	r1, 0
  30:	dd002001 	st.w      	r8, (r0, 0x4)
  34:	b0e2      	st.w      	r7, (r0, 0x8)
  36:	2900      	subi      	r1, 1
  38:	100c      	lrw      	r0, 0x0	// 68 <sys_register_sleepcb+0x68>
  3a:	e0000000 	bsr      	0x0	// 0 <os_mutex_lock>
  3e:	9560      	ld.w      	r3, (r5, 0x0)
  40:	b660      	st.w      	r3, (r6, 0x0)
  42:	100a      	lrw      	r0, 0x0	// 68 <sys_register_sleepcb+0x68>
  44:	b5c0      	st.w      	r6, (r5, 0x0)
  46:	e0000000 	bsr      	0x0	// 0 <os_mutex_unlock>
  4a:	3000      	movi      	r0, 0
  4c:	1495      	pop      	r4-r8, r15
  4e:	9461      	ld.w      	r3, (r4, 0x4)
  50:	64e2      	cmpne      	r8, r3
  52:	0804      	bt      	0x5a	// 5a <sys_register_sleepcb+0x5a>
  54:	9462      	ld.w      	r3, (r4, 0x8)
  56:	64de      	cmpne      	r7, r3
  58:	0fe0      	bf      	0x18	// 18 <sys_register_sleepcb+0x18>
  5a:	9480      	ld.w      	r4, (r4, 0x0)
  5c:	07dc      	br      	0x14	// 14 <sys_register_sleepcb+0x14>
  5e:	3000      	movi      	r0, 0
  60:	2800      	subi      	r0, 1
  62:	07f5      	br      	0x4c	// 4c <sys_register_sleepcb+0x4c>
	...

Disassembly of section .text.sys_sleepcb_init:

00000000 <sys_sleepcb_init>:
   0:	14d0      	push      	r15
   2:	1004      	lrw      	r0, 0x0	// 10 <sys_sleepcb_init+0x10>
   4:	3300      	movi      	r3, 0
   6:	b060      	st.w      	r3, (r0, 0x0)
   8:	2003      	addi      	r0, 4
   a:	e0000000 	bsr      	0x0	// 0 <os_mutex_init>
   e:	1490      	pop      	r15
  10:	00000000 	.long	0x00000000

Disassembly of section .text.sys_suspend:

00000000 <sys_suspend>:
   0:	14d3      	push      	r4-r6, r15
   2:	1422      	subi      	r14, r14, 8
   4:	3301      	movi      	r3, 1
   6:	3400      	movi      	r4, 0
   8:	dc6e0000 	st.b      	r3, (r14, 0x0)
   c:	6d83      	mov      	r6, r0
   e:	b821      	st.w      	r1, (r14, 0x4)
  10:	6cd3      	mov      	r3, r4
  12:	74cc      	zextb      	r3, r3
  14:	5ba2      	addi      	r5, r3, 1
  16:	7554      	zextb      	r5, r5
  18:	6c7b      	mov      	r1, r14
  1a:	6c1b      	mov      	r0, r6
  1c:	dc6e0001 	st.b      	r3, (r14, 0x1)
  20:	e0000000 	bsr      	0x0	// 0 <sys_suspend>
  24:	3d44      	cmpnei      	r5, 4
  26:	6d00      	or      	r4, r0
  28:	74d6      	sextb      	r3, r5
  2a:	0bf4      	bt      	0x12	// 12 <sys_suspend+0x12>
  2c:	6c13      	mov      	r0, r4
  2e:	1402      	addi      	r14, r14, 8
  30:	1493      	pop      	r4-r6, r15

Disassembly of section .text.sys_resume:

00000000 <sys_resume>:
   0:	14d4      	push      	r4-r7, r15
   2:	1422      	subi      	r14, r14, 8
   4:	3500      	movi      	r5, 0
   6:	3300      	movi      	r3, 0
   8:	6d97      	mov      	r6, r5
   a:	6dc3      	mov      	r7, r0
   c:	dc6e0000 	st.b      	r3, (r14, 0x0)
  10:	dc2e0004 	st.b      	r1, (r14, 0x4)
  14:	3403      	movi      	r4, 3
  16:	2e00      	subi      	r6, 1
  18:	74d0      	zextb      	r3, r4
  1a:	5b83      	subi      	r4, r3, 1
  1c:	7512      	sextb      	r4, r4
  1e:	6c7b      	mov      	r1, r14
  20:	6c1f      	mov      	r0, r7
  22:	dc6e0001 	st.b      	r3, (r14, 0x1)
  26:	e0000000 	bsr      	0x0	// 0 <sys_resume>
  2a:	6592      	cmpne      	r4, r6
  2c:	6d40      	or      	r5, r0
  2e:	0bf5      	bt      	0x18	// 18 <sys_resume+0x18>
  30:	6c17      	mov      	r0, r5
  32:	1402      	addi      	r14, r14, 8
  34:	1494      	pop      	r4-r7, r15
