
libwifi/o/lib_eloop.o:     file format elf32-csky-little


Disassembly of section .text.eloop_timer_cb:

00000000 <eloop_timer_cb>:
   0:	14d0      	push      	r15
   2:	3301      	movi      	r3, 1
   4:	dc600208 	st.b      	r3, (r0, 0x208)
   8:	e0000000 	bsr      	0x0	// 0 <os_sema_up>
   c:	1490      	pop      	r15

Disassembly of section .text.eloop_timer_reset:

00000000 <eloop_timer_reset>:
   0:	14d4      	push      	r4-r7, r15
   2:	6d03      	mov      	r4, r0
   4:	5cbe      	addi      	r5, r4, 8
   6:	e0000000 	bsr      	0x0	// 0 <os_jiffies>
   a:	6d83      	mov      	r6, r0
   c:	6dc7      	mov      	r7, r1
   e:	6c17      	mov      	r0, r5
  10:	e0000000 	bsr      	0x0	// 0 <os_timer_stop>
  14:	9460      	ld.w      	r3, (r4, 0x0)
  16:	64d2      	cmpne      	r4, r3
  18:	0c17      	bf      	0x46	// 46 <eloop_timer_reset+0x46>
  1a:	e9030016 	bez      	r3, 0x46	// 46 <eloop_timer_reset+0x46>
  1e:	9342      	ld.w      	r2, (r3, 0x8)
  20:	9363      	ld.w      	r3, (r3, 0xc)
  22:	649a      	cmpne      	r6, r2
  24:	0803      	bt      	0x2a	// 2a <eloop_timer_reset+0x2a>
  26:	64de      	cmpne      	r7, r3
  28:	0c08      	bf      	0x38	// 38 <eloop_timer_reset+0x38>
  2a:	6400      	cmphs      	r0, r0
  2c:	c4c20100 	subc      	r0, r2, r6
  30:	c4e30101 	subc      	r1, r3, r7
  34:	e9a1000a 	bhsz      	r1, 0x48	// 48 <eloop_timer_reset+0x48>
  38:	e40411e3 	subi      	r0, r4, 484
  3c:	3301      	movi      	r3, 1
  3e:	dc600208 	st.b      	r3, (r0, 0x208)
  42:	e0000000 	bsr      	0x0	// 0 <os_sema_up>
  46:	1494      	pop      	r4-r7, r15
  48:	5a39      	subu      	r1, r2, r6
  4a:	6c17      	mov      	r0, r5
  4c:	e0000000 	bsr      	0x0	// 0 <os_timer_start>
  50:	07fb      	br      	0x46	// 46 <eloop_timer_reset+0x46>

Disassembly of section .text.eloop_add_timeout.constprop.2:

00000000 <eloop_add_timeout.constprop.2>:
   0:	14c2      	push      	r4-r5
   2:	1091      	lrw      	r4, 0x0	// 44 <eloop_add_timeout.constprop.2+0x44>
   4:	e4a401e3 	addi      	r5, r4, 484
   8:	d8242079 	ld.w      	r1, (r4, 0x1e4)
   c:	6546      	cmpne      	r1, r5
   e:	0807      	bt      	0x1c	// 1c <eloop_add_timeout.constprop.2+0x1c>
  10:	d864207a 	ld.w      	r3, (r4, 0x1e8)
  14:	dc04207a 	st.w      	r0, (r4, 0x1e8)
  18:	b020      	st.w      	r1, (r0, 0x0)
  1a:	0410      	br      	0x3a	// 3a <eloop_add_timeout.constprop.2+0x3a>
  1c:	9042      	ld.w      	r2, (r0, 0x8)
  1e:	9063      	ld.w      	r3, (r0, 0xc)
  20:	d9812002 	ld.w      	r12, (r1, 0x8)
  24:	d9a12003 	ld.w      	r13, (r1, 0xc)
  28:	6488      	cmphs      	r2, r2
  2a:	60b3      	subc      	r2, r12
  2c:	60f7      	subc      	r3, r13
  2e:	e9a30009 	bhsz      	r3, 0x40	// 40 <eloop_add_timeout.constprop.2+0x40>
  32:	9161      	ld.w      	r3, (r1, 0x4)
  34:	9340      	ld.w      	r2, (r3, 0x0)
  36:	b201      	st.w      	r0, (r2, 0x4)
  38:	b040      	st.w      	r2, (r0, 0x0)
  3a:	b061      	st.w      	r3, (r0, 0x4)
  3c:	b300      	st.w      	r0, (r3, 0x0)
  3e:	1482      	pop      	r4-r5
  40:	9120      	ld.w      	r1, (r1, 0x0)
  42:	07e5      	br      	0xc	// c <eloop_add_timeout.constprop.2+0xc>
  44:	00000000 	.long	0x00000000

