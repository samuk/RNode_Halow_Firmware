
libwifi/o/wifi_wifi_psalive.o:     file format elf32-csky-little


Disassembly of section .text.__get_unaligned_le32:

00000000 <__get_unaligned_le32>:
   0:	8061      	ld.b      	r3, (r0, 0x1)
   2:	8040      	ld.b      	r2, (r0, 0x0)
   4:	4368      	lsli      	r3, r3, 8
   6:	6c8c      	or      	r2, r3
   8:	8062      	ld.b      	r3, (r0, 0x2)
   a:	4370      	lsli      	r3, r3, 16
   c:	8003      	ld.b      	r0, (r0, 0x3)
   e:	6cc8      	or      	r3, r2
  10:	4018      	lsli      	r0, r0, 24
  12:	6c0c      	or      	r0, r3
  14:	783c      	jmp      	r15

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

Disassembly of section .text.wifi_psalive_is_wkdata:

00000000 <wifi_psalive_is_wkdata>:
   0:	14d3      	push      	r4-r6, r15
   2:	8077      	ld.b      	r3, (r0, 0x17)
   4:	8186      	ld.b      	r4, (r1, 0x6)
   6:	3b51      	cmpnei      	r3, 17
   8:	6d83      	mov      	r6, r0
   a:	3336      	movi      	r3, 54
   c:	302a      	movi      	r0, 42
   e:	6d47      	mov      	r5, r1
  10:	c4030c40 	inct      	r0, r3, 0
  14:	e9040035 	bez      	r4, 0x7e	// 7e <wifi_psalive_is_wkdata+0x7e>
  18:	6c93      	mov      	r2, r4
  1a:	21d3      	addi      	r1, 212
  1c:	6018      	addu      	r0, r6
  1e:	e0000000 	bsr      	0x0	// 0 <memcmp>
  22:	e9000030 	bez      	r0, 0x82	// 82 <wifi_psalive_is_wkdata+0x82>
  26:	d805108a 	ld.h      	r0, (r5, 0x114)
  2a:	e920001f 	bnez      	r0, 0x68	// 68 <wifi_psalive_is_wkdata+0x68>
  2e:	1493      	pop      	r4-r6, r15
  30:	4a23      	lsri      	r1, r2, 3
  32:	6054      	addu      	r1, r5
  34:	e4422007 	andi      	r2, r2, 7
  38:	d8210118 	ld.b      	r1, (r1, 0x118)
  3c:	c4414082 	asr      	r2, r1, r2
  40:	e4422001 	andi      	r2, r2, 1
  44:	e9020010 	bez      	r2, 0x64	// 64 <wifi_psalive_is_wkdata+0x64>
  48:	5d4c      	addu      	r2, r5, r3
  4a:	ea0c0001 	movi      	r12, 1
  4e:	d82200d4 	ld.b      	r1, (r2, 0xd4)
  52:	d0660022 	ldr.b      	r2, (r6, r3 << 0)
  56:	6486      	cmpne      	r1, r2
  58:	6403      	mvcv      	r0
  5a:	2300      	addi      	r3, 1
  5c:	e9200009 	bnez      	r0, 0x6e	// 6e <wifi_psalive_is_wkdata+0x6e>
  60:	6830      	and      	r0, r12
  62:	07e6      	br      	0x2e	// 2e <wifi_psalive_is_wkdata+0x2e>
  64:	3001      	movi      	r0, 1
  66:	07fa      	br      	0x5a	// 5a <wifi_psalive_is_wkdata+0x5a>
  68:	3300      	movi      	r3, 0
  6a:	6f0f      	mov      	r12, r3
  6c:	6180      	addu      	r6, r0
  6e:	eb430080 	cmpnei      	r3, 128
  72:	748c      	zextb      	r2, r3
  74:	0c03      	bf      	0x7a	// 7a <wifi_psalive_is_wkdata+0x7a>
  76:	6508      	cmphs      	r2, r4
  78:	0fdc      	bf      	0x30	// 30 <wifi_psalive_is_wkdata+0x30>
  7a:	3001      	movi      	r0, 1
  7c:	07f2      	br      	0x60	// 60 <wifi_psalive_is_wkdata+0x60>
  7e:	6c13      	mov      	r0, r4
  80:	07d7      	br      	0x2e	// 2e <wifi_psalive_is_wkdata+0x2e>
  82:	3001      	movi      	r0, 1
  84:	07d5      	br      	0x2e	// 2e <wifi_psalive_is_wkdata+0x2e>

Disassembly of section .text.wifi_psalive_check_ifidx:

00000000 <wifi_psalive_check_ifidx>:
   0:	14d1      	push      	r4, r15
   2:	106a      	lrw      	r3, 0x0	// 28 <wifi_psalive_check_ifidx+0x28>
   4:	6d03      	mov      	r4, r0
   6:	3101      	movi      	r1, 1
   8:	830c      	ld.b      	r0, (r3, 0xc)
   a:	e0000000 	bsr      	0x0	// 0 <wificfg_get_ifidx>
   e:	7400      	zextb      	r0, r0
  10:	6502      	cmpne      	r0, r4
  12:	0c08      	bf      	0x22	// 22 <wifi_psalive_check_ifidx+0x22>
  14:	2c02      	subi      	r4, 3
  16:	7510      	zextb      	r4, r4
  18:	3c01      	cmphsi      	r4, 2
  1a:	c4000500 	mvc      	r0
  1e:	7400      	zextb      	r0, r0
  20:	1491      	pop      	r4, r15
  22:	3000      	movi      	r0, 0
  24:	07fe      	br      	0x20	// 20 <wifi_psalive_check_ifidx+0x20>
  26:	0000      	.short	0x0000
  28:	0000      	.short	0x0000
	...

Disassembly of section .text.wifi_psalive_timer_cb:

00000000 <wifi_psalive_timer_cb>:
   0:	14d0      	push      	r15
   2:	2027      	addi      	r0, 40
   4:	e0000000 	bsr      	0x0	// 0 <os_run_work>
   8:	1490      	pop      	r15

Disassembly of section .text.wifi_psalive_sta_tx_psparam.isra.2:

00000000 <wifi_psalive_sta_tx_psparam.isra.2>:
   0:	14d0      	push      	r15
   2:	804c      	ld.b      	r2, (r0, 0xc)
   4:	e902001a 	bez      	r2, 0x38	// 38 <wifi_psalive_sta_tx_psparam.isra.2+0x38>
   8:	9047      	ld.w      	r2, (r0, 0x1c)
   a:	3301      	movi      	r3, 1
   c:	102c      	lrw      	r1, 0x0	// 3c <wifi_psalive_sta_tx_psparam.isra.2+0x3c>
   e:	a260      	st.b      	r3, (r2, 0x0)
  10:	d861107d 	ld.h      	r3, (r1, 0xfa)
  14:	c4e35523 	zext      	r3, r3, 9, 7
  18:	a261      	st.b      	r3, (r2, 0x1)
  1a:	d86100fa 	ld.b      	r3, (r1, 0xfa)
  1e:	c4a354a3 	zext      	r3, r3, 5, 5
  22:	d8220116 	ld.b      	r1, (r2, 0x116)
  26:	c4235c00 	ins      	r1, r3, 0, 0
  2a:	33b6      	movi      	r3, 182
  2c:	dc220116 	st.b      	r1, (r2, 0x116)
  30:	4361      	lsli      	r3, r3, 1
  32:	3101      	movi      	r1, 1
  34:	e0000000 	bsr      	0x0	// 0 <wifi_mgr_send_wifimgr_data>
  38:	1490      	pop      	r15
  3a:	0000      	.short	0x0000
  3c:	00000000 	.long	0x00000000

Disassembly of section .text.wifi_psalive_rx_wifimgr:

00000000 <wifi_psalive_rx_wifimgr>:
   0:	14d7      	push      	r4-r10, r15
   2:	6d83      	mov      	r6, r0
   4:	6c07      	mov      	r0, r1
   6:	6d4b      	mov      	r5, r2
   8:	8298      	ld.b      	r4, (r2, 0x18)
   a:	e0000000 	bsr      	0x0	// 0 <wifi_psalive_rx_wifimgr>
   e:	e9200016 	bnez      	r0, 0x3a	// 3a <wifi_psalive_rx_wifimgr+0x3a>
  12:	116a      	lrw      	r3, 0x0	// b8 <wifi_psalive_rx_wifimgr+0xb8>
  14:	5e5f      	subi      	r2, r6, 8
  16:	832c      	ld.b      	r1, (r3, 0xc)
  18:	5963      	subi      	r3, r1, 1
  1a:	74cc      	zextb      	r3, r3
  1c:	3b01      	cmphsi      	r3, 2
  1e:	0810      	bt      	0x3e	// 3e <wifi_psalive_rx_wifimgr+0x3e>
  20:	927a      	ld.w      	r3, (r2, 0x68)
  22:	e903000c 	bez      	r3, 0x3a	// 3a <wifi_psalive_rx_wifimgr+0x3a>
  26:	3c41      	cmpnei      	r4, 1
  28:	0809      	bt      	0x3a	// 3a <wifi_psalive_rx_wifimgr+0x3a>
  2a:	9618      	ld.w      	r0, (r6, 0x60)
  2c:	806c      	ld.b      	r3, (r0, 0xc)
  2e:	e9030004 	bez      	r3, 0x36	// 36 <wifi_psalive_rx_wifimgr+0x36>
  32:	2b00      	subi      	r3, 1
  34:	a06c      	st.b      	r3, (r0, 0xc)
  36:	e0000000 	bsr      	0x0	// 0 <wifi_psalive_rx_wifimgr>
  3a:	3000      	movi      	r0, 0
  3c:	1497      	pop      	r4-r10, r15
  3e:	3902      	cmphsi      	r1, 3
  40:	0ffd      	bf      	0x3a	// 3a <wifi_psalive_rx_wifimgr+0x3a>
  42:	9279      	ld.w      	r3, (r2, 0x64)
  44:	e903fffb 	bez      	r3, 0x3a	// 3a <wifi_psalive_rx_wifimgr+0x3a>
  48:	3c41      	cmpnei      	r4, 1
  4a:	0bf8      	bt      	0x3a	// 3a <wifi_psalive_rx_wifimgr+0x3a>
  4c:	d9051008 	ld.h      	r8, (r5, 0x10)
  50:	33b6      	movi      	r3, 182
  52:	3100      	movi      	r1, 0
  54:	4361      	lsli      	r3, r3, 1
  56:	eb08016b 	cmphsi      	r8, 364
  5a:	2900      	subi      	r1, 1
  5c:	9617      	ld.w      	r0, (r6, 0x5c)
  5e:	c5030c40 	inct      	r8, r3, 0
  62:	e0000000 	bsr      	0x0	// 0 <os_mutex_lock>
  66:	9677      	ld.w      	r3, (r6, 0x5c)
  68:	e5250005 	addi      	r9, r5, 6
  6c:	9382      	ld.w      	r4, (r3, 0x8)
  6e:	5bfe      	addi      	r7, r3, 8
  70:	65d2      	cmpne      	r4, r7
  72:	0c1d      	bf      	0xac	// ac <wifi_psalive_rx_wifimgr+0xac>
  74:	e5440013 	addi      	r10, r4, 20
  78:	6c67      	mov      	r1, r9
  7a:	3206      	movi      	r2, 6
  7c:	6c2b      	mov      	r0, r10
  7e:	e0000000 	bsr      	0x0	// 0 <memcmp>
  82:	6c43      	mov      	r1, r0
  84:	e9200018 	bnez      	r0, 0xb4	// b4 <wifi_psalive_rx_wifimgr+0xb4>
  88:	241b      	addi      	r4, 28
  8a:	32b6      	movi      	r2, 182
  8c:	2517      	addi      	r5, 24
  8e:	4241      	lsli      	r2, r2, 1
  90:	6c13      	mov      	r0, r4
  92:	e0000000 	bsr      	0x0	// 0 <memset>
  96:	6ca3      	mov      	r2, r8
  98:	6c57      	mov      	r1, r5
  9a:	6c13      	mov      	r0, r4
  9c:	e0000000 	bsr      	0x0	// 0 <memcpy>
  a0:	3301      	movi      	r3, 1
  a2:	6c97      	mov      	r2, r5
  a4:	6c4f      	mov      	r1, r3
  a6:	6c2b      	mov      	r0, r10
  a8:	e0000000 	bsr      	0x0	// 0 <wifi_mgr_send_wifimgr_data>
  ac:	9617      	ld.w      	r0, (r6, 0x5c)
  ae:	e0000000 	bsr      	0x0	// 0 <os_mutex_unlock>
  b2:	07c4      	br      	0x3a	// 3a <wifi_psalive_rx_wifimgr+0x3a>
  b4:	9480      	ld.w      	r4, (r4, 0x0)
  b6:	07dd      	br      	0x70	// 70 <wifi_psalive_rx_wifimgr+0x70>
  b8:	00000000 	.long	0x00000000

Disassembly of section .text.wifi_psalive_send_backup_wkdata.isra.9:

00000000 <wifi_psalive_send_backup_wkdata.isra.9>:
   0:	14d3      	push      	r4-r6, r15
   2:	58be      	addi      	r5, r0, 8
   4:	10cb      	lrw      	r6, 0x0	// 30 <wifi_psalive_send_backup_wkdata.isra.9+0x30>
   6:	6c17      	mov      	r0, r5
   8:	e0000000 	bsr      	0x0	// 0 <skb_list_count>
   c:	e9200003 	bnez      	r0, 0x12	// 12 <wifi_psalive_send_backup_wkdata.isra.9+0x12>
  10:	1493      	pop      	r4-r6, r15
  12:	6c17      	mov      	r0, r5
  14:	e0000000 	bsr      	0x0	// 0 <skb_list_dequeue>
  18:	6d03      	mov      	r4, r0
  1a:	e900fff6 	bez      	r0, 0x6	// 6 <wifi_psalive_send_backup_wkdata.isra.9+0x6>
  1e:	8854      	ld.h      	r2, (r0, 0x28)
  20:	9027      	ld.w      	r1, (r0, 0x1c)
  22:	860c      	ld.b      	r0, (r6, 0xc)
  24:	e0000000 	bsr      	0x0	// 0 <ieee80211_tx>
  28:	6c13      	mov      	r0, r4
  2a:	e0000000 	bsr      	0x0	// 0 <kfree_skb>
  2e:	07ec      	br      	0x6	// 6 <sys_cfgs+0x6>
  30:	00000000 	.long	0x00000000

Disassembly of section .text.wifi_psalive_ap_init.isra.10.part.11:

00000000 <wifi_psalive_ap_init.isra.10.part.11>:
   0:	14d1      	push      	r4, r15
   2:	6d03      	mov      	r4, r0
   4:	3010      	movi      	r0, 16
   6:	e0000000 	bsr      	0x0	// 0 <_os_zalloc>
   a:	b400      	st.w      	r0, (r4, 0x0)
   c:	e9200007 	bnez      	r0, 0x1a	// 1a <wifi_psalive_ap_init.isra.10.part.11+0x1a>
  10:	1047      	lrw      	r2, 0x0	// 2c <wifi_psalive_ap_init.isra.10.part.11+0x2c>
  12:	31cb      	movi      	r1, 203
  14:	1007      	lrw      	r0, 0x0	// 30 <wifi_psalive_ap_init.isra.10.part.11+0x30>
  16:	e0000000 	bsr      	0x0	// 0 <assert_internal>
  1a:	9400      	ld.w      	r0, (r4, 0x0)
  1c:	e0000000 	bsr      	0x0	// 0 <os_mutex_init>
  20:	9460      	ld.w      	r3, (r4, 0x0)
  22:	5b5e      	addi      	r2, r3, 8
  24:	b342      	st.w      	r2, (r3, 0x8)
  26:	b343      	st.w      	r2, (r3, 0xc)
  28:	1491      	pop      	r4, r15
	...

