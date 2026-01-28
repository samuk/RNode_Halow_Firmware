
libwifi/o/wifi_wifi_mgr.o:     file format elf32-csky-little


Disassembly of section .text.wifi_mgr_scatter_offset:

00000000 <wifi_mgr_scatter_offset>:
   0:	3300      	movi      	r3, 0
   2:	644c      	cmphs      	r3, r1
   4:	0c03      	bf      	0xa	// a <wifi_mgr_scatter_offset+0xa>
   6:	3000      	movi      	r0, 0
   8:	040b      	br      	0x1e	// 1e <wifi_mgr_scatter_offset+0x1e>
   a:	c463482c 	lsli      	r12, r3, 3
   e:	6300      	addu      	r12, r0
  10:	d9ac2001 	ld.w      	r13, (r12, 0x4)
  14:	6748      	cmphs      	r2, r13
  16:	0805      	bt      	0x20	// 20 <wifi_mgr_scatter_offset+0x20>
  18:	d80c2000 	ld.w      	r0, (r12, 0x0)
  1c:	6008      	addu      	r0, r2
  1e:	783c      	jmp      	r15
  20:	2300      	addi      	r3, 1
  22:	60b6      	subu      	r2, r13
  24:	74cc      	zextb      	r3, r3
  26:	07ee      	br      	0x2	// 2 <wifi_mgr_scatter_offset+0x2>

Disassembly of section .text.wifi_mgr_agg_buff_reset:

00000000 <wifi_mgr_agg_buff_reset>:
   0:	d8602030 	ld.w      	r3, (r0, 0xc0)
   4:	e9030020 	bez      	r3, 0x44	// 44 <wifi_mgr_agg_buff_reset+0x44>
   8:	321a      	movi      	r2, 26
   a:	a340      	st.b      	r2, (r3, 0x0)
   c:	322b      	movi      	r2, 43
   e:	a341      	st.b      	r2, (r3, 0x1)
  10:	3212      	movi      	r2, 18
  12:	a342      	st.b      	r2, (r3, 0x2)
  14:	885e      	ld.h      	r2, (r0, 0x3c)
  16:	3108      	movi      	r1, 8
  18:	e5a20000 	addi      	r13, r2, 1
  1c:	ea0c0000 	movi      	r12, 0
  20:	a324      	st.b      	r1, (r3, 0x4)
  22:	dd830005 	st.b      	r12, (r3, 0x5)
  26:	dda0101e 	st.h      	r13, (r0, 0x3c)
  2a:	a346      	st.b      	r2, (r3, 0x6)
  2c:	7085      	lsr      	r2, r1
  2e:	a347      	st.b      	r2, (r3, 0x7)
  30:	ea0d0001 	movi      	r13, 1
  34:	8343      	ld.b      	r2, (r3, 0x3)
  36:	c44d5c60 	ins      	r2, r13, 3, 0
  3a:	c44c5c64 	ins      	r2, r12, 7, 4
  3e:	a343      	st.b      	r2, (r3, 0x3)
  40:	dc20202f 	st.w      	r1, (r0, 0xbc)
  44:	783c      	jmp      	r15

Disassembly of section .text.wifi_mgr_pkthook_rx:

00000000 <wifi_mgr_pkthook_rx>:
   0:	14d2      	push      	r4-r5, r15
   2:	6f0b      	mov      	r12, r2
   4:	9240      	ld.w      	r2, (r2, 0x0)
   6:	8a67      	ld.h      	r3, (r2, 0xe)
   8:	eb434855 	cmpnei      	r3, 18517
   c:	081b      	bt      	0x42	// 42 <wifi_mgr_pkthook_rx+0x42>
   e:	106f      	lrw      	r3, 0x0	// 48 <wifi_mgr_pkthook_rx+0x48>
  10:	e5a2000d 	addi      	r13, r2, 14
  14:	9360      	ld.w      	r3, (r3, 0x0)
  16:	2347      	addi      	r3, 72
  18:	9300      	ld.w      	r0, (r3, 0x0)
  1a:	64c2      	cmpne      	r0, r3
  1c:	0c0f      	bf      	0x3a	// 3a <wifi_mgr_pkthook_rx+0x3a>
  1e:	e9000010 	bez      	r0, 0x3e	// 3e <wifi_mgr_pkthook_rx+0x3e>
  22:	80ac      	ld.b      	r5, (r0, 0xc)
  24:	d88d0006 	ld.b      	r4, (r13, 0x6)
  28:	6516      	cmpne      	r5, r4
  2a:	080a      	bt      	0x3e	// 3e <wifi_mgr_pkthook_rx+0x3e>
  2c:	d9a02007 	ld.w      	r13, (r0, 0x1c)
  30:	e90d0005 	bez      	r13, 0x3a	// 3a <wifi_mgr_pkthook_rx+0x3a>
  34:	d86c1002 	ld.h      	r3, (r12, 0x4)
  38:	7bf5      	jsr      	r13
  3a:	3001      	movi      	r0, 1
  3c:	0404      	br      	0x44	// 44 <wifi_mgr_pkthook_rx+0x44>
  3e:	9000      	ld.w      	r0, (r0, 0x0)
  40:	07ed      	br      	0x1a	// 1a <wifi_mgr_pkthook_rx+0x1a>
  42:	3000      	movi      	r0, 0
  44:	1492      	pop      	r4-r5, r15
  46:	0000      	.short	0x0000
  48:	0000      	.short	0x0000
	...

Disassembly of section .text.wifi_mgr_skb_cb:

00000000 <wifi_mgr_skb_cb>:
   0:	14d0      	push      	r15
   2:	1066      	lrw      	r3, 0x0	// 18 <wifi_mgr_skb_cb+0x18>
   4:	3104      	movi      	r1, 4
   6:	9360      	ld.w      	r3, (r3, 0x0)
   8:	9314      	ld.w      	r0, (r3, 0x50)
   a:	3300      	movi      	r3, 0
   c:	d9802007 	ld.w      	r12, (r0, 0x1c)
  10:	6c8f      	mov      	r2, r3
  12:	7bf1      	jsr      	r12
  14:	1490      	pop      	r15
  16:	0000      	.short	0x0000
  18:	0000      	.short	0x0000
	...

Disassembly of section .text.wifi_dev_ioctl:

00000000 <wifi_dev_ioctl>:
   0:	14d6      	push      	r4-r9, r15
   2:	ea880026 	lrw      	r8, 0x0	// 98 <wifi_dev_ioctl+0x98>
   6:	6d87      	mov      	r6, r1
   8:	6d03      	mov      	r4, r0
   a:	3100      	movi      	r1, 0
   c:	d808000c 	ld.b      	r0, (r8, 0xc)
  10:	6d4b      	mov      	r5, r2
  12:	e0000000 	bsr      	0x0	// 0 <wificfg_get_ifidx>
  16:	75c0      	zextb      	r7, r0
  18:	3101      	movi      	r1, 1
  1a:	d808000c 	ld.b      	r0, (r8, 0xc)
  1e:	e0000000 	bsr      	0x0	// 0 <wificfg_get_ifidx>
  22:	3e41      	cmpnei      	r6, 1
  24:	7640      	zextb      	r9, r0
  26:	0c15      	bf      	0x50	// 50 <wifi_dev_ioctl+0x50>
  28:	3e40      	cmpnei      	r6, 0
  2a:	0c08      	bf      	0x3a	// 3a <wifi_dev_ioctl+0x3a>
  2c:	3e42      	cmpnei      	r6, 2
  2e:	0c24      	bf      	0x76	// 76 <wifi_dev_ioctl+0x76>
  30:	3e49      	cmpnei      	r6, 9
  32:	0c28      	bf      	0x82	// 82 <wifi_dev_ioctl+0x82>
  34:	3000      	movi      	r0, 0
  36:	2800      	subi      	r0, 1
  38:	0424      	br      	0x80	// 80 <wifi_dev_ioctl+0x80>
  3a:	2427      	addi      	r4, 40
  3c:	6c53      	mov      	r1, r4
  3e:	6c1f      	mov      	r0, r7
  40:	e0000000 	bsr      	0x0	// 0 <ieee80211_conf_get_mac>
  44:	3206      	movi      	r2, 6
  46:	6c53      	mov      	r1, r4
  48:	6c17      	mov      	r0, r5
  4a:	e0000000 	bsr      	0x0	// 0 <memcpy>
  4e:	07f3      	br      	0x34	// 34 <wifi_dev_ioctl+0x34>
  50:	d868000c 	ld.b      	r3, (r8, 0xc)
  54:	3b04      	cmphsi      	r3, 5
  56:	6c57      	mov      	r1, r5
  58:	6c1f      	mov      	r0, r7
  5a:	0c07      	bf      	0x68	// 68 <wifi_dev_ioctl+0x68>
  5c:	3b49      	cmpnei      	r3, 9
  5e:	0c05      	bf      	0x68	// 68 <wifi_dev_ioctl+0x68>
  60:	e0000000 	bsr      	0x0	// 0 <ieee80211_conf_set_mac>
  64:	6c57      	mov      	r1, r5
  66:	6c27      	mov      	r0, r9
  68:	e0000000 	bsr      	0x0	// 0 <ieee80211_conf_set_mac>
  6c:	3206      	movi      	r2, 6
  6e:	6c57      	mov      	r1, r5
  70:	e4040027 	addi      	r0, r4, 40
  74:	07eb      	br      	0x4a	// 4a <wifi_dev_ioctl+0x4a>
  76:	6c27      	mov      	r0, r9
  78:	e0000000 	bsr      	0x0	// 0 <ieee80211_conf_get_connstate>
  7c:	3827      	cmplti      	r0, 8
  7e:	6403      	mvcv      	r0
  80:	1496      	pop      	r4-r9, r15
  82:	3d40      	cmpnei      	r5, 0
  84:	d864002f 	ld.b      	r3, (r4, 0x2f)
  88:	c4000502 	mvc      	r2
  8c:	c4625c03 	ins      	r3, r2, 3, 3
  90:	dc64002f 	st.b      	r3, (r4, 0x2f)
  94:	07d0      	br      	0x34	// 34 <wifi_dev_ioctl+0x34>
  96:	0000      	.short	0x0000
  98:	00000000 	.long	0x00000000

Disassembly of section .text.wifi_dev_close:

00000000 <wifi_dev_close>:
   0:	14d1      	push      	r4, r15
   2:	106a      	lrw      	r3, 0x0	// 28 <wifi_dev_close+0x28>
   4:	6d03      	mov      	r4, r0
   6:	3100      	movi      	r1, 0
   8:	830c      	ld.b      	r0, (r3, 0xc)
   a:	e0000000 	bsr      	0x0	// 0 <wificfg_get_ifidx>
   e:	d864002f 	ld.b      	r3, (r4, 0x2f)
  12:	3200      	movi      	r2, 0
  14:	c4625c00 	ins      	r3, r2, 0, 0
  18:	dc64002f 	st.b      	r3, (r4, 0x2f)
  1c:	7400      	zextb      	r0, r0
  1e:	e0000000 	bsr      	0x0	// 0 <ieee80211_iface_stop>
  22:	7403      	sexth      	r0, r0
  24:	1491      	pop      	r4, r15
  26:	0000      	.short	0x0000
  28:	00000000 	.long	0x00000000

Disassembly of section .text.wifi_dev_open:

00000000 <wifi_dev_open>:
   0:	14d4      	push      	r4-r7, r15
   2:	6d8f      	mov      	r6, r3
   4:	1073      	lrw      	r3, 0x0	// 50 <wifi_dev_open+0x50>
   6:	6d03      	mov      	r4, r0
   8:	6dc7      	mov      	r7, r1
   a:	830c      	ld.b      	r0, (r3, 0xc)
   c:	3100      	movi      	r1, 0
   e:	e0000000 	bsr      	0x0	// 0 <wificfg_get_ifidx>
  12:	7540      	zextb      	r5, r0
  14:	c0006023 	mfcr      	r3, cr<0, 0>
  18:	c0807020 	psrclr      	ie
  1c:	e4632040 	andi      	r3, r3, 64
  20:	b4e8      	st.w      	r7, (r4, 0x20)
  22:	b4c9      	st.w      	r6, (r4, 0x24)
  24:	e9030004 	bez      	r3, 0x2c	// 2c <wifi_dev_open+0x2c>
  28:	c0807420 	psrset      	ie
  2c:	d864002f 	ld.b      	r3, (r4, 0x2f)
  30:	3201      	movi      	r2, 1
  32:	c4625c00 	ins      	r3, r2, 0, 0
  36:	dc64002f 	st.b      	r3, (r4, 0x2f)
  3a:	e4240027 	addi      	r1, r4, 40
  3e:	6c17      	mov      	r0, r5
  40:	e0000000 	bsr      	0x0	// 0 <ieee80211_conf_get_mac>
  44:	6c17      	mov      	r0, r5
  46:	e0000000 	bsr      	0x0	// 0 <ieee80211_iface_start>
  4a:	7403      	sexth      	r0, r0
  4c:	1494      	pop      	r4-r7, r15
  4e:	0000      	.short	0x0000
  50:	00000000 	.long	0x00000000

Disassembly of section .text.wifi_mgr_icmp_monitor.part.1:

00000000 <wifi_mgr_icmp_monitor.part.1>:
   0:	14d0      	push      	r15
   2:	806c      	ld.b      	r3, (r0, 0xc)
   4:	4368      	lsli      	r3, r3, 8
   6:	804d      	ld.b      	r2, (r0, 0xd)
   8:	6cc8      	or      	r3, r2
   a:	74cf      	sexth      	r3, r3
   c:	eb430800 	cmpnei      	r3, 2048
  10:	0821      	bt      	0x52	// 52 <wifi_mgr_icmp_monitor.part.1+0x52>
  12:	8077      	ld.b      	r3, (r0, 0x17)
  14:	3b41      	cmpnei      	r3, 1
  16:	081e      	bt      	0x52	// 52 <wifi_mgr_icmp_monitor.part.1+0x52>
  18:	d8400022 	ld.b      	r2, (r0, 0x22)
  1c:	e46220f7 	andi      	r3, r2, 247
  20:	e9230019 	bnez      	r3, 0x52	// 52 <wifi_mgr_icmp_monitor.part.1+0x52>
  24:	d8600028 	ld.b      	r3, (r0, 0x28)
  28:	4368      	lsli      	r3, r3, 8
  2a:	d8000029 	ld.b      	r0, (r0, 0x29)
  2e:	6cc0      	or      	r3, r0
  30:	4250      	lsli      	r2, r2, 16
  32:	6cc8      	or      	r3, r2
  34:	3940      	cmpnei      	r1, 0
  36:	1048      	lrw      	r2, 0x0	// 54 <wifi_mgr_icmp_monitor.part.1+0x54>
  38:	1028      	lrw      	r1, 0x0	// 58 <wifi_mgr_icmp_monitor.part.1+0x58>
  3a:	c4220c20 	incf      	r1, r2, 0
  3e:	4b50      	lsri      	r2, r3, 16
  40:	3a48      	cmpnei      	r2, 8
  42:	1007      	lrw      	r0, 0x0	// 5c <wifi_mgr_icmp_monitor.part.1+0x5c>
  44:	1047      	lrw      	r2, 0x0	// 60 <wifi_mgr_icmp_monitor.part.1+0x60>
  46:	c4400c20 	incf      	r2, r0, 0
  4a:	74cd      	zexth      	r3, r3
  4c:	1006      	lrw      	r0, 0x0	// 64 <wifi_mgr_icmp_monitor.part.1+0x64>
  4e:	e0000000 	bsr      	0x0	// 0 <hgprintf>
  52:	1490      	pop      	r15
	...

