
libwifi/o/wifi_wifi_psconnect.o:     file format elf32-csky-little


Disassembly of section .text.wifi_psconnect_sta_check:

00000000 <wifi_psconnect_sta_check>:
   0:	14d1      	push      	r4, r15
   2:	1423      	subi      	r14, r14, 12
   4:	9069      	ld.w      	r3, (r0, 0x24)
   6:	2300      	addi      	r3, 1
   8:	b069      	st.w      	r3, (r0, 0x24)
   a:	6d03      	mov      	r4, r0
   c:	e0000000 	bsr      	0x0	// 0 <sys_wakeup_reason>
  10:	3806      	cmphsi      	r0, 7
  12:	0839      	bt      	0x84	// 84 <wifi_psconnect_sta_check+0x84>
  14:	3301      	movi      	r3, 1
  16:	c4034020 	lsl      	r0, r3, r0
  1a:	e4002062 	andi      	r0, r0, 98
  1e:	3840      	cmpnei      	r0, 0
  20:	c4000501 	mvc      	r1
  24:	7444      	zextb      	r1, r1
  26:	1059      	lrw      	r2, 0x0	// 88 <wifi_psconnect_sta_check+0x88>
  28:	d862107d 	ld.h      	r3, (r2, 0xfa)
  2c:	e4632380 	andi      	r3, r3, 896
  30:	e9030028 	bez      	r3, 0x80	// 80 <wifi_psconnect_sta_check+0x80>
  34:	9469      	ld.w      	r3, (r4, 0x24)
  36:	3b01      	cmphsi      	r3, 2
  38:	0c24      	bf      	0x80	// 80 <wifi_psconnect_sta_check+0x80>
  3a:	9468      	ld.w      	r3, (r4, 0x20)
  3c:	e9030022 	bez      	r3, 0x80	// 80 <wifi_psconnect_sta_check+0x80>
  40:	e9010020 	bez      	r1, 0x80	// 80 <wifi_psconnect_sta_check+0x80>
  44:	1032      	lrw      	r1, 0x0	// 8c <wifi_psconnect_sta_check+0x8c>
  46:	8121      	ld.b      	r1, (r1, 0x1)
  48:	e4212008 	andi      	r1, r1, 8
  4c:	e921001a 	bnez      	r1, 0x80	// 80 <wifi_psconnect_sta_check+0x80>
  50:	9320      	ld.w      	r1, (r3, 0x0)
  52:	2100      	addi      	r1, 1
  54:	b320      	st.w      	r1, (r3, 0x0)
  56:	d80200d1 	ld.b      	r0, (r2, 0xd1)
  5a:	6440      	cmphs      	r0, r1
  5c:	0803      	bt      	0x62	// 62 <wifi_psconnect_sta_check+0x62>
  5e:	3101      	movi      	r1, 1
  60:	b320      	st.w      	r1, (r3, 0x0)
  62:	d82200d0 	ld.b      	r1, (r2, 0xd0)
  66:	32fa      	movi      	r2, 250
  68:	4242      	lsli      	r2, r2, 2
  6a:	9360      	ld.w      	r3, (r3, 0x0)
  6c:	7c48      	mult      	r1, r2
  6e:	7c4c      	mult      	r1, r3
  70:	1008      	lrw      	r0, 0x0	// 90 <wifi_psconnect_sta_check+0x90>
  72:	b820      	st.w      	r1, (r14, 0x0)
  74:	e0000000 	bsr      	0x0	// 0 <hgprintf>
  78:	6c7b      	mov      	r1, r14
  7a:	3001      	movi      	r0, 1
  7c:	e0000000 	bsr      	0x0	// 0 <system_sleep>
  80:	1403      	addi      	r14, r14, 12
  82:	1491      	pop      	r4, r15
  84:	3100      	movi      	r1, 0
  86:	07d0      	br      	0x26	// 26 <wifi_psconnect_sta_check+0x26>
	...

Disassembly of section .text.wifi_psconnect_proc_event:

00000000 <wifi_psconnect_proc_event>:
   0:	14d1      	push      	r4, r15
   2:	6d03      	mov      	r4, r0
   4:	1019      	lrw      	r0, 0x0	// 68 <wifi_psconnect_proc_event+0x68>
   6:	d980000c 	ld.b      	r12, (r0, 0xc)
   a:	e46c1000 	subi      	r3, r12, 1
   e:	74cc      	zextb      	r3, r3
  10:	3b01      	cmphsi      	r3, 2
  12:	0821      	bt      	0x54	// 54 <wifi_psconnect_proc_event+0x54>
  14:	6472      	cmpne      	r12, r1
  16:	081f      	bt      	0x54	// 54 <wifi_psconnect_proc_event+0x54>
  18:	3a48      	cmpnei      	r2, 8
  1a:	0c17      	bf      	0x48	// 48 <wifi_psconnect_proc_event+0x48>
  1c:	3a49      	cmpnei      	r2, 9
  1e:	0c1d      	bf      	0x58	// 58 <wifi_psconnect_proc_event+0x58>
  20:	3a46      	cmpnei      	r2, 6
  22:	0819      	bt      	0x54	// 54 <wifi_psconnect_proc_event+0x54>
  24:	d86000fb 	ld.b      	r3, (r0, 0xfb)
  28:	e4632010 	andi      	r3, r3, 16
  2c:	e9230014 	bnez      	r3, 0x54	// 54 <wifi_psconnect_proc_event+0x54>
  30:	e440003f 	addi      	r2, r0, 64
  34:	3103      	movi      	r1, 3
  36:	6c0f      	mov      	r0, r3
  38:	e0000000 	bsr      	0x0	// 0 <ieee80211_get_bssinfo>
  3c:	e900000c 	bez      	r0, 0x54	// 54 <wifi_psconnect_proc_event+0x54>
  40:	6c13      	mov      	r0, r4
  42:	e0000000 	bsr      	0x0	// 0 <wifi_psconnect_proc_event>
  46:	0407      	br      	0x54	// 54 <wifi_psconnect_proc_event+0x54>
  48:	9468      	ld.w      	r3, (r4, 0x20)
  4a:	3200      	movi      	r2, 0
  4c:	b449      	st.w      	r2, (r4, 0x24)
  4e:	e9030003 	bez      	r3, 0x54	// 54 <wifi_psconnect_proc_event+0x54>
  52:	b340      	st.w      	r2, (r3, 0x0)
  54:	3000      	movi      	r0, 0
  56:	1491      	pop      	r4, r15
  58:	d86000fb 	ld.b      	r3, (r0, 0xfb)
  5c:	e4632010 	andi      	r3, r3, 16
  60:	e923fffa 	bnez      	r3, 0x54	// 54 <wifi_psconnect_proc_event+0x54>
  64:	07ee      	br      	0x40	// 40 <wifi_psconnect_proc_event+0x40>
  66:	0000      	.short	0x0000
  68:	00000000 	.long	0x00000000

Disassembly of section .text.wifi_psconnect_sta_init.isra.1.part.2:

00000000 <wifi_psconnect_sta_init.isra.1.part.2>:
   0:	14d1      	push      	r4, r15
   2:	6d03      	mov      	r4, r0
   4:	3104      	movi      	r1, 4
   6:	3003      	movi      	r0, 3
   8:	e0000000 	bsr      	0x0	// 0 <sys_sleepdata_request>
   c:	b400      	st.w      	r0, (r4, 0x0)
   e:	e9200005 	bnez      	r0, 0x18	// 18 <wifi_psconnect_sta_init.isra.1.part.2+0x18>
  12:	1003      	lrw      	r0, 0x0	// 1c <hgprintf+0x1c>
  14:	e0000000 	bsr      	0x0	// 0 <hgprintf>
  18:	1491      	pop      	r4, r15
  1a:	0000      	.short	0x0000
  1c:	00000000 	.long	0x00000000

Disassembly of section .text.wifi_psconnect_proc_cmd:

00000000 <wifi_psconnect_proc_cmd>:
   0:	14d1      	push      	r4, r15
   2:	9160      	ld.w      	r3, (r1, 0x0)
   4:	9367      	ld.w      	r3, (r3, 0x1c)
   6:	8342      	ld.b      	r2, (r3, 0x2)
   8:	3a4d      	cmpnei      	r2, 13
   a:	0815      	bt      	0x34	// 34 <wifi_psconnect_proc_cmd+0x34>
   c:	8349      	ld.b      	r2, (r3, 0x9)
   e:	8328      	ld.b      	r1, (r3, 0x8)
  10:	4248      	lsli      	r2, r2, 8
  12:	6c84      	or      	r2, r1
  14:	eb42007c 	cmpnei      	r2, 124
  18:	0c3b      	bf      	0x8e	// 8e <wifi_psconnect_proc_cmd+0x8e>
  1a:	eb02007c 	cmphsi      	r2, 125
  1e:	080d      	bt      	0x38	// 38 <wifi_psconnect_proc_cmd+0x38>
  20:	eb420029 	cmpnei      	r2, 41
  24:	0c14      	bf      	0x4c	// 4c <wifi_psconnect_proc_cmd+0x4c>
  26:	eb420046 	cmpnei      	r2, 70
  2a:	0c1f      	bf      	0x68	// 68 <wifi_psconnect_proc_cmd+0x68>
  2c:	ea00020b 	movi      	r0, 523
  30:	6c02      	nor      	r0, r0
  32:	041f      	br      	0x70	// 70 <wifi_psconnect_proc_cmd+0x70>
  34:	8348      	ld.b      	r2, (r3, 0x8)
  36:	07ef      	br      	0x14	// 14 <wifi_psconnect_proc_cmd+0x14>
  38:	eb420099 	cmpnei      	r2, 153
  3c:	0c1b      	bf      	0x72	// 72 <wifi_psconnect_proc_cmd+0x72>
  3e:	eb42009d 	cmpnei      	r2, 157
  42:	0bf5      	bt      	0x2c	// 2c <wifi_psconnect_proc_cmd+0x2c>
  44:	830c      	ld.b      	r0, (r3, 0xc)
  46:	e0000000 	bsr      	0x0	// 0 <wificfg_set_wait_psmode>
  4a:	0413      	br      	0x70	// 70 <wifi_psconnect_proc_cmd+0x70>
  4c:	1073      	lrw      	r3, 0x0	// 98 <wifi_psconnect_proc_cmd+0x98>
  4e:	836c      	ld.b      	r3, (r3, 0xc)
  50:	2b00      	subi      	r3, 1
  52:	74cc      	zextb      	r3, r3
  54:	3b01      	cmphsi      	r3, 2
  56:	0807      	bt      	0x64	// 64 <wifi_psconnect_proc_cmd+0x64>
  58:	9088      	ld.w      	r4, (r0, 0x20)
  5a:	e9240005 	bnez      	r4, 0x64	// 64 <wifi_psconnect_proc_cmd+0x64>
  5e:	201f      	addi      	r0, 32
  60:	e0000000 	bsr      	0x0	// 0 <wifi_psconnect_proc_cmd>
  64:	3000      	movi      	r0, 0
  66:	0405      	br      	0x70	// 70 <wifi_psconnect_proc_cmd+0x70>
  68:	832d      	ld.b      	r1, (r3, 0xd)
  6a:	830c      	ld.b      	r0, (r3, 0xc)
  6c:	e0000000 	bsr      	0x0	// 0 <wificfg_set_psconnect>
  70:	1491      	pop      	r4, r15
  72:	832e      	ld.b      	r1, (r3, 0xe)
  74:	834d      	ld.b      	r2, (r3, 0xd)
  76:	4128      	lsli      	r1, r1, 8
  78:	6c48      	or      	r1, r2
  7a:	834f      	ld.b      	r2, (r3, 0xf)
  7c:	4250      	lsli      	r2, r2, 16
  7e:	6c84      	or      	r2, r1
  80:	8330      	ld.b      	r1, (r3, 0x10)
  82:	4138      	lsli      	r1, r1, 24
  84:	6c48      	or      	r1, r2
  86:	830c      	ld.b      	r0, (r3, 0xc)
  88:	e0000000 	bsr      	0x0	// 0 <wificfg_set_standby>
  8c:	07f2      	br      	0x70	// 70 <wifi_psconnect_proc_cmd+0x70>
  8e:	830c      	ld.b      	r0, (r3, 0xc)
  90:	e0000000 	bsr      	0x0	// 0 <wificfg_set_dis_psconnect>
  94:	07ee      	br      	0x70	// 70 <wifi_psconnect_proc_cmd+0x70>
  96:	0000      	.short	0x0000
  98:	00000000 	.long	0x00000000

Disassembly of section .text.wifi_mgr_enable_psconnect:

00000000 <wifi_mgr_enable_psconnect>:
   0:	14d2      	push      	r4-r5, r15
   2:	10ad      	lrw      	r5, 0x0	// 34 <wifi_mgr_enable_psconnect+0x34>
   4:	6c17      	mov      	r0, r5
   6:	e0000000 	bsr      	0x0	// 0 <wifi_mgr_add_submod>
   a:	106c      	lrw      	r3, 0x0	// 38 <wifi_mgr_enable_psconnect+0x38>
   c:	832c      	ld.b      	r1, (r3, 0xc)
   e:	5963      	subi      	r3, r1, 1
  10:	74cc      	zextb      	r3, r3
  12:	3b01      	cmphsi      	r3, 2
  14:	080a      	bt      	0x28	// 28 <wifi_mgr_enable_psconnect+0x28>
  16:	9588      	ld.w      	r4, (r5, 0x20)
  18:	e9240006 	bnez      	r4, 0x24	// 24 <wifi_mgr_enable_psconnect+0x24>
  1c:	e405001f 	addi      	r0, r5, 32
  20:	e0000000 	bsr      	0x0	// 0 <wifi_mgr_enable_psconnect>
  24:	3000      	movi      	r0, 0
  26:	0406      	br      	0x32	// 32 <wifi_mgr_enable_psconnect+0x32>
  28:	1005      	lrw      	r0, 0x0	// 3c <wifi_mgr_enable_psconnect+0x3c>
  2a:	e0000000 	bsr      	0x0	// 0 <hgprintf>
  2e:	3000      	movi      	r0, 0
  30:	2815      	subi      	r0, 22
  32:	1492      	pop      	r4-r5, r15
	...
