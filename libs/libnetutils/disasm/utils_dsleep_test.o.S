
libnetutils/o/utils_dsleep_test.o:     file format elf32-csky-little


Disassembly of section .text.dsleep_test_atcmd_hdl:

00000000 <dsleep_test_atcmd_hdl>:
   0:	14d4      	push      	r4-r7, r15
   2:	6d47      	mov      	r5, r1
   4:	6dcb      	mov      	r7, r2
   6:	e9020069 	bez      	r2, 0xd8	// d8 <dsleep_test_atcmd_hdl+0xd8>
   a:	9160      	ld.w      	r3, (r1, 0x0)
   c:	8360      	ld.b      	r3, (r3, 0x0)
   e:	eb43003f 	cmpnei      	r3, 63
  12:	0c63      	bf      	0xd8	// d8 <dsleep_test_atcmd_hdl+0xd8>
  14:	1192      	lrw      	r4, 0x0	// dc <dsleep_test_atcmd_hdl+0xdc>
  16:	9460      	ld.w      	r3, (r4, 0x0)
  18:	e9230060 	bnez      	r3, 0xd8	// d8 <dsleep_test_atcmd_hdl+0xd8>
  1c:	30de      	movi      	r0, 222
  1e:	4004      	lsli      	r0, r0, 4
  20:	e0000000 	bsr      	0x0	// 0 <_os_malloc>
  24:	b400      	st.w      	r0, (r4, 0x0)
  26:	e9200008 	bnez      	r0, 0x36	// 36 <dsleep_test_atcmd_hdl+0x36>
  2a:	114e      	lrw      	r2, 0x0	// e0 <dsleep_test_atcmd_hdl+0xe0>
  2c:	ea01012b 	movi      	r1, 299
  30:	110d      	lrw      	r0, 0x0	// e4 <assert_internal+0xe4>
  32:	e0000000 	bsr      	0x0	// 0 <assert_internal>
  36:	94c0      	ld.w      	r6, (r4, 0x0)
  38:	ea03ea62 	movi      	r3, 60002
  3c:	b66a      	st.w      	r3, (r6, 0x28)
  3e:	330a      	movi      	r3, 10
  40:	b66c      	st.w      	r3, (r6, 0x30)
  42:	333c      	movi      	r3, 60
  44:	b66d      	st.w      	r3, (r6, 0x34)
  46:	33c8      	movi      	r3, 200
  48:	4361      	lsli      	r3, r3, 1
  4a:	b66f      	st.w      	r3, (r6, 0x3c)
  4c:	9520      	ld.w      	r1, (r5, 0x0)
  4e:	e4060053 	addi      	r0, r6, 84
  52:	e0000000 	bsr      	0x0	// 0 <strcpy>
  56:	3f01      	cmphsi      	r7, 2
  58:	0c1a      	bf      	0x8c	// 8c <dsleep_test_atcmd_hdl+0x8c>
  5a:	9501      	ld.w      	r0, (r5, 0x4)
  5c:	e0000000 	bsr      	0x0	// 0 <atoi>
  60:	3f42      	cmpnei      	r7, 2
  62:	b60a      	st.w      	r0, (r6, 0x28)
  64:	0c14      	bf      	0x8c	// 8c <dsleep_test_atcmd_hdl+0x8c>
  66:	9502      	ld.w      	r0, (r5, 0x8)
  68:	94c0      	ld.w      	r6, (r4, 0x0)
  6a:	e0000000 	bsr      	0x0	// 0 <atoi>
  6e:	3f43      	cmpnei      	r7, 3
  70:	b60c      	st.w      	r0, (r6, 0x30)
  72:	0c0d      	bf      	0x8c	// 8c <dsleep_test_atcmd_hdl+0x8c>
  74:	9503      	ld.w      	r0, (r5, 0xc)
  76:	94c0      	ld.w      	r6, (r4, 0x0)
  78:	e0000000 	bsr      	0x0	// 0 <atoi>
  7c:	3f44      	cmpnei      	r7, 4
  7e:	b60d      	st.w      	r0, (r6, 0x34)
  80:	0c06      	bf      	0x8c	// 8c <dsleep_test_atcmd_hdl+0x8c>
  82:	94c0      	ld.w      	r6, (r4, 0x0)
  84:	9504      	ld.w      	r0, (r5, 0x10)
  86:	e0000000 	bsr      	0x0	// 0 <atoi>
  8a:	b60f      	st.w      	r0, (r6, 0x3c)
  8c:	1077      	lrw      	r3, 0x0	// e8 <dsleep_test_atcmd_hdl+0xe8>
  8e:	93a0      	ld.w      	r5, (r3, 0x0)
  90:	e905000f 	bez      	r5, 0xae	// ae <dsleep_test_atcmd_hdl+0xae>
  94:	94c0      	ld.w      	r6, (r4, 0x0)
  96:	e4260053 	addi      	r1, r6, 84
  9a:	e405000b 	addi      	r0, r5, 12
  9e:	e0000000 	bsr      	0x0	// 0 <strcpy>
  a2:	966a      	ld.w      	r3, (r6, 0x28)
  a4:	b560      	st.w      	r3, (r5, 0x0)
  a6:	966c      	ld.w      	r3, (r6, 0x30)
  a8:	b561      	st.w      	r3, (r5, 0x4)
  aa:	966d      	ld.w      	r3, (r6, 0x34)
  ac:	b562      	st.w      	r3, (r5, 0x8)
  ae:	3300      	movi      	r3, 0
  b0:	104f      	lrw      	r2, 0x0	// ec <dsleep_test_atcmd_hdl+0xec>
  b2:	1010      	lrw      	r0, 0x0	// f0 <dsleep_test_atcmd_hdl+0xf0>
  b4:	9420      	ld.w      	r1, (r4, 0x0)
  b6:	e0000000 	bsr      	0x0	// 0 <os_task_init>
  ba:	3180      	movi      	r1, 128
  bc:	4123      	lsli      	r1, r1, 3
  be:	9400      	ld.w      	r0, (r4, 0x0)
  c0:	e0000000 	bsr      	0x0	// 0 <os_task_set_stacksize>
  c4:	3120      	movi      	r1, 32
  c6:	9400      	ld.w      	r0, (r4, 0x0)
  c8:	e0000000 	bsr      	0x0	// 0 <os_task_set_priority>
  cc:	9400      	ld.w      	r0, (r4, 0x0)
  ce:	e0000000 	bsr      	0x0	// 0 <os_task_run>
  d2:	1009      	lrw      	r0, 0x0	// f4 <atcmd_printf+0xf4>
  d4:	e0000000 	bsr      	0x0	// 0 <atcmd_printf>
  d8:	3000      	movi      	r0, 0
  da:	1494      	pop      	r4-r7, r15
	...

