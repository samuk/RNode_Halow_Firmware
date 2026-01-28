
libwifi/o/lib_rc4.o:     file format elf32-csky-little


Disassembly of section .text.rc4_skip:

00000000 <rc4_skip>:
   0:	14c5      	push      	r4-r8
   2:	1620      	subi      	r14, r14, 256
   4:	d98e2045 	ld.w      	r12, (r14, 0x114)
   8:	6e33      	mov      	r8, r12
   a:	ea0c0000 	movi      	r12, 0
   e:	d5cc002c 	str.b      	r12, (r12, r14 << 0)
  12:	e58c0000 	addi      	r12, r12, 1
  16:	eb4c0100 	cmpnei      	r12, 256
  1a:	0bfa      	bt      	0xe	// e <rc4_skip+0xe>
  1c:	ea0c0000 	movi      	r12, 0
  20:	6f73      	mov      	r13, r12
  22:	6d33      	mov      	r4, r12
  24:	6df3      	mov      	r7, r12
  26:	d08e0026 	ldr.b      	r6, (r14, r4 << 0)
  2a:	d1800025 	ldr.b      	r5, (r0, r12 << 0)
  2e:	6158      	addu      	r5, r6
  30:	6354      	addu      	r13, r5
  32:	e5ad20ff 	andi      	r13, r13, 255
  36:	e58c0000 	addi      	r12, r12, 1
  3a:	d1ae0025 	ldr.b      	r5, (r14, r13 << 0)
  3e:	6470      	cmphs      	r12, r1
  40:	d48e0025 	str.b      	r5, (r14, r4 << 0)
  44:	2400      	addi      	r4, 1
  46:	c5870c40 	inct      	r12, r7, 0
  4a:	eb440100 	cmpnei      	r4, 256
  4e:	d5ae0026 	str.b      	r6, (r14, r13 << 0)
  52:	0bea      	bt      	0x26	// 26 <rc4_skip+0x26>
  54:	ea0c0000 	movi      	r12, 0
  58:	6c33      	mov      	r0, r12
  5a:	6c73      	mov      	r1, r12
  5c:	64b2      	cmpne      	r12, r2
  5e:	0808      	bt      	0x6e	// 6e <rc4_skip+0x6e>
  60:	6f23      	mov      	r12, r8
  62:	630c      	addu      	r12, r3
  64:	64f2      	cmpne      	r12, r3
  66:	0815      	bt      	0x90	// 90 <rc4_skip+0x90>
  68:	3000      	movi      	r0, 0
  6a:	1600      	addi      	r14, r14, 256
  6c:	1485      	pop      	r4-r8
  6e:	2100      	addi      	r1, 1
  70:	e42120ff 	andi      	r1, r1, 255
  74:	d02e002d 	ldr.b      	r13, (r14, r1 << 0)
  78:	6034      	addu      	r0, r13
  7a:	e40020ff 	andi      	r0, r0, 255
  7e:	d00e0024 	ldr.b      	r4, (r14, r0 << 0)
  82:	d42e0024 	str.b      	r4, (r14, r1 << 0)
  86:	e58c0000 	addi      	r12, r12, 1
  8a:	d40e002d 	str.b      	r13, (r14, r0 << 0)
  8e:	07e7      	br      	0x5c	// 5c <rc4_skip+0x5c>
  90:	2100      	addi      	r1, 1
  92:	e42120ff 	andi      	r1, r1, 255
  96:	d02e0022 	ldr.b      	r2, (r14, r1 << 0)
  9a:	6008      	addu      	r0, r2
  9c:	e40020ff 	andi      	r0, r0, 255
  a0:	d00e002d 	ldr.b      	r13, (r14, r0 << 0)
  a4:	d42e002d 	str.b      	r13, (r14, r1 << 0)
  a8:	d40e0022 	str.b      	r2, (r14, r0 << 0)
  ac:	d02e002d 	ldr.b      	r13, (r14, r1 << 0)
  b0:	60b4      	addu      	r2, r13
  b2:	7488      	zextb      	r2, r2
  b4:	d9a30000 	ld.b      	r13, (r3, 0x0)
  b8:	d04e0022 	ldr.b      	r2, (r14, r2 << 0)
  bc:	6cb5      	xor      	r2, r13
  be:	a340      	st.b      	r2, (r3, 0x0)
  c0:	2300      	addi      	r3, 1
  c2:	07d1      	br      	0x64	// 64 <rc4_skip+0x64>