Disassembly of section .text.wifi_psalive_sta_init.isra.15:

00000000 <wifi_psalive_sta_init.isra.15>:
   0:	14d2      	push      	r4-r5, r15
   2:	9060      	ld.w      	r3, (r0, 0x0)
   4:	6d03      	mov      	r4, r0
   6:	e923000f 	bnez      	r3, 0x24	// 24 <wifi_psalive_sta_init.isra.15+0x24>
   a:	31b6      	movi      	r1, 182
   c:	4121      	lsli      	r1, r1, 1
   e:	3002      	movi      	r0, 2
  10:	e0000000 	bsr      	0x0	// 0 <sys_sleepdata_request>
  14:	6d43      	mov      	r5, r0
  16:	e9200008 	bnez      	r0, 0x26	// 26 <wifi_psalive_sta_init.isra.15+0x26>
  1a:	32d8      	movi      	r2, 216
  1c:	102b      	lrw      	r1, 0x0	// 48 <wifi_psalive_sta_init.isra.15+0x48>
  1e:	100c      	lrw      	r0, 0x0	// 4c <wifi_psalive_sta_init.isra.15+0x4c>
  20:	e0000000 	bsr      	0x0	// 0 <hgprintf>
  24:	1492      	pop      	r4-r5, r15
  26:	3020      	movi      	r0, 32
  28:	e0000000 	bsr      	0x0	// 0 <_os_zalloc>
  2c:	b400      	st.w      	r0, (r4, 0x0)
  2e:	e9200007 	bnez      	r0, 0x3c	// 3c <wifi_psalive_sta_init.isra.15+0x3c>
  32:	1048      	lrw      	r2, 0x0	// 50 <wifi_psalive_sta_init.isra.15+0x50>
  34:	31dd      	movi      	r1, 221
  36:	1008      	lrw      	r0, 0x0	// 54 <wifi_psalive_sta_init.isra.15+0x54>
  38:	e0000000 	bsr      	0x0	// 0 <assert_internal>
  3c:	9400      	ld.w      	r0, (r4, 0x0)
  3e:	200f      	addi      	r0, 16
  40:	b0a3      	st.w      	r5, (r0, 0xc)
  42:	e0000000 	bsr      	0x0	// 0 <skb_list_init>
  46:	07ef      	br      	0x24	// 24 <wifi_psalive_sta_init.isra.15+0x24>
	...

Disassembly of section .text.wifi_psalive_backup_wkdata:

00000000 <wifi_psalive_backup_wkdata>:
   0:	14d4      	push      	r4-r7, r15
   2:	6d43      	mov      	r5, r0
   4:	6dc7      	mov      	r7, r1
   6:	6d8b      	mov      	r6, r2
   8:	6c17      	mov      	r0, r5
   a:	e0000000 	bsr      	0x0	// 0 <skb_list_count>
   e:	3804      	cmphsi      	r0, 5
  10:	0815      	bt      	0x3a	// 3a <wifi_psalive_backup_wkdata+0x3a>
  12:	6c1b      	mov      	r0, r6
  14:	e0000000 	bsr      	0x0	// 0 <alloc_skb>
  18:	6d03      	mov      	r4, r0
  1a:	e9000016 	bez      	r0, 0x46	// 46 <wifi_psalive_backup_wkdata+0x46>
  1e:	6c9b      	mov      	r2, r6
  20:	6c5f      	mov      	r1, r7
  22:	9007      	ld.w      	r0, (r0, 0x1c)
  24:	e0000000 	bsr      	0x0	// 0 <hw_memcpy>
  28:	6c5b      	mov      	r1, r6
  2a:	6c13      	mov      	r0, r4
  2c:	e0000000 	bsr      	0x0	// 0 <skb_put>
  30:	6c53      	mov      	r1, r4
  32:	6c17      	mov      	r0, r5
  34:	e0000000 	bsr      	0x0	// 0 <skb_list_queue>
  38:	1494      	pop      	r4-r7, r15
  3a:	6c17      	mov      	r0, r5
  3c:	e0000000 	bsr      	0x0	// 0 <skb_list_dequeue>
  40:	e0000000 	bsr      	0x0	// 0 <kfree_skb>
  44:	07e2      	br      	0x8	// 8 <wifi_psalive_backup_wkdata+0x8>
  46:	3290      	movi      	r2, 144
  48:	4241      	lsli      	r2, r2, 1
  4a:	1023      	lrw      	r1, 0x0	// 54 <wifi_psalive_backup_wkdata+0x54>
  4c:	1003      	lrw      	r0, 0x0	// 58 <wifi_psalive_backup_wkdata+0x58>
  4e:	e0000000 	bsr      	0x0	// 0 <hgprintf>
  52:	07f3      	br      	0x38	// 38 <wifi_psalive_backup_wkdata+0x38>
	...

Disassembly of section .text.wifi_psalive_pkthook_rx:

00000000 <wifi_psalive_pkthook_rx>:
   0:	14d6      	push      	r4-r9, r15
   2:	9061      	ld.w      	r3, (r0, 0x4)
   4:	6c07      	mov      	r0, r1
   6:	93e1      	ld.w      	r7, (r3, 0x4)
   8:	9260      	ld.w      	r3, (r2, 0x0)
   a:	6d8b      	mov      	r6, r2
   c:	838c      	ld.b      	r4, (r3, 0xc)
   e:	83ad      	ld.b      	r5, (r3, 0xd)
  10:	e0000000 	bsr      	0x0	// 0 <wifi_psalive_pkthook_rx>
  14:	e920002a 	bnez      	r0, 0x68	// 68 <wifi_psalive_pkthook_rx+0x68>
  18:	1270      	lrw      	r3, 0x0	// 158 <wifi_psalive_pkthook_rx+0x158>
  1a:	4488      	lsli      	r4, r4, 8
  1c:	836c      	ld.b      	r3, (r3, 0xc)
  1e:	3b02      	cmphsi      	r3, 3
  20:	6d14      	or      	r4, r5
  22:	0c64      	bf      	0xea	// ea <wifi_psalive_pkthook_rx+0xea>
  24:	9719      	ld.w      	r0, (r7, 0x64)
  26:	e9000062 	bez      	r0, 0xea	// ea <wifi_psalive_pkthook_rx+0xea>
  2a:	3100      	movi      	r1, 0
  2c:	2900      	subi      	r1, 1
  2e:	e0000000 	bsr      	0x0	// 0 <os_mutex_lock>
  32:	eb440800 	cmpnei      	r4, 2048
  36:	0816      	bt      	0x62	// 62 <wifi_psalive_pkthook_rx+0x62>
  38:	9779      	ld.w      	r3, (r7, 0x64)
  3a:	96a0      	ld.w      	r5, (r6, 0x0)
  3c:	e5250005 	addi      	r9, r5, 6
  40:	9382      	ld.w      	r4, (r3, 0x8)
  42:	e5030007 	addi      	r8, r3, 8
  46:	6612      	cmpne      	r4, r8
  48:	0c0d      	bf      	0x62	// 62 <wifi_psalive_pkthook_rx+0x62>
  4a:	e9090011 	bez      	r9, 0x6c	// 6c <wifi_psalive_pkthook_rx+0x6c>
  4e:	3206      	movi      	r2, 6
  50:	6c67      	mov      	r1, r9
  52:	e4040013 	addi      	r0, r4, 20
  56:	e0000000 	bsr      	0x0	// 0 <memcmp>
  5a:	e9200009 	bnez      	r0, 0x6c	// 6c <wifi_psalive_pkthook_rx+0x6c>
  5e:	e9240009 	bnez      	r4, 0x70	// 70 <wifi_psalive_pkthook_rx+0x70>
  62:	9719      	ld.w      	r0, (r7, 0x64)
  64:	e0000000 	bsr      	0x0	// 0 <os_mutex_unlock>
  68:	3000      	movi      	r0, 0
  6a:	1496      	pop      	r4-r9, r15
  6c:	9480      	ld.w      	r4, (r4, 0x0)
  6e:	07ec      	br      	0x46	// 46 <wifi_psalive_pkthook_rx+0x46>
  70:	847d      	ld.b      	r3, (r4, 0x1d)
  72:	3b42      	cmpnei      	r3, 2
  74:	0bf7      	bt      	0x62	// 62 <wifi_psalive_pkthook_rx+0x62>
  76:	8577      	ld.b      	r3, (r5, 0x17)
  78:	3b51      	cmpnei      	r3, 17
  7a:	0bf4      	bt      	0x62	// 62 <wifi_psalive_pkthook_rx+0x62>
  7c:	e405001d 	addi      	r0, r5, 30
  80:	e0000000 	bsr      	0x0	// 0 <wifi_psalive_pkthook_rx>
  84:	9469      	ld.w      	r3, (r4, 0x24)
  86:	64c2      	cmpne      	r0, r3
  88:	0bed      	bt      	0x62	// 62 <wifi_psalive_pkthook_rx+0x62>
  8a:	d8650024 	ld.b      	r3, (r5, 0x24)
  8e:	4368      	lsli      	r3, r3, 8
  90:	d8250025 	ld.b      	r1, (r5, 0x25)
  94:	8c56      	ld.h      	r2, (r4, 0x2c)
  96:	6cc4      	or      	r3, r1
  98:	64ca      	cmpne      	r2, r3
  9a:	0be4      	bt      	0x62	// 62 <wifi_psalive_pkthook_rx+0x62>
  9c:	d8440145 	ld.b      	r2, (r4, 0x145)
  a0:	e902000c 	bez      	r2, 0xb8	// b8 <wifi_psalive_pkthook_rx+0xb8>
  a4:	d8040144 	ld.b      	r0, (r4, 0x144)
  a8:	2029      	addi      	r0, 42
  aa:	e4240145 	addi      	r1, r4, 326
  ae:	6014      	addu      	r0, r5
  b0:	e0000000 	bsr      	0x0	// 0 <memcmp>
  b4:	e920ffd7 	bnez      	r0, 0x62	// 62 <wifi_psalive_pkthook_rx+0x62>
  b8:	8ec2      	ld.h      	r6, (r6, 0x4)
  ba:	e4050019 	addi      	r0, r5, 26
  be:	e0000000 	bsr      	0x0	// 0 <wifi_psalive_pkthook_rx>
  c2:	eb060080 	cmphsi      	r6, 129
  c6:	3380      	movi      	r3, 128
  c8:	c4c30c40 	inct      	r6, r3, 0
  cc:	b40a      	st.w      	r0, (r4, 0x28)
  ce:	a4de      	st.b      	r6, (r4, 0x1e)
  d0:	242f      	addi      	r4, 48
  d2:	6c9b      	mov      	r2, r6
  d4:	6c57      	mov      	r1, r5
  d6:	6c13      	mov      	r0, r4
  d8:	e0000000 	bsr      	0x0	// 0 <memcpy>
  dc:	3300      	movi      	r3, 0
  de:	6c9b      	mov      	r2, r6
  e0:	6c53      	mov      	r1, r4
  e2:	101f      	lrw      	r0, 0x0	// 15c <wifi_psalive_pkthook_rx+0x15c>
  e4:	e0000000 	bsr      	0x0	// 0 <dump_hex>
  e8:	07bd      	br      	0x62	// 62 <wifi_psalive_pkthook_rx+0x62>
  ea:	2b00      	subi      	r3, 1
  ec:	74cc      	zextb      	r3, r3
  ee:	3b01      	cmphsi      	r3, 2
  f0:	0bbc      	bt      	0x68	// 68 <wifi_psalive_pkthook_rx+0x68>
  f2:	97fa      	ld.w      	r7, (r7, 0x68)
  f4:	e907ffba 	bez      	r7, 0x68	// 68 <wifi_psalive_pkthook_rx+0x68>
  f8:	eb440800 	cmpnei      	r4, 2048
  fc:	0bb6      	bt      	0x68	// 68 <wifi_psalive_pkthook_rx+0x68>
  fe:	97a7      	ld.w      	r5, (r7, 0x1c)
 100:	9680      	ld.w      	r4, (r6, 0x0)
 102:	e905ffb3 	bez      	r5, 0x68	// 68 <wifi_psalive_pkthook_rx+0x68>
 106:	8477      	ld.b      	r3, (r4, 0x17)
 108:	3b51      	cmpnei      	r3, 17
 10a:	0baf      	bt      	0x68	// 68 <wifi_psalive_pkthook_rx+0x68>
 10c:	e4040019 	addi      	r0, r4, 26
 110:	e0000000 	bsr      	0x0	// 0 <wifi_psalive_pkthook_rx>
 114:	9562      	ld.w      	r3, (r5, 0x8)
 116:	64c2      	cmpne      	r0, r3
 118:	0ba8      	bt      	0x68	// 68 <wifi_psalive_pkthook_rx+0x68>
 11a:	d8640022 	ld.b      	r3, (r4, 0x22)
 11e:	4368      	lsli      	r3, r3, 8
 120:	d8240023 	ld.b      	r1, (r4, 0x23)
 124:	8d48      	ld.h      	r2, (r5, 0x10)
 126:	6cc4      	or      	r3, r1
 128:	64ca      	cmpne      	r2, r3
 12a:	0b9f      	bt      	0x68	// 68 <wifi_psalive_pkthook_rx+0x68>
 12c:	6c57      	mov      	r1, r5
 12e:	6c13      	mov      	r0, r4
 130:	e0000000 	bsr      	0x0	// 0 <wifi_psalive_pkthook_rx>
 134:	e900ff9a 	bez      	r0, 0x68	// 68 <wifi_psalive_pkthook_rx+0x68>
 138:	d8650116 	ld.b      	r3, (r5, 0x116)
 13c:	e4632001 	andi      	r3, r3, 1
 140:	e9030008 	bez      	r3, 0x150	// 150 <wifi_psalive_pkthook_rx+0x150>
 144:	8e42      	ld.h      	r2, (r6, 0x4)
 146:	6c53      	mov      	r1, r4
 148:	e407000f 	addi      	r0, r7, 16
 14c:	e0000000 	bsr      	0x0	// 0 <wifi_psalive_pkthook_rx>
 150:	e0000000 	bsr      	0x0	// 0 <sys_wakeup_host>
 154:	078a      	br      	0x68	// 68 <wifi_psalive_pkthook_rx+0x68>
	...

Disassembly of section .text.wifi_psalive_ap_evt_psstate.isra.14.constprop.24:

00000000 <wifi_psalive_ap_evt_psstate.isra.14.constprop.24>:
   0:	14d6      	push      	r4-r9, r15
   2:	1429      	subi      	r14, r14, 36
   4:	11c8      	lrw      	r6, 0x0	// a4 <wifi_psalive_ap_evt_psstate.isra.14.constprop.24+0xa4>
   6:	6e07      	mov      	r8, r1
   8:	3100      	movi      	r1, 0
   a:	6d43      	mov      	r5, r0
   c:	2900      	subi      	r1, 1
   e:	9619      	ld.w      	r0, (r6, 0x64)
  10:	e0000000 	bsr      	0x0	// 0 <os_mutex_lock>
  14:	9679      	ld.w      	r3, (r6, 0x64)
  16:	5bfe      	addi      	r7, r3, 8
  18:	9382      	ld.w      	r4, (r3, 0x8)
  1a:	65d2      	cmpne      	r4, r7
  1c:	0c3d      	bf      	0x96	// 96 <wifi_psalive_ap_evt_psstate.isra.14.constprop.24+0x96>
  1e:	3206      	movi      	r2, 6
  20:	6c57      	mov      	r1, r5
  22:	e4040013 	addi      	r0, r4, 20
  26:	e0000000 	bsr      	0x0	// 0 <memcmp>
  2a:	6e43      	mov      	r9, r0
  2c:	e920003a 	bnez      	r0, 0xa0	// a0 <wifi_psalive_ap_evt_psstate.isra.14.constprop.24+0xa0>
  30:	eb480000 	cmpnei      	r8, 0
  34:	10fd      	lrw      	r7, 0x0	// a8 <wifi_psalive_ap_evt_psstate.isra.14.constprop.24+0xa8>
  36:	105e      	lrw      	r2, 0x0	// ac <wifi_psalive_ap_evt_psstate.isra.14.constprop.24+0xac>
  38:	c4470c20 	incf      	r2, r7, 0
  3c:	d8e40023 	ld.b      	r7, (r4, 0x23)
  40:	8560      	ld.b      	r3, (r5, 0x0)
  42:	8521      	ld.b      	r1, (r5, 0x1)
  44:	8502      	ld.b      	r0, (r5, 0x2)
  46:	d9850003 	ld.b      	r12, (r5, 0x3)
  4a:	d9a50004 	ld.b      	r13, (r5, 0x4)
  4e:	85a5      	ld.b      	r5, (r5, 0x5)
  50:	b8e8      	st.w      	r7, (r14, 0x20)
  52:	84fe      	ld.b      	r7, (r4, 0x1e)
  54:	b8e7      	st.w      	r7, (r14, 0x1c)
  56:	84fd      	ld.b      	r7, (r4, 0x1d)
  58:	b8e6      	st.w      	r7, (r14, 0x18)
  5a:	b845      	st.w      	r2, (r14, 0x14)
  5c:	b801      	st.w      	r0, (r14, 0x4)
  5e:	b820      	st.w      	r1, (r14, 0x0)
  60:	ea0202c7 	movi      	r2, 711
  64:	b8a4      	st.w      	r5, (r14, 0x10)
  66:	ddae2003 	st.w      	r13, (r14, 0xc)
  6a:	dd8e2002 	st.w      	r12, (r14, 0x8)
  6e:	1031      	lrw      	r1, 0x0	// b0 <wifi_psalive_ap_evt_psstate.isra.14.constprop.24+0xb0>
  70:	1011      	lrw      	r0, 0x0	// b4 <wifi_psalive_ap_evt_psstate.isra.14.constprop.24+0xb4>
  72:	e0000000 	bsr      	0x0	// 0 <hgprintf>
  76:	847b      	ld.b      	r3, (r4, 0x1b)
  78:	c4685c04 	ins      	r3, r8, 4, 4
  7c:	c4695c60 	ins      	r3, r9, 3, 0
  80:	a47b      	st.b      	r3, (r4, 0x1b)
  82:	e4632010 	andi      	r3, r3, 16
  86:	d8440020 	ld.b      	r2, (r4, 0x20)
  8a:	a45a      	st.b      	r2, (r4, 0x1a)
  8c:	e9230005 	bnez      	r3, 0x96	// 96 <wifi_psalive_ap_evt_psstate.isra.14.constprop.24+0x96>
  90:	6c13      	mov      	r0, r4
  92:	e0000000 	bsr      	0x0	// 0 <wifi_psalive_ap_evt_psstate.isra.14.constprop.24>
  96:	9619      	ld.w      	r0, (r6, 0x64)
  98:	e0000000 	bsr      	0x0	// 0 <os_mutex_unlock>
  9c:	1409      	addi      	r14, r14, 36
  9e:	1496      	pop      	r4-r9, r15
  a0:	9480      	ld.w      	r4, (r4, 0x0)
  a2:	07bc      	br      	0x1a	// 1a <wifi_psalive_ap_evt_psstate.isra.14.constprop.24+0x1a>
	...

Disassembly of section .text.wifi_psalive_proc_event:

00000000 <wifi_psalive_proc_event>:
   0:	14d6      	push      	r4-r9, r15
   2:	1426      	subi      	r14, r14, 24
   4:	6c07      	mov      	r0, r1
   6:	6e07      	mov      	r8, r1
   8:	6d4b      	mov      	r5, r2
   a:	6d0f      	mov      	r4, r3
   c:	98cd      	ld.w      	r6, (r14, 0x34)
   e:	e0000000 	bsr      	0x0	// 0 <wifi_psalive_proc_event>
  12:	6dc3      	mov      	r7, r0
  14:	e9200072 	bnez      	r0, 0xf8	// f8 <wifi_psalive_proc_event+0xf8>
  18:	3d53      	cmpnei      	r5, 19
  1a:	0d00      	bf      	0x21a	// 21a <wifi_psalive_proc_event+0x21a>
  1c:	3d13      	cmphsi      	r5, 20
  1e:	0858      	bt      	0xce	// ce <wifi_psalive_proc_event+0xce>
  20:	3d4a      	cmpnei      	r5, 10
  22:	0c9e      	bf      	0x15e	// 15e <wifi_psalive_proc_event+0x15e>
  24:	3d52      	cmpnei      	r5, 18
  26:	0ced      	bf      	0x200	// 200 <wifi_psalive_proc_event+0x200>
  28:	3d48      	cmpnei      	r5, 8
  2a:	0867      	bt      	0xf8	// f8 <wifi_psalive_proc_event+0xf8>
  2c:	03a1      	lrw      	r5, 0x0	// 2a4 <wifi_psalive_proc_event+0x2a4>
  2e:	856c      	ld.b      	r3, (r5, 0xc)
  30:	2b00      	subi      	r3, 1
  32:	74cc      	zextb      	r3, r3
  34:	3b01      	cmphsi      	r3, 2
  36:	0822      	bt      	0x7a	// 7a <wifi_psalive_proc_event+0x7a>
  38:	ea88009c 	lrw      	r8, 0x0	// 2a8 <wifi_psalive_proc_event+0x2a8>
  3c:	d808201a 	ld.w      	r0, (r8, 0x68)
  40:	e900001d 	bez      	r0, 0x7a	// 7a <wifi_psalive_proc_event+0x7a>
  44:	3206      	movi      	r2, 6
  46:	6c53      	mov      	r1, r4
  48:	e0000000 	bsr      	0x0	// 0 <memcpy>
  4c:	d848201a 	ld.w      	r2, (r8, 0x68)
  50:	3101      	movi      	r1, 1
  52:	826d      	ld.b      	r3, (r2, 0xd)
  54:	c4615c04 	ins      	r3, r1, 4, 4
  58:	c4675c00 	ins      	r3, r7, 0, 0
  5c:	c4675c01 	ins      	r3, r7, 1, 1
  60:	c4675c02 	ins      	r3, r7, 2, 2
  64:	c4675c03 	ins      	r3, r7, 3, 3
  68:	a26d      	st.b      	r3, (r2, 0xd)
  6a:	826c      	ld.b      	r3, (r2, 0xc)
  6c:	60c4      	addu      	r3, r1
  6e:	a26c      	st.b      	r3, (r2, 0xc)
  70:	3164      	movi      	r1, 100
  72:	e4080027 	addi      	r0, r8, 40
  76:	e0000000 	bsr      	0x0	// 0 <os_run_work_delay>
  7a:	856c      	ld.b      	r3, (r5, 0xc)
  7c:	3b02      	cmphsi      	r3, 3
  7e:	0c3d      	bf      	0xf8	// f8 <wifi_psalive_proc_event+0xf8>
  80:	03f5      	lrw      	r7, 0x0	// 2a8 <wifi_psalive_proc_event+0x2a8>
  82:	9719      	ld.w      	r0, (r7, 0x64)
  84:	e900003a 	bez      	r0, 0xf8	// f8 <wifi_psalive_proc_event+0xf8>
  88:	3100      	movi      	r1, 0
  8a:	2900      	subi      	r1, 1
  8c:	e0000000 	bsr      	0x0	// 0 <os_mutex_lock>
  90:	9779      	ld.w      	r3, (r7, 0x64)
  92:	7658      	zextb      	r9, r6
  94:	93a2      	ld.w      	r5, (r3, 0x8)
  96:	e5030007 	addi      	r8, r3, 8
  9a:	6616      	cmpne      	r5, r8
  9c:	0831      	bt      	0xfe	// fe <wifi_psalive_proc_event+0xfe>
  9e:	30c4      	movi      	r0, 196
  a0:	4001      	lsli      	r0, r0, 1
  a2:	e0000000 	bsr      	0x0	// 0 <_os_zalloc>
  a6:	6d43      	mov      	r5, r0
  a8:	e900003a 	bez      	r0, 0x11c	// 11c <wifi_psalive_proc_event+0x11c>
  ac:	5d1e      	addi      	r0, r5, 8
  ae:	e0000000 	bsr      	0x0	// 0 <skb_list_init>
  b2:	3206      	movi      	r2, 6
  b4:	6c53      	mov      	r1, r4
  b6:	e4050013 	addi      	r0, r5, 20
  ba:	e0000000 	bsr      	0x0	// 0 <memcpy>
  be:	9779      	ld.w      	r3, (r7, 0x64)
  c0:	9342      	ld.w      	r2, (r3, 0x8)
  c2:	b2a1      	st.w      	r5, (r2, 0x4)
  c4:	b540      	st.w      	r2, (r5, 0x0)
  c6:	5b5e      	addi      	r2, r3, 8
  c8:	b541      	st.w      	r2, (r5, 0x4)
  ca:	b3a2      	st.w      	r5, (r3, 0x8)
  cc:	0428      	br      	0x11c	// 11c <wifi_psalive_proc_event+0x11c>
  ce:	eb450020 	cmpnei      	r5, 32
  d2:	0cae      	bf      	0x22e	// 22e <wifi_psalive_proc_event+0x22e>
  d4:	eb45fde8 	cmpnei      	r5, 65000
  d8:	0cd5      	bf      	0x282	// 282 <wifi_psalive_proc_event+0x282>
  da:	3d54      	cmpnei      	r5, 20
  dc:	080e      	bt      	0xf8	// f8 <wifi_psalive_proc_event+0xf8>
  de:	1372      	lrw      	r3, 0x0	// 2a4 <wifi_psalive_proc_event+0x2a4>
  e0:	836c      	ld.b      	r3, (r3, 0xc)
  e2:	2b00      	subi      	r3, 1
  e4:	74cc      	zextb      	r3, r3
  e6:	3b01      	cmphsi      	r3, 2
  e8:	0808      	bt      	0xf8	// f8 <wifi_psalive_proc_event+0xf8>
  ea:	1330      	lrw      	r1, 0x0	// 2a8 <wifi_psalive_proc_event+0x2a8>
  ec:	917a      	ld.w      	r3, (r1, 0x68)
  ee:	e9030005 	bez      	r3, 0xf8	// f8 <wifi_psalive_proc_event+0xf8>
  f2:	6c23      	mov      	r0, r8
  f4:	e0000000 	bsr      	0x0	// 0 <ieee80211_conf_get_mac>
  f8:	3000      	movi      	r0, 0
  fa:	1406      	addi      	r14, r14, 24
  fc:	1496      	pop      	r4-r9, r15
  fe:	3206      	movi      	r2, 6
 100:	6c53      	mov      	r1, r4
 102:	e4050013 	addi      	r0, r5, 20
 106:	e0000000 	bsr      	0x0	// 0 <memcmp>
 10a:	e9200028 	bnez      	r0, 0x15a	// 15a <wifi_psalive_proc_event+0x15a>
 10e:	857b      	ld.b      	r3, (r5, 0x1b)
 110:	c4605c04 	ins      	r3, r0, 4, 4
 114:	a57b      	st.b      	r3, (r5, 0x1b)
 116:	6c17      	mov      	r0, r5
 118:	e0000000 	bsr      	0x0	// 0 <wifi_psalive_proc_event>
 11c:	857b      	ld.b      	r3, (r5, 0x1b)
 11e:	3200      	movi      	r2, 0
 120:	c4625c60 	ins      	r3, r2, 3, 0
 124:	dd25001d 	st.b      	r9, (r5, 0x1d)
 128:	a57b      	st.b      	r3, (r5, 0x1b)
 12a:	9719      	ld.w      	r0, (r7, 0x64)
 12c:	e4c620ff 	andi      	r6, r6, 255
 130:	e0000000 	bsr      	0x0	// 0 <os_mutex_unlock>
 134:	b8c5      	st.w      	r6, (r14, 0x14)
 136:	8445      	ld.b      	r2, (r4, 0x5)
 138:	b844      	st.w      	r2, (r14, 0x10)
 13a:	8444      	ld.b      	r2, (r4, 0x4)
 13c:	b843      	st.w      	r2, (r14, 0xc)
 13e:	8443      	ld.b      	r2, (r4, 0x3)
 140:	b842      	st.w      	r2, (r14, 0x8)
 142:	8442      	ld.b      	r2, (r4, 0x2)
 144:	b841      	st.w      	r2, (r14, 0x4)
 146:	8441      	ld.b      	r2, (r4, 0x1)
 148:	b840      	st.w      	r2, (r14, 0x0)
 14a:	8460      	ld.b      	r3, (r4, 0x0)
 14c:	ea0202ab 	movi      	r2, 683
 150:	1237      	lrw      	r1, 0x0	// 2ac <wifi_psalive_proc_event+0x2ac>
 152:	1218      	lrw      	r0, 0x0	// 2b0 <wifi_psalive_proc_event+0x2b0>
 154:	e0000000 	bsr      	0x0	// 0 <hgprintf>
 158:	07d0      	br      	0xf8	// f8 <wifi_psalive_proc_event+0xf8>
 15a:	95a0      	ld.w      	r5, (r5, 0x0)
 15c:	079f      	br      	0x9a	// 9a <wifi_psalive_proc_event+0x9a>
 15e:	12f2      	lrw      	r7, 0x0	// 2a4 <wifi_psalive_proc_event+0x2a4>
 160:	876c      	ld.b      	r3, (r7, 0xc)
 162:	3b02      	cmphsi      	r3, 3
 164:	0c3d      	bf      	0x1de	// 1de <wifi_psalive_proc_event+0x1de>
 166:	12d1      	lrw      	r6, 0x0	// 2a8 <wifi_psalive_proc_event+0x2a8>
 168:	9679      	ld.w      	r3, (r6, 0x64)
 16a:	e903003a 	bez      	r3, 0x1de	// 1de <wifi_psalive_proc_event+0x1de>
 16e:	8445      	ld.b      	r2, (r4, 0x5)
 170:	b844      	st.w      	r2, (r14, 0x10)
 172:	8444      	ld.b      	r2, (r4, 0x4)
 174:	b843      	st.w      	r2, (r14, 0xc)
 176:	8443      	ld.b      	r2, (r4, 0x3)
 178:	b842      	st.w      	r2, (r14, 0x8)
 17a:	8442      	ld.b      	r2, (r4, 0x2)
 17c:	b841      	st.w      	r2, (r14, 0x4)
 17e:	8441      	ld.b      	r2, (r4, 0x1)
 180:	8460      	ld.b      	r3, (r4, 0x0)
 182:	b840      	st.w      	r2, (r14, 0x0)
 184:	ea0202b2 	movi      	r2, 690
 188:	122b      	lrw      	r1, 0x0	// 2b4 <wifi_psalive_proc_event+0x2b4>
 18a:	120c      	lrw      	r0, 0x0	// 2b8 <wifi_psalive_proc_event+0x2b8>
 18c:	e0000000 	bsr      	0x0	// 0 <hgprintf>
 190:	3100      	movi      	r1, 0
 192:	2900      	subi      	r1, 1
 194:	9619      	ld.w      	r0, (r6, 0x64)
 196:	e0000000 	bsr      	0x0	// 0 <os_mutex_lock>
 19a:	9679      	ld.w      	r3, (r6, 0x64)
 19c:	e5030007 	addi      	r8, r3, 8
 1a0:	93a2      	ld.w      	r5, (r3, 0x8)
 1a2:	6616      	cmpne      	r5, r8
 1a4:	0c1a      	bf      	0x1d8	// 1d8 <wifi_psalive_proc_event+0x1d8>
 1a6:	3206      	movi      	r2, 6
 1a8:	6c53      	mov      	r1, r4
 1aa:	e4050013 	addi      	r0, r5, 20
 1ae:	e0000000 	bsr      	0x0	// 0 <memcmp>
 1b2:	e9200025 	bnez      	r0, 0x1fc	// 1fc <wifi_psalive_proc_event+0x1fc>
 1b6:	9561      	ld.w      	r3, (r5, 0x4)
 1b8:	9540      	ld.w      	r2, (r5, 0x0)
 1ba:	e9030006 	bez      	r3, 0x1c6	// 1c6 <wifi_psalive_proc_event+0x1c6>
 1be:	e9020004 	bez      	r2, 0x1c6	// 1c6 <wifi_psalive_proc_event+0x1c6>
 1c2:	b261      	st.w      	r3, (r2, 0x4)
 1c4:	b340      	st.w      	r2, (r3, 0x0)
 1c6:	3300      	movi      	r3, 0
 1c8:	b560      	st.w      	r3, (r5, 0x0)
 1ca:	b561      	st.w      	r3, (r5, 0x4)
 1cc:	5d1e      	addi      	r0, r5, 8
 1ce:	e0000000 	bsr      	0x0	// 0 <skb_list_destroy>
 1d2:	6c17      	mov      	r0, r5
 1d4:	e0000000 	bsr      	0x0	// 0 <_os_free>
 1d8:	9619      	ld.w      	r0, (r6, 0x64)
 1da:	e0000000 	bsr      	0x0	// 0 <os_mutex_unlock>
 1de:	876c      	ld.b      	r3, (r7, 0xc)
 1e0:	2b00      	subi      	r3, 1
 1e2:	74cc      	zextb      	r3, r3
 1e4:	3b01      	cmphsi      	r3, 2
 1e6:	0b89      	bt      	0xf8	// f8 <wifi_psalive_proc_event+0xf8>
 1e8:	1170      	lrw      	r3, 0x0	// 2a8 <wifi_psalive_proc_event+0x2a8>
 1ea:	937a      	ld.w      	r3, (r3, 0x68)
 1ec:	e903ff86 	bez      	r3, 0xf8	// f8 <wifi_psalive_proc_event+0xf8>
 1f0:	834d      	ld.b      	r2, (r3, 0xd)
 1f2:	3100      	movi      	r1, 0
 1f4:	c4415c04 	ins      	r2, r1, 4, 4
 1f8:	a34d      	st.b      	r2, (r3, 0xd)
 1fa:	077f      	br      	0xf8	// f8 <wifi_psalive_proc_event+0xf8>
 1fc:	95a0      	ld.w      	r5, (r5, 0x0)
 1fe:	07d2      	br      	0x1a2	// 1a2 <wifi_psalive_proc_event+0x1a2>
 200:	1169      	lrw      	r3, 0x0	// 2a4 <wifi_psalive_proc_event+0x2a4>
 202:	836c      	ld.b      	r3, (r3, 0xc)
 204:	3b02      	cmphsi      	r3, 3
 206:	0f79      	bf      	0xf8	// f8 <wifi_psalive_proc_event+0xf8>
 208:	1168      	lrw      	r3, 0x0	// 2a8 <wifi_psalive_proc_event+0x2a8>
 20a:	9379      	ld.w      	r3, (r3, 0x64)
 20c:	e903ff76 	bez      	r3, 0xf8	// f8 <wifi_psalive_proc_event+0xf8>
 210:	3101      	movi      	r1, 1
 212:	6c13      	mov      	r0, r4
 214:	e0000000 	bsr      	0x0	// 0 <wifi_psalive_proc_event>
 218:	0770      	br      	0xf8	// f8 <wifi_psalive_proc_event+0xf8>
 21a:	1163      	lrw      	r3, 0x0	// 2a4 <wifi_psalive_proc_event+0x2a4>
 21c:	836c      	ld.b      	r3, (r3, 0xc)
 21e:	3b02      	cmphsi      	r3, 3
 220:	0f6c      	bf      	0xf8	// f8 <wifi_psalive_proc_event+0xf8>
 222:	1162      	lrw      	r3, 0x0	// 2a8 <wifi_psalive_proc_event+0x2a8>
 224:	9379      	ld.w      	r3, (r3, 0x64)
 226:	e903ff69 	bez      	r3, 0xf8	// f8 <wifi_psalive_proc_event+0xf8>
 22a:	6c43      	mov      	r1, r0
 22c:	07f3      	br      	0x212	// 212 <wifi_psalive_proc_event+0x212>
 22e:	105e      	lrw      	r2, 0x0	// 2a4 <wifi_psalive_proc_event+0x2a4>
 230:	826c      	ld.b      	r3, (r2, 0xc)
 232:	2b00      	subi      	r3, 1
 234:	74cc      	zextb      	r3, r3
 236:	3b01      	cmphsi      	r3, 2
 238:	0b60      	bt      	0xf8	// f8 <wifi_psalive_proc_event+0xf8>
 23a:	107c      	lrw      	r3, 0x0	// 2a8 <wifi_psalive_proc_event+0x2a8>
 23c:	937a      	ld.w      	r3, (r3, 0x68)
 23e:	e903ff5d 	bez      	r3, 0xf8	// f8 <wifi_psalive_proc_event+0xf8>
 242:	8461      	ld.b      	r3, (r4, 0x1)
 244:	8420      	ld.b      	r1, (r4, 0x0)
 246:	4368      	lsli      	r3, r3, 8
 248:	6cc4      	or      	r3, r1
 24a:	e423200f 	andi      	r1, r3, 15
 24e:	e921ff55 	bnez      	r1, 0xf8	// f8 <wifi_psalive_proc_event+0xf8>
 252:	e46320f0 	andi      	r3, r3, 240
 256:	eb4300e0 	cmpnei      	r3, 224
 25a:	0b4f      	bt      	0xf8	// f8 <wifi_psalive_proc_event+0xf8>
 25c:	8478      	ld.b      	r3, (r4, 0x18)
 25e:	e423207f 	andi      	r1, r3, 127
 262:	3941      	cmpnei      	r1, 1
 264:	0b4a      	bt      	0xf8	// f8 <wifi_psalive_proc_event+0xf8>
 266:	74ce      	sextb      	r3, r3
 268:	e983ff48 	blz      	r3, 0xf8	// f8 <wifi_psalive_proc_event+0xf8>
 26c:	d862107d 	ld.h      	r3, (r2, 0xfa)
 270:	c4e35523 	zext      	r3, r3, 9, 7
 274:	d8440043 	ld.b      	r2, (r4, 0x43)
 278:	c4435c40 	ins      	r2, r3, 2, 0
 27c:	dc440043 	st.b      	r2, (r4, 0x43)
 280:	073c      	br      	0xf8	// f8 <wifi_psalive_proc_event+0xf8>
 282:	1069      	lrw      	r3, 0x0	// 2a4 <wifi_psalive_proc_event+0x2a4>
 284:	836c      	ld.b      	r3, (r3, 0xc)
 286:	2b00      	subi      	r3, 1
 288:	74cc      	zextb      	r3, r3
 28a:	3b01      	cmphsi      	r3, 2
 28c:	0b36      	bt      	0xf8	// f8 <wifi_psalive_proc_event+0xf8>
 28e:	1067      	lrw      	r3, 0x0	// 2a8 <wifi_psalive_proc_event+0x2a8>
 290:	937a      	ld.w      	r3, (r3, 0x68)
 292:	9327      	ld.w      	r1, (r3, 0x1c)
 294:	8142      	ld.b      	r2, (r1, 0x2)
 296:	e902ff31 	bez      	r2, 0xf8	// f8 <wifi_psalive_proc_event+0xf8>
 29a:	2113      	addi      	r1, 20
 29c:	6c23      	mov      	r0, r8
 29e:	e0000000 	bsr      	0x0	// 0 <ieee80211_tx>
 2a2:	072b      	br      	0xf8	// f8 <sys_cfgs+0xf8>
	...