Disassembly of section .text.dsleep_test_dev_send.constprop.3:

00000000 <dsleep_test_dev_send.constprop.3>:
   0:	14d3      	push      	r4-r6, r15
   2:	1432      	subi      	r14, r14, 72
   4:	1095      	lrw      	r4, 0x0	// 58 <dsleep_test_dev_send.constprop.3+0x58>
   6:	6d83      	mov      	r6, r0
   8:	6d47      	mov      	r5, r1
   a:	3240      	movi      	r2, 64
   c:	3100      	movi      	r1, 0
   e:	1802      	addi      	r0, r14, 8
  10:	e0000000 	bsr      	0x0	// 0 <memset>
  14:	9460      	ld.w      	r3, (r4, 0x0)
  16:	233f      	addi      	r3, 64
  18:	6c9b      	mov      	r2, r6
  1a:	1031      	lrw      	r1, 0x0	// 5c <dsleep_test_dev_send.constprop.3+0x5c>
  1c:	1802      	addi      	r0, r14, 8
  1e:	e0000000 	bsr      	0x0	// 0 <sprintf>
  22:	e9050008 	bez      	r5, 0x32	// 32 <dsleep_test_dev_send.constprop.3+0x32>
  26:	1b02      	addi      	r3, r14, 8
  28:	6c97      	mov      	r2, r5
  2a:	102e      	lrw      	r1, 0x0	// 60 <dsleep_test_dev_send.constprop.3+0x60>
  2c:	600c      	addu      	r0, r3
  2e:	e0000000 	bsr      	0x0	// 0 <sprintf>
  32:	9480      	ld.w      	r4, (r4, 0x0)
  34:	1802      	addi      	r0, r14, 8
  36:	e0000000 	bsr      	0x0	// 0 <strlen>
  3a:	2413      	addi      	r4, 20
  3c:	d9842004 	ld.w      	r12, (r4, 0x10)
  40:	3310      	movi      	r3, 16
  42:	b861      	st.w      	r3, (r14, 0x4)
  44:	6c83      	mov      	r2, r0
  46:	b880      	st.w      	r4, (r14, 0x0)
  48:	3300      	movi      	r3, 0
  4a:	1902      	addi      	r1, r14, 8
  4c:	6c33      	mov      	r0, r12
  4e:	e0000000 	bsr      	0x0	// 0 <sendto>
  52:	1412      	addi      	r14, r14, 72
  54:	1493      	pop      	r4-r6, r15
	...

Disassembly of section .text.dsleep_test_send_hearbeat:

00000000 <dsleep_test_send_hearbeat>:
   0:	14d0      	push      	r15
   2:	1064      	lrw      	r3, 0x0	// 10 <dsleep_test_send_hearbeat+0x10>
   4:	1004      	lrw      	r0, 0x0	// 14 <dsleep_test_send_hearbeat+0x14>
   6:	9360      	ld.w      	r3, (r3, 0x0)
   8:	932c      	ld.w      	r1, (r3, 0x30)
   a:	e0000000 	bsr      	0x0	// 0 <dsleep_test_send_hearbeat>
   e:	1490      	pop      	r15
	...

Disassembly of section .text.dsleep_test_enter_sleep:

00000000 <dsleep_test_enter_sleep>:
   0:	14d2      	push      	r4-r5, r15
   2:	1071      	lrw      	r3, 0x0	// 44 <dsleep_test_enter_sleep+0x44>
   4:	6c43      	mov      	r1, r0
   6:	8381      	ld.b      	r4, (r3, 0x1)
   8:	e4842008 	andi      	r4, r4, 8
   c:	e9240015 	bnez      	r4, 0x36	// 36 <dsleep_test_enter_sleep+0x36>
  10:	10ae      	lrw      	r5, 0x0	// 48 <dsleep_test_enter_sleep+0x48>
  12:	3202      	movi      	r2, 2
  14:	9560      	ld.w      	r3, (r5, 0x0)
  16:	3001      	movi      	r0, 1
  18:	b34e      	st.w      	r2, (r3, 0x38)
  1a:	e0000000 	bsr      	0x0	// 0 <system_sleep>
  1e:	e0000000 	bsr      	0x0	// 0 <sys_wakeup_reason>
  22:	3841      	cmpnei      	r0, 1
  24:	080a      	bt      	0x38	// 38 <dsleep_test_enter_sleep+0x38>
  26:	9560      	ld.w      	r3, (r5, 0x0)
  28:	3203      	movi      	r2, 3
  2a:	b34e      	st.w      	r2, (r3, 0x38)
  2c:	e0000000 	bsr      	0x0	// 0 <dsleep_test_enter_sleep>
  30:	1007      	lrw      	r0, 0x0	// 4c <hgprintf+0x4c>
  32:	e0000000 	bsr      	0x0	// 0 <hgprintf>
  36:	1492      	pop      	r4-r5, r15
  38:	1006      	lrw      	r0, 0x0	// 50 <dsleep_test_enter_sleep+0x50>
  3a:	e0000000 	bsr      	0x0	// 0 <hgprintf>
  3e:	9560      	ld.w      	r3, (r5, 0x0)
  40:	b38e      	st.w      	r4, (r3, 0x38)
  42:	07fa      	br      	0x36	// 36 <dsleep_test_enter_sleep+0x36>
	...