Disassembly of section .text.wifi_mgr_proc_up2host_list.part.6:

00000000 <wifi_mgr_proc_up2host_list.part.6>:
   0:	14d3      	push      	r4-r6, r15
   2:	6d43      	mov      	r5, r0
   4:	6d87      	mov      	r6, r1
   6:	6c1b      	mov      	r0, r6
   8:	e0000000 	bsr      	0x0	// 0 <skb_list_dequeue>
   c:	6d03      	mov      	r4, r0
   e:	e9200003 	bnez      	r0, 0x14	// 14 <wifi_mgr_proc_up2host_list.part.6+0x14>
  12:	1493      	pop      	r4-r6, r15
  14:	9514      	ld.w      	r0, (r5, 0x50)
  16:	8c54      	ld.h      	r2, (r4, 0x28)
  18:	9064      	ld.w      	r3, (r0, 0x10)
  1a:	9427      	ld.w      	r1, (r4, 0x1c)
  1c:	7bcd      	jsr      	r3
  1e:	e9000014 	bez      	r0, 0x46	// 46 <wifi_mgr_proc_up2host_list.part.6+0x46>
  22:	9407      	ld.w      	r0, (r4, 0x1c)
  24:	8062      	ld.b      	r3, (r0, 0x2)
  26:	3b4e      	cmpnei      	r3, 14
  28:	081a      	bt      	0x5c	// 5c <wifi_mgr_proc_up2host_list.part.6+0x5c>
  2a:	8069      	ld.b      	r3, (r0, 0x9)
  2c:	8048      	ld.b      	r2, (r0, 0x8)
  2e:	4368      	lsli      	r3, r3, 8
  30:	6cc8      	or      	r3, r2
  32:	3b52      	cmpnei      	r3, 18
  34:	64c3      	mvcv      	r3
  36:	74cc      	zextb      	r3, r3
  38:	e9030007 	bez      	r3, 0x46	// 46 <wifi_mgr_proc_up2host_list.part.6+0x46>
  3c:	8c34      	ld.h      	r1, (r4, 0x28)
  3e:	290b      	subi      	r1, 12
  40:	200b      	addi      	r0, 12
  42:	e0000000 	bsr      	0x0	// 0 <hgprintf_out>
  46:	6c13      	mov      	r0, r4
  48:	e0000000 	bsr      	0x0	// 0 <kfree_skb>
  4c:	9514      	ld.w      	r0, (r5, 0x50)
  4e:	3300      	movi      	r3, 0
  50:	d9802007 	ld.w      	r12, (r0, 0x1c)
  54:	6c8f      	mov      	r2, r3
  56:	3104      	movi      	r1, 4
  58:	7bf1      	jsr      	r12
  5a:	07d6      	br      	0x6	// 6 <wifi_mgr_proc_up2host_list.part.6+0x6>
  5c:	8068      	ld.b      	r3, (r0, 0x8)
  5e:	07ea      	br      	0x32	// 32 <wifi_mgr_proc_up2host_list.part.6+0x32>

Disassembly of section .text.wifi_mgr_timer_cb:

00000000 <wifi_mgr_timer_cb>:
   0:	14d6      	push      	r4-r9, r15
   2:	1424      	subi      	r14, r14, 16
   4:	118c      	lrw      	r4, 0x0	// b4 <wifi_mgr_timer_cb+0xb4>
   6:	6d43      	mov      	r5, r0
   8:	3100      	movi      	r1, 0
   a:	840c      	ld.b      	r0, (r4, 0xc)
   c:	e0000000 	bsr      	0x0	// 0 <wificfg_get_ifidx>
  10:	846c      	ld.b      	r3, (r4, 0xc)
  12:	2b00      	subi      	r3, 1
  14:	74cc      	zextb      	r3, r3
  16:	3b01      	cmphsi      	r3, 2
  18:	0c07      	bf      	0x26	// 26 <wifi_mgr_timer_cb+0x26>
  1a:	d8651063 	ld.h      	r3, (r5, 0xc6)
  1e:	e9030025 	bez      	r3, 0x68	// 68 <wifi_mgr_timer_cb+0x68>
  22:	1404      	addi      	r14, r14, 16
  24:	1496      	pop      	r4-r9, r15
  26:	d8651063 	ld.h      	r3, (r5, 0xc6)
  2a:	2b00      	subi      	r3, 1
  2c:	74cd      	zexth      	r3, r3
  2e:	eb03fffd 	cmphsi      	r3, 65534
  32:	0bf4      	bt      	0x1a	// 1a <wifi_mgr_timer_cb+0x1a>
  34:	3b02      	cmphsi      	r3, 3
  36:	dc651063 	st.h      	r3, (r5, 0xc6)
  3a:	0bf0      	bt      	0x1a	// 1a <wifi_mgr_timer_cb+0x1a>
  3c:	95d2      	ld.w      	r6, (r5, 0x48)
  3e:	e5050047 	addi      	r8, r5, 72
  42:	75c0      	zextb      	r7, r0
  44:	ea090000 	movi      	r9, 0
  48:	661a      	cmpne      	r6, r8
  4a:	0fe8      	bf      	0x1a	// 1a <wifi_mgr_timer_cb+0x1a>
  4c:	d9862005 	ld.w      	r12, (r6, 0x14)
  50:	e90c000a 	bez      	r12, 0x64	// 64 <wifi_mgr_timer_cb+0x64>
  54:	dd2e2000 	st.w      	r9, (r14, 0x0)
  58:	3300      	movi      	r3, 0
  5a:	ea02fde8 	movi      	r2, 65000
  5e:	6c5f      	mov      	r1, r7
  60:	6c1b      	mov      	r0, r6
  62:	7bf1      	jsr      	r12
  64:	96c0      	ld.w      	r6, (r6, 0x0)
  66:	07f1      	br      	0x48	// 48 <wifi_mgr_timer_cb+0x48>
  68:	d864107d 	ld.h      	r3, (r4, 0xfa)
  6c:	e4632380 	andi      	r3, r3, 896
  70:	e903ffd9 	bez      	r3, 0x22	// 22 <wifi_mgr_timer_cb+0x22>
  74:	1071      	lrw      	r3, 0x0	// b8 <wifi_mgr_timer_cb+0xb8>
  76:	8361      	ld.b      	r3, (r3, 0x1)
  78:	e4632008 	andi      	r3, r3, 8
  7c:	e923ffd3 	bnez      	r3, 0x22	// 22 <wifi_mgr_timer_cb+0x22>
  80:	32fa      	movi      	r2, 250
  82:	d86400d0 	ld.b      	r3, (r4, 0xd0)
  86:	4242      	lsli      	r2, r2, 2
  88:	7cc8      	mult      	r3, r2
  8a:	b861      	st.w      	r3, (r14, 0x4)
  8c:	d8645066 	ld.hs      	r3, (r4, 0xcc)
  90:	e983ffc9 	blz      	r3, 0x22	// 22 <wifi_mgr_timer_cb+0x22>
  94:	100a      	lrw      	r0, 0x0	// bc <hgprintf+0xbc>
  96:	e0000000 	bsr      	0x0	// 0 <hgprintf>
  9a:	d8645066 	ld.hs      	r3, (r4, 0xcc)
  9e:	d8441062 	ld.h      	r2, (r4, 0xc4)
  a2:	c4438043 	divs      	r3, r3, r2
  a6:	dc651063 	st.h      	r3, (r5, 0xc6)
  aa:	1901      	addi      	r1, r14, 4
  ac:	3001      	movi      	r0, 1
  ae:	e0000000 	bsr      	0x0	// 0 <system_sleep>
  b2:	07b8      	br      	0x22	// 22 <sys_cfgs+0x22>
	...

Disassembly of section .text.wifi_mgr_work:

00000000 <wifi_mgr_work>:
   0:	14d7      	push      	r4-r10, r15
   2:	1423      	subi      	r14, r14, 12
   4:	e4801077 	subi      	r4, r0, 120
   8:	94b4      	ld.w      	r5, (r4, 0x50)
   a:	e9050027 	bez      	r5, 0x58	// 58 <wifi_mgr_work+0x58>
   e:	d864002f 	ld.b      	r3, (r4, 0x2f)
  12:	e4632004 	andi      	r3, r3, 4
  16:	e9030021 	bez      	r3, 0x58	// 58 <wifi_mgr_work+0x58>
  1a:	360c      	movi      	r6, 12
  1c:	6c9b      	mov      	r2, r6
  1e:	3100      	movi      	r1, 0
  20:	6c3b      	mov      	r0, r14
  22:	e0000000 	bsr      	0x0	// 0 <memset>
  26:	ea032b1a 	movi      	r3, 11034
  2a:	dc6e1000 	st.h      	r3, (r14, 0x0)
  2e:	3304      	movi      	r3, 4
  30:	dc6e0002 	st.b      	r3, (r14, 0x2)
  34:	331f      	movi      	r3, 31
  36:	dc6e0008 	st.b      	r3, (r14, 0x8)
  3a:	dcce1002 	st.h      	r6, (r14, 0x4)
  3e:	9564      	ld.w      	r3, (r5, 0x10)
  40:	6c9b      	mov      	r2, r6
  42:	6c7b      	mov      	r1, r14
  44:	6c17      	mov      	r0, r5
  46:	7bcd      	jsr      	r3
  48:	e9200008 	bnez      	r0, 0x58	// 58 <wifi_mgr_work+0x58>
  4c:	d864002f 	ld.b      	r3, (r4, 0x2f)
  50:	c4605c02 	ins      	r3, r0, 2, 2
  54:	dc64002f 	st.b      	r3, (r4, 0x2f)
  58:	e4e40053 	addi      	r7, r4, 84
  5c:	ea880015 	lrw      	r8, 0x0	// b0 <wifi_mgr_work+0xb0>
  60:	ea890015 	lrw      	r9, 0x0	// b4 <wifi_mgr_work+0xb4>
  64:	6c1f      	mov      	r0, r7
  66:	e0000000 	bsr      	0x0	// 0 <skb_list_dequeue>
  6a:	6d83      	mov      	r6, r0
  6c:	e9200019 	bnez      	r0, 0x9e	// 9e <wifi_mgr_work+0x9e>
  70:	d8641063 	ld.h      	r3, (r4, 0xc6)
  74:	eb43ffff 	cmpnei      	r3, 65535
  78:	0806      	bt      	0x84	// 84 <wifi_mgr_work+0x84>
  7a:	e424005f 	addi      	r1, r4, 96
  7e:	6c13      	mov      	r0, r4
  80:	e0000000 	bsr      	0x0	// 0 <wifi_mgr_work>
  84:	d8641063 	ld.h      	r3, (r4, 0xc6)
  88:	eb43ffff 	cmpnei      	r3, 65535
  8c:	0806      	bt      	0x98	// 98 <wifi_mgr_work+0x98>
  8e:	e424006b 	addi      	r1, r4, 108
  92:	6c13      	mov      	r0, r4
  94:	e0000000 	bsr      	0x0	// 0 <wifi_mgr_work>
  98:	3000      	movi      	r0, 0
  9a:	1403      	addi      	r14, r14, 12
  9c:	1497      	pop      	r4-r10, r15
  9e:	96a7      	ld.w      	r5, (r6, 0x1c)
  a0:	8562      	ld.b      	r3, (r5, 0x2)
  a2:	2b02      	subi      	r3, 3
  a4:	74cc      	zextb      	r3, r3
  a6:	3b0a      	cmphsi      	r3, 11
  a8:	0820      	bt      	0xe8	// e8 <wifi_mgr_work+0xe8>
  aa:	d0680883 	ldr.w      	r3, (r8, r3 << 2)
  ae:	780c      	jmp      	r3
	...
  b8:	8568      	ld.b      	r3, (r5, 0x8)
  ba:	e9230017 	bnez      	r3, 0xe8	// e8 <wifi_mgr_work+0xe8>
  be:	a565      	st.b      	r3, (r5, 0x5)
  c0:	3300      	movi      	r3, 0
  c2:	8533      	ld.b      	r1, (r5, 0x13)
  c4:	2b00      	subi      	r3, 1
  c6:	a52f      	st.b      	r1, (r5, 0xf)
  c8:	a569      	st.b      	r3, (r5, 0x9)
  ca:	321a      	movi      	r2, 26
  cc:	a540      	st.b      	r2, (r5, 0x0)
  ce:	9414      	ld.w      	r0, (r4, 0x50)
  d0:	322b      	movi      	r2, 43
  d2:	a541      	st.b      	r2, (r5, 0x1)
  d4:	3210      	movi      	r2, 16
  d6:	a544      	st.b      	r2, (r5, 0x4)
  d8:	6c57      	mov      	r1, r5
  da:	9064      	ld.w      	r3, (r0, 0x10)
  dc:	7bcd      	jsr      	r3
  de:	854f      	ld.b      	r2, (r5, 0xf)
  e0:	8528      	ld.b      	r1, (r5, 0x8)
  e2:	6c27      	mov      	r0, r9
  e4:	e0000000 	bsr      	0x0	// 0 <hgprintf>
  e8:	6c1b      	mov      	r0, r6
  ea:	e0000000 	bsr      	0x0	// 0 <kfree_skb>
  ee:	9414      	ld.w      	r0, (r4, 0x50)
  f0:	3300      	movi      	r3, 0
  f2:	d9802007 	ld.w      	r12, (r0, 0x1c)
  f6:	6c8f      	mov      	r2, r3
  f8:	3104      	movi      	r1, 4
  fa:	7bf1      	jsr      	r12
  fc:	07b4      	br      	0x64	// 64 <wifi_mgr_work+0x64>
  fe:	331a      	movi      	r3, 26
 100:	9414      	ld.w      	r0, (r4, 0x50)
 102:	a560      	st.b      	r3, (r5, 0x0)
 104:	332b      	movi      	r3, 43
 106:	a561      	st.b      	r3, (r5, 0x1)
 108:	8e54      	ld.h      	r2, (r6, 0x28)
 10a:	9064      	ld.w      	r3, (r0, 0x10)
 10c:	6c57      	mov      	r1, r5
 10e:	7bcd      	jsr      	r3
 110:	07ec      	br      	0xe8	// e8 <wifi_mgr_work+0xe8>
 112:	331a      	movi      	r3, 26
 114:	a560      	st.b      	r3, (r5, 0x0)
 116:	332b      	movi      	r3, 43
 118:	a561      	st.b      	r3, (r5, 0x1)
 11a:	3001      	movi      	r0, 1
 11c:	e0000000 	bsr      	0x0	// 0 <skbpool_freesize>
 120:	c5605740 	zext      	r0, r0, 26, 11
 124:	a506      	st.b      	r0, (r5, 0x6)
 126:	4808      	lsri      	r0, r0, 8
 128:	a507      	st.b      	r0, (r5, 0x7)
 12a:	9414      	ld.w      	r0, (r4, 0x50)
 12c:	8e54      	ld.h      	r2, (r6, 0x28)
 12e:	9064      	ld.w      	r3, (r0, 0x10)
 130:	9627      	ld.w      	r1, (r6, 0x1c)
 132:	07ee      	br      	0x10e	// 10e <wifi_mgr_work+0x10e>
 134:	6c5b      	mov      	r1, r6
 136:	6c13      	mov      	r0, r4
 138:	e0000000 	bsr      	0x0	// 0 <wifi_mgr_proc_hgic_cmd>
 13c:	0794      	br      	0x64	// 64 <wifi_mgr_work+0x64>
 13e:	3108      	movi      	r1, 8
 140:	6c1b      	mov      	r0, r6
 142:	e0000000 	bsr      	0x0	// 0 <skb_pull>
 146:	96a7      	ld.w      	r5, (r6, 0x1c)
 148:	e5450013 	addi      	r10, r5, 20
 14c:	8d26      	ld.h      	r1, (r5, 0xc)
 14e:	6c2b      	mov      	r0, r10
 150:	e0000000 	bsr      	0x0	// 0 <libota_check_sum>
 154:	8d67      	ld.h      	r3, (r5, 0xe)
 156:	640e      	cmpne      	r3, r0
 158:	0c04      	bf      	0x160	// 160 <wifi_mgr_work+0x160>
 15a:	3301      	movi      	r3, 1
 15c:	ad69      	st.h      	r3, (r5, 0x12)
 15e:	040b      	br      	0x174	// 174 <wifi_mgr_work+0x174>
 160:	8d66      	ld.h      	r3, (r5, 0xc)
 162:	6cab      	mov      	r2, r10
 164:	9521      	ld.w      	r1, (r5, 0x4)
 166:	9502      	ld.w      	r0, (r5, 0x8)
 168:	e0000000 	bsr      	0x0	// 0 <libota_write_fw_ah>
 16c:	7401      	zexth      	r0, r0
 16e:	e9200014 	bnez      	r0, 0x196	// 196 <wifi_mgr_work+0x196>
 172:	ad09      	st.h      	r0, (r5, 0x12)
 174:	3108      	movi      	r1, 8
 176:	6c1b      	mov      	r0, r6
 178:	e0000000 	bsr      	0x0	// 0 <skb_push>
 17c:	331a      	movi      	r3, 26
 17e:	a060      	st.b      	r3, (r0, 0x0)
 180:	321c      	movi      	r2, 28
 182:	332b      	movi      	r3, 43
 184:	3500      	movi      	r5, 0
 186:	a061      	st.b      	r3, (r0, 0x1)
 188:	a044      	st.b      	r2, (r0, 0x4)
 18a:	a0a5      	st.b      	r5, (r0, 0x5)
 18c:	6c43      	mov      	r1, r0
 18e:	9414      	ld.w      	r0, (r4, 0x50)
 190:	ae54      	st.h      	r2, (r6, 0x28)
 192:	9064      	ld.w      	r3, (r0, 0x10)
 194:	07bd      	br      	0x10e	// 10e <wifi_mgr_work+0x10e>
 196:	3302      	movi      	r3, 2
 198:	07e2      	br      	0x15c	// 15c <wifi_mgr_work+0x15c>