Disassembly of section .text.wifi_psalive_proc_cmd:

00000000 <wifi_psalive_proc_cmd>:
   0:	14d8      	push      	r4-r11, r15
   2:	d9012000 	ld.w      	r8, (r1, 0x0)
   6:	6e83      	mov      	r10, r0
   8:	d8c82007 	ld.w      	r6, (r8, 0x1c)
   c:	6dc7      	mov      	r7, r1
   e:	8662      	ld.b      	r3, (r6, 0x2)
  10:	3b4d      	cmpnei      	r3, 13
  12:	58bf      	subi      	r5, r0, 8
  14:	0829      	bt      	0x66	// 66 <wifi_psalive_proc_cmd+0x66>
  16:	8669      	ld.b      	r3, (r6, 0x9)
  18:	8648      	ld.b      	r2, (r6, 0x8)
  1a:	4368      	lsli      	r3, r3, 8
  1c:	6cc8      	or      	r3, r2
  1e:	0115      	lrw      	r0, 0x0	// 344 <wifi_psalive_proc_cmd+0x344>
  20:	8645      	ld.b      	r2, (r6, 0x5)
  22:	8624      	ld.b      	r1, (r6, 0x4)
  24:	4248      	lsli      	r2, r2, 8
  26:	d980000c 	ld.b      	r12, (r0, 0xc)
  2a:	6c84      	or      	r2, r1
  2c:	e42c1000 	subi      	r1, r12, 1
  30:	7444      	zextb      	r1, r1
  32:	3901      	cmphsi      	r1, 2
  34:	e566000b 	addi      	r11, r6, 12
  38:	2a0b      	subi      	r2, 12
  3a:	6e43      	mov      	r9, r0
  3c:	098a      	bt      	0x350	// 350 <wifi_psalive_proc_cmd+0x350>
  3e:	953a      	ld.w      	r1, (r5, 0x68)
  40:	e901014c 	bez      	r1, 0x2d8	// 2d8 <wifi_psalive_proc_cmd+0x2d8>
  44:	eb43004a 	cmpnei      	r3, 74
  48:	9187      	ld.w      	r4, (r1, 0x1c)
  4a:	0d24      	bf      	0x292	// 292 <wifi_psalive_proc_cmd+0x292>
  4c:	eb03004a 	cmphsi      	r3, 75
  50:	0817      	bt      	0x7e	// 7e <wifi_psalive_proc_cmd+0x7e>
  52:	eb430042 	cmpnei      	r3, 66
  56:	0caa      	bf      	0x1aa	// 1aa <wifi_psalive_proc_cmd+0x1aa>
  58:	eb030042 	cmphsi      	r3, 67
  5c:	0807      	bt      	0x6a	// 6a <wifi_psalive_proc_cmd+0x6a>
  5e:	eb430029 	cmpnei      	r3, 41
  62:	0d95      	bf      	0x38c	// 38c <wifi_psalive_proc_cmd+0x38c>
  64:	0409      	br      	0x76	// 76 <wifi_psalive_proc_cmd+0x76>
  66:	8668      	ld.b      	r3, (r6, 0x8)
  68:	07db      	br      	0x1e	// 1e <wifi_psalive_proc_cmd+0x1e>
  6a:	eb430044 	cmpnei      	r3, 68
  6e:	0cd3      	bf      	0x214	// 214 <wifi_psalive_proc_cmd+0x214>
  70:	eb430045 	cmpnei      	r3, 69
  74:	0d45      	bf      	0x2fe	// 2fe <wifi_psalive_proc_cmd+0x2fe>
  76:	ea04020b 	movi      	r4, 523
  7a:	6d12      	nor      	r4, r4
  7c:	058f      	br      	0x39a	// 39a <wifi_psalive_proc_cmd+0x39a>
  7e:	eb430067 	cmpnei      	r3, 103
  82:	0ceb      	bf      	0x258	// 258 <wifi_psalive_proc_cmd+0x258>
  84:	eb030067 	cmphsi      	r3, 104
  88:	0829      	bt      	0xda	// da <wifi_psalive_proc_cmd+0xda>
  8a:	eb430064 	cmpnei      	r3, 100
  8e:	0d92      	bf      	0x3b2	// 3b2 <wifi_psalive_proc_cmd+0x3b2>
  90:	eb430065 	cmpnei      	r3, 101
  94:	0bf1      	bt      	0x76	// 76 <wifi_psalive_proc_cmd+0x76>
  96:	d80a2018 	ld.w      	r0, (r10, 0x60)
  9a:	e900017f 	bez      	r0, 0x398	// 398 <wifi_psalive_proc_cmd+0x398>
  9e:	200f      	addi      	r0, 16
  a0:	e0000000 	bsr      	0x0	// 0 <skb_list_count>
  a4:	e900017a 	bez      	r0, 0x398	// 398 <wifi_psalive_proc_cmd+0x398>
  a8:	d80a2018 	ld.w      	r0, (r10, 0x60)
  ac:	200f      	addi      	r0, 16
  ae:	e0000000 	bsr      	0x0	// 0 <skb_list_dequeue>
  b2:	6d03      	mov      	r4, r0
  b4:	e9000172 	bez      	r0, 0x398	// 398 <wifi_psalive_proc_cmd+0x398>
  b8:	8854      	ld.h      	r2, (r0, 0x28)
  ba:	9027      	ld.w      	r1, (r0, 0x1c)
  bc:	6c23      	mov      	r0, r8
  be:	e0000000 	bsr      	0x0	// 0 <wifi_mgr_alloc_resp>
  c2:	6d43      	mov      	r5, r0
  c4:	e90000f4 	bez      	r0, 0x2ac	// 2ac <wifi_psalive_proc_cmd+0x2ac>
  c8:	6c13      	mov      	r0, r4
  ca:	e0000000 	bsr      	0x0	// 0 <kfree_skb>
  ce:	9700      	ld.w      	r0, (r7, 0x0)
  d0:	8d94      	ld.h      	r4, (r5, 0x28)
  d2:	e0000000 	bsr      	0x0	// 0 <kfree_skb>
  d6:	b7a0      	st.w      	r5, (r7, 0x0)
  d8:	0561      	br      	0x39a	// 39a <wifi_psalive_proc_cmd+0x39a>
  da:	eb430081 	cmpnei      	r3, 129
  de:	0cf4      	bf      	0x2c6	// 2c6 <wifi_psalive_proc_cmd+0x2c6>
  e0:	eb4300b7 	cmpnei      	r3, 183
  e4:	0bc9      	bt      	0x76	// 76 <wifi_psalive_proc_cmd+0x76>
  e6:	2a03      	subi      	r2, 4
  e8:	eb220040 	cmplti      	r2, 65
  ec:	3740      	movi      	r7, 64
  ee:	c4e20c40 	inct      	r7, r2, 0
  f2:	e9040153 	bez      	r4, 0x398	// 398 <wifi_psalive_proc_cmd+0x398>
  f6:	e5040129 	addi      	r8, r4, 298
  fa:	e526000f 	addi      	r9, r6, 16
  fe:	6c9f      	mov      	r2, r7
 100:	6c67      	mov      	r1, r9
 102:	6c23      	mov      	r0, r8
 104:	e0000000 	bsr      	0x0	// 0 <memcmp>
 108:	e9000148 	bez      	r0, 0x398	// 398 <wifi_psalive_proc_cmd+0x398>
 10c:	866c      	ld.b      	r3, (r6, 0xc)
 10e:	dc640128 	st.b      	r3, (r4, 0x128)
 112:	866e      	ld.b      	r3, (r6, 0xe)
 114:	dc640129 	st.b      	r3, (r4, 0x129)
 118:	6c9f      	mov      	r2, r7
 11a:	6c67      	mov      	r1, r9
 11c:	6c23      	mov      	r0, r8
 11e:	e0000000 	bsr      	0x0	// 0 <memcpy>
 122:	957a      	ld.w      	r3, (r5, 0x68)
 124:	3400      	movi      	r4, 0
 126:	834c      	ld.b      	r2, (r3, 0xc)
 128:	2200      	addi      	r2, 1
 12a:	a34c      	st.b      	r2, (r3, 0xc)
 12c:	834d      	ld.b      	r2, (r3, 0xd)
 12e:	c4445c03 	ins      	r2, r4, 3, 3
 132:	046a      	br      	0x206	// 206 <wifi_psalive_proc_cmd+0x206>
 134:	d80a2018 	ld.w      	r0, (r10, 0x60)
 138:	200f      	addi      	r0, 16
 13a:	e0000000 	bsr      	0x0	// 0 <skb_list_dequeue>
 13e:	e0000000 	bsr      	0x0	// 0 <kfree_skb>
 142:	d80a2018 	ld.w      	r0, (r10, 0x60)
 146:	200f      	addi      	r0, 16
 148:	e0000000 	bsr      	0x0	// 0 <skb_list_count>
 14c:	e920fff4 	bnez      	r0, 0x134	// 134 <wifi_psalive_proc_cmd+0x134>
 150:	0516      	br      	0x37c	// 37c <wifi_psalive_proc_cmd+0x37c>
 152:	d80a2017 	ld.w      	r0, (r10, 0x5c)
 156:	e9000012 	bez      	r0, 0x17a	// 17a <wifi_psalive_proc_cmd+0x17a>
 15a:	3100      	movi      	r1, 0
 15c:	2900      	subi      	r1, 1
 15e:	e0000000 	bsr      	0x0	// 0 <os_mutex_lock>
 162:	d86a2017 	ld.w      	r3, (r10, 0x5c)
 166:	3600      	movi      	r6, 0
 168:	9382      	ld.w      	r4, (r3, 0x8)
 16a:	94a0      	ld.w      	r5, (r4, 0x0)
 16c:	d80a2017 	ld.w      	r0, (r10, 0x5c)
 170:	587e      	addi      	r3, r0, 8
 172:	64d2      	cmpne      	r4, r3
 174:	0808      	bt      	0x184	// 184 <wifi_psalive_proc_cmd+0x184>
 176:	e0000000 	bsr      	0x0	// 0 <os_mutex_unlock>
 17a:	e40a005f 	addi      	r0, r10, 96
 17e:	e0000000 	bsr      	0x0	// 0 <wifi_psalive_proc_cmd>
 182:	050b      	br      	0x398	// 398 <wifi_psalive_proc_cmd+0x398>
 184:	9461      	ld.w      	r3, (r4, 0x4)
 186:	9440      	ld.w      	r2, (r4, 0x0)
 188:	e9030006 	bez      	r3, 0x194	// 194 <wifi_psalive_proc_cmd+0x194>
 18c:	e9020004 	bez      	r2, 0x194	// 194 <wifi_psalive_proc_cmd+0x194>
 190:	b261      	st.w      	r3, (r2, 0x4)
 192:	b340      	st.w      	r2, (r3, 0x0)
 194:	b4c0      	st.w      	r6, (r4, 0x0)
 196:	b4c1      	st.w      	r6, (r4, 0x4)
 198:	5c1e      	addi      	r0, r4, 8
 19a:	e0000000 	bsr      	0x0	// 0 <skb_list_destroy>
 19e:	6c13      	mov      	r0, r4
 1a0:	e0000000 	bsr      	0x0	// 0 <_os_free>
 1a4:	6d17      	mov      	r4, r5
 1a6:	95a0      	ld.w      	r5, (r5, 0x0)
 1a8:	07e2      	br      	0x16c	// 16c <wifi_psalive_proc_cmd+0x16c>
 1aa:	e90400f7 	bez      	r4, 0x398	// 398 <wifi_psalive_proc_cmd+0x398>
 1ae:	6c2f      	mov      	r0, r11
 1b0:	e0000000 	bsr      	0x0	// 0 <wifi_psalive_proc_cmd>
 1b4:	6e43      	mov      	r9, r0
 1b6:	e406000f 	addi      	r0, r6, 16
 1ba:	e0000000 	bsr      	0x0	// 0 <wifi_psalive_proc_cmd>
 1be:	6e03      	mov      	r8, r0
 1c0:	e4060013 	addi      	r0, r6, 20
 1c4:	e0000000 	bsr      	0x0	// 0 <wifi_psalive_proc_cmd>
 1c8:	6dc3      	mov      	r7, r0
 1ca:	e4060017 	addi      	r0, r6, 24
 1ce:	e0000000 	bsr      	0x0	// 0 <wifi_psalive_proc_cmd>
 1d2:	9462      	ld.w      	r3, (r4, 0x8)
 1d4:	64e6      	cmpne      	r9, r3
 1d6:	080a      	bt      	0x1ea	// 1ea <wifi_psalive_proc_cmd+0x1ea>
 1d8:	8c68      	ld.h      	r3, (r4, 0x10)
 1da:	660e      	cmpne      	r3, r8
 1dc:	0807      	bt      	0x1ea	// 1ea <wifi_psalive_proc_cmd+0x1ea>
 1de:	8464      	ld.b      	r3, (r4, 0x4)
 1e0:	65ce      	cmpne      	r3, r7
 1e2:	0804      	bt      	0x1ea	// 1ea <wifi_psalive_proc_cmd+0x1ea>
 1e4:	8465      	ld.b      	r3, (r4, 0x5)
 1e6:	640e      	cmpne      	r3, r0
 1e8:	0cd8      	bf      	0x398	// 398 <wifi_psalive_proc_cmd+0x398>
 1ea:	a4e4      	st.b      	r7, (r4, 0x4)
 1ec:	a405      	st.b      	r0, (r4, 0x5)
 1ee:	957a      	ld.w      	r3, (r5, 0x68)
 1f0:	dd242002 	st.w      	r9, (r4, 0x8)
 1f4:	dd041008 	st.h      	r8, (r4, 0x10)
 1f8:	834c      	ld.b      	r2, (r3, 0xc)
 1fa:	2200      	addi      	r2, 1
 1fc:	a34c      	st.b      	r2, (r3, 0xc)
 1fe:	3400      	movi      	r4, 0
 200:	834d      	ld.b      	r2, (r3, 0xd)
 202:	c4445c00 	ins      	r2, r4, 0, 0
 206:	a34d      	st.b      	r2, (r3, 0xd)
 208:	e4050027 	addi      	r0, r5, 40
 20c:	e0000000 	bsr      	0x0	// 0 <os_run_work>
 210:	04c5      	br      	0x39a	// 39a <wifi_psalive_proc_cmd+0x39a>
 212:	3400      	movi      	r4, 0
 214:	eb220040 	cmplti      	r2, 65
 218:	3640      	movi      	r6, 64
 21a:	c4c20c40 	inct      	r6, r2, 0
 21e:	e90400bd 	bez      	r4, 0x398	// 398 <wifi_psalive_proc_cmd+0x398>
 222:	8467      	ld.b      	r3, (r4, 0x7)
 224:	658e      	cmpne      	r3, r6
 226:	e4e40093 	addi      	r7, r4, 148
 22a:	0808      	bt      	0x23a	// 23a <wifi_psalive_proc_cmd+0x23a>
 22c:	6c9b      	mov      	r2, r6
 22e:	6c6f      	mov      	r1, r11
 230:	6c1f      	mov      	r0, r7
 232:	e0000000 	bsr      	0x0	// 0 <memcmp>
 236:	e90000b1 	bez      	r0, 0x398	// 398 <wifi_psalive_proc_cmd+0x398>
 23a:	a4c7      	st.b      	r6, (r4, 0x7)
 23c:	6c9b      	mov      	r2, r6
 23e:	6c6f      	mov      	r1, r11
 240:	6c1f      	mov      	r0, r7
 242:	e0000000 	bsr      	0x0	// 0 <memcpy>
 246:	957a      	ld.w      	r3, (r5, 0x68)
 248:	3400      	movi      	r4, 0
 24a:	834c      	ld.b      	r2, (r3, 0xc)
 24c:	2200      	addi      	r2, 1
 24e:	a34c      	st.b      	r2, (r3, 0xc)
 250:	834d      	ld.b      	r2, (r3, 0xd)
 252:	c4445c01 	ins      	r2, r4, 1, 1
 256:	07d8      	br      	0x206	// 206 <wifi_psalive_proc_cmd+0x206>
 258:	d86000fa 	ld.b      	r3, (r0, 0xfa)
 25c:	864c      	ld.b      	r2, (r6, 0xc)
 25e:	c4a354a3 	zext      	r3, r3, 5, 5
 262:	648e      	cmpne      	r3, r2
 264:	0c9a      	bf      	0x398	// 398 <wifi_psalive_proc_cmd+0x398>
 266:	d8640116 	ld.b      	r3, (r4, 0x116)
 26a:	c4625c00 	ins      	r3, r2, 0, 0
 26e:	dc640116 	st.b      	r3, (r4, 0x116)
 272:	816c      	ld.b      	r3, (r1, 0xc)
 274:	2300      	addi      	r3, 1
 276:	a16c      	st.b      	r3, (r1, 0xc)
 278:	3400      	movi      	r4, 0
 27a:	816d      	ld.b      	r3, (r1, 0xd)
 27c:	c4645c03 	ins      	r3, r4, 3, 3
 280:	a16d      	st.b      	r3, (r1, 0xd)
 282:	e4050027 	addi      	r0, r5, 40
 286:	e0000000 	bsr      	0x0	// 0 <os_run_work>
 28a:	860c      	ld.b      	r0, (r6, 0xc)
 28c:	e0000000 	bsr      	0x0	// 0 <wificfg_set_wkdata_save>
 290:	0485      	br      	0x39a	// 39a <wifi_psalive_proc_cmd+0x39a>
 292:	866c      	ld.b      	r3, (r6, 0xc)
 294:	a461      	st.b      	r3, (r4, 0x1)
 296:	816c      	ld.b      	r3, (r1, 0xc)
 298:	2300      	addi      	r3, 1
 29a:	a16c      	st.b      	r3, (r1, 0xc)
 29c:	860c      	ld.b      	r0, (r6, 0xc)
 29e:	e0000000 	bsr      	0x0	// 0 <wificfg_set_psmode>
 2a2:	e4050027 	addi      	r0, r5, 40
 2a6:	e0000000 	bsr      	0x0	// 0 <os_run_work>
 2aa:	0477      	br      	0x398	// 398 <wifi_psalive_proc_cmd+0x398>
 2ac:	d80a2018 	ld.w      	r0, (r10, 0x60)
 2b0:	6c53      	mov      	r1, r4
 2b2:	200f      	addi      	r0, 16
 2b4:	e0000000 	bsr      	0x0	// 0 <skb_list_queue>
 2b8:	3285      	movi      	r2, 133
 2ba:	4241      	lsli      	r2, r2, 1
 2bc:	1123      	lrw      	r1, 0x0	// 348 <wifi_psalive_proc_cmd+0x348>
 2be:	1104      	lrw      	r0, 0x0	// 34c <wifi_psalive_proc_cmd+0x34c>
 2c0:	e0000000 	bsr      	0x0	// 0 <hgprintf>
 2c4:	046a      	br      	0x398	// 398 <wifi_psalive_proc_cmd+0x398>
 2c6:	866c      	ld.b      	r3, (r6, 0xc)
 2c8:	3b40      	cmpnei      	r3, 0
 2ca:	c4000500 	mvc      	r0
 2ce:	7400      	zextb      	r0, r0
 2d0:	e0000000 	bsr      	0x0	// 0 <wificfg_set_autosleep>
 2d4:	6d03      	mov      	r4, r0
 2d6:	0462      	br      	0x39a	// 39a <wifi_psalive_proc_cmd+0x39a>
 2d8:	eb43004a 	cmpnei      	r3, 74
 2dc:	0c5e      	bf      	0x398	// 398 <wifi_psalive_proc_cmd+0x398>
 2de:	eb03004a 	cmphsi      	r3, 75
 2e2:	085e      	bt      	0x39e	// 39e <wifi_psalive_proc_cmd+0x39e>
 2e4:	eb430042 	cmpnei      	r3, 66
 2e8:	0c58      	bf      	0x398	// 398 <wifi_psalive_proc_cmd+0x398>
 2ea:	eb030042 	cmphsi      	r3, 67
 2ee:	0eb8      	bf      	0x5e	// 5e <wifi_psalive_proc_cmd+0x5e>
 2f0:	eb430044 	cmpnei      	r3, 68
 2f4:	0f8f      	bf      	0x212	// 212 <wifi_psalive_proc_cmd+0x212>
 2f6:	eb430045 	cmpnei      	r3, 69
 2fa:	0abe      	bt      	0x76	// 76 <wifi_psalive_proc_cmd+0x76>
 2fc:	3400      	movi      	r4, 0
 2fe:	eb220040 	cmplti      	r2, 65
 302:	3640      	movi      	r6, 64
 304:	c4c20c40 	inct      	r6, r2, 0
 308:	e9040048 	bez      	r4, 0x398	// 398 <wifi_psalive_proc_cmd+0x398>
 30c:	8466      	ld.b      	r3, (r4, 0x6)
 30e:	658e      	cmpne      	r3, r6
 310:	e4e400d3 	addi      	r7, r4, 212
 314:	0808      	bt      	0x324	// 324 <wifi_psalive_proc_cmd+0x324>
 316:	6c9b      	mov      	r2, r6
 318:	6c6f      	mov      	r1, r11
 31a:	6c1f      	mov      	r0, r7
 31c:	e0000000 	bsr      	0x0	// 0 <memcmp>
 320:	e900003c 	bez      	r0, 0x398	// 398 <wifi_psalive_proc_cmd+0x398>
 324:	a4c6      	st.b      	r6, (r4, 0x6)
 326:	6c9b      	mov      	r2, r6
 328:	6c6f      	mov      	r1, r11
 32a:	6c1f      	mov      	r0, r7
 32c:	e0000000 	bsr      	0x0	// 0 <memcpy>
 330:	957a      	ld.w      	r3, (r5, 0x68)
 332:	3400      	movi      	r4, 0
 334:	834c      	ld.b      	r2, (r3, 0xc)
 336:	2200      	addi      	r2, 1
 338:	a34c      	st.b      	r2, (r3, 0xc)
 33a:	834d      	ld.b      	r2, (r3, 0xd)
 33c:	c4445c02 	ins      	r2, r4, 2, 2
 340:	0763      	br      	0x206	// 206 <wifi_psalive_proc_cmd+0x206>
	...
 34e:	0000      	.short	0x0000
 350:	eb43004a 	cmpnei      	r3, 74
 354:	0c22      	bf      	0x398	// 398 <wifi_psalive_proc_cmd+0x398>
 356:	eb03004a 	cmphsi      	r3, 75
 35a:	0822      	bt      	0x39e	// 39e <wifi_psalive_proc_cmd+0x39e>
 35c:	eb430042 	cmpnei      	r3, 66
 360:	0c1c      	bf      	0x398	// 398 <wifi_psalive_proc_cmd+0x398>
 362:	eb030042 	cmphsi      	r3, 67
 366:	0bc5      	bt      	0x2f0	// 2f0 <wifi_psalive_proc_cmd+0x2f0>
 368:	eb430029 	cmpnei      	r3, 41
 36c:	0a85      	bt      	0x76	// 76 <wifi_psalive_proc_cmd+0x76>
 36e:	eb0c0002 	cmphsi      	r12, 3
 372:	0c0d      	bf      	0x38c	// 38c <wifi_psalive_proc_cmd+0x38c>
 374:	d86a2018 	ld.w      	r3, (r10, 0x60)
 378:	e923fee5 	bnez      	r3, 0x142	// 142 <wifi_psalive_proc_cmd+0x142>
 37c:	d86a2017 	ld.w      	r3, (r10, 0x5c)
 380:	e9230006 	bnez      	r3, 0x38c	// 38c <wifi_psalive_proc_cmd+0x38c>
 384:	e40a005b 	addi      	r0, r10, 92
 388:	e0000000 	bsr      	0x0	// 0 <wifi_psalive_proc_cmd>
 38c:	d869000c 	ld.b      	r3, (r9, 0xc)
 390:	2b00      	subi      	r3, 1
 392:	74cc      	zextb      	r3, r3
 394:	3b01      	cmphsi      	r3, 2
 396:	0ede      	bf      	0x152	// 152 <wifi_psalive_proc_cmd+0x152>
 398:	3400      	movi      	r4, 0
 39a:	6c13      	mov      	r0, r4
 39c:	1498      	pop      	r4-r11, r15
 39e:	eb430067 	cmpnei      	r3, 103
 3a2:	0ffb      	bf      	0x398	// 398 <wifi_psalive_proc_cmd+0x398>
 3a4:	eb030067 	cmphsi      	r3, 104
 3a8:	081e      	bt      	0x3e4	// 3e4 <wifi_psalive_proc_cmd+0x3e4>
 3aa:	eb430064 	cmpnei      	r3, 100
 3ae:	0a71      	bt      	0x90	// 90 <wifi_psalive_proc_cmd+0x90>
 3b0:	3400      	movi      	r4, 0
 3b2:	2a01      	subi      	r2, 2
 3b4:	3a30      	cmplti      	r2, 17
 3b6:	3710      	movi      	r7, 16
 3b8:	c4e20c40 	inct      	r7, r2, 0
 3bc:	e904ffee 	bez      	r4, 0x398	// 398 <wifi_psalive_proc_cmd+0x398>
 3c0:	e5040117 	addi      	r8, r4, 280
 3c4:	e526000d 	addi      	r9, r6, 14
 3c8:	6c9f      	mov      	r2, r7
 3ca:	6c67      	mov      	r1, r9
 3cc:	6c23      	mov      	r0, r8
 3ce:	e0000000 	bsr      	0x0	// 0 <memcmp>
 3d2:	e900ffe3 	bez      	r0, 0x398	// 398 <wifi_psalive_proc_cmd+0x398>
 3d6:	866d      	ld.b      	r3, (r6, 0xd)
 3d8:	864c      	ld.b      	r2, (r6, 0xc)
 3da:	4368      	lsli      	r3, r3, 8
 3dc:	6cc8      	or      	r3, r2
 3de:	dc64108a 	st.h      	r3, (r4, 0x114)
 3e2:	069b      	br      	0x118	// 118 <wifi_psalive_proc_cmd+0x118>
 3e4:	eb430081 	cmpnei      	r3, 129
 3e8:	0f6f      	bf      	0x2c6	// 2c6 <wifi_psalive_proc_cmd+0x2c6>
 3ea:	eb4300b7 	cmpnei      	r3, 183
 3ee:	0a44      	bt      	0x76	// 76 <wifi_psalive_proc_cmd+0x76>
 3f0:	3400      	movi      	r4, 0
 3f2:	067a      	br      	0xe6	// e6 <wifi_psalive_proc_cmd+0xe6>