Disassembly of section .text.eloop_remove_timeout:

00000000 <eloop_remove_timeout>:
   0:	14d0      	push      	r15
   2:	9061      	ld.w      	r3, (r0, 0x4)
   4:	9040      	ld.w      	r2, (r0, 0x0)
   6:	e9030006 	bez      	r3, 0x12	// 12 <eloop_remove_timeout+0x12>
   a:	e9020004 	bez      	r2, 0x12	// 12 <eloop_remove_timeout+0x12>
   e:	b261      	st.w      	r3, (r2, 0x4)
  10:	b340      	st.w      	r2, (r3, 0x0)
  12:	3300      	movi      	r3, 0
  14:	b060      	st.w      	r3, (r0, 0x0)
  16:	b061      	st.w      	r3, (r0, 0x4)
  18:	e0000000 	bsr      	0x0	// 0 <_os_free>
  1c:	1490      	pop      	r15

Disassembly of section .text.eloop_register_timeout:

00000000 <eloop_register_timeout>:
   0:	14d7      	push      	r4-r10, r15
   2:	6d07      	mov      	r4, r1
   4:	31fa      	movi      	r1, 250
   6:	4122      	lsli      	r1, r1, 2
   8:	c420842a 	mult      	r10, r0, r1
   c:	c4248021 	divu      	r1, r4, r1
  10:	6d4b      	mov      	r5, r2
  12:	6e4f      	mov      	r9, r3
  14:	d90e2008 	ld.w      	r8, (r14, 0x20)
  18:	6284      	addu      	r10, r1
  1a:	e9200009 	bnez      	r0, 0x2c	// 2c <eloop_register_timeout+0x2c>
  1e:	e9240007 	bnez      	r4, 0x2c	// 2c <eloop_register_timeout+0x2c>
  22:	6c0f      	mov      	r0, r3
  24:	6c63      	mov      	r1, r8
  26:	7bc9      	jsr      	r2
  28:	6c13      	mov      	r0, r4
  2a:	1497      	pop      	r4-r10, r15
  2c:	301c      	movi      	r0, 28
  2e:	e0000000 	bsr      	0x0	// 0 <_os_zalloc>
  32:	6d03      	mov      	r4, r0
  34:	e920000a 	bnez      	r0, 0x48	// 48 <eloop_register_timeout+0x48>
  38:	100f      	lrw      	r0, 0x0	// 74 <eloop_register_timeout+0x74>
  3a:	3248      	movi      	r2, 72
  3c:	102f      	lrw      	r1, 0x0	// 78 <eloop_register_timeout+0x78>
  3e:	e0000000 	bsr      	0x0	// 0 <hgprintf>
  42:	3000      	movi      	r0, 0
  44:	2800      	subi      	r0, 1
  46:	07f2      	br      	0x2a	// 2a <eloop_register_timeout+0x2a>
  48:	e0000000 	bsr      	0x0	// 0 <os_jiffies>
  4c:	3700      	movi      	r7, 0
  4e:	6dab      	mov      	r6, r10
  50:	6401      	cmplt      	r0, r0
  52:	6019      	addc      	r0, r6
  54:	605d      	addc      	r1, r7
  56:	b402      	st.w      	r0, (r4, 0x8)
  58:	b423      	st.w      	r1, (r4, 0xc)
  5a:	dd242004 	st.w      	r9, (r4, 0x10)
  5e:	6c13      	mov      	r0, r4
  60:	dd042005 	st.w      	r8, (r4, 0x14)
  64:	b4a6      	st.w      	r5, (r4, 0x18)
  66:	e0000000 	bsr      	0x0	// 0 <eloop_register_timeout>
  6a:	1005      	lrw      	r0, 0x0	// 7c <eloop_register_timeout+0x7c>
  6c:	e0000000 	bsr      	0x0	// 0 <eloop_register_timeout>
  70:	6c1f      	mov      	r0, r7
  72:	07dc      	br      	0x2a	// 2a <eloop_register_timeout+0x2a>
	...

Disassembly of section .text.eloop_cancel_timeout:

00000000 <eloop_cancel_timeout>:
   0:	14d6      	push      	r4-r9, r15
   2:	1070      	lrw      	r3, 0x0	// 40 <eloop_cancel_timeout+0x40>
   4:	6dc3      	mov      	r7, r0
   6:	d8032079 	ld.w      	r0, (r3, 0x1e4)
   a:	6e07      	mov      	r8, r1
   c:	6e4b      	mov      	r9, r2
   e:	90c0      	ld.w      	r6, (r0, 0x0)
  10:	3500      	movi      	r5, 0
  12:	e48301e3 	addi      	r4, r3, 484
  16:	6502      	cmpne      	r0, r4
  18:	0805      	bt      	0x22	// 22 <eloop_cancel_timeout+0x22>
  1a:	e0000000 	bsr      	0x0	// 0 <eloop_cancel_timeout>
  1e:	6c17      	mov      	r0, r5
  20:	1496      	pop      	r4-r9, r15
  22:	9066      	ld.w      	r3, (r0, 0x18)
  24:	65ce      	cmpne      	r3, r7
  26:	080a      	bt      	0x3a	// 3a <eloop_cancel_timeout+0x3a>
  28:	9064      	ld.w      	r3, (r0, 0x10)
  2a:	660e      	cmpne      	r3, r8
  2c:	0807      	bt      	0x3a	// 3a <eloop_cancel_timeout+0x3a>
  2e:	9065      	ld.w      	r3, (r0, 0x14)
  30:	664e      	cmpne      	r3, r9
  32:	0804      	bt      	0x3a	// 3a <eloop_cancel_timeout+0x3a>
  34:	e0000000 	bsr      	0x0	// 0 <eloop_cancel_timeout>
  38:	2500      	addi      	r5, 1
  3a:	6c1b      	mov      	r0, r6
  3c:	96c0      	ld.w      	r6, (r6, 0x0)
  3e:	07ec      	br      	0x16	// 16 <eloop_cancel_timeout+0x16>
  40:	00000000 	.long	0x00000000

Disassembly of section .text.eloop_deplete_timeout:

00000000 <eloop_deplete_timeout>:
   0:	14d7      	push      	r4-r10, r15
   2:	6e4f      	mov      	r9, r3
   4:	9868      	ld.w      	r3, (r14, 0x20)
   6:	6d83      	mov      	r6, r0
   8:	6dc7      	mov      	r7, r1
   a:	6e0b      	mov      	r8, r2
   c:	6e8f      	mov      	r10, r3
   e:	e0000000 	bsr      	0x0	// 0 <os_jiffies>
  12:	6d03      	mov      	r4, r0
  14:	6d47      	mov      	r5, r1
  16:	1039      	lrw      	r1, 0x0	// 78 <eloop_deplete_timeout+0x78>
  18:	e42101e3 	addi      	r1, r1, 484
  1c:	9100      	ld.w      	r0, (r1, 0x0)
  1e:	6442      	cmpne      	r0, r1
  20:	0803      	bt      	0x26	// 26 <eloop_deplete_timeout+0x26>
  22:	3000      	movi      	r0, 0
  24:	0427      	br      	0x72	// 72 <eloop_deplete_timeout+0x72>
  26:	9066      	ld.w      	r3, (r0, 0x18)
  28:	660e      	cmpne      	r3, r8
  2a:	0825      	bt      	0x74	// 74 <eloop_deplete_timeout+0x74>
  2c:	9064      	ld.w      	r3, (r0, 0x10)
  2e:	664e      	cmpne      	r3, r9
  30:	0822      	bt      	0x74	// 74 <eloop_deplete_timeout+0x74>
  32:	9065      	ld.w      	r3, (r0, 0x14)
  34:	668e      	cmpne      	r3, r10
  36:	081f      	bt      	0x74	// 74 <eloop_deplete_timeout+0x74>
  38:	31fa      	movi      	r1, 250
  3a:	4122      	lsli      	r1, r1, 2
  3c:	7d84      	mult      	r6, r1
  3e:	c4278021 	divu      	r1, r7, r1
  42:	5e44      	addu      	r2, r6, r1
  44:	3300      	movi      	r3, 0
  46:	6489      	cmplt      	r2, r2
  48:	6091      	addc      	r2, r4
  4a:	60d5      	addc      	r3, r5
  4c:	b042      	st.w      	r2, (r0, 0x8)
  4e:	b063      	st.w      	r3, (r0, 0xc)
  50:	9061      	ld.w      	r3, (r0, 0x4)
  52:	9040      	ld.w      	r2, (r0, 0x0)
  54:	e9030006 	bez      	r3, 0x60	// 60 <eloop_deplete_timeout+0x60>
  58:	e9020004 	bez      	r2, 0x60	// 60 <eloop_deplete_timeout+0x60>
  5c:	b261      	st.w      	r3, (r2, 0x4)
  5e:	b340      	st.w      	r2, (r3, 0x0)
  60:	3300      	movi      	r3, 0
  62:	b060      	st.w      	r3, (r0, 0x0)
  64:	b061      	st.w      	r3, (r0, 0x4)
  66:	e0000000 	bsr      	0x0	// 0 <eloop_deplete_timeout>
  6a:	1005      	lrw      	r0, 0x0	// 7c <eloop_deplete_timeout+0x7c>
  6c:	e0000000 	bsr      	0x0	// 0 <eloop_deplete_timeout>
  70:	3001      	movi      	r0, 1
  72:	1497      	pop      	r4-r10, r15
  74:	9000      	ld.w      	r0, (r0, 0x0)
  76:	07d4      	br      	0x1e	// 1e <eloop_deplete_timeout+0x1e>
	...

