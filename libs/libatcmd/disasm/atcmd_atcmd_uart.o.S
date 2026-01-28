
libatcmd/o/atcmd_atcmd_uart.o:     file format elf32-csky-little


Disassembly of section .text.atcmd_uart_read:

00000000 <atcmd_uart_read>:
   0:	14d4      	push      	r4-r7, r15
   2:	6d83      	mov      	r6, r0
   4:	6dcb      	mov      	r7, r2
   6:	6d47      	mov      	r5, r1
   8:	3400      	movi      	r4, 0
   a:	65d1      	cmplt      	r4, r7
   c:	0c09      	bf      	0x1e	// 1e <atcmd_uart_read+0x1e>
   e:	3300      	movi      	r3, 0
  10:	6c8f      	mov      	r2, r3
  12:	3107      	movi      	r1, 7
  14:	9602      	ld.w      	r0, (r6, 0x8)
  16:	e0000000 	bsr      	0x0	// 0 <uart_ioctl>
  1a:	e9200004 	bnez      	r0, 0x22	// 22 <atcmd_uart_read+0x22>
  1e:	6c13      	mov      	r0, r4
  20:	1494      	pop      	r4-r7, r15
  22:	9602      	ld.w      	r0, (r6, 0x8)
  24:	e0000000 	bsr      	0x0	// 0 <uart_getc>
  28:	a500      	st.b      	r0, (r5, 0x0)
  2a:	2400      	addi      	r4, 1
  2c:	2500      	addi      	r5, 1
  2e:	07ee      	br      	0xa	// a <atcmd_uart_read+0xa>

Disassembly of section .text.atcmd_uart_write:

00000000 <atcmd_uart_write>:
   0:	14d0      	push      	r15
   2:	9002      	ld.w      	r0, (r0, 0x8)
   4:	e0000000 	bsr      	0x0	// 0 <uart_puts>
   8:	1490      	pop      	r15

Disassembly of section .text.atcmd_uart_irq_hdl:

00000000 <atcmd_uart_irq_hdl>:
   0:	14d3      	push      	r4-r6, r15
   2:	3848      	cmpnei      	r0, 8
   4:	6d07      	mov      	r4, r1
   6:	6d4b      	mov      	r5, r2
   8:	0c06      	bf      	0x14	// 14 <atcmd_uart_irq_hdl+0x14>
   a:	eb400020 	cmpnei      	r0, 32
   e:	0c18      	bf      	0x3e	// 3e <atcmd_uart_irq_hdl+0x3e>
  10:	3842      	cmpnei      	r0, 2
  12:	082c      	bt      	0x6a	// 6a <atcmd_uart_irq_hdl+0x6a>
  14:	3100      	movi      	r1, 0
  16:	6c07      	mov      	r0, r1
  18:	e0000000 	bsr      	0x0	// 0 <atcmd_output_hdl>
  1c:	5c74      	addu      	r3, r4, r5
  1e:	3200      	movi      	r2, 0
  20:	e4c4002b 	addi      	r6, r4, 44
  24:	dc43002c 	st.b      	r2, (r3, 0x2c)
  28:	6c57      	mov      	r1, r5
  2a:	6c1b      	mov      	r0, r6
  2c:	e0000000 	bsr      	0x0	// 0 <atcmd_recv>
  30:	3281      	movi      	r2, 129
  32:	4243      	lsli      	r2, r2, 3
  34:	6c5b      	mov      	r1, r6
  36:	9402      	ld.w      	r0, (r4, 0x8)
  38:	e0000000 	bsr      	0x0	// 0 <uart_gets>
  3c:	0417      	br      	0x6a	// 6a <os_jiffies+0x6a>
  3e:	e0000000 	bsr      	0x0	// 0 <os_jiffies>
  42:	d8640439 	ld.b      	r3, (r4, 0x439)
  46:	3201      	movi      	r2, 1
  48:	c4625c00 	ins      	r3, r2, 0, 0
  4c:	dc640439 	st.b      	r3, (r4, 0x439)
  50:	946a      	ld.w      	r3, (r4, 0x28)
  52:	608c      	addu      	r2, r3
  54:	eb020407 	cmphsi      	r2, 1032
  58:	dc04210f 	st.w      	r0, (r4, 0x43c)
  5c:	dc242110 	st.w      	r1, (r4, 0x440)
  60:	0805      	bt      	0x6a	// 6a <atcmd_uart_irq_hdl+0x6a>
  62:	b44a      	st.w      	r2, (r4, 0x28)
  64:	610c      	addu      	r4, r3
  66:	dca4002c 	st.b      	r5, (r4, 0x2c)
  6a:	3000      	movi      	r0, 0
  6c:	1493      	pop      	r4-r6, r15

Disassembly of section .text.atcmd_uart_timer_cb:

00000000 <atcmd_uart_timer_cb>:
   0:	1424      	subi      	r14, r14, 16
   2:	b880      	st.w      	r4, (r14, 0x0)
   4:	b8c1      	st.w      	r6, (r14, 0x4)
   6:	b8e2      	st.w      	r7, (r14, 0x8)
   8:	ddee2003 	st.w      	r15, (r14, 0xc)
   c:	d8600439 	ld.b      	r3, (r0, 0x439)
  10:	e4632001 	andi      	r3, r3, 1
  14:	6d03      	mov      	r4, r0
  16:	e9030027 	bez      	r3, 0x64	// 64 <atcmd_uart_timer_cb+0x64>
  1a:	e0000000 	bsr      	0x0	// 0 <os_jiffies>
  1e:	3700      	movi      	r7, 0
  20:	d8c40438 	ld.b      	r6, (r4, 0x438)
  24:	d844210f 	ld.w      	r2, (r4, 0x43c)
  28:	d8642110 	ld.w      	r3, (r4, 0x440)
  2c:	6489      	cmplt      	r2, r2
  2e:	6099      	addc      	r2, r6
  30:	60dd      	addc      	r3, r7
  32:	6488      	cmphs      	r2, r2
  34:	6083      	subc      	r2, r0
  36:	60c7      	subc      	r3, r1
  38:	e9a30016 	bhsz      	r3, 0x64	// 64 <atcmd_uart_timer_cb+0x64>
  3c:	6c5f      	mov      	r1, r7
  3e:	6c1f      	mov      	r0, r7
  40:	e0000000 	bsr      	0x0	// 0 <atcmd_output_hdl>
  44:	942a      	ld.w      	r1, (r4, 0x28)
  46:	5c64      	addu      	r3, r4, r1
  48:	3200      	movi      	r2, 0
  4a:	dc43002c 	st.b      	r2, (r3, 0x2c)
  4e:	e404002b 	addi      	r0, r4, 44
  52:	e0000000 	bsr      	0x0	// 0 <atcmd_recv>
  56:	d8640439 	ld.b      	r3, (r4, 0x439)
  5a:	c4675c00 	ins      	r3, r7, 0, 0
  5e:	b4ea      	st.w      	r7, (r4, 0x28)
  60:	dc640439 	st.b      	r3, (r4, 0x439)
  64:	d9ee2003 	ld.w      	r15, (r14, 0xc)
  68:	98e2      	ld.w      	r7, (r14, 0x8)
  6a:	98c1      	ld.w      	r6, (r14, 0x4)
  6c:	9880      	ld.w      	r4, (r14, 0x0)
  6e:	1404      	addi      	r14, r14, 16
  70:	783c      	jmp      	r15

Disassembly of section .text.atcmd_uart_init:

00000000 <atcmd_uart_init>:
   0:	14d5      	push      	r4-r8, r15
   2:	6e03      	mov      	r8, r0
   4:	ea000444 	movi      	r0, 1092
   8:	6d47      	mov      	r5, r1
   a:	6d8b      	mov      	r6, r2
   c:	6dcf      	mov      	r7, r3
   e:	e0000000 	bsr      	0x0	// 0 <_os_zalloc>
  12:	6d03      	mov      	r4, r0
  14:	6c23      	mov      	r0, r8
  16:	e0000000 	bsr      	0x0	// 0 <dev_get>
  1a:	b402      	st.w      	r0, (r4, 0x8)
  1c:	e9200007 	bnez      	r0, 0x2a	// 2a <atcmd_uart_init+0x2a>
  20:	1053      	lrw      	r2, 0x0	// 6c <atcmd_uart_init+0x6c>
  22:	315d      	movi      	r1, 93
  24:	1013      	lrw      	r0, 0x0	// 70 <atcmd_uart_init+0x70>
  26:	e0000000 	bsr      	0x0	// 0 <assert_internal>
  2a:	6c57      	mov      	r1, r5
  2c:	9402      	ld.w      	r0, (r4, 0x8)
  2e:	e0000000 	bsr      	0x0	// 0 <uart_open>
  32:	e4a4000b 	addi      	r5, r4, 12
  36:	6cd3      	mov      	r3, r4
  38:	dcc40438 	st.b      	r6, (r4, 0x438)
  3c:	3220      	movi      	r2, 32
  3e:	102e      	lrw      	r1, 0x0	// 74 <atcmd_uart_init+0x74>
  40:	9402      	ld.w      	r0, (r4, 0x8)
  42:	e0000000 	bsr      	0x0	// 0 <uart_request_irq>
  46:	6cd3      	mov      	r3, r4
  48:	3201      	movi      	r2, 1
  4a:	102c      	lrw      	r1, 0x0	// 78 <atcmd_uart_init+0x78>
  4c:	6c17      	mov      	r0, r5
  4e:	e0000000 	bsr      	0x0	// 0 <os_timer_init>
  52:	6c5b      	mov      	r1, r6
  54:	6c17      	mov      	r0, r5
  56:	e0000000 	bsr      	0x0	// 0 <os_timer_start>
  5a:	1069      	lrw      	r3, 0x0	// 7c <atcmd_uart_init+0x7c>
  5c:	6c5f      	mov      	r1, r7
  5e:	b460      	st.w      	r3, (r4, 0x0)
  60:	6c13      	mov      	r0, r4
  62:	1068      	lrw      	r3, 0x0	// 80 <atcmd_uart_init+0x80>
  64:	b461      	st.w      	r3, (r4, 0x4)
  66:	e0000000 	bsr      	0x0	// 0 <atcmd_init>
  6a:	1495      	pop      	r4-r8, r15
	...