Disassembly of section .text.wifi_psalive_send_data:

00000000 <wifi_psalive_send_data>:
   0:	14d4      	push      	r4-r7, r15
   2:	106f      	lrw      	r3, 0x0	// 3c <wifi_psalive_send_data+0x3c>
   4:	6d83      	mov      	r6, r0
   6:	83ac      	ld.b      	r5, (r3, 0xc)
   8:	3d04      	cmphsi      	r5, 5
   a:	6d07      	mov      	r4, r1
   c:	6dcb      	mov      	r7, r2
   e:	0c10      	bf      	0x2e	// 2e <wifi_psalive_send_data+0x2e>
  10:	3d49      	cmpnei      	r5, 9
  12:	0c0e      	bf      	0x2e	// 2e <wifi_psalive_send_data+0x2e>
  14:	6c43      	mov      	r1, r0
  16:	3206      	movi      	r2, 6
  18:	6c13      	mov      	r0, r4
  1a:	e0000000 	bsr      	0x0	// 0 <memcmp>
  1e:	e9000008 	bez      	r0, 0x2e	// 2e <wifi_psalive_send_data+0x2e>
  22:	6c9f      	mov      	r2, r7
  24:	6c53      	mov      	r1, r4
  26:	6c17      	mov      	r0, r5
  28:	e0000000 	bsr      	0x0	// 0 <ieee80211_tx>
  2c:	1494      	pop      	r4-r7, r15
  2e:	3300      	movi      	r3, 0
  30:	6c9f      	mov      	r2, r7
  32:	6c53      	mov      	r1, r4
  34:	9604      	ld.w      	r0, (r6, 0x10)
  36:	e0000000 	bsr      	0x0	// 0 <wifi_mgr_buswrite_data>
  3a:	07f9      	br      	0x2c	// 2c <sys_cfgs+0x2c>
  3c:	00000000 	.long	0x00000000