Disassembly of section .text.dsleep_test_task:

00000000 <dsleep_test_task>:
   0:	14d8      	push      	r4-r11, r15
   2:	1438      	subi      	r14, r14, 96
   4:	0196      	lrw      	r4, 0x0	// 328 <dsleep_test_task+0x328>
   6:	9460      	ld.w      	r3, (r4, 0x0)
   8:	934a      	ld.w      	r2, (r3, 0x28)
   a:	e9220009 	bnez      	r2, 0x1c	// 1c <dsleep_test_task+0x1c>
   e:	ea02ea62 	movi      	r2, 60002
  12:	b34a      	st.w      	r2, (r3, 0x28)
  14:	320a      	movi      	r2, 10
  16:	b34c      	st.w      	r2, (r3, 0x30)
  18:	323c      	movi      	r2, 60
  1a:	b34d      	st.w      	r2, (r3, 0x34)
  1c:	ea037530 	movi      	r3, 30000
  20:	b86d      	st.w      	r3, (r14, 0x34)
  22:	e50e002b 	addi      	r8, r14, 44
  26:	017d      	lrw      	r3, 0x0	// 32c <dsleep_test_task+0x32c>
  28:	6c63      	mov      	r1, r8
  2a:	830c      	ld.b      	r0, (r3, 0xc)
  2c:	e0000000 	bsr      	0x0	// 0 <ieee80211_conf_get_mac>
  30:	d8280005 	ld.b      	r1, (r8, 0x5)
  34:	d8680001 	ld.b      	r3, (r8, 0x1)
  38:	d8480000 	ld.b      	r2, (r8, 0x0)
  3c:	b823      	st.w      	r1, (r14, 0xc)
  3e:	d8280004 	ld.b      	r1, (r8, 0x4)
  42:	b822      	st.w      	r1, (r14, 0x8)
  44:	d8280003 	ld.b      	r1, (r8, 0x3)
  48:	b821      	st.w      	r1, (r14, 0x4)
  4a:	d8280002 	ld.b      	r1, (r8, 0x2)
  4e:	9400      	ld.w      	r0, (r4, 0x0)
  50:	b820      	st.w      	r1, (r14, 0x0)
  52:	203f      	addi      	r0, 64
  54:	0228      	lrw      	r1, 0x0	// 330 <dsleep_test_task+0x330>
  56:	e0000000 	bsr      	0x0	// 0 <sprintf>
  5a:	94a0      	ld.w      	r5, (r4, 0x0)
  5c:	3210      	movi      	r2, 16
  5e:	3100      	movi      	r1, 0
  60:	e4050013 	addi      	r0, r5, 20
  64:	3602      	movi      	r6, 2
  66:	e0000000 	bsr      	0x0	// 0 <memset>
  6a:	a5d5      	st.b      	r6, (r5, 0x15)
  6c:	e4050053 	addi      	r0, r5, 84
  70:	e0000000 	bsr      	0x0	// 0 <ipaddr_addr>
  74:	b506      	st.w      	r0, (r5, 0x18)
  76:	94a0      	ld.w      	r5, (r4, 0x0)
  78:	8d14      	ld.h      	r0, (r5, 0x28)
  7a:	e0000000 	bsr      	0x0	// 0 <lwip_htons>
  7e:	9420      	ld.w      	r1, (r4, 0x0)
  80:	ad0b      	st.h      	r0, (r5, 0x16)
  82:	914a      	ld.w      	r2, (r1, 0x28)
  84:	2153      	addi      	r1, 84
  86:	0213      	lrw      	r0, 0x0	// 334 <dsleep_test_task+0x334>
  88:	e0000000 	bsr      	0x0	// 0 <hgprintf>
  8c:	3102      	movi      	r1, 2
  8e:	3200      	movi      	r2, 0
  90:	6c07      	mov      	r0, r1
  92:	94e0      	ld.w      	r7, (r4, 0x0)
  94:	e0000000 	bsr      	0x0	// 0 <socket>
  98:	6d43      	mov      	r5, r0
  9a:	e9a00032 	bhsz      	r0, 0xfe	// fe <dsleep_test_task+0xfe>
  9e:	0218      	lrw      	r0, 0x0	// 338 <hgprintf+0x338>
  a0:	e0000000 	bsr      	0x0	// 0 <hgprintf>
  a4:	3500      	movi      	r5, 0
  a6:	2d00      	subi      	r5, 1
  a8:	9460      	ld.w      	r3, (r4, 0x0)
  aa:	b7a9      	st.w      	r5, (r7, 0x24)
  ac:	9369      	ld.w      	r3, (r3, 0x24)
  ae:	e9a30007 	bhsz      	r3, 0xbc	// bc <dsleep_test_task+0xbc>
  b2:	025c      	lrw      	r2, 0x0	// 33c <dsleep_test_task+0x33c>
  b4:	31ba      	movi      	r1, 186
  b6:	021c      	lrw      	r0, 0x0	// 340 <dsleep_test_task+0x340>
  b8:	e0000000 	bsr      	0x0	// 0 <assert_internal>
  bc:	9400      	ld.w      	r0, (r4, 0x0)
  be:	e460003f 	addi      	r3, r0, 64
  c2:	025e      	lrw      	r2, 0x0	// 344 <dsleep_test_task+0x344>
  c4:	023e      	lrw      	r1, 0x0	// 348 <dsleep_test_task+0x348>
  c6:	2067      	addi      	r0, 104
  c8:	e0000000 	bsr      	0x0	// 0 <sprintf>
  cc:	9460      	ld.w      	r3, (r4, 0x0)
  ce:	3204      	movi      	r2, 4
  d0:	b34e      	st.w      	r2, (r3, 0x38)
  d2:	e0000000 	bsr      	0x0	// 0 <os_jiffies>
  d6:	b804      	st.w      	r0, (r14, 0x10)
  d8:	b825      	st.w      	r1, (r14, 0x14)
  da:	9400      	ld.w      	r0, (r4, 0x0)
  dc:	906f      	ld.w      	r3, (r0, 0x3c)
  de:	eb230095 	cmplti      	r3, 150
  e2:	43ca      	lsli      	r6, r3, 10
  e4:	0826      	bt      	0x130	// 130 <dsleep_test_task+0x130>
  e6:	33c8      	movi      	r3, 200
  e8:	4369      	lsli      	r3, r3, 9
  ea:	3780      	movi      	r7, 128
  ec:	c4668046 	divs      	r6, r6, r3
  f0:	47e3      	lsli      	r7, r7, 3
  f2:	3564      	movi      	r5, 100
  f4:	3e40      	cmpnei      	r6, 0
  f6:	3301      	movi      	r3, 1
  f8:	c4c30c20 	incf      	r6, r3, 0
  fc:	0424      	br      	0x144	// 144 <dsleep_test_task+0x144>
  fe:	3210      	movi      	r2, 16
 100:	3100      	movi      	r1, 0
 102:	1814      	addi      	r0, r14, 80
 104:	e0000000 	bsr      	0x0	// 0 <memset>
 108:	3000      	movi      	r0, 0
 10a:	dcce0051 	st.b      	r6, (r14, 0x51)
 10e:	e0000000 	bsr      	0x0	// 0 <lwip_htonl>
 112:	b815      	st.w      	r0, (r14, 0x54)
 114:	3210      	movi      	r2, 16
 116:	1914      	addi      	r1, r14, 80
 118:	6c17      	mov      	r0, r5
 11a:	e0000000 	bsr      	0x0	// 0 <bind>
 11e:	e9a0ffc5 	bhsz      	r0, 0xa8	// a8 <dsleep_test_task+0xa8>
 122:	0314      	lrw      	r0, 0x0	// 34c <hgprintf+0x34c>
 124:	e0000000 	bsr      	0x0	// 0 <hgprintf>
 128:	6c17      	mov      	r0, r5
 12a:	e0000000 	bsr      	0x0	// 0 <closesocket>
 12e:	07bb      	br      	0xa4	// a4 <dsleep_test_task+0xa4>
 130:	eb230031 	cmplti      	r3, 50
 134:	0885      	bt      	0x23e	// 23e <dsleep_test_task+0x23e>
 136:	33c8      	movi      	r3, 200
 138:	4368      	lsli      	r3, r3, 8
 13a:	3780      	movi      	r7, 128
 13c:	c4668046 	divs      	r6, r6, r3
 140:	47e3      	lsli      	r7, r7, 3
 142:	3532      	movi      	r5, 50
 144:	906d      	ld.w      	r3, (r0, 0x34)
 146:	904c      	ld.w      	r2, (r0, 0x30)
 148:	882b      	ld.h      	r1, (r0, 0x16)
 14a:	9006      	ld.w      	r0, (r0, 0x18)
 14c:	dd0e2000 	st.w      	r8, (r14, 0x0)
 150:	e0000000 	bsr      	0x0	// 0 <wifi_psalive_setup_testdata>
 154:	33fa      	movi      	r3, 250
 156:	4362      	lsli      	r3, r3, 2
 158:	c4a38045 	divs      	r5, r3, r5
 15c:	7cd4      	mult      	r3, r5
 15e:	b866      	st.w      	r3, (r14, 0x18)
 160:	3500      	movi      	r5, 0
 162:	ea0a0010 	movi      	r10, 16
 166:	ea8b007b 	lrw      	r11, 0x0	// 350 <dsleep_test_task+0x350>
 16a:	d9242000 	ld.w      	r9, (r4, 0x0)
 16e:	3300      	movi      	r3, 0
 170:	d9092009 	ld.w      	r8, (r9, 0x24)
 174:	eb080005 	cmphsi      	r8, 6
 178:	dd4e200a 	st.w      	r10, (r14, 0x28)
 17c:	dc6e0024 	st.b      	r3, (r14, 0x24)
 180:	0805      	bt      	0x18a	// 18a <dsleep_test_task+0x18a>
 182:	3301      	movi      	r3, 1
 184:	70e0      	lsl      	r3, r8
 186:	dc6e0024 	st.b      	r3, (r14, 0x24)
 18a:	ea0c0000 	movi      	r12, 0
 18e:	9846      	ld.w      	r2, (r14, 0x18)
 190:	1b14      	addi      	r3, r14, 80
 192:	b855      	st.w      	r2, (r14, 0x54)
 194:	b860      	st.w      	r3, (r14, 0x0)
 196:	6cb3      	mov      	r2, r12
 198:	6cf3      	mov      	r3, r12
 19a:	1909      	addi      	r1, r14, 36
 19c:	e4080000 	addi      	r0, r8, 1
 1a0:	dd8e2014 	st.w      	r12, (r14, 0x50)
 1a4:	dd8e2016 	st.w      	r12, (r14, 0x58)
 1a8:	dd8e2007 	st.w      	r12, (r14, 0x1c)
 1ac:	e0000000 	bsr      	0x0	// 0 <select>
 1b0:	eb080005 	cmphsi      	r8, 6
 1b4:	087c      	bt      	0x2ac	// 2ac <dsleep_test_task+0x2ac>
 1b6:	d86e0024 	ld.b      	r3, (r14, 0x24)
 1ba:	70e2      	asr      	r3, r8
 1bc:	e4632001 	andi      	r3, r3, 1
 1c0:	d98e2007 	ld.w      	r12, (r14, 0x1c)
 1c4:	e9030074 	bez      	r3, 0x2ac	// 2ac <dsleep_test_task+0x2ac>
 1c8:	1b0a      	addi      	r3, r14, 40
 1ca:	b861      	st.w      	r3, (r14, 0x4)
 1cc:	3280      	movi      	r2, 128
 1ce:	1b10      	addi      	r3, r14, 64
 1d0:	b860      	st.w      	r3, (r14, 0x0)
 1d2:	6c23      	mov      	r0, r8
 1d4:	6cf3      	mov      	r3, r12
 1d6:	4244      	lsli      	r2, r2, 4
 1d8:	e42905df 	addi      	r1, r9, 1504
 1dc:	e0000000 	bsr      	0x0	// 0 <recvfrom>
 1e0:	6e03      	mov      	r8, r0
 1e2:	e9600065 	blsz      	r0, 0x2ac	// 2ac <dsleep_test_task+0x2ac>
 1e6:	d9842000 	ld.w      	r12, (r4, 0x0)
 1ea:	e46c05df 	addi      	r3, r12, 1504
 1ee:	3207      	movi      	r2, 7
 1f0:	1239      	lrw      	r1, 0x0	// 354 <dsleep_test_task+0x354>
 1f2:	6c0f      	mov      	r0, r3
 1f4:	dd8e2008 	st.w      	r12, (r14, 0x20)
 1f8:	b867      	st.w      	r3, (r14, 0x1c)
 1fa:	e0000000 	bsr      	0x0	// 0 <strncmp>
 1fe:	6e43      	mov      	r9, r0
 200:	e9200056 	bnez      	r0, 0x2ac	// 2ac <dsleep_test_task+0x2ac>
 204:	d98e2008 	ld.w      	r12, (r14, 0x20)
 208:	6230      	addu      	r8, r12
 20a:	dc0805e0 	st.b      	r0, (r8, 0x5e0)
 20e:	d84c200e 	ld.w      	r2, (r12, 0x38)
 212:	3a42      	cmpnei      	r2, 2
 214:	0c3f      	bf      	0x292	// 292 <dsleep_test_task+0x292>
 216:	3a22      	cmplti      	r2, 3
 218:	9867      	ld.w      	r3, (r14, 0x1c)
 21a:	0c22      	bf      	0x25e	// 25e <dsleep_test_task+0x25e>
 21c:	3a41      	cmpnei      	r2, 1
 21e:	0c2b      	bf      	0x274	// 274 <dsleep_test_task+0x274>
 220:	94a0      	ld.w      	r5, (r4, 0x0)
 222:	3209      	movi      	r2, 9
 224:	122d      	lrw      	r1, 0x0	// 358 <dsleep_test_task+0x358>
 226:	e40505df 	addi      	r0, r5, 1504
 22a:	e0000000 	bsr      	0x0	// 0 <memcmp>
 22e:	e9200030 	bnez      	r0, 0x28e	// 28e <dsleep_test_task+0x28e>
 232:	3301      	movi      	r3, 1
 234:	b56e      	st.w      	r3, (r5, 0x38)
 236:	e0000000 	bsr      	0x0	// 0 <dsleep_test_task>
 23a:	1209      	lrw      	r0, 0x0	// 35c <dsleep_test_task+0x35c>
 23c:	042c      	br      	0x294	// 294 <dsleep_test_task+0x294>
 23e:	3b29      	cmplti      	r3, 10
 240:	33a0      	movi      	r3, 160
 242:	0808      	bt      	0x252	// 252 <dsleep_test_task+0x252>
 244:	4366      	lsli      	r3, r3, 6
 246:	3780      	movi      	r7, 128
 248:	c4668046 	divs      	r6, r6, r3
 24c:	47e3      	lsli      	r7, r7, 3
 24e:	350a      	movi      	r5, 10
 250:	077a      	br      	0x144	// 144 <dsleep_test_task+0x144>
 252:	4362      	lsli      	r3, r3, 2
 254:	c4668046 	divs      	r6, r6, r3
 258:	3780      	movi      	r7, 128
 25a:	3505      	movi      	r5, 5
 25c:	074c      	br      	0xf4	// f4 <dsleep_test_task+0xf4>
 25e:	3a43      	cmpnei      	r2, 3
 260:	0c1d      	bf      	0x29a	// 29a <dsleep_test_task+0x29a>
 262:	3a44      	cmpnei      	r2, 4
 264:	0bde      	bt      	0x220	// 220 <dsleep_test_task+0x220>
 266:	111f      	lrw      	r0, 0x0	// 360 <dsleep_test_task+0x360>
 268:	e0000000 	bsr      	0x0	// 0 <hgprintf>
 26c:	9460      	ld.w      	r3, (r4, 0x0)
 26e:	dd23200e 	st.w      	r9, (r3, 0x38)
 272:	07d7      	br      	0x220	// 220 <dsleep_test_task+0x220>
 274:	3209      	movi      	r2, 9
 276:	113c      	lrw      	r1, 0x0	// 364 <dsleep_test_task+0x364>
 278:	6c0f      	mov      	r0, r3
 27a:	e0000000 	bsr      	0x0	// 0 <memcmp>
 27e:	e9200008 	bnez      	r0, 0x28e	// 28e <dsleep_test_task+0x28e>
 282:	111a      	lrw      	r0, 0x0	// 368 <hgprintf+0x368>
 284:	e0000000 	bsr      	0x0	// 0 <hgprintf>
 288:	180d      	addi      	r0, r14, 52
 28a:	e0000000 	bsr      	0x0	// 0 <dsleep_test_task>
 28e:	350a      	movi      	r5, 10
 290:	076d      	br      	0x16a	// 16a <dsleep_test_task+0x16a>
 292:	1117      	lrw      	r0, 0x0	// 36c <dsleep_test_task+0x36c>
 294:	e0000000 	bsr      	0x0	// 0 <hgprintf>
 298:	07fb      	br      	0x28e	// 28e <dsleep_test_task+0x28e>
 29a:	3209      	movi      	r2, 9
 29c:	1132      	lrw      	r1, 0x0	// 364 <dsleep_test_task+0x364>
 29e:	6c0f      	mov      	r0, r3
 2a0:	e0000000 	bsr      	0x0	// 0 <memcmp>
 2a4:	e920fff5 	bnez      	r0, 0x28e	// 28e <dsleep_test_task+0x28e>
 2a8:	1112      	lrw      	r0, 0x0	// 370 <dsleep_test_task+0x370>
 2aa:	07ed      	br      	0x284	// 284 <dsleep_test_task+0x284>
 2ac:	9460      	ld.w      	r3, (r4, 0x0)
 2ae:	936e      	ld.w      	r3, (r3, 0x38)
 2b0:	3b43      	cmpnei      	r3, 3
 2b2:	0806      	bt      	0x2be	// 2be <dsleep_test_task+0x2be>
 2b4:	e0000000 	bsr      	0x0	// 0 <dsleep_test_task>
 2b8:	110f      	lrw      	r0, 0x0	// 374 <hgprintf+0x374>
 2ba:	e0000000 	bsr      	0x0	// 0 <hgprintf>
 2be:	d86b2000 	ld.w      	r3, (r11, 0x0)
 2c2:	e903000d 	bez      	r3, 0x2dc	// 2dc <dsleep_test_task+0x2dc>
 2c6:	110d      	lrw      	r0, 0x0	// 378 <netif_find+0x378>
 2c8:	e0000000 	bsr      	0x0	// 0 <netif_find>
 2cc:	d86b2000 	ld.w      	r3, (r11, 0x0)
 2d0:	9041      	ld.w      	r2, (r0, 0x4)
 2d2:	b348      	st.w      	r2, (r3, 0x20)
 2d4:	9042      	ld.w      	r2, (r0, 0x8)
 2d6:	b349      	st.w      	r2, (r3, 0x24)
 2d8:	9043      	ld.w      	r2, (r0, 0xc)
 2da:	b34a      	st.w      	r2, (r3, 0x28)
 2dc:	e0000000 	bsr      	0x0	// 0 <os_jiffies>
 2e0:	9844      	ld.w      	r2, (r14, 0x10)
 2e2:	9865      	ld.w      	r3, (r14, 0x14)
 2e4:	6488      	cmphs      	r2, r2
 2e6:	c4400102 	subc      	r2, r0, r2
 2ea:	c4610103 	subc      	r3, r1, r3
 2ee:	6c0b      	mov      	r0, r2
 2f0:	6c4f      	mov      	r1, r3
 2f2:	e9210005 	bnez      	r1, 0x2fc	// 2fc <dsleep_test_task+0x2fc>
 2f6:	eb0203e7 	cmphsi      	r2, 1000
 2fa:	0c4b      	bf      	0x390	// 390 <os_jiffies+0x390>
 2fc:	e0000000 	bsr      	0x0	// 0 <os_jiffies>
 300:	9460      	ld.w      	r3, (r4, 0x0)
 302:	b804      	st.w      	r0, (r14, 0x10)
 304:	b825      	st.w      	r1, (r14, 0x14)
 306:	934e      	ld.w      	r2, (r3, 0x38)
 308:	3a41      	cmpnei      	r2, 1
 30a:	0839      	bt      	0x37c	// 37c <dsleep_test_task+0x37c>
 30c:	e0000000 	bsr      	0x0	// 0 <dsleep_test_task>
 310:	1013      	lrw      	r0, 0x0	// 35c <hgprintf+0x35c>
 312:	e0000000 	bsr      	0x0	// 0 <hgprintf>
 316:	e925003a 	bnez      	r5, 0x38a	// 38a <dsleep_test_task+0x38a>
 31a:	9460      	ld.w      	r3, (r4, 0x0)
 31c:	934e      	ld.w      	r2, (r3, 0x38)
 31e:	3a44      	cmpnei      	r2, 4
 320:	0863      	bt      	0x3e6	// 3e6 <dsleep_test_task+0x3e6>
 322:	3500      	movi      	r5, 0
 324:	0436      	br      	0x390	// 390 <dsleep_test_task+0x390>
	...
 37a:	0000      	.short	0x0000
 37c:	3a44      	cmpnei      	r2, 4
 37e:	0832      	bt      	0x3e2	// 3e2 <dsleep_test_task+0x3e2>
 380:	3100      	movi      	r1, 0
 382:	101d      	lrw      	r0, 0x0	// 3f4 <dsleep_test_task+0x3f4>
 384:	e0000000 	bsr      	0x0	// 0 <dsleep_test_task>
 388:	07c7      	br      	0x316	// 316 <dsleep_test_task+0x316>
 38a:	2d00      	subi      	r5, 1
 38c:	e905ffc7 	bez      	r5, 0x31a	// 31a <dsleep_test_task+0x31a>
 390:	9460      	ld.w      	r3, (r4, 0x0)
 392:	d903200e 	ld.w      	r8, (r3, 0x38)
 396:	e928feea 	bnez      	r8, 0x16a	// 16a <dsleep_test_task+0x16a>
 39a:	e905fee8 	bez      	r5, 0x16a	// 16a <dsleep_test_task+0x16a>
 39e:	e52e004f 	addi      	r9, r14, 80
 3a2:	65a1      	cmplt      	r8, r6
 3a4:	0ee3      	bf      	0x16a	// 16a <dsleep_test_task+0x16a>
 3a6:	9460      	ld.w      	r3, (r4, 0x0)
 3a8:	e4230013 	addi      	r1, r3, 20
 3ac:	3210      	movi      	r2, 16
 3ae:	6c27      	mov      	r0, r9
 3b0:	b867      	st.w      	r3, (r14, 0x1c)
 3b2:	e0000000 	bsr      	0x0	// 0 <memcpy>
 3b6:	9867      	ld.w      	r3, (r14, 0x1c)
 3b8:	e5080000 	addi      	r8, r8, 1
 3bc:	930a      	ld.w      	r0, (r3, 0x28)
 3be:	2000      	addi      	r0, 1
 3c0:	7401      	zexth      	r0, r0
 3c2:	e0000000 	bsr      	0x0	// 0 <lwip_htons>
 3c6:	9420      	ld.w      	r1, (r4, 0x0)
 3c8:	dc091001 	st.h      	r0, (r9, 0x2)
 3cc:	3300      	movi      	r3, 0
 3ce:	9109      	ld.w      	r0, (r1, 0x24)
 3d0:	6c9f      	mov      	r2, r7
 3d2:	dd4e2001 	st.w      	r10, (r14, 0x4)
 3d6:	dd2e2000 	st.w      	r9, (r14, 0x0)
 3da:	2167      	addi      	r1, 104
 3dc:	e0000000 	bsr      	0x0	// 0 <sendto>
 3e0:	07e1      	br      	0x3a2	// 3a2 <dsleep_test_task+0x3a2>
 3e2:	e925ffd4 	bnez      	r5, 0x38a	// 38a <dsleep_test_task+0x38a>
 3e6:	3204      	movi      	r2, 4
 3e8:	b34e      	st.w      	r2, (r3, 0x38)
 3ea:	1004      	lrw      	r0, 0x0	// 3f8 <dsleep_test_task+0x3f8>
 3ec:	e0000000 	bsr      	0x0	// 0 <hgprintf>
 3f0:	0799      	br      	0x322	// 322 <dsleep_test_task+0x322>
	...

