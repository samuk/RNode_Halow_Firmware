
libwifi/o/sta_stabr_ip.o:     file format elf32-csky-little


Disassembly of section .text.__get_unaligned_be32:

00000000 <__get_unaligned_be32>:
   0:	8060      	ld.b      	r3, (r0, 0x0)
   2:	8041      	ld.b      	r2, (r0, 0x1)
   4:	4250      	lsli      	r2, r2, 16
   6:	4378      	lsli      	r3, r3, 24
   8:	6cc8      	or      	r3, r2
   a:	8043      	ld.b      	r2, (r0, 0x3)
   c:	8002      	ld.b      	r0, (r0, 0x2)
   e:	6cc8      	or      	r3, r2
  10:	4008      	lsli      	r0, r0, 8
  12:	6c0c      	or      	r0, r3
  14:	783c      	jmp      	r15

Disassembly of section .text.stabr_ip_find_spec_id.part.2:

00000000 <stabr_ip_find_spec_id.part.2>:
   0:	14d0      	push      	r15
   2:	8074      	ld.b      	r3, (r0, 0x14)
   4:	4368      	lsli      	r3, r3, 8
   6:	8055      	ld.b      	r2, (r0, 0x15)
   8:	6cc8      	or      	r3, r2
   a:	74cf      	sexth      	r3, r3
   c:	eb430043 	cmpnei      	r3, 67
  10:	0c09      	bf      	0x22	// 22 <stabr_ip_find_spec_id.part.2+0x22>
  12:	8076      	ld.b      	r3, (r0, 0x16)
  14:	4368      	lsli      	r3, r3, 8
  16:	8057      	ld.b      	r2, (r0, 0x17)
  18:	6cc8      	or      	r3, r2
  1a:	74cf      	sexth      	r3, r3
  1c:	eb430043 	cmpnei      	r3, 67
  20:	0805      	bt      	0x2a	// 2a <stabr_ip_find_spec_id.part.2+0x2a>
  22:	201f      	addi      	r0, 32
  24:	e0000000 	bsr      	0x0	// 0 <stabr_ip_find_spec_id.part.2>
  28:	1490      	pop      	r15
  2a:	3000      	movi      	r0, 0
  2c:	07fe      	br      	0x28	// 28 <stabr_ip_find_spec_id.part.2+0x28>

Disassembly of section .text.stabr_ip_tx_handle:

00000000 <stabr_ip_tx_handle>:
   0:	14d5      	push      	r4-r8, r15
   2:	1421      	subi      	r14, r14, 4
   4:	91c7      	ld.w      	r6, (r1, 0x1c)
   6:	6dc3      	mov      	r7, r0
   8:	8e46      	ld.h      	r2, (r6, 0xc)
   a:	4268      	lsli      	r3, r2, 8
   c:	c50255e2 	zext      	r2, r2, 15, 8
  10:	6cc8      	or      	r3, r2
  12:	74cd      	zexth      	r3, r3
  14:	eb438100 	cmpnei      	r3, 33024
  18:	6d47      	mov      	r5, r1
  1a:	084b      	bt      	0xb0	// b0 <stabr_ip_tx_handle+0xb0>
  1c:	e4860011 	addi      	r4, r6, 18
  20:	8469      	ld.b      	r3, (r4, 0x9)
  22:	3b51      	cmpnei      	r3, 17
  24:	e5060005 	addi      	r8, r6, 6
  28:	0806      	bt      	0x34	// 34 <stabr_ip_tx_handle+0x34>
  2a:	6c13      	mov      	r0, r4
  2c:	e0000000 	bsr      	0x0	// 0 <stabr_ip_tx_handle>
  30:	e9200043 	bnez      	r0, 0xb6	// b6 <stabr_ip_tx_handle+0xb6>
  34:	e404000b 	addi      	r0, r4, 12
  38:	e0000000 	bsr      	0x0	// 0 <stabr_ip_tx_handle>
  3c:	e920003d 	bnez      	r0, 0xb6	// b6 <stabr_ip_tx_handle+0xb6>
  40:	3206      	movi      	r2, 6
  42:	5f28      	addu      	r1, r7, r2
  44:	6c23      	mov      	r0, r8
  46:	e0000000 	bsr      	0x0	// 0 <memcpy>
  4a:	8469      	ld.b      	r3, (r4, 0x9)
  4c:	3b51      	cmpnei      	r3, 17
  4e:	082e      	bt      	0xaa	// aa <stabr_ip_tx_handle+0xaa>
  50:	8474      	ld.b      	r3, (r4, 0x14)
  52:	4368      	lsli      	r3, r3, 8
  54:	8455      	ld.b      	r2, (r4, 0x15)
  56:	6cc8      	or      	r3, r2
  58:	74cf      	sexth      	r3, r3
  5a:	eb430043 	cmpnei      	r3, 67
  5e:	0c09      	bf      	0x70	// 70 <stabr_ip_tx_handle+0x70>
  60:	8476      	ld.b      	r3, (r4, 0x16)
  62:	4368      	lsli      	r3, r3, 8
  64:	8457      	ld.b      	r2, (r4, 0x17)
  66:	6cc8      	or      	r3, r2
  68:	74cf      	sexth      	r3, r3
  6a:	eb430043 	cmpnei      	r3, 67
  6e:	081e      	bt      	0xaa	// aa <stabr_ip_tx_handle+0xaa>
  70:	d8640026 	ld.b      	r3, (r4, 0x26)
  74:	748e      	sextb      	r2, r3
  76:	e982001a 	blz      	r2, 0xaa	// aa <stabr_ip_tx_handle+0xaa>
  7a:	3200      	movi      	r2, 0
  7c:	2a7f      	subi      	r2, 128
  7e:	6cc8      	or      	r3, r2
  80:	e4240013 	addi      	r1, r4, 20
  84:	dc640026 	st.b      	r3, (r4, 0x26)
  88:	3300      	movi      	r3, 0
  8a:	a963      	st.h      	r3, (r1, 0x6)
  8c:	8458      	ld.b      	r2, (r4, 0x18)
  8e:	8419      	ld.b      	r0, (r4, 0x19)
  90:	e464000f 	addi      	r3, r4, 16
  94:	4248      	lsli      	r2, r2, 8
  96:	b860      	st.w      	r3, (r14, 0x0)
  98:	6c80      	or      	r2, r0
  9a:	e464000b 	addi      	r3, r4, 12
  9e:	3011      	movi      	r0, 17
  a0:	e0000000 	bsr      	0x0	// 0 <net_pseudo_checksum>
  a4:	4868      	lsri      	r3, r0, 8
  a6:	a47a      	st.b      	r3, (r4, 0x1a)
  a8:	a41b      	st.b      	r0, (r4, 0x1b)
  aa:	6c17      	mov      	r0, r5
  ac:	1401      	addi      	r14, r14, 4
  ae:	1495      	pop      	r4-r8, r15
  b0:	e486000d 	addi      	r4, r6, 14
  b4:	07b6      	br      	0x20	// 20 <stabr_ip_tx_handle+0x20>
  b6:	8666      	ld.b      	r3, (r6, 0x6)
  b8:	e4632001 	andi      	r3, r3, 1
  bc:	e923ffc2 	bnez      	r3, 0x40	// 40 <stabr_ip_tx_handle+0x40>
  c0:	6c43      	mov      	r1, r0
  c2:	6ca3      	mov      	r2, r8
  c4:	d807205b 	ld.w      	r0, (r7, 0x16c)
  c8:	e0000000 	bsr      	0x0	// 0 <ieee80211_stabr_update>
  cc:	07ba      	br      	0x40	// 40 <stabr_ip_tx_handle+0x40>