Disassembly of section .text.wifi_psalive_work:

00000000 <wifi_psalive_work>:
   0:	14d5      	push      	r4-r8, r15
   2:	1426      	subi      	r14, r14, 24
   4:	1267      	lrw      	r3, 0x0	// 120 <wifi_psalive_work+0x120>
   6:	e4a01027 	subi      	r5, r0, 40
   a:	832c      	ld.b      	r1, (r3, 0xc)
   c:	5943      	subi      	r2, r1, 1
   e:	7488      	zextb      	r2, r2
  10:	3a01      	cmphsi      	r2, 2
  12:	6d0f      	mov      	r4, r3
  14:	0811      	bt      	0x36	// 36 <wifi_psalive_work+0x36>
  16:	957a      	ld.w      	r3, (r5, 0x68)
  18:	e903000f 	bez      	r3, 0x36	// 36 <wifi_psalive_work+0x36>
  1c:	9010      	ld.w      	r0, (r0, 0x40)
  1e:	806d      	ld.b      	r3, (r0, 0xd)
  20:	e4632010 	andi      	r3, r3, 16
  24:	e9030009 	bez      	r3, 0x36	// 36 <wifi_psalive_work+0x36>
  28:	3942      	cmpnei      	r1, 2
  2a:	0c06      	bf      	0x36	// 36 <wifi_psalive_work+0x36>
  2c:	806c      	ld.b      	r3, (r0, 0xc)
  2e:	e9030004 	bez      	r3, 0x36	// 36 <wifi_psalive_work+0x36>
  32:	e0000000 	bsr      	0x0	// 0 <wifi_psalive_work>
  36:	846c      	ld.b      	r3, (r4, 0xc)
  38:	3b02      	cmphsi      	r3, 3
  3a:	0c14      	bf      	0x62	// 62 <wifi_psalive_work+0x62>
  3c:	9519      	ld.w      	r0, (r5, 0x64)
  3e:	e9000012 	bez      	r0, 0x62	// 62 <wifi_psalive_work+0x62>
  42:	3100      	movi      	r1, 0
  44:	2900      	subi      	r1, 1
  46:	e0000000 	bsr      	0x0	// 0 <os_mutex_lock>
  4a:	9579      	ld.w      	r3, (r5, 0x64)
  4c:	11d6      	lrw      	r6, 0x0	// 124 <wifi_psalive_work+0x124>
  4e:	11f7      	lrw      	r7, 0x0	// 128 <wifi_psalive_work+0x128>
  50:	ea880037 	lrw      	r8, 0x0	// 12c <wifi_psalive_work+0x12c>
  54:	9382      	ld.w      	r4, (r3, 0x8)
  56:	9519      	ld.w      	r0, (r5, 0x64)
  58:	587e      	addi      	r3, r0, 8
  5a:	64d2      	cmpne      	r4, r3
  5c:	0806      	bt      	0x68	// 68 <wifi_psalive_work+0x68>
  5e:	e0000000 	bsr      	0x0	// 0 <os_mutex_unlock>
  62:	3000      	movi      	r0, 0
  64:	1406      	addi      	r14, r14, 24
  66:	1495      	pop      	r4-r8, r15
  68:	845b      	ld.b      	r2, (r4, 0x1b)
  6a:	7448      	zextb      	r1, r2
  6c:	e4612010 	andi      	r3, r1, 16
  70:	e9030025 	bez      	r3, 0xba	// ba <wifi_psalive_work+0xba>
  74:	847d      	ld.b      	r3, (r4, 0x1d)
  76:	3b42      	cmpnei      	r3, 2
  78:	0821      	bt      	0xba	// ba <wifi_psalive_work+0xba>
  7a:	847e      	ld.b      	r3, (r4, 0x1e)
  7c:	e903001f 	bez      	r3, 0xba	// ba <wifi_psalive_work+0xba>
  80:	e442200f 	andi      	r2, r2, 15
  84:	3a27      	cmplti      	r2, 8
  86:	081c      	bt      	0xbe	// be <wifi_psalive_work+0xbe>
  88:	8474      	ld.b      	r3, (r4, 0x14)
  8a:	b845      	st.w      	r2, (r14, 0x14)
  8c:	8459      	ld.b      	r2, (r4, 0x19)
  8e:	b844      	st.w      	r2, (r14, 0x10)
  90:	8458      	ld.b      	r2, (r4, 0x18)
  92:	b843      	st.w      	r2, (r14, 0xc)
  94:	8457      	ld.b      	r2, (r4, 0x17)
  96:	b842      	st.w      	r2, (r14, 0x8)
  98:	8456      	ld.b      	r2, (r4, 0x16)
  9a:	b841      	st.w      	r2, (r14, 0x4)
  9c:	8455      	ld.b      	r2, (r4, 0x15)
  9e:	b840      	st.w      	r2, (r14, 0x0)
  a0:	6c63      	mov      	r1, r8
  a2:	ea0201c5 	movi      	r2, 453
  a6:	1103      	lrw      	r0, 0x0	// 130 <hgprintf+0x130>
  a8:	e0000000 	bsr      	0x0	// 0 <hgprintf>
  ac:	3307      	movi      	r3, 7
  ae:	3200      	movi      	r2, 0
  b0:	e4240013 	addi      	r1, r4, 20
  b4:	3003      	movi      	r0, 3
  b6:	e0000000 	bsr      	0x0	// 0 <ieee80211_conf_wakeup_sta>
  ba:	9480      	ld.w      	r4, (r4, 0x0)
  bc:	07cd      	br      	0x56	// 56 <wifi_psalive_work+0x56>
  be:	847a      	ld.b      	r3, (r4, 0x1a)
  c0:	2b00      	subi      	r3, 1
  c2:	74cc      	zextb      	r3, r3
  c4:	a47a      	st.b      	r3, (r4, 0x1a)
  c6:	e923fffa 	bnez      	r3, 0xba	// ba <wifi_psalive_work+0xba>
  ca:	e421200f 	andi      	r1, r1, 15
  ce:	e9010014 	bez      	r1, 0xf6	// f6 <wifi_psalive_work+0xf6>
  d2:	8474      	ld.b      	r3, (r4, 0x14)
  d4:	b845      	st.w      	r2, (r14, 0x14)
  d6:	8459      	ld.b      	r2, (r4, 0x19)
  d8:	b844      	st.w      	r2, (r14, 0x10)
  da:	8458      	ld.b      	r2, (r4, 0x18)
  dc:	b843      	st.w      	r2, (r14, 0xc)
  de:	8457      	ld.b      	r2, (r4, 0x17)
  e0:	b842      	st.w      	r2, (r14, 0x8)
  e2:	8456      	ld.b      	r2, (r4, 0x16)
  e4:	b841      	st.w      	r2, (r14, 0x4)
  e6:	8455      	ld.b      	r2, (r4, 0x15)
  e8:	b840      	st.w      	r2, (r14, 0x0)
  ea:	32b2      	movi      	r2, 178
  ec:	4241      	lsli      	r2, r2, 1
  ee:	6c5b      	mov      	r1, r6
  f0:	6c1f      	mov      	r0, r7
  f2:	e0000000 	bsr      	0x0	// 0 <hgprintf>
  f6:	845e      	ld.b      	r2, (r4, 0x1e)
  f8:	e424002f 	addi      	r1, r4, 48
  fc:	6c17      	mov      	r0, r5
  fe:	e0000000 	bsr      	0x0	// 0 <wifi_psalive_work>
 102:	847b      	ld.b      	r3, (r4, 0x1b)
 104:	5b42      	addi      	r2, r3, 1
 106:	e442200f 	andi      	r2, r2, 15
 10a:	3a02      	cmphsi      	r2, 3
 10c:	c4625c60 	ins      	r3, r2, 3, 0
 110:	a47b      	st.b      	r3, (r4, 0x1b)
 112:	0805      	bt      	0x11c	// 11c <wifi_psalive_work+0x11c>
 114:	d8640020 	ld.b      	r3, (r4, 0x20)
 118:	a47a      	st.b      	r3, (r4, 0x1a)
 11a:	07d0      	br      	0xba	// ba <wifi_psalive_work+0xba>
 11c:	3301      	movi      	r3, 1
 11e:	07fd      	br      	0x118	// 118 <wifi_psalive_work+0x118>
	...

Disassembly of section .text.wifi_psalive_pkthook_tx:

00000000 <wifi_psalive_pkthook_tx>:
   0:	14d8      	push      	r4-r11, r15
   2:	1427      	subi      	r14, r14, 28
   4:	9061      	ld.w      	r3, (r0, 0x4)
   6:	6c07      	mov      	r0, r1
   8:	93e1      	ld.w      	r7, (r3, 0x4)
   a:	9260      	ld.w      	r3, (r2, 0x0)
   c:	6d8b      	mov      	r6, r2
   e:	83ac      	ld.b      	r5, (r3, 0xc)
  10:	838d      	ld.b      	r4, (r3, 0xd)
  12:	e0000000 	bsr      	0x0	// 0 <wifi_psalive_pkthook_tx>
  16:	e9000006 	bez      	r0, 0x22	// 22 <wifi_psalive_pkthook_tx+0x22>
  1a:	3400      	movi      	r4, 0
  1c:	6c13      	mov      	r0, r4
  1e:	1407      	addi      	r14, r14, 28
  20:	1498      	pop      	r4-r11, r15
  22:	ea88009c 	lrw      	r8, 0x0	// 290 <wifi_psalive_pkthook_tx+0x290>
  26:	45a8      	lsli      	r5, r5, 8
  28:	d868000c 	ld.b      	r3, (r8, 0xc)
  2c:	3b02      	cmphsi      	r3, 3
  2e:	6d50      	or      	r5, r4
  30:	dd0e2005 	st.w      	r8, (r14, 0x14)
  34:	0cf6      	bf      	0x220	// 220 <wifi_psalive_pkthook_tx+0x220>
  36:	9719      	ld.w      	r0, (r7, 0x64)
  38:	e90000f4 	bez      	r0, 0x220	// 220 <wifi_psalive_pkthook_tx+0x220>
  3c:	3100      	movi      	r1, 0
  3e:	2900      	subi      	r1, 1
  40:	e0000000 	bsr      	0x0	// 0 <os_mutex_lock>
  44:	9779      	ld.w      	r3, (r7, 0x64)
  46:	d9462000 	ld.w      	r10, (r6, 0x0)
  4a:	9382      	ld.w      	r4, (r3, 0x8)
  4c:	e5230007 	addi      	r9, r3, 8
  50:	6652      	cmpne      	r4, r9
  52:	0839      	bt      	0xc4	// c4 <wifi_psalive_pkthook_tx+0xc4>
  54:	3400      	movi      	r4, 0
  56:	9719      	ld.w      	r0, (r7, 0x64)
  58:	e0000000 	bsr      	0x0	// 0 <os_mutex_unlock>
  5c:	9865      	ld.w      	r3, (r14, 0x14)
  5e:	836c      	ld.b      	r3, (r3, 0xc)
  60:	2b00      	subi      	r3, 1
  62:	74cc      	zextb      	r3, r3
  64:	3b01      	cmphsi      	r3, 2
  66:	0bdb      	bt      	0x1c	// 1c <wifi_psalive_pkthook_tx+0x1c>
  68:	97fa      	ld.w      	r7, (r7, 0x68)
  6a:	e907ffd9 	bez      	r7, 0x1c	// 1c <wifi_psalive_pkthook_tx+0x1c>
  6e:	eb450800 	cmpnei      	r5, 2048
  72:	0bd5      	bt      	0x1c	// 1c <wifi_psalive_pkthook_tx+0x1c>
  74:	9680      	ld.w      	r4, (r6, 0x0)
  76:	8477      	ld.b      	r3, (r4, 0x17)
  78:	3b51      	cmpnei      	r3, 17
  7a:	0bd0      	bt      	0x1a	// 1a <wifi_psalive_pkthook_tx+0x1a>
  7c:	e404001d 	addi      	r0, r4, 30
  80:	e0000000 	bsr      	0x0	// 0 <wifi_psalive_pkthook_tx>
  84:	97a7      	ld.w      	r5, (r7, 0x1c)
  86:	9562      	ld.w      	r3, (r5, 0x8)
  88:	64c2      	cmpne      	r0, r3
  8a:	0bc8      	bt      	0x1a	// 1a <wifi_psalive_pkthook_tx+0x1a>
  8c:	d8640024 	ld.b      	r3, (r4, 0x24)
  90:	4368      	lsli      	r3, r3, 8
  92:	d8240025 	ld.b      	r1, (r4, 0x25)
  96:	8d48      	ld.h      	r2, (r5, 0x10)
  98:	6cc4      	or      	r3, r1
  9a:	64ca      	cmpne      	r2, r3
  9c:	0bbf      	bt      	0x1a	// 1a <wifi_psalive_pkthook_tx+0x1a>
  9e:	8ec2      	ld.h      	r6, (r6, 0x4)
  a0:	eb060080 	cmphsi      	r6, 129
  a4:	3380      	movi      	r3, 128
  a6:	c4c30c40 	inct      	r6, r3, 0
  aa:	a5c2      	st.b      	r6, (r5, 0x2)
  ac:	e4040019 	addi      	r0, r4, 26
  b0:	e0000000 	bsr      	0x0	// 0 <wifi_psalive_pkthook_tx>
  b4:	b503      	st.w      	r0, (r5, 0xc)
  b6:	6c9b      	mov      	r2, r6
  b8:	6c53      	mov      	r1, r4
  ba:	e4050013 	addi      	r0, r5, 20
  be:	e0000000 	bsr      	0x0	// 0 <memcpy>
  c2:	07ac      	br      	0x1a	// 1a <wifi_psalive_pkthook_tx+0x1a>
  c4:	e90a000b 	bez      	r10, 0xda	// da <wifi_psalive_pkthook_tx+0xda>
  c8:	e5640013 	addi      	r11, r4, 20
  cc:	3206      	movi      	r2, 6
  ce:	6c6b      	mov      	r1, r10
  d0:	6c2f      	mov      	r0, r11
  d2:	e0000000 	bsr      	0x0	// 0 <memcmp>
  d6:	e9000004 	bez      	r0, 0xde	// de <wifi_psalive_pkthook_tx+0xde>
  da:	9480      	ld.w      	r4, (r4, 0x0)
  dc:	07ba      	br      	0x50	// 50 <wifi_psalive_pkthook_tx+0x50>
  de:	e904ffbb 	bez      	r4, 0x54	// 54 <wifi_psalive_pkthook_tx+0x54>
  e2:	eb450800 	cmpnei      	r5, 2048
  e6:	d924001b 	ld.b      	r9, (r4, 0x1b)
  ea:	0843      	bt      	0x170	// 170 <wifi_psalive_pkthook_tx+0x170>
  ec:	e5292010 	andi      	r9, r9, 16
  f0:	e909ffb2 	bez      	r9, 0x54	// 54 <wifi_psalive_pkthook_tx+0x54>
  f4:	847d      	ld.b      	r3, (r4, 0x1d)
  f6:	3b42      	cmpnei      	r3, 2
  f8:	08c5      	bt      	0x282	// 282 <wifi_psalive_pkthook_tx+0x282>
  fa:	d86a0017 	ld.b      	r3, (r10, 0x17)
  fe:	3b51      	cmpnei      	r3, 17
 100:	08c1      	bt      	0x282	// 282 <wifi_psalive_pkthook_tx+0x282>
 102:	e40a0019 	addi      	r0, r10, 26
 106:	e0000000 	bsr      	0x0	// 0 <wifi_psalive_pkthook_tx>
 10a:	9469      	ld.w      	r3, (r4, 0x24)
 10c:	64c2      	cmpne      	r0, r3
 10e:	08ba      	bt      	0x282	// 282 <wifi_psalive_pkthook_tx+0x282>
 110:	d86a0022 	ld.b      	r3, (r10, 0x22)
 114:	4368      	lsli      	r3, r3, 8
 116:	d82a0023 	ld.b      	r1, (r10, 0x23)
 11a:	8c56      	ld.h      	r2, (r4, 0x2c)
 11c:	6cc4      	or      	r3, r1
 11e:	64ca      	cmpne      	r2, r3
 120:	08b1      	bt      	0x282	// 282 <wifi_psalive_pkthook_tx+0x282>
 122:	e524001b 	addi      	r9, r4, 28
 126:	d8490007 	ld.b      	r2, (r9, 0x7)
 12a:	e902007d 	bez      	r2, 0x224	// 224 <wifi_psalive_pkthook_tx+0x224>
 12e:	e42400af 	addi      	r1, r4, 176
 132:	e40a0029 	addi      	r0, r10, 42
 136:	e0000000 	bsr      	0x0	// 0 <memcmp>
 13a:	e9200075 	bnez      	r0, 0x224	// 224 <wifi_psalive_pkthook_tx+0x224>
 13e:	8459      	ld.b      	r2, (r4, 0x19)
 140:	8474      	ld.b      	r3, (r4, 0x14)
 142:	b844      	st.w      	r2, (r14, 0x10)
 144:	8458      	ld.b      	r2, (r4, 0x18)
 146:	b843      	st.w      	r2, (r14, 0xc)
 148:	8457      	ld.b      	r2, (r4, 0x17)
 14a:	b842      	st.w      	r2, (r14, 0x8)
 14c:	8456      	ld.b      	r2, (r4, 0x16)
 14e:	b841      	st.w      	r2, (r14, 0x4)
 150:	8455      	ld.b      	r2, (r4, 0x15)
 152:	b806      	st.w      	r0, (r14, 0x18)
 154:	b840      	st.w      	r2, (r14, 0x0)
 156:	ea020366 	movi      	r2, 870
 15a:	122f      	lrw      	r1, 0x0	// 294 <wifi_psalive_pkthook_tx+0x294>
 15c:	120f      	lrw      	r0, 0x0	// 298 <wifi_psalive_pkthook_tx+0x298>
 15e:	e0000000 	bsr      	0x0	// 0 <hgprintf>
 162:	847b      	ld.b      	r3, (r4, 0x1b)
 164:	d98e2006 	ld.w      	r12, (r14, 0x18)
 168:	c46c5c60 	ins      	r3, r12, 3, 0
 16c:	a47b      	st.b      	r3, (r4, 0x1b)
 16e:	0485      	br      	0x278	// 278 <wifi_psalive_pkthook_tx+0x278>
 170:	eb450806 	cmpnei      	r5, 2054
 174:	0882      	bt      	0x278	// 278 <wifi_psalive_pkthook_tx+0x278>
 176:	d86a0014 	ld.b      	r3, (r10, 0x14)
 17a:	4368      	lsli      	r3, r3, 8
 17c:	d84a0015 	ld.b      	r2, (r10, 0x15)
 180:	6cc8      	or      	r3, r2
 182:	74cf      	sexth      	r3, r3
 184:	3b41      	cmpnei      	r3, 1
 186:	0879      	bt      	0x278	// 278 <wifi_psalive_pkthook_tx+0x278>
 188:	e5292010 	andi      	r9, r9, 16
 18c:	e40a0025 	addi      	r0, r10, 38
 190:	e0000000 	bsr      	0x0	// 0 <wifi_psalive_pkthook_tx>
 194:	e909ff60 	bez      	r9, 0x54	// 54 <wifi_psalive_pkthook_tx+0x54>
 198:	946a      	ld.w      	r3, (r4, 0x28)
 19a:	64c2      	cmpne      	r0, r3
 19c:	0873      	bt      	0x282	// 282 <wifi_psalive_pkthook_tx+0x282>
 19e:	d9061002 	ld.h      	r8, (r6, 0x4)
 1a2:	6c23      	mov      	r0, r8
 1a4:	e0000000 	bsr      	0x0	// 0 <_os_malloc>
 1a8:	6e43      	mov      	r9, r0
 1aa:	e9000067 	bez      	r0, 0x278	// 278 <wifi_psalive_pkthook_tx+0x278>
 1ae:	6ca3      	mov      	r2, r8
 1b0:	6c6b      	mov      	r1, r10
 1b2:	e5490005 	addi      	r10, r9, 6
 1b6:	e0000000 	bsr      	0x0	// 0 <memcpy>
 1ba:	6c6b      	mov      	r1, r10
 1bc:	3206      	movi      	r2, 6
 1be:	6c27      	mov      	r0, r9
 1c0:	e0000000 	bsr      	0x0	// 0 <memcpy>
 1c4:	6c6f      	mov      	r1, r11
 1c6:	3206      	movi      	r2, 6
 1c8:	6c2b      	mov      	r0, r10
 1ca:	e0000000 	bsr      	0x0	// 0 <memcpy>
 1ce:	3300      	movi      	r3, 0
 1d0:	dc690014 	st.b      	r3, (r9, 0x14)
 1d4:	e5490015 	addi      	r10, r9, 22
 1d8:	3302      	movi      	r3, 2
 1da:	dc690015 	st.b      	r3, (r9, 0x15)
 1de:	6c6b      	mov      	r1, r10
 1e0:	320a      	movi      	r2, 10
 1e2:	e409001f 	addi      	r0, r9, 32
 1e6:	e0000000 	bsr      	0x0	// 0 <memcpy>
 1ea:	6c6f      	mov      	r1, r11
 1ec:	3206      	movi      	r2, 6
 1ee:	6c2b      	mov      	r0, r10
 1f0:	e0000000 	bsr      	0x0	// 0 <memcpy>
 1f4:	944a      	ld.w      	r2, (r4, 0x28)
 1f6:	4a30      	lsri      	r1, r2, 16
 1f8:	4908      	lsri      	r0, r1, 8
 1fa:	dc29001d 	st.b      	r1, (r9, 0x1d)
 1fe:	c50255e1 	zext      	r1, r2, 15, 8
 202:	dc09001c 	st.b      	r0, (r9, 0x1c)
 206:	dc29001e 	st.b      	r1, (r9, 0x1e)
 20a:	dc49001f 	st.b      	r2, (r9, 0x1f)
 20e:	6c67      	mov      	r1, r9
 210:	6ca3      	mov      	r2, r8
 212:	6c1f      	mov      	r0, r7
 214:	e0000000 	bsr      	0x0	// 0 <wifi_psalive_pkthook_tx>
 218:	6c27      	mov      	r0, r9
 21a:	e0000000 	bsr      	0x0	// 0 <_os_free>
 21e:	042d      	br      	0x278	// 278 <wifi_psalive_pkthook_tx+0x278>
 220:	6d03      	mov      	r4, r0
 222:	071d      	br      	0x5c	// 5c <wifi_psalive_pkthook_tx+0x5c>
 224:	6c67      	mov      	r1, r9
 226:	6c2b      	mov      	r0, r10
 228:	e0000000 	bsr      	0x0	// 0 <wifi_psalive_pkthook_tx>
 22c:	e900002b 	bez      	r0, 0x282	// 282 <wifi_psalive_pkthook_tx+0x282>
 230:	8459      	ld.b      	r2, (r4, 0x19)
 232:	8474      	ld.b      	r3, (r4, 0x14)
 234:	d9261002 	ld.h      	r9, (r6, 0x4)
 238:	b844      	st.w      	r2, (r14, 0x10)
 23a:	8458      	ld.b      	r2, (r4, 0x18)
 23c:	b843      	st.w      	r2, (r14, 0xc)
 23e:	8457      	ld.b      	r2, (r4, 0x17)
 240:	b842      	st.w      	r2, (r14, 0x8)
 242:	8456      	ld.b      	r2, (r4, 0x16)
 244:	b841      	st.w      	r2, (r14, 0x4)
 246:	8455      	ld.b      	r2, (r4, 0x15)
 248:	b840      	st.w      	r2, (r14, 0x0)
 24a:	ea020369 	movi      	r2, 873
 24e:	1032      	lrw      	r1, 0x0	// 294 <wifi_psalive_pkthook_tx+0x294>
 250:	1013      	lrw      	r0, 0x0	// 29c <wifi_psalive_pkthook_tx+0x29c>
 252:	e0000000 	bsr      	0x0	// 0 <hgprintf>
 256:	d8640132 	ld.b      	r3, (r4, 0x132)
 25a:	e4632001 	andi      	r3, r3, 1
 25e:	e9030007 	bez      	r3, 0x26c	// 26c <wifi_psalive_pkthook_tx+0x26c>
 262:	6ca7      	mov      	r2, r9
 264:	6c6b      	mov      	r1, r10
 266:	5c1e      	addi      	r0, r4, 8
 268:	e0000000 	bsr      	0x0	// 0 <wifi_psalive_pkthook_tx>
 26c:	3308      	movi      	r3, 8
 26e:	3200      	movi      	r2, 0
 270:	6c6f      	mov      	r1, r11
 272:	3003      	movi      	r0, 3
 274:	e0000000 	bsr      	0x0	// 0 <ieee80211_conf_wakeup_sta>
 278:	847b      	ld.b      	r3, (r4, 0x1b)
 27a:	e4632010 	andi      	r3, r3, 16
 27e:	e903feeb 	bez      	r3, 0x54	// 54 <wifi_psalive_pkthook_tx+0x54>
 282:	847d      	ld.b      	r3, (r4, 0x1d)
 284:	3b42      	cmpnei      	r3, 2
 286:	0c03      	bf      	0x28c	// 28c <wifi_psalive_pkthook_tx+0x28c>
 288:	3b44      	cmpnei      	r3, 4
 28a:	0ae5      	bt      	0x54	// 54 <wifi_psalive_pkthook_tx+0x54>
 28c:	3401      	movi      	r4, 1
 28e:	06e4      	br      	0x56	// 56 <wifi_psalive_pkthook_tx+0x56>
	...