Disassembly of section .text.wifi_mgr_macbus_recv_sigfrm:

00000000 <wifi_mgr_macbus_recv_sigfrm>:
   0:	14d4      	push      	r4-r7, r15
   2:	6d07      	mov      	r4, r1
   4:	6d8b      	mov      	r6, r2
   6:	8447      	ld.b      	r2, (r4, 0x7)
   8:	8466      	ld.b      	r3, (r4, 0x6)
   a:	4248      	lsli      	r2, r2, 8
   c:	81a3      	ld.b      	r5, (r1, 0x3)
   e:	6c8c      	or      	r2, r3
  10:	883f      	ld.h      	r1, (r0, 0x3e)
  12:	6486      	cmpne      	r1, r2
  14:	4da4      	lsri      	r5, r5, 4
  16:	6dc3      	mov      	r7, r0
  18:	2507      	addi      	r5, 8
  1a:	0c07      	bf      	0x28	// 28 <wifi_mgr_macbus_recv_sigfrm+0x28>
  1c:	5962      	addi      	r3, r1, 1
  1e:	648e      	cmpne      	r3, r2
  20:	0c04      	bf      	0x28	// 28 <wifi_mgr_macbus_recv_sigfrm+0x28>
  22:	100d      	lrw      	r0, 0x0	// 54 <wifi_mgr_macbus_recv_sigfrm+0x54>
  24:	e0000000 	bsr      	0x0	// 0 <hgprintf>
  28:	8467      	ld.b      	r3, (r4, 0x7)
  2a:	8446      	ld.b      	r2, (r4, 0x6)
  2c:	4368      	lsli      	r3, r3, 8
  2e:	6cc8      	or      	r3, r2
  30:	af7f      	st.h      	r3, (r7, 0x3e)
  32:	d867002f 	ld.b      	r3, (r7, 0x2f)
  36:	e4632008 	andi      	r3, r3, 8
  3a:	e9030006 	bez      	r3, 0x46	// 46 <wifi_mgr_macbus_recv_sigfrm+0x46>
  3e:	3101      	movi      	r1, 1
  40:	6c13      	mov      	r0, r4
  42:	e0000000 	bsr      	0x0	// 0 <wifi_mgr_macbus_recv_sigfrm>
  46:	1065      	lrw      	r3, 0x0	// 58 <wifi_mgr_macbus_recv_sigfrm+0x58>
  48:	5e55      	subu      	r2, r6, r5
  4a:	5c34      	addu      	r1, r4, r5
  4c:	830c      	ld.b      	r0, (r3, 0xc)
  4e:	e0000000 	bsr      	0x0	// 0 <ieee80211_tx>
  52:	1494      	pop      	r4-r7, r15
	...

Disassembly of section .text.wifi_mgr_macbus_recv:

00000000 <wifi_mgr_macbus_recv>:
   0:	14d5      	push      	r4-r8, r15
   2:	1423      	subi      	r14, r14, 12
   4:	90c1      	ld.w      	r6, (r0, 0x4)
   6:	3300      	movi      	r3, 0
   8:	2b00      	subi      	r3, 1
   a:	dc661063 	st.h      	r3, (r6, 0xc6)
   e:	d866002e 	ld.b      	r3, (r6, 0x2e)
  12:	3b41      	cmpnei      	r3, 1
  14:	6d07      	mov      	r4, r1
  16:	6d4b      	mov      	r5, r2
  18:	0c08      	bf      	0x28	// 28 <wifi_mgr_macbus_recv+0x28>
  1a:	3b40      	cmpnei      	r3, 0
  1c:	0cbe      	bf      	0x198	// 198 <wifi_mgr_macbus_recv+0x198>
  1e:	3b42      	cmpnei      	r3, 2
  20:	0ca8      	bf      	0x170	// 170 <wifi_mgr_macbus_recv+0x170>
  22:	3000      	movi      	r0, 0
  24:	2800      	subi      	r0, 1
  26:	0444      	br      	0xae	// ae <wifi_mgr_macbus_recv+0xae>
  28:	3200      	movi      	r2, 0
  2a:	d0440023 	ldr.b      	r3, (r4, r2 << 0)
  2e:	eb4300ff 	cmpnei      	r3, 255
  32:	0804      	bt      	0x3a	// 3a <wifi_mgr_macbus_recv+0x3a>
  34:	2200      	addi      	r2, 1
  36:	3a43      	cmpnei      	r2, 3
  38:	0bf9      	bt      	0x2a	// 2a <wifi_mgr_macbus_recv+0x2a>
  3a:	6108      	addu      	r4, r2
  3c:	5d69      	subu      	r3, r5, r2
  3e:	8421      	ld.b      	r1, (r4, 0x1)
  40:	8440      	ld.b      	r2, (r4, 0x0)
  42:	4128      	lsli      	r1, r1, 8
  44:	6c48      	or      	r1, r2
  46:	eb411a2b 	cmpnei      	r1, 6699
  4a:	8444      	ld.b      	r2, (r4, 0x4)
  4c:	8405      	ld.b      	r0, (r4, 0x5)
  4e:	0807      	bt      	0x5c	// 5c <wifi_mgr_macbus_recv+0x5c>
  50:	40a8      	lsli      	r5, r0, 8
  52:	6d48      	or      	r5, r2
  54:	e9050004 	bez      	r5, 0x5c	// 5c <wifi_mgr_macbus_recv+0x5c>
  58:	654d      	cmplt      	r3, r5
  5a:	0c0a      	bf      	0x6e	// 6e <wifi_mgr_macbus_recv+0x6e>
  5c:	4008      	lsli      	r0, r0, 8
  5e:	6c80      	or      	r2, r0
  60:	1216      	lrw      	r0, 0x0	// 1b8 <wifi_mgr_macbus_recv+0x1b8>
  62:	e0000000 	bsr      	0x0	// 0 <hgprintf>
  66:	966e      	ld.w      	r3, (r6, 0x38)
  68:	2300      	addi      	r3, 1
  6a:	b66e      	st.w      	r3, (r6, 0x38)
  6c:	07db      	br      	0x22	// 22 <wifi_mgr_macbus_recv+0x22>
  6e:	64d5      	cmplt      	r5, r3
  70:	8442      	ld.b      	r2, (r4, 0x2)
  72:	c4a30c20 	incf      	r5, r3, 0
  76:	3a12      	cmphsi      	r2, 19
  78:	0bf7      	bt      	0x66	// 66 <wifi_mgr_macbus_recv+0x66>
  7a:	3301      	movi      	r3, 1
  7c:	70c8      	lsl      	r3, r2
  7e:	ea023d88 	movi      	r2, 15752
  82:	688c      	and      	r2, r3
  84:	e9220055 	bnez      	r2, 0x12e	// 12e <wifi_mgr_macbus_recv+0x12e>
  88:	3280      	movi      	r2, 128
  8a:	424b      	lsli      	r2, r2, 11
  8c:	688c      	and      	r2, r3
  8e:	e9220012 	bnez      	r2, 0xb2	// b2 <wifi_mgr_macbus_recv+0xb2>
  92:	e4632200 	andi      	r3, r3, 512
  96:	e903ffe8 	bez      	r3, 0x66	// 66 <wifi_mgr_macbus_recv+0x66>
  9a:	1269      	lrw      	r3, 0x0	// 1bc <wifi_mgr_macbus_recv+0x1bc>
  9c:	6c53      	mov      	r1, r4
  9e:	9340      	ld.w      	r2, (r3, 0x0)
  a0:	6c1b      	mov      	r0, r6
  a2:	926c      	ld.w      	r3, (r2, 0x30)
  a4:	2300      	addi      	r3, 1
  a6:	b26c      	st.w      	r3, (r2, 0x30)
  a8:	6c97      	mov      	r2, r5
  aa:	e0000000 	bsr      	0x0	// 0 <wifi_mgr_macbus_recv>
  ae:	1403      	addi      	r14, r14, 12
  b0:	1495      	pop      	r4-r8, r15
  b2:	1263      	lrw      	r3, 0x0	// 1bc <wifi_mgr_macbus_recv+0x1bc>
  b4:	8e3f      	ld.h      	r1, (r6, 0x3e)
  b6:	9340      	ld.w      	r2, (r3, 0x0)
  b8:	926c      	ld.w      	r3, (r2, 0x30)
  ba:	2300      	addi      	r3, 1
  bc:	b26c      	st.w      	r3, (r2, 0x30)
  be:	8447      	ld.b      	r2, (r4, 0x7)
  c0:	8466      	ld.b      	r3, (r4, 0x6)
  c2:	4248      	lsli      	r2, r2, 8
  c4:	6c8c      	or      	r2, r3
  c6:	6486      	cmpne      	r1, r2
  c8:	0c07      	bf      	0xd6	// d6 <wifi_mgr_macbus_recv+0xd6>
  ca:	5962      	addi      	r3, r1, 1
  cc:	648e      	cmpne      	r3, r2
  ce:	0c04      	bf      	0xd6	// d6 <wifi_mgr_macbus_recv+0xd6>
  d0:	111c      	lrw      	r0, 0x0	// 1c0 <wifi_mgr_macbus_recv+0x1c0>
  d2:	e0000000 	bsr      	0x0	// 0 <hgprintf>
  d6:	8467      	ld.b      	r3, (r4, 0x7)
  d8:	8446      	ld.b      	r2, (r4, 0x6)
  da:	4368      	lsli      	r3, r3, 8
  dc:	6cc8      	or      	r3, r2
  de:	3700      	movi      	r7, 0
  e0:	ae7f      	st.h      	r3, (r6, 0x3e)
  e2:	2407      	addi      	r4, 8
  e4:	2d07      	subi      	r5, 8
  e6:	2f0b      	subi      	r7, 12
  e8:	3d08      	cmphsi      	r5, 9
  ea:	0803      	bt      	0xf0	// f0 <wifi_mgr_macbus_recv+0xf0>
  ec:	3000      	movi      	r0, 0
  ee:	07e0      	br      	0xae	// ae <wifi_mgr_macbus_recv+0xae>
  f0:	8441      	ld.b      	r2, (r4, 0x1)
  f2:	8460      	ld.b      	r3, (r4, 0x0)
  f4:	4248      	lsli      	r2, r2, 8
  f6:	6c8c      	or      	r2, r3
  f8:	eb421a2b 	cmpnei      	r2, 6699
  fc:	0bf8      	bt      	0xec	// ec <wifi_mgr_macbus_recv+0xec>
  fe:	8462      	ld.b      	r3, (r4, 0x2)
 100:	3b49      	cmpnei      	r3, 9
 102:	0bf5      	bt      	0xec	// ec <wifi_mgr_macbus_recv+0xec>
 104:	8465      	ld.b      	r3, (r4, 0x5)
 106:	8444      	ld.b      	r2, (r4, 0x4)
 108:	4368      	lsli      	r3, r3, 8
 10a:	6c8c      	or      	r2, r3
 10c:	6c53      	mov      	r1, r4
 10e:	6c1b      	mov      	r0, r6
 110:	e0000000 	bsr      	0x0	// 0 <wifi_mgr_macbus_recv>
 114:	65c2      	cmpne      	r0, r7
 116:	0805      	bt      	0x120	// 120 <wifi_mgr_macbus_recv+0x120>
 118:	3001      	movi      	r0, 1
 11a:	e0000000 	bsr      	0x0	// 0 <os_sleep_ms>
 11e:	07e5      	br      	0xe8	// e8 <wifi_mgr_macbus_recv+0xe8>
 120:	8445      	ld.b      	r2, (r4, 0x5)
 122:	8464      	ld.b      	r3, (r4, 0x4)
 124:	4248      	lsli      	r2, r2, 8
 126:	6c8c      	or      	r2, r3
 128:	6108      	addu      	r4, r2
 12a:	614a      	subu      	r5, r2
 12c:	07de      	br      	0xe8	// e8 <wifi_mgr_macbus_recv+0xe8>
 12e:	e5050003 	addi      	r8, r5, 4
 132:	6c23      	mov      	r0, r8
 134:	e0000000 	bsr      	0x0	// 0 <alloc_skb>
 138:	6dc3      	mov      	r7, r0
 13a:	e9200008 	bnez      	r0, 0x14a	// 14a <wifi_mgr_macbus_recv+0x14a>
 13e:	6c23      	mov      	r0, r8
 140:	e0000000 	bsr      	0x0	// 0 <alloc_heapskb>
 144:	6dc3      	mov      	r7, r0
 146:	e9000035 	bez      	r0, 0x1b0	// 1b0 <wifi_mgr_macbus_recv+0x1b0>
 14a:	6c97      	mov      	r2, r5
 14c:	6c53      	mov      	r1, r4
 14e:	9707      	ld.w      	r0, (r7, 0x1c)
 150:	e0000000 	bsr      	0x0	// 0 <memcpy>
 154:	6c57      	mov      	r1, r5
 156:	6c1f      	mov      	r0, r7
 158:	e0000000 	bsr      	0x0	// 0 <skb_put>
 15c:	6c5f      	mov      	r1, r7
 15e:	e4060053 	addi      	r0, r6, 84
 162:	e0000000 	bsr      	0x0	// 0 <skb_list_queue>
 166:	e4060077 	addi      	r0, r6, 120
 16a:	e0000000 	bsr      	0x0	// 0 <os_run_work>
 16e:	07bf      	br      	0xec	// ec <wifi_mgr_macbus_recv+0xec>
 170:	3206      	movi      	r2, 6
 172:	1035      	lrw      	r1, 0x0	// 1c4 <wifi_mgr_macbus_recv+0x1c4>
 174:	1801      	addi      	r0, r14, 4
 176:	e0000000 	bsr      	0x0	// 0 <memcpy>
 17a:	1071      	lrw      	r3, 0x0	// 1bc <wifi_mgr_macbus_recv+0x1bc>
 17c:	1901      	addi      	r1, r14, 4
 17e:	9340      	ld.w      	r2, (r3, 0x0)
 180:	926c      	ld.w      	r3, (r2, 0x30)
 182:	2300      	addi      	r3, 1
 184:	b26c      	st.w      	r3, (r2, 0x30)
 186:	ea024884 	movi      	r2, 18564
 18a:	1070      	lrw      	r3, 0x0	// 1c8 <wifi_mgr_macbus_recv+0x1c8>
 18c:	830c      	ld.b      	r0, (r3, 0xc)
 18e:	b8a0      	st.w      	r5, (r14, 0x0)
 190:	6cd3      	mov      	r3, r4
 192:	e0000000 	bsr      	0x0	// 0 <ieee80211_tx_ether>
 196:	07ab      	br      	0xec	// ec <wifi_mgr_macbus_recv+0xec>
 198:	1069      	lrw      	r3, 0x0	// 1bc <wifi_mgr_macbus_recv+0x1bc>
 19a:	3a2f      	cmplti      	r2, 16
 19c:	9300      	ld.w      	r0, (r3, 0x0)
 19e:	906c      	ld.w      	r3, (r0, 0x30)
 1a0:	2300      	addi      	r3, 1
 1a2:	b06c      	st.w      	r3, (r0, 0x30)
 1a4:	0b61      	bt      	0x66	// 66 <wifi_mgr_macbus_recv+0x66>
 1a6:	1069      	lrw      	r3, 0x0	// 1c8 <wifi_mgr_macbus_recv+0x1c8>
 1a8:	830c      	ld.b      	r0, (r3, 0xc)
 1aa:	e0000000 	bsr      	0x0	// 0 <ieee80211_tx>
 1ae:	0780      	br      	0xae	// ae <wifi_mgr_macbus_recv+0xae>
 1b0:	3000      	movi      	r0, 0
 1b2:	280b      	subi      	r0, 12
 1b4:	077d      	br      	0xae	// ae <wifi_mgr_macbus_recv+0xae>
	...

