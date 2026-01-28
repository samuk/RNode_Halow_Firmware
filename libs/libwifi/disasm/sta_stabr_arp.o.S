
libwifi/o/sta_stabr_arp.o:     file format elf32-csky-little


Disassembly of section .text.stabr_arp_tx_handle:

00000000 <stabr_arp_tx_handle>:
   0:	14d4      	push      	r4-r7, r15
   2:	9187      	ld.w      	r4, (r1, 0x1c)
   4:	6d83      	mov      	r6, r0
   6:	8c46      	ld.h      	r2, (r4, 0xc)
   8:	4268      	lsli      	r3, r2, 8
   a:	c50255e2 	zext      	r2, r2, 15, 8
   e:	6cc8      	or      	r3, r2
  10:	74cd      	zexth      	r3, r3
  12:	eb438100 	cmpnei      	r3, 33024
  16:	6d47      	mov      	r5, r1
  18:	082b      	bt      	0x6e	// 6e <stabr_arp_tx_handle+0x6e>
  1a:	e4640011 	addi      	r3, r4, 18
  1e:	8446      	ld.b      	r2, (r4, 0x6)
  20:	e4422001 	andi      	r2, r2, 1
  24:	e9220023 	bnez      	r2, 0x6a	// 6a <stabr_arp_tx_handle+0x6a>
  28:	832e      	ld.b      	r1, (r3, 0xe)
  2a:	834f      	ld.b      	r2, (r3, 0xf)
  2c:	4250      	lsli      	r2, r2, 16
  2e:	4138      	lsli      	r1, r1, 24
  30:	6c48      	or      	r1, r2
  32:	5bfe      	addi      	r7, r3, 8
  34:	8351      	ld.b      	r2, (r3, 0x11)
  36:	8370      	ld.b      	r3, (r3, 0x10)
  38:	6c48      	or      	r1, r2
  3a:	4368      	lsli      	r3, r3, 8
  3c:	6c4c      	or      	r1, r3
  3e:	e901000b 	bez      	r1, 0x54	// 54 <stabr_arp_tx_handle+0x54>
  42:	8460      	ld.b      	r3, (r4, 0x0)
  44:	6cce      	nor      	r3, r3
  46:	e4632001 	andi      	r3, r3, 1
  4a:	6c9f      	mov      	r2, r7
  4c:	d806205b 	ld.w      	r0, (r6, 0x16c)
  50:	e0000000 	bsr      	0x0	// 0 <ieee80211_stabr_update>
  54:	2605      	addi      	r6, 6
  56:	3206      	movi      	r2, 6
  58:	6c5b      	mov      	r1, r6
  5a:	6c1f      	mov      	r0, r7
  5c:	e0000000 	bsr      	0x0	// 0 <memcpy>
  60:	3206      	movi      	r2, 6
  62:	6c5b      	mov      	r1, r6
  64:	5c08      	addu      	r0, r4, r2
  66:	e0000000 	bsr      	0x0	// 0 <memcpy>
  6a:	6c17      	mov      	r0, r5
  6c:	1494      	pop      	r4-r7, r15
  6e:	e464000d 	addi      	r3, r4, 14
  72:	07d6      	br      	0x1e	// 1e <stabr_arp_tx_handle+0x1e>

Disassembly of section .text.stabr_arp_rx_handle:

00000000 <stabr_arp_rx_handle>:
   0:	14d4      	push      	r4-r7, r15
   2:	91c7      	ld.w      	r6, (r1, 0x1c)
   4:	6dc7      	mov      	r7, r1
   6:	8e46      	ld.h      	r2, (r6, 0xc)
   8:	4268      	lsli      	r3, r2, 8
   a:	c50255e2 	zext      	r2, r2, 15, 8
   e:	6cc8      	or      	r3, r2
  10:	74cd      	zexth      	r3, r3
  12:	eb438100 	cmpnei      	r3, 33024
  16:	0829      	bt      	0x68	// 68 <stabr_arp_rx_handle+0x68>
  18:	e4a60011 	addi      	r5, r6, 18
  1c:	8660      	ld.b      	r3, (r6, 0x0)
  1e:	e4632001 	andi      	r3, r3, 1
  22:	e9230021 	bnez      	r3, 0x64	// 64 <stabr_arp_rx_handle+0x64>
  26:	8538      	ld.b      	r1, (r5, 0x18)
  28:	8579      	ld.b      	r3, (r5, 0x19)
  2a:	4370      	lsli      	r3, r3, 16
  2c:	4138      	lsli      	r1, r1, 24
  2e:	6c4c      	or      	r1, r3
  30:	857b      	ld.b      	r3, (r5, 0x1b)
  32:	6c4c      	or      	r1, r3
  34:	857a      	ld.b      	r3, (r5, 0x1a)
  36:	4368      	lsli      	r3, r3, 8
  38:	6c4c      	or      	r1, r3
  3a:	e9010015 	bez      	r1, 0x64	// 64 <stabr_arp_rx_handle+0x64>
  3e:	d800205b 	ld.w      	r0, (r0, 0x16c)
  42:	e0000000 	bsr      	0x0	// 0 <ieee80211_stabr_find>
  46:	e9000014 	bez      	r0, 0x6e	// 6e <stabr_arp_rx_handle+0x6e>
  4a:	e4800015 	addi      	r4, r0, 22
  4e:	3206      	movi      	r2, 6
  50:	6c53      	mov      	r1, r4
  52:	e4050011 	addi      	r0, r5, 18
  56:	e0000000 	bsr      	0x0	// 0 <memcpy>
  5a:	3206      	movi      	r2, 6
  5c:	6c53      	mov      	r1, r4
  5e:	6c1b      	mov      	r0, r6
  60:	e0000000 	bsr      	0x0	// 0 <memcpy>
  64:	6c1f      	mov      	r0, r7
  66:	1494      	pop      	r4-r7, r15
  68:	e4a6000d 	addi      	r5, r6, 14
  6c:	07d8      	br      	0x1c	// 1c <stabr_arp_rx_handle+0x1c>
  6e:	6dc3      	mov      	r7, r0
  70:	07fa      	br      	0x64	// 64 <stabr_arp_rx_handle+0x64>