Disassembly of section .text.dsleep_test_init:

00000000 <dsleep_test_init>:
   0:	14d5      	push      	r4-r8, r15
   2:	1429      	subi      	r14, r14, 36
   4:	6d83      	mov      	r6, r0
   6:	6e07      	mov      	r8, r1
   8:	1202      	lrw      	r0, 0x0	// 110 <dsleep_test_init+0x110>
   a:	1223      	lrw      	r1, 0x0	// 114 <dsleep_test_init+0x114>
   c:	e0000000 	bsr      	0x0	// 0 <atcmd_register>
  10:	1202      	lrw      	r0, 0x0	// 118 <hgprintf+0x118>
  12:	e0000000 	bsr      	0x0	// 0 <hgprintf>
  16:	312c      	movi      	r1, 44
  18:	3005      	movi      	r0, 5
  1a:	e0000000 	bsr      	0x0	// 0 <sys_sleepdata_request>
  1e:	12a0      	lrw      	r5, 0x0	// 11c <dsleep_test_init+0x11c>
  20:	b500      	st.w      	r0, (r5, 0x0)
  22:	e9000073 	bez      	r0, 0x108	// 108 <dsleep_test_init+0x108>
  26:	e9260005 	bnez      	r6, 0x30	// 30 <dsleep_test_init+0x30>
  2a:	806c      	ld.b      	r3, (r0, 0xc)
  2c:	e903006e 	bez      	r3, 0x108	// 108 <dsleep_test_init+0x108>
  30:	30de      	movi      	r0, 222
  32:	4004      	lsli      	r0, r0, 4
  34:	e0000000 	bsr      	0x0	// 0 <_os_malloc>
  38:	119a      	lrw      	r4, 0x0	// 120 <dsleep_test_init+0x120>
  3a:	b400      	st.w      	r0, (r4, 0x0)
  3c:	e9200008 	bnez      	r0, 0x4c	// 4c <dsleep_test_init+0x4c>
  40:	31a6      	movi      	r1, 166
  42:	1159      	lrw      	r2, 0x0	// 124 <dsleep_test_init+0x124>
  44:	4121      	lsli      	r1, r1, 1
  46:	1119      	lrw      	r0, 0x0	// 128 <dsleep_test_init+0x128>
  48:	e0000000 	bsr      	0x0	// 0 <assert_internal>
  4c:	9560      	ld.w      	r3, (r5, 0x0)
  4e:	9368      	ld.w      	r3, (r3, 0x20)
  50:	e9030033 	bez      	r3, 0xb6	// b6 <dsleep_test_init+0xb6>
  54:	3100      	movi      	r1, 0
  56:	1116      	lrw      	r0, 0x0	// 12c <dsleep_test_init+0x12c>
  58:	e0000000 	bsr      	0x0	// 0 <lwip_netif_set_dhcp2>
  5c:	9520      	ld.w      	r1, (r5, 0x0)
  5e:	e4610027 	addi      	r3, r1, 40
  62:	e4410023 	addi      	r2, r1, 36
  66:	1112      	lrw      	r0, 0x0	// 12c <dsleep_test_init+0x12c>
  68:	211f      	addi      	r1, 32
  6a:	e0000000 	bsr      	0x0	// 0 <lwip_netif_set_ip2>
  6e:	9540      	ld.w      	r2, (r5, 0x0)
  70:	9228      	ld.w      	r1, (r2, 0x20)
  72:	9269      	ld.w      	r3, (r2, 0x24)
  74:	924a      	ld.w      	r2, (r2, 0x28)
  76:	4a18      	lsri      	r0, r2, 24
  78:	b808      	st.w      	r0, (r14, 0x20)
  7a:	c60256e0 	zext      	r0, r2, 23, 16
  7e:	b807      	st.w      	r0, (r14, 0x1c)
  80:	c50255e0 	zext      	r0, r2, 15, 8
  84:	e44220ff 	andi      	r2, r2, 255
  88:	b845      	st.w      	r2, (r14, 0x14)
  8a:	4b58      	lsri      	r2, r3, 24
  8c:	b844      	st.w      	r2, (r14, 0x10)
  8e:	c60356e2 	zext      	r2, r3, 23, 16
  92:	b843      	st.w      	r2, (r14, 0xc)
  94:	c50355e2 	zext      	r2, r3, 15, 8
  98:	e46320ff 	andi      	r3, r3, 255
  9c:	b861      	st.w      	r3, (r14, 0x4)
  9e:	4978      	lsri      	r3, r1, 24
  a0:	b806      	st.w      	r0, (r14, 0x18)
  a2:	b842      	st.w      	r2, (r14, 0x8)
  a4:	b860      	st.w      	r3, (r14, 0x0)
  a6:	c50155e2 	zext      	r2, r1, 15, 8
  aa:	c60156e3 	zext      	r3, r1, 23, 16
  ae:	1101      	lrw      	r0, 0x0	// 130 <dsleep_test_init+0x130>
  b0:	7444      	zextb      	r1, r1
  b2:	e0000000 	bsr      	0x0	// 0 <hgprintf>
  b6:	94e0      	ld.w      	r7, (r4, 0x0)
  b8:	e4070053 	addi      	r0, r7, 84
  bc:	e9260028 	bnez      	r6, 0x10c	// 10c <dsleep_test_init+0x10c>
  c0:	9520      	ld.w      	r1, (r5, 0x0)
  c2:	210b      	addi      	r1, 12
  c4:	e0000000 	bsr      	0x0	// 0 <strcpy>
  c8:	9560      	ld.w      	r3, (r5, 0x0)
  ca:	6c5f      	mov      	r1, r7
  cc:	9340      	ld.w      	r2, (r3, 0x0)
  ce:	b74a      	st.w      	r2, (r7, 0x28)
  d0:	9341      	ld.w      	r2, (r3, 0x4)
  d2:	9362      	ld.w      	r3, (r3, 0x8)
  d4:	b74c      	st.w      	r2, (r7, 0x30)
  d6:	b76d      	st.w      	r3, (r7, 0x34)
  d8:	dd07200f 	st.w      	r8, (r7, 0x3c)
  dc:	3300      	movi      	r3, 0
  de:	1056      	lrw      	r2, 0x0	// 134 <dsleep_test_init+0x134>
  e0:	1016      	lrw      	r0, 0x0	// 138 <dsleep_test_init+0x138>
  e2:	e0000000 	bsr      	0x0	// 0 <os_task_init>
  e6:	3180      	movi      	r1, 128
  e8:	4123      	lsli      	r1, r1, 3
  ea:	9400      	ld.w      	r0, (r4, 0x0)
  ec:	e0000000 	bsr      	0x0	// 0 <os_task_set_stacksize>
  f0:	3120      	movi      	r1, 32
  f2:	9400      	ld.w      	r0, (r4, 0x0)
  f4:	e0000000 	bsr      	0x0	// 0 <os_task_set_priority>
  f8:	9400      	ld.w      	r0, (r4, 0x0)
  fa:	e0000000 	bsr      	0x0	// 0 <os_task_run>
  fe:	9420      	ld.w      	r1, (r4, 0x0)
 100:	2153      	addi      	r1, 84
 102:	100f      	lrw      	r0, 0x0	// 13c <dsleep_test_init+0x13c>
 104:	e0000000 	bsr      	0x0	// 0 <hgprintf>
 108:	1409      	addi      	r14, r14, 36
 10a:	1495      	pop      	r4-r8, r15
 10c:	6c5b      	mov      	r1, r6
 10e:	07db      	br      	0xc4	// c4 <dsleep_test_init+0xc4>
	...