Disassembly of section .text.wifi_mgr_check_local_output.isra.3:

00000000 <wifi_mgr_check_local_output.isra.3>:
   0:	14d0      	push      	r15
   2:	806c      	ld.b      	r3, (r0, 0xc)
   4:	4368      	lsli      	r3, r3, 8
   6:	804d      	ld.b      	r2, (r0, 0xd)
   8:	6cc8      	or      	r3, r2
   a:	74cf      	sexth      	r3, r3
   c:	eb430800 	cmpnei      	r3, 2048
  10:	082b      	bt      	0x66	// 66 <wifi_mgr_check_local_output.isra.3+0x66>
  12:	8077      	ld.b      	r3, (r0, 0x17)
  14:	3b51      	cmpnei      	r3, 17
  16:	0c03      	bf      	0x1c	// 1c <wifi_mgr_check_local_output.isra.3+0x1c>
  18:	3b46      	cmpnei      	r3, 6
  1a:	0826      	bt      	0x66	// 66 <wifi_mgr_check_local_output.isra.3+0x66>
  1c:	d8600022 	ld.b      	r3, (r0, 0x22)
  20:	d8400023 	ld.b      	r2, (r0, 0x23)
  24:	4368      	lsli      	r3, r3, 8
  26:	6cc8      	or      	r3, r2
  28:	d8400024 	ld.b      	r2, (r0, 0x24)
  2c:	d8200025 	ld.b      	r1, (r0, 0x25)
  30:	4248      	lsli      	r2, r2, 8
  32:	6c84      	or      	r2, r1
  34:	4370      	lsli      	r3, r3, 16
  36:	6cc8      	or      	r3, r2
  38:	1052      	lrw      	r2, 0x0	// 80 <wifi_mgr_check_local_output.isra.3+0x80>
  3a:	9220      	ld.w      	r1, (r2, 0x0)
  3c:	e44100cf 	addi      	r2, r1, 208
  40:	e401010f 	addi      	r0, r1, 272
  44:	d9822000 	ld.w      	r12, (r2, 0x0)
  48:	670e      	cmpne      	r3, r12
  4a:	0c10      	bf      	0x6a	// 6a <wifi_mgr_check_local_output.isra.3+0x6a>
  4c:	2203      	addi      	r2, 4
  4e:	640a      	cmpne      	r2, r0
  50:	0bfa      	bt      	0x44	// 44 <wifi_mgr_check_local_output.isra.3+0x44>
  52:	3200      	movi      	r2, 0
  54:	4202      	lsli      	r0, r2, 2
  56:	6004      	addu      	r0, r1
  58:	d8002034 	ld.w      	r0, (r0, 0xd0)
  5c:	e920000b 	bnez      	r0, 0x72	// 72 <wifi_mgr_check_local_output.isra.3+0x72>
  60:	2233      	addi      	r2, 52
  62:	d4410883 	str.w      	r3, (r1, r2 << 2)
  66:	3000      	movi      	r0, 0
  68:	1490      	pop      	r15
  6a:	e923fffe 	bnez      	r3, 0x66	// 66 <wifi_mgr_check_local_output.isra.3+0x66>
  6e:	6c8f      	mov      	r2, r3
  70:	07f2      	br      	0x54	// 54 <wifi_mgr_check_local_output.isra.3+0x54>
  72:	2200      	addi      	r2, 1
  74:	3a50      	cmpnei      	r2, 16
  76:	0bef      	bt      	0x54	// 54 <wifi_mgr_check_local_output.isra.3+0x54>
  78:	1003      	lrw      	r0, 0x0	// 84 <wifi_mgr_check_local_output.isra.3+0x84>
  7a:	e0000000 	bsr      	0x0	// 0 <hgprintf>
  7e:	07f4      	br      	0x66	// 6a <wifi_mgr_check_local_output.isra.3+0x6a>
	...

Disassembly of section .text.wifi_dev_send:

00000000 <wifi_dev_send>:
   0:	14d2      	push      	r4-r5, r15
   2:	6c07      	mov      	r0, r1
   4:	6d07      	mov      	r4, r1
   6:	6d4b      	mov      	r5, r2
   8:	e0000000 	bsr      	0x0	// 0 <wifi_dev_send>
   c:	106a      	lrw      	r3, 0x0	// 34 <wifi_dev_send+0x34>
   e:	9360      	ld.w      	r3, (r3, 0x0)
  10:	d863002f 	ld.b      	r3, (r3, 0x2f)
  14:	e4632008 	andi      	r3, r3, 8
  18:	e9030006 	bez      	r3, 0x24	// 24 <wifi_dev_send+0x24>
  1c:	3101      	movi      	r1, 1
  1e:	6c13      	mov      	r0, r4
  20:	e0000000 	bsr      	0x0	// 0 <wifi_dev_send>
  24:	1065      	lrw      	r3, 0x0	// 38 <wifi_dev_send+0x38>
  26:	6c97      	mov      	r2, r5
  28:	6c53      	mov      	r1, r4
  2a:	830c      	ld.b      	r0, (r3, 0xc)
  2c:	e0000000 	bsr      	0x0	// 0 <ieee80211_tx>
  30:	1492      	pop      	r4-r5, r15
	...

Disassembly of section .text.wifi_dev_scatter_send:

00000000 <wifi_dev_scatter_send>:
   0:	14d3      	push      	r4-r6, r15
   2:	9100      	ld.w      	r0, (r1, 0x0)
   4:	6d47      	mov      	r5, r1
   6:	6d8b      	mov      	r6, r2
   8:	e0000000 	bsr      	0x0	// 0 <wifi_dev_scatter_send>
   c:	1164      	lrw      	r3, 0x0	// 9c <wifi_dev_scatter_send+0x9c>
   e:	9360      	ld.w      	r3, (r3, 0x0)
  10:	d863002f 	ld.b      	r3, (r3, 0x2f)
  14:	e4632008 	andi      	r3, r3, 8
  18:	e903003b 	bez      	r3, 0x8e	// 8e <wifi_dev_scatter_send+0x8e>
  1c:	320c      	movi      	r2, 12
  1e:	6c5b      	mov      	r1, r6
  20:	6c17      	mov      	r0, r5
  22:	e0000000 	bsr      	0x0	// 0 <wifi_dev_scatter_send>
  26:	e9000034 	bez      	r0, 0x8e	// 8e <wifi_dev_scatter_send+0x8e>
  2a:	8080      	ld.b      	r4, (r0, 0x0)
  2c:	8061      	ld.b      	r3, (r0, 0x1)
  2e:	4488      	lsli      	r4, r4, 8
  30:	6d0c      	or      	r4, r3
  32:	3217      	movi      	r2, 23
  34:	6c5b      	mov      	r1, r6
  36:	6c17      	mov      	r0, r5
  38:	7513      	sexth      	r4, r4
  3a:	e0000000 	bsr      	0x0	// 0 <wifi_dev_scatter_send>
  3e:	e9000028 	bez      	r0, 0x8e	// 8e <wifi_dev_scatter_send+0x8e>
  42:	eb440800 	cmpnei      	r4, 2048
  46:	0824      	bt      	0x8e	// 8e <wifi_dev_scatter_send+0x8e>
  48:	8060      	ld.b      	r3, (r0, 0x0)
  4a:	3b41      	cmpnei      	r3, 1
  4c:	0821      	bt      	0x8e	// 8e <wifi_dev_scatter_send+0x8e>
  4e:	3222      	movi      	r2, 34
  50:	6c5b      	mov      	r1, r6
  52:	6c17      	mov      	r0, r5
  54:	e0000000 	bsr      	0x0	// 0 <wifi_dev_scatter_send>
  58:	e900001b 	bez      	r0, 0x8e	// 8e <wifi_dev_scatter_send+0x8e>
  5c:	8080      	ld.b      	r4, (r0, 0x0)
  5e:	e46420f7 	andi      	r3, r4, 247
  62:	e9230016 	bnez      	r3, 0x8e	// 8e <wifi_dev_scatter_send+0x8e>
  66:	3228      	movi      	r2, 40
  68:	6c5b      	mov      	r1, r6
  6a:	6c17      	mov      	r0, r5
  6c:	e0000000 	bsr      	0x0	// 0 <wifi_dev_scatter_send>
  70:	e900000f 	bez      	r0, 0x8e	// 8e <wifi_dev_scatter_send+0x8e>
  74:	8060      	ld.b      	r3, (r0, 0x0)
  76:	8041      	ld.b      	r2, (r0, 0x1)
  78:	4368      	lsli      	r3, r3, 8
  7a:	102a      	lrw      	r1, 0x0	// a0 <wifi_dev_scatter_send+0xa0>
  7c:	3c48      	cmpnei      	r4, 8
  7e:	6cc8      	or      	r3, r2
  80:	1049      	lrw      	r2, 0x0	// a4 <wifi_dev_scatter_send+0xa4>
  82:	c4410c20 	incf      	r2, r1, 0
  86:	1009      	lrw      	r0, 0x0	// a8 <wifi_dev_scatter_send+0xa8>
  88:	1029      	lrw      	r1, 0x0	// ac <wifi_dev_scatter_send+0xac>
  8a:	e0000000 	bsr      	0x0	// 0 <hgprintf>
  8e:	1069      	lrw      	r3, 0x0	// b0 <wifi_dev_scatter_send+0xb0>
  90:	6c9b      	mov      	r2, r6
  92:	6c57      	mov      	r1, r5
  94:	830c      	ld.b      	r0, (r3, 0xc)
  96:	e0000000 	bsr      	0x0	// 0 <ieee80211_scatter_tx>
  9a:	1493      	pop      	r4-r6, r15
	...

Disassembly of section .text.wifi_mgr_alloc_resp:

00000000 <wifi_mgr_alloc_resp>:
   0:	14d4      	push      	r4-r7, r15
   2:	6dc3      	mov      	r7, r0
   4:	6d87      	mov      	r6, r1
   6:	6d4b      	mov      	r5, r2
   8:	e9000004 	bez      	r0, 0x10	// 10 <wifi_mgr_alloc_resp+0x10>
   c:	e9a20007 	bhsz      	r2, 0x1a	// 1a <wifi_mgr_alloc_resp+0x1a>
  10:	1052      	lrw      	r2, 0x0	// 58 <wifi_mgr_alloc_resp+0x58>
  12:	31fa      	movi      	r1, 250
  14:	1012      	lrw      	r0, 0x0	// 5c <wifi_mgr_alloc_resp+0x5c>
  16:	e0000000 	bsr      	0x0	// 0 <assert_internal>
  1a:	e405000b 	addi      	r0, r5, 12
  1e:	e0000000 	bsr      	0x0	// 0 <alloc_skb>
  22:	6d03      	mov      	r4, r0
  24:	e9000017 	bez      	r0, 0x52	// 52 <wifi_mgr_alloc_resp+0x52>
  28:	9727      	ld.w      	r1, (r7, 0x1c)
  2a:	320c      	movi      	r2, 12
  2c:	9007      	ld.w      	r0, (r0, 0x1c)
  2e:	e0000000 	bsr      	0x0	// 0 <memcpy>
  32:	310c      	movi      	r1, 12
  34:	6c13      	mov      	r0, r4
  36:	e0000000 	bsr      	0x0	// 0 <skb_put>
  3a:	e906000c 	bez      	r6, 0x52	// 52 <wifi_mgr_alloc_resp+0x52>
  3e:	9407      	ld.w      	r0, (r4, 0x1c)
  40:	6c5b      	mov      	r1, r6
  42:	6c97      	mov      	r2, r5
  44:	200b      	addi      	r0, 12
  46:	e0000000 	bsr      	0x0	// 0 <memcpy>
  4a:	6c57      	mov      	r1, r5
  4c:	6c13      	mov      	r0, r4
  4e:	e0000000 	bsr      	0x0	// 0 <skb_put>
  52:	6c13      	mov      	r0, r4
  54:	1494      	pop      	r4-r7, r15
	...

Disassembly of section .text.wifi_mgr_notify_host:

00000000 <wifi_mgr_notify_host>:
   0:	14d6      	push      	r4-r9, r15
   2:	6dcf      	mov      	r7, r3
   4:	d860002e 	ld.b      	r3, (r0, 0x2e)
   8:	3b41      	cmpnei      	r3, 1
   a:	6d03      	mov      	r4, r0
   c:	6e47      	mov      	r9, r1
   e:	6e0b      	mov      	r8, r2
  10:	083f      	bt      	0x8e	// 8e <wifi_mgr_notify_host+0x8e>
  12:	9074      	ld.w      	r3, (r0, 0x50)
  14:	e903003d 	bez      	r3, 0x8e	// 8e <wifi_mgr_notify_host+0x8e>
  18:	907a      	ld.w      	r3, (r0, 0x68)
  1a:	3b10      	cmphsi      	r3, 17
  1c:	0c06      	bf      	0x28	// 28 <wifi_mgr_notify_host+0x28>
  1e:	205f      	addi      	r0, 96
  20:	e0000000 	bsr      	0x0	// 0 <skb_list_dequeue>
  24:	e0000000 	bsr      	0x0	// 0 <kfree_skb>
  28:	e4a7000b 	addi      	r5, r7, 12
  2c:	6c17      	mov      	r0, r5
  2e:	e0000000 	bsr      	0x0	// 0 <alloc_skb>
  32:	6d83      	mov      	r6, r0
  34:	e900002d 	bez      	r0, 0x8e	// 8e <wifi_mgr_notify_host+0x8e>
  38:	9007      	ld.w      	r0, (r0, 0x1c)
  3a:	321a      	movi      	r2, 26
  3c:	7555      	zexth      	r5, r5
  3e:	a040      	st.b      	r2, (r0, 0x0)
  40:	322b      	movi      	r2, 43
  42:	3300      	movi      	r3, 0
  44:	a041      	st.b      	r2, (r0, 0x1)
  46:	4d48      	lsri      	r2, r5, 8
  48:	a045      	st.b      	r2, (r0, 0x5)
  4a:	a066      	st.b      	r3, (r0, 0x6)
  4c:	a067      	st.b      	r3, (r0, 0x7)
  4e:	3201      	movi      	r2, 1
  50:	8063      	ld.b      	r3, (r0, 0x3)
  52:	c4625c60 	ins      	r3, r2, 3, 0
  56:	a063      	st.b      	r3, (r0, 0x3)
  58:	3304      	movi      	r3, 4
  5a:	a0a4      	st.b      	r5, (r0, 0x4)
  5c:	a062      	st.b      	r3, (r0, 0x2)
  5e:	dd200008 	st.b      	r9, (r0, 0x8)
  62:	e9080009 	bez      	r8, 0x74	// 74 <wifi_mgr_notify_host+0x74>
  66:	e9670007 	blsz      	r7, 0x74	// 74 <wifi_mgr_notify_host+0x74>
  6a:	6c9f      	mov      	r2, r7
  6c:	6c63      	mov      	r1, r8
  6e:	200b      	addi      	r0, 12
  70:	e0000000 	bsr      	0x0	// 0 <memcpy>
  74:	6c57      	mov      	r1, r5
  76:	6c1b      	mov      	r0, r6
  78:	e0000000 	bsr      	0x0	// 0 <skb_put>
  7c:	6c5b      	mov      	r1, r6
  7e:	e404005f 	addi      	r0, r4, 96
  82:	e0000000 	bsr      	0x0	// 0 <skb_list_queue>
  86:	e4040077 	addi      	r0, r4, 120
  8a:	e0000000 	bsr      	0x0	// 0 <os_run_work>
  8e:	3000      	movi      	r0, 0
  90:	1496      	pop      	r4-r9, r15

Disassembly of section .text.wifi_mgr_event_cb:

00000000 <wifi_mgr_event_cb>:
   0:	14d8      	push      	r4-r11, r15
   2:	1429      	subi      	r14, r14, 36
   4:	6dcf      	mov      	r7, r3
   6:	5963      	subi      	r3, r1, 1
   8:	74cd      	zexth      	r3, r3
   a:	eb030020 	cmphsi      	r3, 33
   e:	6e43      	mov      	r9, r0
  10:	6e07      	mov      	r8, r1
  12:	b846      	st.w      	r2, (r14, 0x18)
  14:	1083      	lrw      	r4, 0x0	// 20 <wifi_mgr_event_cb+0x20>
  16:	080f      	bt      	0x34	// 34 <wifi_mgr_event_cb+0x34>
  18:	1043      	lrw      	r2, 0x0	// 24 <wifi_mgr_event_cb+0x24>
  1a:	d0620883 	ldr.w      	r3, (r2, r3 << 2)
  1e:	780c      	jmp      	r3
	...
  28:	3300      	movi      	r3, 0
  2a:	6c8f      	mov      	r2, r3
  2c:	3108      	movi      	r1, 8
  2e:	9400      	ld.w      	r0, (r4, 0x0)
  30:	e0000000 	bsr      	0x0	// 0 <wifi_mgr_event_cb>
  34:	9460      	ld.w      	r3, (r4, 0x0)
  36:	d94e2006 	ld.w      	r10, (r14, 0x18)
  3a:	93b2      	ld.w      	r5, (r3, 0x48)
  3c:	e4c30047 	addi      	r6, r3, 72
  40:	6596      	cmpne      	r5, r6
  42:	0896      	bt      	0x16e	// 16e <wifi_mgr_event_cb+0x16e>
  44:	9460      	ld.w      	r3, (r4, 0x0)
  46:	d9832011 	ld.w      	r12, (r3, 0x44)
  4a:	e90c009e 	bez      	r12, 0x186	// 186 <wifi_mgr_event_cb+0x186>
  4e:	6cdf      	mov      	r3, r7
  50:	9846      	ld.w      	r2, (r14, 0x18)
  52:	6c63      	mov      	r1, r8
  54:	6c27      	mov      	r0, r9
  56:	7bf1      	jsr      	r12
  58:	1409      	addi      	r14, r14, 36
  5a:	1498      	pop      	r4-r11, r15
  5c:	3306      	movi      	r3, 6
  5e:	9846      	ld.w      	r2, (r14, 0x18)
  60:	3109      	movi      	r1, 9
  62:	07e6      	br      	0x2e	// 2e <wifi_mgr_event_cb+0x2e>
  64:	6cdf      	mov      	r3, r7
  66:	9846      	ld.w      	r2, (r14, 0x18)
  68:	310a      	movi      	r1, 10
  6a:	07e2      	br      	0x2e	// 2e <wifi_mgr_event_cb+0x2e>
  6c:	3300      	movi      	r3, 0
  6e:	6c8f      	mov      	r2, r3
  70:	3105      	movi      	r1, 5
  72:	07de      	br      	0x2e	// 2e <wifi_mgr_event_cb+0x2e>
  74:	3300      	movi      	r3, 0
  76:	6c8f      	mov      	r2, r3
  78:	3106      	movi      	r1, 6
  7a:	07da      	br      	0x2e	// 2e <wifi_mgr_event_cb+0x2e>
  7c:	3300      	movi      	r3, 0
  7e:	6c8f      	mov      	r2, r3
  80:	310b      	movi      	r1, 11
  82:	07d6      	br      	0x2e	// 2e <wifi_mgr_event_cb+0x2e>
  84:	3306      	movi      	r3, 6
  86:	9846      	ld.w      	r2, (r14, 0x18)
  88:	310c      	movi      	r1, 12
  8a:	07d2      	br      	0x2e	// 2e <wifi_mgr_event_cb+0x2e>
  8c:	3302      	movi      	r3, 2
  8e:	1a06      	addi      	r2, r14, 24
  90:	3116      	movi      	r1, 22
  92:	07ce      	br      	0x2e	// 2e <wifi_mgr_event_cb+0x2e>
  94:	3206      	movi      	r2, 6
  96:	9826      	ld.w      	r1, (r14, 0x18)
  98:	1807      	addi      	r0, r14, 28
  9a:	94a0      	ld.w      	r5, (r4, 0x0)
  9c:	e0000000 	bsr      	0x0	// 0 <memcpy>
  a0:	c50755e3 	zext      	r3, r7, 15, 8
  a4:	dc6e0023 	st.b      	r3, (r14, 0x23)
  a8:	dcee0022 	st.b      	r7, (r14, 0x22)
  ac:	3308      	movi      	r3, 8
  ae:	1a07      	addi      	r2, r14, 28
  b0:	310d      	movi      	r1, 13
  b2:	6c17      	mov      	r0, r5
  b4:	07be      	br      	0x30	// 30 <wifi_mgr_event_cb+0x30>
  b6:	9400      	ld.w      	r0, (r4, 0x0)
  b8:	d86e0018 	ld.b      	r3, (r14, 0x18)
  bc:	dc6000c4 	st.b      	r3, (r0, 0xc4)
  c0:	3302      	movi      	r3, 2
  c2:	e44000c3 	addi      	r2, r0, 196
  c6:	310e      	movi      	r1, 14
  c8:	07b4      	br      	0x30	// 30 <wifi_mgr_event_cb+0x30>
  ca:	9400      	ld.w      	r0, (r4, 0x0)
  cc:	d86e0018 	ld.b      	r3, (r14, 0x18)
  d0:	dc6000c5 	st.b      	r3, (r0, 0xc5)
  d4:	07f6      	br      	0xc0	// c0 <wifi_mgr_event_cb+0xc0>
  d6:	9400      	ld.w      	r0, (r4, 0x0)
  d8:	3206      	movi      	r2, 6
  da:	6c5f      	mov      	r1, r7
  dc:	2027      	addi      	r0, 40
  de:	e0000000 	bsr      	0x0	// 0 <memcpy>
  e2:	07a9      	br      	0x34	// 34 <wifi_mgr_event_cb+0x34>
  e4:	3306      	movi      	r3, 6
  e6:	9846      	ld.w      	r2, (r14, 0x18)
  e8:	3118      	movi      	r1, 24
  ea:	07a2      	br      	0x2e	// 2e <wifi_mgr_event_cb+0x2e>
  ec:	3304      	movi      	r3, 4
  ee:	9846      	ld.w      	r2, (r14, 0x18)
  f0:	3107      	movi      	r1, 7
  f2:	079e      	br      	0x2e	// 2e <wifi_mgr_event_cb+0x2e>
  f4:	3310      	movi      	r3, 16
  f6:	9846      	ld.w      	r2, (r14, 0x18)
  f8:	311b      	movi      	r1, 27
  fa:	079a      	br      	0x2e	// 2e <wifi_mgr_event_cb+0x2e>
  fc:	9866      	ld.w      	r3, (r14, 0x18)
  fe:	b863      	st.w      	r3, (r14, 0xc)
 100:	93c1      	ld.w      	r6, (r3, 0x4)
 102:	5eb7      	subi      	r5, r6, 6
 104:	9320      	ld.w      	r1, (r3, 0x0)
 106:	8544      	ld.b      	r2, (r5, 0x4)
 108:	b841      	st.w      	r2, (r14, 0x4)
 10a:	8545      	ld.b      	r2, (r5, 0x5)
 10c:	d9a50000 	ld.b      	r13, (r5, 0x0)
 110:	d9850001 	ld.b      	r12, (r5, 0x1)
 114:	b842      	st.w      	r2, (r14, 0x8)
 116:	6c17      	mov      	r0, r5
 118:	3206      	movi      	r2, 6
 11a:	ddae2005 	st.w      	r13, (r14, 0x14)
 11e:	dd8e2004 	st.w      	r12, (r14, 0x10)
 122:	d9650002 	ld.b      	r11, (r5, 0x2)
 126:	d9450003 	ld.b      	r10, (r5, 0x3)
 12a:	e0000000 	bsr      	0x0	// 0 <memcpy>
 12e:	9863      	ld.w      	r3, (r14, 0xc)
 130:	6c97      	mov      	r2, r5
 132:	8368      	ld.b      	r3, (r3, 0x8)
 134:	2305      	addi      	r3, 6
 136:	3113      	movi      	r1, 19
 138:	9400      	ld.w      	r0, (r4, 0x0)
 13a:	e0000000 	bsr      	0x0	// 0 <wifi_mgr_event_cb>
 13e:	5e73      	subi      	r3, r6, 5
 140:	d9ae2005 	ld.w      	r13, (r14, 0x14)
 144:	d98e2004 	ld.w      	r12, (r14, 0x10)
 148:	dda50000 	st.b      	r13, (r5, 0x0)
 14c:	dd830000 	st.b      	r12, (r3, 0x0)
 150:	5e6f      	subi      	r3, r6, 4
 152:	d84e0004 	ld.b      	r2, (r14, 0x4)
 156:	dd630000 	st.b      	r11, (r3, 0x0)
 15a:	5e6b      	subi      	r3, r6, 3
 15c:	dd430000 	st.b      	r10, (r3, 0x0)
 160:	5e67      	subi      	r3, r6, 2
 162:	2e00      	subi      	r6, 1
 164:	a340      	st.b      	r2, (r3, 0x0)
 166:	d86e0008 	ld.b      	r3, (r14, 0x8)
 16a:	a660      	st.b      	r3, (r6, 0x0)
 16c:	0764      	br      	0x34	// 34 <wifi_mgr_event_cb+0x34>
 16e:	d9852005 	ld.w      	r12, (r5, 0x14)
 172:	e90c0008 	bez      	r12, 0x182	// 182 <wifi_mgr_event_cb+0x182>
 176:	b8e0      	st.w      	r7, (r14, 0x0)
 178:	6ceb      	mov      	r3, r10
 17a:	6ca3      	mov      	r2, r8
 17c:	6c67      	mov      	r1, r9
 17e:	6c17      	mov      	r0, r5
 180:	7bf1      	jsr      	r12
 182:	95a0      	ld.w      	r5, (r5, 0x0)
 184:	075e      	br      	0x40	// 40 <wifi_mgr_event_cb+0x40>
 186:	6c33      	mov      	r0, r12
 188:	0768      	br      	0x58	// 58 <wifi_mgr_event_cb+0x58>

Disassembly of section .text.wifi_mgr_buswrite_cmdresp:

00000000 <wifi_mgr_buswrite_cmdresp>:
   0:	14d4      	push      	r4-r7, r15
   2:	6d07      	mov      	r4, r1
   4:	6d4b      	mov      	r5, r2
   6:	9127      	ld.w      	r1, (r1, 0x1c)
   8:	8c54      	ld.h      	r2, (r4, 0x28)
   a:	4a68      	lsri      	r3, r2, 8
   c:	a165      	st.b      	r3, (r1, 0x5)
   e:	331a      	movi      	r3, 26
  10:	a160      	st.b      	r3, (r1, 0x0)
  12:	332b      	movi      	r3, 43
  14:	a161      	st.b      	r3, (r1, 0x1)
  16:	74d5      	zexth      	r3, r5
  18:	a16a      	st.b      	r3, (r1, 0xa)
  1a:	4b68      	lsri      	r3, r3, 8
  1c:	a16b      	st.b      	r3, (r1, 0xb)
  1e:	6d83      	mov      	r6, r0
  20:	9014      	ld.w      	r0, (r0, 0x50)
  22:	a144      	st.b      	r2, (r1, 0x4)
  24:	9064      	ld.w      	r3, (r0, 0x10)
  26:	7bcd      	jsr      	r3
  28:	6dc3      	mov      	r7, r0
  2a:	6c13      	mov      	r0, r4
  2c:	e0000000 	bsr      	0x0	// 0 <kfree_skb>
  30:	9614      	ld.w      	r0, (r6, 0x50)
  32:	3300      	movi      	r3, 0
  34:	d9802007 	ld.w      	r12, (r0, 0x1c)
  38:	6c8f      	mov      	r2, r3
  3a:	3104      	movi      	r1, 4
  3c:	7bf1      	jsr      	r12
  3e:	6c57      	mov      	r1, r5
  40:	1003      	lrw      	r0, 0x0	// 4c <wifi_mgr_buswrite_cmdresp+0x4c>
  42:	e0000000 	bsr      	0x0	// 0 <hgprintf>
  46:	6c1f      	mov      	r0, r7
  48:	1494      	pop      	r4-r7, r15
  4a:	0000      	.short	0x0000
  4c:	0000      	.short	0x0000
	...