Disassembly of section .text.stabr_ip_rx_handle:

00000000 <stabr_ip_rx_handle>:
   0:	14d4      	push      	r4-r7, r15
   2:	9187      	ld.w      	r4, (r1, 0x1c)
   4:	6dc3      	mov      	r7, r0
   6:	8c46      	ld.h      	r2, (r4, 0xc)
   8:	4268      	lsli      	r3, r2, 8
   a:	c50255e2 	zext      	r2, r2, 15, 8
   e:	6cc8      	or      	r3, r2
  10:	74cd      	zexth      	r3, r3
  12:	eb438100 	cmpnei      	r3, 33024
  16:	6d87      	mov      	r6, r1
  18:	0813      	bt      	0x3e	// 3e <stabr_ip_rx_handle+0x3e>
  1a:	e4a40011 	addi      	r5, r4, 18
  1e:	8569      	ld.b      	r3, (r5, 0x9)
  20:	3b51      	cmpnei      	r3, 17
  22:	0806      	bt      	0x2e	// 2e <stabr_ip_rx_handle+0x2e>
  24:	6c17      	mov      	r0, r5
  26:	e0000000 	bsr      	0x0	// 0 <stabr_ip_rx_handle>
  2a:	e920000d 	bnez      	r0, 0x44	// 44 <stabr_ip_rx_handle+0x44>
  2e:	e405000f 	addi      	r0, r5, 16
  32:	e0000000 	bsr      	0x0	// 0 <stabr_ip_rx_handle>
  36:	e9200007 	bnez      	r0, 0x44	// 44 <stabr_ip_rx_handle+0x44>
  3a:	6c1b      	mov      	r0, r6
  3c:	1494      	pop      	r4-r7, r15
  3e:	e4a4000d 	addi      	r5, r4, 14
  42:	07ee      	br      	0x1e	// 1e <stabr_ip_rx_handle+0x1e>
  44:	8460      	ld.b      	r3, (r4, 0x0)
  46:	e4632001 	andi      	r3, r3, 1
  4a:	e923fff8 	bnez      	r3, 0x3a	// 3a <stabr_ip_rx_handle+0x3a>
  4e:	6c43      	mov      	r1, r0
  50:	d807205b 	ld.w      	r0, (r7, 0x16c)
  54:	e0000000 	bsr      	0x0	// 0 <ieee80211_stabr_find>
  58:	e900fff1 	bez      	r0, 0x3a	// 3a <stabr_ip_rx_handle+0x3a>
  5c:	e4200015 	addi      	r1, r0, 22
  60:	3206      	movi      	r2, 6
  62:	6c13      	mov      	r0, r4
  64:	e0000000 	bsr      	0x0	// 0 <memcpy>
  68:	07e9      	br      	0x3a	// 3a <stabr_ip_rx_handle+0x3a>