Disassembly of section .text.ieee80211_eloop_init:

00000000 <ieee80211_eloop_init>:
   0:	14d1      	push      	r4, r15
   2:	3300      	movi      	r3, 0
   4:	6d03      	mov      	r4, r0
   6:	dc600208 	st.b      	r3, (r0, 0x208)
   a:	3200      	movi      	r2, 0
   c:	6cc3      	mov      	r3, r0
   e:	1027      	lrw      	r1, 0x0	// 28 <ieee80211_eloop_init+0x28>
  10:	e40001eb 	addi      	r0, r0, 492
  14:	e0000000 	bsr      	0x0	// 0 <os_timer_init>
  18:	e46401e3 	addi      	r3, r4, 484
  1c:	3000      	movi      	r0, 0
  1e:	dc642079 	st.w      	r3, (r4, 0x1e4)
  22:	dc64207a 	st.w      	r3, (r4, 0x1e8)
  26:	1491      	pop      	r4, r15
  28:	00000000 	.long	0x00000000

Disassembly of section .text.ieee80211_eloop_work:

00000000 <ieee80211_eloop_work>:
   0:	14d6      	push      	r4-r9, r15
   2:	d8600208 	ld.b      	r3, (r0, 0x208)
   6:	6d43      	mov      	r5, r0
   8:	e903001b 	bez      	r3, 0x3e	// 3e <ieee80211_eloop_work+0x3e>
   c:	3300      	movi      	r3, 0
   e:	dc600208 	st.b      	r3, (r0, 0x208)
  12:	e4c001e3 	addi      	r6, r0, 484
  16:	d8852079 	ld.w      	r4, (r5, 0x1e4)
  1a:	651a      	cmpne      	r6, r4
  1c:	0c0e      	bf      	0x38	// 38 <ieee80211_eloop_work+0x38>
  1e:	e0000000 	bsr      	0x0	// 0 <os_jiffies>
  22:	9442      	ld.w      	r2, (r4, 0x8)
  24:	9463      	ld.w      	r3, (r4, 0xc)
  26:	6482      	cmpne      	r0, r2
  28:	0803      	bt      	0x2e	// 2e <ieee80211_eloop_work+0x2e>
  2a:	64c6      	cmpne      	r1, r3
  2c:	0c0a      	bf      	0x40	// 40 <ieee80211_eloop_work+0x40>
  2e:	6488      	cmphs      	r2, r2
  30:	6083      	subc      	r2, r0
  32:	60c7      	subc      	r3, r1
  34:	e9830006 	blz      	r3, 0x40	// 40 <ieee80211_eloop_work+0x40>
  38:	6c1b      	mov      	r0, r6
  3a:	e0000000 	bsr      	0x0	// 0 <ieee80211_eloop_work>
  3e:	1496      	pop      	r4-r9, r15
  40:	d9042004 	ld.w      	r8, (r4, 0x10)
  44:	d9242005 	ld.w      	r9, (r4, 0x14)
  48:	6c13      	mov      	r0, r4
  4a:	94e6      	ld.w      	r7, (r4, 0x18)
  4c:	e0000000 	bsr      	0x0	// 0 <ieee80211_eloop_work>
  50:	6c67      	mov      	r1, r9
  52:	6c23      	mov      	r0, r8
  54:	7bdd      	jsr      	r7
  56:	07e0      	br      	0x16	// 16 <ieee80211_eloop_work+0x16>