Disassembly of section .text.wifi_mgr_buswrite_data:

00000000 <wifi_mgr_buswrite_data>:
   0:	14d8      	push      	r4-r11, r15
   2:	1421      	subi      	r14, r14, 4
   4:	6d4f      	mov      	r5, r3
   6:	9074      	ld.w      	r3, (r0, 0x50)
   8:	6d03      	mov      	r4, r0
   a:	6d87      	mov      	r6, r1
   c:	6dcb      	mov      	r7, r2
   e:	e90300d8 	bez      	r3, 0x1be	// 1be <wifi_mgr_buswrite_data+0x1be>
  12:	e90100d6 	bez      	r1, 0x1be	// 1be <wifi_mgr_buswrite_data+0x1be>
  16:	e4600097 	addi      	r3, r0, 152
  1a:	3100      	movi      	r1, 0
  1c:	2900      	subi      	r1, 1
  1e:	6c0f      	mov      	r0, r3
  20:	b860      	st.w      	r3, (r14, 0x0)
  22:	e0000000 	bsr      	0x0	// 0 <os_mutex_lock>
  26:	d844002e 	ld.b      	r2, (r4, 0x2e)
  2a:	3a41      	cmpnei      	r2, 1
  2c:	0c0b      	bf      	0x42	// 42 <wifi_mgr_buswrite_data+0x42>
  2e:	3a42      	cmpnei      	r2, 2
  30:	0cc4      	bf      	0x1b8	// 1b8 <wifi_mgr_buswrite_data+0x1b8>
  32:	946d      	ld.w      	r3, (r4, 0x34)
  34:	9414      	ld.w      	r0, (r4, 0x50)
  36:	2300      	addi      	r3, 1
  38:	b46d      	st.w      	r3, (r4, 0x34)
  3a:	6c9f      	mov      	r2, r7
  3c:	9064      	ld.w      	r3, (r0, 0x10)
  3e:	6c5b      	mov      	r1, r6
  40:	04b7      	br      	0x1ae	// 1ae <wifi_mgr_buswrite_data+0x1ae>
  42:	1361      	lrw      	r3, 0x0	// 1c4 <wifi_mgr_buswrite_data+0x1c4>
  44:	9360      	ld.w      	r3, (r3, 0x0)
  46:	d8632030 	ld.w      	r3, (r3, 0xc0)
  4a:	e9030093 	bez      	r3, 0x170	// 170 <wifi_mgr_buswrite_data+0x170>
  4e:	d844202f 	ld.w      	r2, (r4, 0xbc)
  52:	e4a52001 	andi      	r5, r5, 1
  56:	e9220004 	bnez      	r2, 0x5e	// 5e <wifi_mgr_buswrite_data+0x5e>
  5a:	e905008b 	bez      	r5, 0x170	// 170 <wifi_mgr_buswrite_data+0x170>
  5e:	74dc      	zextb      	r3, r7
  60:	2702      	addi      	r7, 3
  62:	e5430002 	addi      	r10, r3, 3
  66:	3f80      	bclri      	r7, 0
  68:	3f81      	bclri      	r7, 1
  6a:	c40a282a 	bclri      	r10, r10, 0
  6e:	c42a282a 	bclri      	r10, r10, 1
  72:	e5670007 	addi      	r11, r7, 8
  76:	628e      	subu      	r10, r3
  78:	c44b0021 	addu      	r1, r11, r2
  7c:	d8641020 	ld.h      	r3, (r4, 0x40)
  80:	644c      	cmphs      	r3, r1
  82:	d9042030 	ld.w      	r8, (r4, 0xc0)
  86:	76a8      	zextb      	r10, r10
  88:	080b      	bt      	0x9e	// 9e <wifi_mgr_buswrite_data+0x9e>
  8a:	946d      	ld.w      	r3, (r4, 0x34)
  8c:	9414      	ld.w      	r0, (r4, 0x50)
  8e:	2300      	addi      	r3, 1
  90:	b46d      	st.w      	r3, (r4, 0x34)
  92:	6c63      	mov      	r1, r8
  94:	9064      	ld.w      	r3, (r0, 0x10)
  96:	7bcd      	jsr      	r3
  98:	6c13      	mov      	r0, r4
  9a:	e0000000 	bsr      	0x0	// 0 <wifi_mgr_buswrite_data>
  9e:	d864202f 	ld.w      	r3, (r4, 0xbc)
  a2:	e9230005 	bnez      	r3, 0xac	// ac <wifi_mgr_buswrite_data+0xac>
  a6:	6c13      	mov      	r0, r4
  a8:	e0000000 	bsr      	0x0	// 0 <wifi_mgr_buswrite_data>
  ac:	d864202f 	ld.w      	r3, (r4, 0xbc)
  b0:	d9242030 	ld.w      	r9, (r4, 0xc0)
  b4:	624c      	addu      	r9, r3
  b6:	331a      	movi      	r3, 26
  b8:	dc690000 	st.b      	r3, (r9, 0x0)
  bc:	332b      	movi      	r3, 43
  be:	dc690001 	st.b      	r3, (r9, 0x1)
  c2:	3309      	movi      	r3, 9
  c4:	dc690002 	st.b      	r3, (r9, 0x2)
  c8:	3201      	movi      	r2, 1
  ca:	d8690003 	ld.b      	r3, (r9, 0x3)
  ce:	c4625c60 	ins      	r3, r2, 3, 0
  d2:	c46a5c64 	ins      	r3, r10, 7, 4
  d6:	dc690003 	st.b      	r3, (r9, 0x3)
  da:	8c7e      	ld.h      	r3, (r4, 0x3c)
  dc:	76ed      	zexth      	r11, r11
  de:	dd690004 	st.b      	r11, (r9, 0x4)
  e2:	608c      	addu      	r2, r3
  e4:	c50b484b 	lsri      	r11, r11, 8
  e8:	dd690005 	st.b      	r11, (r9, 0x5)
  ec:	ac5e      	st.h      	r2, (r4, 0x3c)
  ee:	dc690006 	st.b      	r3, (r9, 0x6)
  f2:	4b68      	lsri      	r3, r3, 8
  f4:	dc690007 	st.b      	r3, (r9, 0x7)
  f8:	6c9f      	mov      	r2, r7
  fa:	6c5b      	mov      	r1, r6
  fc:	e4090007 	addi      	r0, r9, 8
 100:	e0000000 	bsr      	0x0	// 0 <hw_memcpy>
 104:	d8480005 	ld.b      	r2, (r8, 0x5)
 108:	d8680004 	ld.b      	r3, (r8, 0x4)
 10c:	4248      	lsli      	r2, r2, 8
 10e:	6c8c      	or      	r2, r3
 110:	d8690005 	ld.b      	r3, (r9, 0x5)
 114:	d8290004 	ld.b      	r1, (r9, 0x4)
 118:	4368      	lsli      	r3, r3, 8
 11a:	6cc4      	or      	r3, r1
 11c:	608c      	addu      	r2, r3
 11e:	7489      	zexth      	r2, r2
 120:	dc480004 	st.b      	r2, (r8, 0x4)
 124:	4a48      	lsri      	r2, r2, 8
 126:	dc480005 	st.b      	r2, (r8, 0x5)
 12a:	d8490005 	ld.b      	r2, (r9, 0x5)
 12e:	d8690004 	ld.b      	r3, (r9, 0x4)
 132:	4248      	lsli      	r2, r2, 8
 134:	6c8c      	or      	r2, r3
 136:	d864202f 	ld.w      	r3, (r4, 0xbc)
 13a:	608c      	addu      	r2, r3
 13c:	dc44202f 	st.w      	r2, (r4, 0xbc)
 140:	e9050006 	bez      	r5, 0x14c	// 14c <wifi_mgr_buswrite_data+0x14c>
 144:	d8641020 	ld.h      	r3, (r4, 0x40)
 148:	64ca      	cmpne      	r2, r3
 14a:	0835      	bt      	0x1b4	// 1b4 <wifi_mgr_buswrite_data+0x1b4>
 14c:	946d      	ld.w      	r3, (r4, 0x34)
 14e:	9414      	ld.w      	r0, (r4, 0x50)
 150:	2300      	addi      	r3, 1
 152:	b46d      	st.w      	r3, (r4, 0x34)
 154:	d8242030 	ld.w      	r1, (r4, 0xc0)
 158:	9064      	ld.w      	r3, (r0, 0x10)
 15a:	7bcd      	jsr      	r3
 15c:	3300      	movi      	r3, 0
 15e:	6d43      	mov      	r5, r0
 160:	dc64202f 	st.w      	r3, (r4, 0xbc)
 164:	9800      	ld.w      	r0, (r14, 0x0)
 166:	e0000000 	bsr      	0x0	// 0 <os_mutex_unlock>
 16a:	6c17      	mov      	r0, r5
 16c:	1401      	addi      	r14, r14, 4
 16e:	1498      	pop      	r4-r11, r15
 170:	5e3f      	subi      	r1, r6, 8
 172:	331a      	movi      	r3, 26
 174:	a160      	st.b      	r3, (r1, 0x0)
 176:	332b      	movi      	r3, 43
 178:	a161      	st.b      	r3, (r1, 0x1)
 17a:	5f5e      	addi      	r2, r7, 8
 17c:	3309      	movi      	r3, 9
 17e:	a162      	st.b      	r3, (r1, 0x2)
 180:	74c9      	zexth      	r3, r2
 182:	a164      	st.b      	r3, (r1, 0x4)
 184:	4b68      	lsri      	r3, r3, 8
 186:	a165      	st.b      	r3, (r1, 0x5)
 188:	8c7e      	ld.h      	r3, (r4, 0x3c)
 18a:	5b02      	addi      	r0, r3, 1
 18c:	ac1e      	st.h      	r0, (r4, 0x3c)
 18e:	a166      	st.b      	r3, (r1, 0x6)
 190:	4b68      	lsri      	r3, r3, 8
 192:	a167      	st.b      	r3, (r1, 0x7)
 194:	3001      	movi      	r0, 1
 196:	8163      	ld.b      	r3, (r1, 0x3)
 198:	c4605c60 	ins      	r3, r0, 3, 0
 19c:	3000      	movi      	r0, 0
 19e:	c4605c64 	ins      	r3, r0, 7, 4
 1a2:	a163      	st.b      	r3, (r1, 0x3)
 1a4:	9414      	ld.w      	r0, (r4, 0x50)
 1a6:	946d      	ld.w      	r3, (r4, 0x34)
 1a8:	2300      	addi      	r3, 1
 1aa:	b46d      	st.w      	r3, (r4, 0x34)
 1ac:	9064      	ld.w      	r3, (r0, 0x10)
 1ae:	7bcd      	jsr      	r3
 1b0:	6d43      	mov      	r5, r0
 1b2:	07d9      	br      	0x164	// 164 <wifi_mgr_buswrite_data+0x164>
 1b4:	3500      	movi      	r5, 0
 1b6:	07d7      	br      	0x164	// 164 <wifi_mgr_buswrite_data+0x164>
 1b8:	260d      	addi      	r6, 14
 1ba:	2f0d      	subi      	r7, 14
 1bc:	073b      	br      	0x32	// 32 <wifi_mgr_buswrite_data+0x32>
 1be:	3500      	movi      	r5, 0
 1c0:	2d00      	subi      	r5, 1
 1c2:	07d4      	br      	0x16a	// 16a <wifi_mgr_buswrite_data+0x16a>
 1c4:	00000000 	.long	0x00000000

Disassembly of section .text.wifi_mgr_send_wifimgr_data:

00000000 <wifi_mgr_send_wifimgr_data>:
   0:	14d7      	push      	r4-r10, r15
   2:	764d      	zexth      	r9, r3
   4:	e4c90017 	addi      	r6, r9, 24
   8:	7599      	zexth      	r6, r6
   a:	6d43      	mov      	r5, r0
   c:	6c1b      	mov      	r0, r6
   e:	6e87      	mov      	r10, r1
  10:	6e0b      	mov      	r8, r2
  12:	6dcf      	mov      	r7, r3
  14:	e0000000 	bsr      	0x0	// 0 <_os_malloc>
  18:	6d03      	mov      	r4, r0
  1a:	e9000032 	bez      	r0, 0x7e	// 7e <wifi_mgr_send_wifimgr_data+0x7e>
  1e:	6c57      	mov      	r1, r5
  20:	3206      	movi      	r2, 6
  22:	e0000000 	bsr      	0x0	// 0 <memcpy>
  26:	1078      	lrw      	r3, 0x0	// 84 <wifi_mgr_send_wifimgr_data+0x84>
  28:	3206      	movi      	r2, 6
  2a:	9320      	ld.w      	r1, (r3, 0x0)
  2c:	2127      	addi      	r1, 40
  2e:	5c08      	addu      	r0, r4, r2
  30:	e0000000 	bsr      	0x0	// 0 <memcpy>
  34:	3348      	movi      	r3, 72
  36:	a46c      	st.b      	r3, (r4, 0xc)
  38:	e4a4000d 	addi      	r5, r4, 14
  3c:	3355      	movi      	r3, 85
  3e:	a46d      	st.b      	r3, (r4, 0xd)
  40:	320a      	movi      	r2, 10
  42:	3100      	movi      	r1, 0
  44:	6c17      	mov      	r0, r5
  46:	e0000000 	bsr      	0x0	// 0 <memset>
  4a:	ea034855 	movi      	r3, 18517
  4e:	ac67      	st.h      	r3, (r4, 0xe)
  50:	dd440014 	st.b      	r10, (r4, 0x14)
  54:	dd241008 	st.h      	r9, (r4, 0x10)
  58:	e908000a 	bez      	r8, 0x6c	// 6c <wifi_mgr_send_wifimgr_data+0x6c>
  5c:	e9070008 	bez      	r7, 0x6c	// 6c <wifi_mgr_send_wifimgr_data+0x6c>
  60:	6c9f      	mov      	r2, r7
  62:	6c63      	mov      	r1, r8
  64:	e4040017 	addi      	r0, r4, 24
  68:	e0000000 	bsr      	0x0	// 0 <hw_memcpy>
  6c:	1067      	lrw      	r3, 0x0	// 88 <wifi_mgr_send_wifimgr_data+0x88>
  6e:	6c9b      	mov      	r2, r6
  70:	6c53      	mov      	r1, r4
  72:	830c      	ld.b      	r0, (r3, 0xc)
  74:	e0000000 	bsr      	0x0	// 0 <ieee80211_tx>
  78:	6c13      	mov      	r0, r4
  7a:	e0000000 	bsr      	0x0	// 0 <_os_free>
  7e:	3000      	movi      	r0, 0
  80:	1497      	pop      	r4-r10, r15
	...