Disassembly of section .text.wifi_psalive_status:

00000000 <wifi_psalive_status>:
   0:	14d1      	push      	r4, r15
   2:	106e      	lrw      	r3, 0x0	// 38 <wifi_psalive_status+0x38>
   4:	3101      	movi      	r1, 1
   6:	830c      	ld.b      	r0, (r3, 0xc)
   8:	e0000000 	bsr      	0x0	// 0 <wificfg_get_ifidx>
   c:	7400      	zextb      	r0, r0
   e:	3802      	cmphsi      	r0, 3
  10:	0c10      	bf      	0x30	// 30 <wifi_psalive_status+0x30>
  12:	108b      	lrw      	r4, 0x0	// 3c <wifi_psalive_status+0x3c>
  14:	9419      	ld.w      	r0, (r4, 0x64)
  16:	e900000d 	bez      	r0, 0x30	// 30 <wifi_psalive_status+0x30>
  1a:	3100      	movi      	r1, 0
  1c:	2900      	subi      	r1, 1
  1e:	e0000000 	bsr      	0x0	// 0 <os_mutex_lock>
  22:	9419      	ld.w      	r0, (r4, 0x64)
  24:	585e      	addi      	r2, r0, 8
  26:	9062      	ld.w      	r3, (r0, 0x8)
  28:	648e      	cmpne      	r3, r2
  2a:	0804      	bt      	0x32	// 32 <wifi_psalive_status+0x32>
  2c:	e0000000 	bsr      	0x0	// 0 <os_mutex_unlock>
  30:	1491      	pop      	r4, r15
  32:	9360      	ld.w      	r3, (r3, 0x0)
  34:	07fa      	br      	0x28	// 28 <wifi_psalive_status+0x28>
	...

Disassembly of section .text.wifi_mgr_enable_psalive:

00000000 <wifi_mgr_enable_psalive>:
   0:	14d3      	push      	r4-r6, r15
   2:	11a5      	lrw      	r5, 0x0	// 94 <wifi_mgr_enable_psalive+0x94>
   4:	3101      	movi      	r1, 1
   6:	850c      	ld.b      	r0, (r5, 0xc)
   8:	e0000000 	bsr      	0x0	// 0 <wificfg_get_ifidx>
   c:	7580      	zextb      	r6, r0
   e:	1123      	lrw      	r1, 0x0	// 98 <wifi_mgr_enable_psalive+0x98>
  10:	e926002b 	bnez      	r6, 0x66	// 66 <wifi_mgr_enable_psalive+0x66>
  14:	3003      	movi      	r0, 3
  16:	1181      	lrw      	r4, 0x0	// 98 <wifi_mgr_enable_psalive+0x98>
  18:	e0000000 	bsr      	0x0	// 0 <ieee80211_conf_get_mac>
  1c:	5c1e      	addi      	r0, r4, 8
  1e:	e0000000 	bsr      	0x0	// 0 <wifi_mgr_add_submod>
  22:	5e63      	subi      	r3, r6, 1
  24:	74cc      	zextb      	r3, r3
  26:	3b01      	cmphsi      	r3, 2
  28:	0821      	bt      	0x6a	// 6a <wifi_mgr_enable_psalive+0x6a>
  2a:	e4040067 	addi      	r0, r4, 104
  2e:	e0000000 	bsr      	0x0	// 0 <wifi_mgr_enable_psalive>
  32:	101b      	lrw      	r0, 0x0	// 9c <ieee80211_register_pkthook+0x9c>
  34:	e0000000 	bsr      	0x0	// 0 <ieee80211_register_pkthook>
  38:	107a      	lrw      	r3, 0x0	// a0 <wifi_mgr_enable_psalive+0xa0>
  3a:	3500      	movi      	r5, 0
  3c:	b471      	st.w      	r3, (r4, 0x44)
  3e:	d8640034 	ld.b      	r3, (r4, 0x34)
  42:	c4655c83 	ins      	r3, r5, 7, 3
  46:	dc640034 	st.b      	r3, (r4, 0x34)
  4a:	3201      	movi      	r2, 1
  4c:	1073      	lrw      	r3, 0x0	// 98 <wifi_mgr_enable_psalive+0x98>
  4e:	1036      	lrw      	r1, 0x0	// a4 <wifi_mgr_enable_psalive+0xa4>
  50:	e4030047 	addi      	r0, r3, 72
  54:	e0000000 	bsr      	0x0	// 0 <os_timer_init>
  58:	31fa      	movi      	r1, 250
  5a:	4122      	lsli      	r1, r1, 2
  5c:	1013      	lrw      	r0, 0x0	// a8 <wifi_mgr_enable_psalive+0xa8>
  5e:	e0000000 	bsr      	0x0	// 0 <os_timer_start>
  62:	6c17      	mov      	r0, r5
  64:	0416      	br      	0x90	// 90 <wifi_mgr_enable_psalive+0x90>
  66:	6c1b      	mov      	r0, r6
  68:	07d7      	br      	0x16	// 16 <wifi_mgr_enable_psalive+0x16>
  6a:	3e02      	cmphsi      	r6, 3
  6c:	0c09      	bf      	0x7e	// 7e <wifi_mgr_enable_psalive+0x7e>
  6e:	9479      	ld.w      	r3, (r4, 0x64)
  70:	e923ffe1 	bnez      	r3, 0x32	// 32 <wifi_mgr_enable_psalive+0x32>
  74:	e4040063 	addi      	r0, r4, 100
  78:	e0000000 	bsr      	0x0	// 0 <wifi_mgr_enable_psalive>
  7c:	07db      	br      	0x32	// 32 <wifi_mgr_enable_psalive+0x32>
  7e:	3288      	movi      	r2, 136
  80:	100b      	lrw      	r0, 0x0	// ac <wifi_mgr_enable_psalive+0xac>
  82:	856c      	ld.b      	r3, (r5, 0xc)
  84:	4243      	lsli      	r2, r2, 3
  86:	102b      	lrw      	r1, 0x0	// b0 <wifi_mgr_enable_psalive+0xb0>
  88:	e0000000 	bsr      	0x0	// 0 <hgprintf>
  8c:	3000      	movi      	r0, 0
  8e:	2815      	subi      	r0, 22
  90:	1493      	pop      	r4-r6, r15
	...

Disassembly of section .text.wifi_psalive_setup_testdata:

00000000 <wifi_psalive_setup_testdata>:
   0:	14d8      	push      	r4-r11, r15
   2:	1424      	subi      	r14, r14, 16
   4:	12cc      	lrw      	r6, 0x0	// 134 <wifi_psalive_setup_testdata+0x134>
   6:	6e4f      	mov      	r9, r3
   8:	866c      	ld.b      	r3, (r6, 0xc)
   a:	2b00      	subi      	r3, 1
   c:	74cc      	zextb      	r3, r3
   e:	3b01      	cmphsi      	r3, 2
  10:	6e03      	mov      	r8, r0
  12:	6dc7      	mov      	r7, r1
  14:	6e8b      	mov      	r10, r2
  16:	988d      	ld.w      	r4, (r14, 0x34)
  18:	088b      	bt      	0x12e	// 12e <wifi_psalive_setup_testdata+0x12e>
  1a:	12a8      	lrw      	r5, 0x0	// 138 <wifi_psalive_setup_testdata+0x138>
  1c:	957a      	ld.w      	r3, (r5, 0x68)
  1e:	e9030088 	bez      	r3, 0x12e	// 12e <wifi_psalive_setup_testdata+0x12e>
  22:	9307      	ld.w      	r0, (r3, 0x1c)
  24:	e9000085 	bez      	r0, 0x12e	// 12e <wifi_psalive_setup_testdata+0x12e>
  28:	32b6      	movi      	r2, 182
  2a:	4241      	lsli      	r2, r2, 1
  2c:	3100      	movi      	r1, 0
  2e:	e0000000 	bsr      	0x0	// 0 <memset>
  32:	953a      	ld.w      	r1, (r5, 0x68)
  34:	8461      	ld.b      	r3, (r4, 0x1)
  36:	9107      	ld.w      	r0, (r1, 0x1c)
  38:	8425      	ld.b      	r1, (r4, 0x5)
  3a:	8440      	ld.b      	r2, (r4, 0x0)
  3c:	b823      	st.w      	r1, (r14, 0xc)
  3e:	8424      	ld.b      	r1, (r4, 0x4)
  40:	b822      	st.w      	r1, (r14, 0x8)
  42:	8423      	ld.b      	r1, (r4, 0x3)
  44:	b821      	st.w      	r1, (r14, 0x4)
  46:	8422      	ld.b      	r1, (r4, 0x2)
  48:	b820      	st.w      	r1, (r14, 0x0)
  4a:	20d3      	addi      	r0, 212
  4c:	113c      	lrw      	r1, 0x0	// 13c <wifi_psalive_setup_testdata+0x13c>
  4e:	e0000000 	bsr      	0x0	// 0 <sprintf>
  52:	953a      	ld.w      	r1, (r5, 0x68)
  54:	8461      	ld.b      	r3, (r4, 0x1)
  56:	9107      	ld.w      	r0, (r1, 0x1c)
  58:	8425      	ld.b      	r1, (r4, 0x5)
  5a:	8440      	ld.b      	r2, (r4, 0x0)
  5c:	b823      	st.w      	r1, (r14, 0xc)
  5e:	8424      	ld.b      	r1, (r4, 0x4)
  60:	b822      	st.w      	r1, (r14, 0x8)
  62:	8423      	ld.b      	r1, (r4, 0x3)
  64:	b821      	st.w      	r1, (r14, 0x4)
  66:	8422      	ld.b      	r1, (r4, 0x2)
  68:	b820      	st.w      	r1, (r14, 0x0)
  6a:	2013      	addi      	r0, 20
  6c:	1135      	lrw      	r1, 0x0	// 140 <wifi_psalive_setup_testdata+0x140>
  6e:	e0000000 	bsr      	0x0	// 0 <sprintf>
  72:	953a      	ld.w      	r1, (r5, 0x68)
  74:	8461      	ld.b      	r3, (r4, 0x1)
  76:	9107      	ld.w      	r0, (r1, 0x1c)
  78:	8425      	ld.b      	r1, (r4, 0x5)
  7a:	8440      	ld.b      	r2, (r4, 0x0)
  7c:	b823      	st.w      	r1, (r14, 0xc)
  7e:	8424      	ld.b      	r1, (r4, 0x4)
  80:	b822      	st.w      	r1, (r14, 0x8)
  82:	8423      	ld.b      	r1, (r4, 0x3)
  84:	b821      	st.w      	r1, (r14, 0x4)
  86:	8422      	ld.b      	r1, (r4, 0x2)
  88:	b820      	st.w      	r1, (r14, 0x0)
  8a:	2093      	addi      	r0, 148
  8c:	112d      	lrw      	r1, 0x0	// 140 <wifi_psalive_setup_testdata+0x140>
  8e:	e0000000 	bsr      	0x0	// 0 <sprintf>
  92:	d965201a 	ld.w      	r11, (r5, 0x68)
  96:	31ff      	movi      	r1, 255
  98:	d80b2007 	ld.w      	r0, (r11, 0x1c)
  9c:	3208      	movi      	r2, 8
  9e:	e4000117 	addi      	r0, r0, 280
  a2:	e0000000 	bsr      	0x0	// 0 <memset>
  a6:	d88b2007 	ld.w      	r4, (r11, 0x1c)
  aa:	4768      	lsli      	r3, r7, 8
  ac:	c50755e7 	zext      	r7, r7, 15, 8
  b0:	6dcc      	or      	r7, r3
  b2:	7a22      	revb      	r8, r8
  b4:	332a      	movi      	r3, 42
  b6:	dc64108a 	st.h      	r3, (r4, 0x114)
  ba:	dd042002 	st.w      	r8, (r4, 0x8)
  be:	ace8      	st.h      	r7, (r4, 0x10)
  c0:	dd440004 	st.b      	r10, (r4, 0x4)
  c4:	dd240005 	st.b      	r9, (r4, 0x5)
  c8:	e4040013 	addi      	r0, r4, 20
  cc:	e0000000 	bsr      	0x0	// 0 <strlen>
  d0:	a402      	st.b      	r0, (r4, 0x2)
  d2:	e4040093 	addi      	r0, r4, 148
  d6:	e0000000 	bsr      	0x0	// 0 <strlen>
  da:	a407      	st.b      	r0, (r4, 0x7)
  dc:	e40400d3 	addi      	r0, r4, 212
  e0:	e0000000 	bsr      	0x0	// 0 <strlen>
  e4:	a406      	st.b      	r0, (r4, 0x6)
  e6:	d86b000c 	ld.b      	r3, (r11, 0xc)
  ea:	2300      	addi      	r3, 1
  ec:	dc6b000c 	st.b      	r3, (r11, 0xc)
  f0:	9564      	ld.w      	r3, (r5, 0x10)
  f2:	3200      	movi      	r2, 0
  f4:	2a00      	subi      	r2, 1
  f6:	dc431063 	st.h      	r2, (r3, 0xc6)
  fa:	3300      	movi      	r3, 0
  fc:	3201      	movi      	r2, 1
  fe:	dc661066 	st.h      	r3, (r6, 0xcc)
 102:	d86600fb 	ld.b      	r3, (r6, 0xfb)
 106:	c4625c04 	ins      	r3, r2, 4, 4
 10a:	e4050027 	addi      	r0, r5, 40
 10e:	dc6600fb 	st.b      	r3, (r6, 0xfb)
 112:	e0000000 	bsr      	0x0	// 0 <os_run_work>
 116:	957a      	ld.w      	r3, (r5, 0x68)
 118:	100b      	lrw      	r0, 0x0	// 144 <wifi_psalive_setup_testdata+0x144>
 11a:	9327      	ld.w      	r1, (r3, 0x1c)
 11c:	2193      	addi      	r1, 148
 11e:	e0000000 	bsr      	0x0	// 0 <hgprintf>
 122:	957a      	ld.w      	r3, (r5, 0x68)
 124:	1009      	lrw      	r0, 0x0	// 148 <wifi_psalive_setup_testdata+0x148>
 126:	9327      	ld.w      	r1, (r3, 0x1c)
 128:	21d3      	addi      	r1, 212
 12a:	e0000000 	bsr      	0x0	// 0 <hgprintf>
 12e:	1404      	addi      	r14, r14, 16
 130:	1498      	pop      	r4-r11, r15
	...