Disassembly of section .text.wifi_mgr_print2host:

00000000 <wifi_mgr_print2host>:
   0:	14d5      	push      	r4-r8, r15
   2:	6dc3      	mov      	r7, r0
   4:	6d87      	mov      	r6, r1
   6:	e901000d 	bez      	r1, 0x20	// 20 <wifi_mgr_print2host+0x20>
   a:	1161      	lrw      	r3, 0x0	// 8c <wifi_mgr_print2host+0x8c>
   c:	9360      	ld.w      	r3, (r3, 0x0)
   e:	d8631063 	ld.h      	r3, (r3, 0xc6)
  12:	eb43ffff 	cmpnei      	r3, 65535
  16:	0c06      	bf      	0x22	// 22 <wifi_mgr_print2host+0x22>
  18:	3100      	movi      	r1, 0
  1a:	6c1b      	mov      	r0, r6
  1c:	e0000000 	bsr      	0x0	// 0 <hgprintf_out>
  20:	1495      	pop      	r4-r8, r15
  22:	6c07      	mov      	r0, r1
  24:	e0000000 	bsr      	0x0	// 0 <strlen>
  28:	e480000c 	addi      	r4, r0, 13
  2c:	e5000000 	addi      	r8, r0, 1
  30:	6c13      	mov      	r0, r4
  32:	e0000000 	bsr      	0x0	// 0 <alloc_skb>
  36:	6d43      	mov      	r5, r0
  38:	e900fff4 	bez      	r0, 0x20	// 20 <wifi_mgr_print2host+0x20>
  3c:	9007      	ld.w      	r0, (r0, 0x1c)
  3e:	331a      	movi      	r3, 26
  40:	a060      	st.b      	r3, (r0, 0x0)
  42:	332b      	movi      	r3, 43
  44:	a061      	st.b      	r3, (r0, 0x1)
  46:	74d1      	zexth      	r3, r4
  48:	a064      	st.b      	r3, (r0, 0x4)
  4a:	4b68      	lsri      	r3, r3, 8
  4c:	a065      	st.b      	r3, (r0, 0x5)
  4e:	3201      	movi      	r2, 1
  50:	8063      	ld.b      	r3, (r0, 0x3)
  52:	c4625c60 	ins      	r3, r2, 3, 0
  56:	a063      	st.b      	r3, (r0, 0x3)
  58:	3304      	movi      	r3, 4
  5a:	3100      	movi      	r1, 0
  5c:	a062      	st.b      	r3, (r0, 0x2)
  5e:	3312      	movi      	r3, 18
  60:	a068      	st.b      	r3, (r0, 0x8)
  62:	6ca3      	mov      	r2, r8
  64:	a026      	st.b      	r1, (r0, 0x6)
  66:	a027      	st.b      	r1, (r0, 0x7)
  68:	6c5b      	mov      	r1, r6
  6a:	200b      	addi      	r0, 12
  6c:	e0000000 	bsr      	0x0	// 0 <memcpy>
  70:	6c53      	mov      	r1, r4
  72:	6c17      	mov      	r0, r5
  74:	e0000000 	bsr      	0x0	// 0 <skb_put>
  78:	6c57      	mov      	r1, r5
  7a:	e407005f 	addi      	r0, r7, 96
  7e:	e0000000 	bsr      	0x0	// 0 <skb_list_queue>
  82:	e4070077 	addi      	r0, r7, 120
  86:	e0000000 	bsr      	0x0	// 0 <os_run_work>
  8a:	07cb      	br      	0x20	// 24 <wifi_mgr_print2host+0x24>
  8c:	0000      	.short	0x0000
	...

Disassembly of section .text.wifi_mgr_init:

00000000 <wifi_mgr_init>:
   0:	14d6      	push      	r4-r9, r15
   2:	6dc3      	mov      	r7, r0
   4:	3088      	movi      	r0, 136
   6:	4001      	lsli      	r0, r0, 1
   8:	6d47      	mov      	r5, r1
   a:	6d8b      	mov      	r6, r2
   c:	6e4f      	mov      	r9, r3
   e:	d90e2007 	ld.w      	r8, (r14, 0x1c)
  12:	e0000000 	bsr      	0x0	// 0 <_os_zalloc>
  16:	1197      	lrw      	r4, 0x0	// f0 <wifi_mgr_init+0xf0>
  18:	b400      	st.w      	r0, (r4, 0x0)
  1a:	e9200008 	bnez      	r0, 0x2a	// 2a <wifi_mgr_init+0x2a>
  1e:	1156      	lrw      	r2, 0x0	// f4 <wifi_mgr_init+0xf4>
  20:	ea0103e9 	movi      	r1, 1001
  24:	1115      	lrw      	r0, 0x0	// f8 <assert_internal+0xf8>
  26:	e0000000 	bsr      	0x0	// 0 <assert_internal>
  2a:	9400      	ld.w      	r0, (r4, 0x0)
  2c:	d860002f 	ld.b      	r3, (r0, 0x2f)
  30:	dd002033 	st.w      	r8, (r0, 0xcc)
  34:	ea080001 	movi      	r8, 1
  38:	dca0002e 	st.b      	r5, (r0, 0x2e)
  3c:	c4685c02 	ins      	r3, r8, 2, 2
  40:	11af      	lrw      	r5, 0x0	// fc <wifi_mgr_init+0xfc>
  42:	dc60002f 	st.b      	r3, (r0, 0x2f)
  46:	d8655066 	ld.hs      	r3, (r5, 0xcc)
  4a:	d8451062 	ld.h      	r2, (r5, 0xc4)
  4e:	c4438043 	divs      	r3, r3, r2
  52:	dc601063 	st.h      	r3, (r0, 0xc6)
  56:	320a      	movi      	r2, 10
  58:	116a      	lrw      	r3, 0x0	// 100 <wifi_mgr_init+0x100>
  5a:	dc602025 	st.w      	r3, (r0, 0x94)
  5e:	d8600084 	ld.b      	r3, (r0, 0x84)
  62:	c4625c83 	ins      	r3, r2, 7, 3
  66:	dc600084 	st.b      	r3, (r0, 0x84)
  6a:	e4600047 	addi      	r3, r0, 72
  6e:	b072      	st.w      	r3, (r0, 0x48)
  70:	b073      	st.w      	r3, (r0, 0x4c)
  72:	dd202032 	st.w      	r9, (r0, 0xc8)
  76:	dcc01020 	st.h      	r6, (r0, 0x40)
  7a:	2053      	addi      	r0, 84
  7c:	e0000000 	bsr      	0x0	// 0 <skb_list_init>
  80:	9400      	ld.w      	r0, (r4, 0x0)
  82:	205f      	addi      	r0, 96
  84:	e0000000 	bsr      	0x0	// 0 <skb_list_init>
  88:	9400      	ld.w      	r0, (r4, 0x0)
  8a:	206b      	addi      	r0, 108
  8c:	e0000000 	bsr      	0x0	// 0 <skb_list_init>
  90:	9400      	ld.w      	r0, (r4, 0x0)
  92:	2097      	addi      	r0, 152
  94:	e0000000 	bsr      	0x0	// 0 <os_mutex_init>
  98:	9460      	ld.w      	r3, (r4, 0x0)
  9a:	6ca3      	mov      	r2, r8
  9c:	e403009f 	addi      	r0, r3, 160
  a0:	1039      	lrw      	r1, 0x0	// 104 <os_timer_init+0x104>
  a2:	e0000000 	bsr      	0x0	// 0 <os_timer_init>
  a6:	9400      	ld.w      	r0, (r4, 0x0)
  a8:	d8251062 	ld.h      	r1, (r5, 0xc4)
  ac:	209f      	addi      	r0, 160
  ae:	e0000000 	bsr      	0x0	// 0 <os_timer_start>
  b2:	94a0      	ld.w      	r5, (r4, 0x0)
  b4:	1015      	lrw      	r0, 0x0	// 108 <wifi_mgr_init+0x108>
  b6:	e0000000 	bsr      	0x0	// 0 <ieee80211_event_cb>
  ba:	b511      	st.w      	r0, (r5, 0x44)
  bc:	94a0      	ld.w      	r5, (r4, 0x0)
  be:	6cdb      	mov      	r3, r6
  c0:	6c97      	mov      	r2, r5
  c2:	1033      	lrw      	r1, 0x0	// 10c <wifi_mgr_init+0x10c>
  c4:	6c1f      	mov      	r0, r7
  c6:	e0000000 	bsr      	0x0	// 0 <mac_bus_attach>
  ca:	b514      	st.w      	r0, (r5, 0x50)
  cc:	1011      	lrw      	r0, 0x0	// 110 <wifi_mgr_init+0x110>
  ce:	e0000000 	bsr      	0x0	// 0 <ieee80211_register_pkthook>
  d2:	9480      	ld.w      	r4, (r4, 0x0)
  d4:	d8041020 	ld.h      	r0, (r4, 0x40)
  d8:	e9000006 	bez      	r0, 0xe4	// e4 <wifi_mgr_init+0xe4>
  dc:	e0000000 	bsr      	0x0	// 0 <_os_malloc>
  e0:	dc042030 	st.w      	r0, (r4, 0xc0)
  e4:	106c      	lrw      	r3, 0x0	// 114 <wifi_mgr_init+0x114>
  e6:	104d      	lrw      	r2, 0x0	// 118 <wifi_mgr_init+0x118>
  e8:	3000      	movi      	r0, 0
  ea:	b340      	st.w      	r2, (r3, 0x0)
  ec:	1496      	pop      	r4-r9, r15
	...

Disassembly of section .text.wifi_mgr_add_submod:

00000000 <wifi_mgr_add_submod>:
   0:	1066      	lrw      	r3, 0x0	// 18 <wifi_mgr_add_submod+0x18>
   2:	9360      	ld.w      	r3, (r3, 0x0)
   4:	b062      	st.w      	r3, (r0, 0x8)
   6:	9352      	ld.w      	r2, (r3, 0x48)
   8:	b201      	st.w      	r0, (r2, 0x4)
   a:	b040      	st.w      	r2, (r0, 0x0)
   c:	e4430047 	addi      	r2, r3, 72
  10:	b041      	st.w      	r2, (r0, 0x4)
  12:	b312      	st.w      	r0, (r3, 0x48)
  14:	783c      	jmp      	r15
  16:	0000      	.short	0x0000
  18:	0000      	.short	0x0000
	...

Disassembly of section .text.sys_wifi_register:

00000000 <sys_wifi_register>:
   0:	14d1      	push      	r4, r15
   2:	108d      	lrw      	r4, 0x0	// 34 <sys_wifi_register+0x34>
   4:	9420      	ld.w      	r1, (r4, 0x0)
   6:	e9010015 	bez      	r1, 0x30	// 30 <sys_wifi_register+0x30>
   a:	d861002f 	ld.b      	r3, (r1, 0x2f)
   e:	e4632002 	andi      	r3, r3, 2
  12:	e923000f 	bnez      	r3, 0x30	// 30 <sys_wifi_register+0x30>
  16:	1069      	lrw      	r3, 0x0	// 38 <sys_wifi_register+0x38>
  18:	3055      	movi      	r0, 85
  1a:	b162      	st.w      	r3, (r1, 0x8)
  1c:	e0000000 	bsr      	0x0	// 0 <dev_register>
  20:	9460      	ld.w      	r3, (r4, 0x0)
  22:	3101      	movi      	r1, 1
  24:	d843002f 	ld.b      	r2, (r3, 0x2f)
  28:	c4415c01 	ins      	r2, r1, 1, 1
  2c:	dc43002f 	st.b      	r2, (r3, 0x2f)
  30:	9400      	ld.w      	r0, (r4, 0x0)
  32:	1491      	pop      	r4, r15
	...

Disassembly of section .text.sys_wifi_recv:

00000000 <sys_wifi_recv>:
   0:	14d5      	push      	r4-r8, r15
   2:	6d03      	mov      	r4, r0
   4:	6d47      	mov      	r5, r1
   6:	6dcb      	mov      	r7, r2
   8:	6d8f      	mov      	r6, r3
   a:	e9200008 	bnez      	r0, 0x1a	// 1a <sys_wifi_recv+0x1a>
   e:	121a      	lrw      	r0, 0x0	// 174 <hgprintf+0x174>
  10:	e0000000 	bsr      	0x0	// 0 <hgprintf>
  14:	3000      	movi      	r0, 0
  16:	2800      	subi      	r0, 1
  18:	0420      	br      	0x58	// 58 <sys_wifi_recv+0x58>
  1a:	c0006023 	mfcr      	r3, cr<0, 0>
  1e:	c0807020 	psrclr      	ie
  22:	e4632040 	andi      	r3, r3, 64
  26:	d9002008 	ld.w      	r8, (r0, 0x20)
  2a:	e9030004 	bez      	r3, 0x32	// 32 <sys_wifi_recv+0x32>
  2e:	c0807420 	psrset      	ie
  32:	e9280014 	bnez      	r8, 0x5a	// 5a <sys_wifi_recv+0x5a>
  36:	d864002f 	ld.b      	r3, (r4, 0x2f)
  3a:	e4632008 	andi      	r3, r3, 8
  3e:	e9230057 	bnez      	r3, 0xec	// ec <sys_wifi_recv+0xec>
  42:	d8641063 	ld.h      	r3, (r4, 0xc6)
  46:	eb43ffff 	cmpnei      	r3, 65535
  4a:	0856      	bt      	0xf6	// f6 <sys_wifi_recv+0xf6>
  4c:	6cdb      	mov      	r3, r6
  4e:	6c9f      	mov      	r2, r7
  50:	6c57      	mov      	r1, r5
  52:	6c13      	mov      	r0, r4
  54:	e0000000 	bsr      	0x0	// 0 <sys_wifi_recv>
  58:	1495      	pop      	r4-r8, r15
  5a:	8560      	ld.b      	r3, (r5, 0x0)
  5c:	e4632001 	andi      	r3, r3, 1
  60:	e9230017 	bnez      	r3, 0x8e	// 8e <sys_wifi_recv+0x8e>
  64:	1265      	lrw      	r3, 0x0	// 178 <sys_wifi_recv+0x178>
  66:	9320      	ld.w      	r1, (r3, 0x0)
  68:	d8611063 	ld.h      	r3, (r1, 0xc6)
  6c:	eb43ffff 	cmpnei      	r3, 65535
  70:	080f      	bt      	0x8e	// 8e <sys_wifi_recv+0x8e>
  72:	856c      	ld.b      	r3, (r5, 0xc)
  74:	4368      	lsli      	r3, r3, 8
  76:	854d      	ld.b      	r2, (r5, 0xd)
  78:	6cc8      	or      	r3, r2
  7a:	eb430806 	cmpnei      	r3, 2054
  7e:	080e      	bt      	0x9a	// 9a <sys_wifi_recv+0x9a>
  80:	3206      	movi      	r2, 6
  82:	2127      	addi      	r1, 40
  84:	6c17      	mov      	r0, r5
  86:	e0000000 	bsr      	0x0	// 0 <memcmp>
  8a:	e920ffd6 	bnez      	r0, 0x36	// 36 <sys_wifi_recv+0x36>
  8e:	9469      	ld.w      	r3, (r4, 0x24)
  90:	6c9f      	mov      	r2, r7
  92:	6c57      	mov      	r1, r5
  94:	6c13      	mov      	r0, r4
  96:	7be1      	jsr      	r8
  98:	07cf      	br      	0x36	// 36 <sys_wifi_recv+0x36>
  9a:	eb430800 	cmpnei      	r3, 2048
  9e:	0bcc      	bt      	0x36	// 36 <sys_wifi_recv+0x36>
  a0:	8577      	ld.b      	r3, (r5, 0x17)
  a2:	3b51      	cmpnei      	r3, 17
  a4:	0c03      	bf      	0xaa	// aa <sys_wifi_recv+0xaa>
  a6:	3b46      	cmpnei      	r3, 6
  a8:	0bc7      	bt      	0x36	// 36 <sys_wifi_recv+0x36>
  aa:	d8650024 	ld.b      	r3, (r5, 0x24)
  ae:	d8450025 	ld.b      	r2, (r5, 0x25)
  b2:	4368      	lsli      	r3, r3, 8
  b4:	6cc8      	or      	r3, r2
  b6:	d8450022 	ld.b      	r2, (r5, 0x22)
  ba:	4248      	lsli      	r2, r2, 8
  bc:	d8050023 	ld.b      	r0, (r5, 0x23)
  c0:	6c80      	or      	r2, r0
  c2:	4370      	lsli      	r3, r3, 16
  c4:	6cc8      	or      	r3, r2
  c6:	e44100cf 	addi      	r2, r1, 208
  ca:	e421010f 	addi      	r1, r1, 272
  ce:	9200      	ld.w      	r0, (r2, 0x0)
  d0:	640e      	cmpne      	r3, r0
  d2:	0c05      	bf      	0xdc	// dc <sys_wifi_recv+0xdc>
  d4:	2203      	addi      	r2, 4
  d6:	6486      	cmpne      	r1, r2
  d8:	0bfb      	bt      	0xce	// ce <sys_wifi_recv+0xce>
  da:	07ae      	br      	0x36	// 36 <sys_wifi_recv+0x36>
  dc:	e903ffad 	bez      	r3, 0x36	// 36 <sys_wifi_recv+0x36>
  e0:	9469      	ld.w      	r3, (r4, 0x24)
  e2:	6c9f      	mov      	r2, r7
  e4:	6c57      	mov      	r1, r5
  e6:	6c13      	mov      	r0, r4
  e8:	7be1      	jsr      	r8
  ea:	0442      	br      	0x16e	// 16e <sys_wifi_recv+0x16e>
  ec:	3100      	movi      	r1, 0
  ee:	6c17      	mov      	r0, r5
  f0:	e0000000 	bsr      	0x0	// 0 <sys_wifi_recv>
  f4:	07a7      	br      	0x42	// 42 <sys_wifi_recv+0x42>
  f6:	d864002e 	ld.b      	r3, (r4, 0x2e)
  fa:	3b41      	cmpnei      	r3, 1
  fc:	0b8c      	bt      	0x14	// 14 <sys_wifi_recv+0x14>
  fe:	947d      	ld.w      	r3, (r4, 0x74)
 100:	3b10      	cmphsi      	r3, 17
 102:	0c07      	bf      	0x110	// 110 <sys_wifi_recv+0x110>
 104:	e404006b 	addi      	r0, r4, 108
 108:	e0000000 	bsr      	0x0	// 0 <skb_list_dequeue>
 10c:	e0000000 	bsr      	0x0	// 0 <kfree_skb>
 110:	5f1e      	addi      	r0, r7, 8
 112:	e0000000 	bsr      	0x0	// 0 <alloc_rx_skb>
 116:	6e03      	mov      	r8, r0
 118:	e900ff7e 	bez      	r0, 0x14	// 14 <sys_wifi_recv+0x14>
 11c:	3108      	movi      	r1, 8
 11e:	e0000000 	bsr      	0x0	// 0 <skb_put>
 122:	331a      	movi      	r3, 26
 124:	a060      	st.b      	r3, (r0, 0x0)
 126:	332b      	movi      	r3, 43
 128:	a061      	st.b      	r3, (r0, 0x1)
 12a:	3309      	movi      	r3, 9
 12c:	a062      	st.b      	r3, (r0, 0x2)
 12e:	74dd      	zexth      	r3, r7
 130:	a064      	st.b      	r3, (r0, 0x4)
 132:	4b68      	lsri      	r3, r3, 8
 134:	a065      	st.b      	r3, (r0, 0x5)
 136:	8c7e      	ld.h      	r3, (r4, 0x3c)
 138:	5b42      	addi      	r2, r3, 1
 13a:	ac5e      	st.h      	r2, (r4, 0x3c)
 13c:	a066      	st.b      	r3, (r0, 0x6)
 13e:	4b68      	lsri      	r3, r3, 8
 140:	a067      	st.b      	r3, (r0, 0x7)
 142:	3201      	movi      	r2, 1
 144:	8063      	ld.b      	r3, (r0, 0x3)
 146:	c4625c60 	ins      	r3, r2, 3, 0
 14a:	3600      	movi      	r6, 0
 14c:	c4665c64 	ins      	r3, r6, 7, 4
 150:	a063      	st.b      	r3, (r0, 0x3)
 152:	6c9f      	mov      	r2, r7
 154:	6c57      	mov      	r1, r5
 156:	6c23      	mov      	r0, r8
 158:	e0000000 	bsr      	0x0	// 0 <skb_put_data>
 15c:	6c63      	mov      	r1, r8
 15e:	e404006b 	addi      	r0, r4, 108
 162:	e0000000 	bsr      	0x0	// 0 <skb_list_queue>
 166:	e4040077 	addi      	r0, r4, 120
 16a:	e0000000 	bsr      	0x0	// 0 <os_run_work>
 16e:	3000      	movi      	r0, 0
 170:	0774      	br      	0x58	// 58 <sys_wifi_recv+0x58>
	...

Disassembly of section .text.host_event_new:

00000000 <host_event_new>:
   0:	14d0      	push      	r15
   2:	6ccb      	mov      	r3, r2
   4:	1046      	lrw      	r2, 0x0	// 1c <host_event_new+0x1c>
   6:	6f03      	mov      	r12, r0
   8:	9200      	ld.w      	r0, (r2, 0x0)
   a:	e9000006 	bez      	r0, 0x16	// 16 <host_event_new+0x16>
   e:	6c87      	mov      	r2, r1
  10:	7470      	zextb      	r1, r12
  12:	e0000000 	bsr      	0x0	// 0 <host_event_new>
  16:	3000      	movi      	r0, 0
  18:	1490      	pop      	r15
  1a:	0000      	.short	0x0000
  1c:	00000000 	.long	0x00000000

Disassembly of section .text.host_data_send:

00000000 <host_data_send>:
   0:	14d0      	push      	r15
   2:	106d      	lrw      	r3, 0x0	// 34 <host_data_send+0x34>
   4:	6c87      	mov      	r2, r1
   6:	d9832000 	ld.w      	r12, (r3, 0x0)
   a:	e90c0012 	bez      	r12, 0x2e	// 2e <host_data_send+0x2e>
   e:	d86c101e 	ld.h      	r3, (r12, 0x3c)
  12:	5b22      	addi      	r1, r3, 1
  14:	dc2c101e 	st.h      	r1, (r12, 0x3c)
  18:	a066      	st.b      	r3, (r0, 0x6)
  1a:	4b68      	lsri      	r3, r3, 8
  1c:	a067      	st.b      	r3, (r0, 0x7)
  1e:	d86c2014 	ld.w      	r3, (r12, 0x50)
  22:	6c43      	mov      	r1, r0
  24:	d9832004 	ld.w      	r12, (r3, 0x10)
  28:	6c0f      	mov      	r0, r3
  2a:	7bf1      	jsr      	r12
  2c:	1490      	pop      	r15
  2e:	3000      	movi      	r0, 0
  30:	2800      	subi      	r0, 1
  32:	07fd      	br      	0x2c	// 2c <host_data_send+0x2c>
  34:	00000000 	.long	0x00000000

Disassembly of section .text.host_cmd_resp:

00000000 <host_cmd_resp>:
   0:	14d5      	push      	r4-r8, r15
   2:	6d0f      	mov      	r4, r3
   4:	331a      	movi      	r3, 26
   6:	a460      	st.b      	r3, (r4, 0x0)
   8:	332b      	movi      	r3, 43
   a:	7401      	zexth      	r0, r0
   c:	a461      	st.b      	r3, (r4, 0x1)
   e:	330c      	movi      	r3, 12
  10:	a464      	st.b      	r3, (r4, 0x4)
  12:	a40a      	st.b      	r0, (r4, 0xa)
  14:	3300      	movi      	r3, 0
  16:	4808      	lsri      	r0, r0, 8
  18:	6d87      	mov      	r6, r1
  1a:	6e0b      	mov      	r8, r2
  1c:	a465      	st.b      	r3, (r4, 0x5)
  1e:	a40b      	st.b      	r0, (r4, 0xb)
  20:	e901002b 	bez      	r1, 0x76	// 76 <host_cmd_resp+0x76>
  24:	e9020029 	bez      	r2, 0x76	// 76 <host_cmd_resp+0x76>
  28:	e4a2000b 	addi      	r5, r2, 12
  2c:	6c17      	mov      	r0, r5
  2e:	e0000000 	bsr      	0x0	// 0 <_os_malloc>
  32:	6dc3      	mov      	r7, r0
  34:	e900002a 	bez      	r0, 0x88	// 88 <host_cmd_resp+0x88>
  38:	74d5      	zexth      	r3, r5
  3a:	a464      	st.b      	r3, (r4, 0x4)
  3c:	4b68      	lsri      	r3, r3, 8
  3e:	a465      	st.b      	r3, (r4, 0x5)
  40:	6c53      	mov      	r1, r4
  42:	320c      	movi      	r2, 12
  44:	e0000000 	bsr      	0x0	// 0 <memcpy>
  48:	6ca3      	mov      	r2, r8
  4a:	6c5b      	mov      	r1, r6
  4c:	e407000b 	addi      	r0, r7, 12
  50:	e0000000 	bsr      	0x0	// 0 <memcpy>
  54:	106f      	lrw      	r3, 0x0	// 90 <host_cmd_resp+0x90>
  56:	8444      	ld.b      	r2, (r4, 0x4)
  58:	9360      	ld.w      	r3, (r3, 0x0)
  5a:	6c5f      	mov      	r1, r7
  5c:	9314      	ld.w      	r0, (r3, 0x50)
  5e:	8465      	ld.b      	r3, (r4, 0x5)
  60:	4368      	lsli      	r3, r3, 8
  62:	d9802004 	ld.w      	r12, (r0, 0x10)
  66:	6c8c      	or      	r2, r3
  68:	7bf1      	jsr      	r12
  6a:	6d03      	mov      	r4, r0
  6c:	6c1f      	mov      	r0, r7
  6e:	e0000000 	bsr      	0x0	// 0 <_os_free>
  72:	6c13      	mov      	r0, r4
  74:	1495      	pop      	r4-r8, r15
  76:	1067      	lrw      	r3, 0x0	// 90 <host_cmd_resp+0x90>
  78:	6c53      	mov      	r1, r4
  7a:	9360      	ld.w      	r3, (r3, 0x0)
  7c:	320c      	movi      	r2, 12
  7e:	9314      	ld.w      	r0, (r3, 0x50)
  80:	9064      	ld.w      	r3, (r0, 0x10)
  82:	7bcd      	jsr      	r3
  84:	6d03      	mov      	r4, r0
  86:	07f6      	br      	0x72	// 72 <host_cmd_resp+0x72>
  88:	3400      	movi      	r4, 0
  8a:	2c0b      	subi      	r4, 12
  8c:	07f3      	br      	0x72	// 72 <host_cmd_resp+0x72>
  8e:	0000      	.short	0x0000
  90:	00000000 	.long	0x00000000

Disassembly of section .text.wifi_mgr_status:

00000000 <wifi_mgr_status>:
   0:	14d3      	push      	r4-r6, r15
   2:	1421      	subi      	r14, r14, 4
   4:	109d      	lrw      	r4, 0x0	// 78 <wifi_mgr_status+0x78>
   6:	101e      	lrw      	r0, 0x0	// 7c <wifi_mgr_status+0x7c>
   8:	3500      	movi      	r5, 0
   a:	9460      	ld.w      	r3, (r4, 0x0)
   c:	10dd      	lrw      	r6, 0x0	// 80 <wifi_mgr_status+0x80>
   e:	d823002f 	ld.b      	r1, (r3, 0x2f)
  12:	c4215422 	zext      	r2, r1, 1, 1
  16:	d8631063 	ld.h      	r3, (r3, 0xc6)
  1a:	e4212001 	andi      	r1, r1, 1
  1e:	e0000000 	bsr      	0x0	// 0 <hgprintf>
  22:	9400      	ld.w      	r0, (r4, 0x0)
  24:	906e      	ld.w      	r3, (r0, 0x38)
  26:	904d      	ld.w      	r2, (r0, 0x34)
  28:	902c      	ld.w      	r1, (r0, 0x30)
  2a:	d8001020 	ld.h      	r0, (r0, 0x40)
  2e:	b800      	st.w      	r0, (r14, 0x0)
  30:	1015      	lrw      	r0, 0x0	// 84 <wifi_mgr_status+0x84>
  32:	e0000000 	bsr      	0x0	// 0 <hgprintf>
  36:	9420      	ld.w      	r1, (r4, 0x0)
  38:	1014      	lrw      	r0, 0x0	// 88 <wifi_mgr_status+0x88>
  3a:	915a      	ld.w      	r2, (r1, 0x68)
  3c:	917d      	ld.w      	r3, (r1, 0x74)
  3e:	9137      	ld.w      	r1, (r1, 0x5c)
  40:	e0000000 	bsr      	0x0	// 0 <hgprintf>
  44:	1012      	lrw      	r0, 0x0	// 8c <hgprintf+0x8c>
  46:	e0000000 	bsr      	0x0	// 0 <hgprintf>
  4a:	e4450033 	addi      	r2, r5, 52
  4e:	9460      	ld.w      	r3, (r4, 0x0)
  50:	d0430881 	ldr.w      	r1, (r3, r2 << 2)
  54:	7485      	zexth      	r2, r1
  56:	6c1b      	mov      	r0, r6
  58:	4930      	lsri      	r1, r1, 16
  5a:	2500      	addi      	r5, 1
  5c:	e0000000 	bsr      	0x0	// 0 <hgprintf>
  60:	3d50      	cmpnei      	r5, 16
  62:	0bf4      	bt      	0x4a	// 4a <wifi_mgr_status+0x4a>
  64:	100b      	lrw      	r0, 0x0	// 90 <wifi_mgr_status+0x90>
  66:	e0000000 	bsr      	0x0	// 0 <hgprintf>
  6a:	9460      	ld.w      	r3, (r4, 0x0)
  6c:	3200      	movi      	r2, 0
  6e:	b34c      	st.w      	r2, (r3, 0x30)
  70:	b34d      	st.w      	r2, (r3, 0x34)
  72:	b34e      	st.w      	r2, (r3, 0x38)
  74:	1401      	addi      	r14, r14, 4
  76:	1493      	pop      	r4-r6, r15
	...
