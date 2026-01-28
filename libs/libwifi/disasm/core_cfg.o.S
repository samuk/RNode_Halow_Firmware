
libwifi/o/core_cfg.o:     file format elf32-csky-little


Disassembly of section .text.ieee80211_conf_cmd_text:

00000000 <ieee80211_conf_cmd_text>:
   0:	eb000021 	cmphsi      	r0, 34
   4:	0805      	bt      	0xe	// e <ieee80211_conf_cmd_text+0xe>
   6:	1064      	lrw      	r3, 0x0	// 14 <ieee80211_conf_cmd_text+0x14>
   8:	d0030880 	ldr.w      	r0, (r3, r0 << 2)
   c:	783c      	jmp      	r15
   e:	1003      	lrw      	r0, 0x0	// 18 <ieee80211_conf_cmd_text+0x18>
  10:	07fe      	br      	0xc	// c <ieee80211_conf_cmd_text+0xc>
	...

Disassembly of section .text.ieee80211_conf_stabr_table:

00000000 <ieee80211_conf_stabr_table>:
   0:	14d0      	push      	r15
   2:	1422      	subi      	r14, r14, 8
   4:	b821      	st.w      	r1, (r14, 0x4)
   6:	b840      	st.w      	r2, (r14, 0x0)
   8:	e0000000 	bsr      	0x0	// 0 <ieee80211_iface_get>
   c:	e9000008 	bez      	r0, 0x1c	// 1c <ieee80211_conf_stabr_table+0x1c>
  10:	9840      	ld.w      	r2, (r14, 0x0)
  12:	9821      	ld.w      	r1, (r14, 0x4)
  14:	e0000000 	bsr      	0x0	// 0 <ieee80211_stabr_init>
  18:	1402      	addi      	r14, r14, 8
  1a:	1490      	pop      	r15
  1c:	3000      	movi      	r0, 0
  1e:	2812      	subi      	r0, 19
  20:	07fc      	br      	0x18	// 18 <ieee80211_conf_stabr_table+0x18>

Disassembly of section .text.ieee80211_conf_set_bssbw:

00000000 <ieee80211_conf_set_bssbw>:
   0:	14d1      	push      	r4, r15
   2:	6d07      	mov      	r4, r1
   4:	e0000000 	bsr      	0x0	// 0 <ieee80211_iface_get>
   8:	e9000009 	bez      	r0, 0x1a	// 1a <ieee80211_conf_set_bssbw+0x1a>
   c:	d9802020 	ld.w      	r12, (r0, 0x80)
  10:	3300      	movi      	r3, 0
  12:	6c93      	mov      	r2, r4
  14:	3108      	movi      	r1, 8
  16:	7bf1      	jsr      	r12
  18:	1491      	pop      	r4, r15
  1a:	3000      	movi      	r0, 0
  1c:	2812      	subi      	r0, 19
  1e:	07fd      	br      	0x18	// 18 <ieee80211_conf_set_bssbw+0x18>

Disassembly of section .text.ieee80211_conf_get_bssbw:

00000000 <ieee80211_conf_get_bssbw>:
   0:	14d0      	push      	r15
   2:	e0000000 	bsr      	0x0	// 0 <ieee80211_iface_get>
   6:	e9000006 	bez      	r0, 0x12	// 12 <ieee80211_conf_get_bssbw+0x12>
   a:	d860202b 	ld.w      	r3, (r0, 0xac)
   e:	8302      	ld.b      	r0, (r3, 0x2)
  10:	1490      	pop      	r15
  12:	3000      	movi      	r0, 0
  14:	2812      	subi      	r0, 19
  16:	07fd      	br      	0x10	// 10 <ieee80211_conf_get_bssbw+0x10>

Disassembly of section .text.ieee80211_conf_set_chanlist:

00000000 <ieee80211_conf_set_chanlist>:
   0:	14d2      	push      	r4-r5, r15
   2:	6d07      	mov      	r4, r1
   4:	6d4b      	mov      	r5, r2
   6:	e0000000 	bsr      	0x0	// 0 <ieee80211_iface_get>
   a:	e9000009 	bez      	r0, 0x1c	// 1c <ieee80211_conf_set_chanlist+0x1c>
   e:	d9802020 	ld.w      	r12, (r0, 0x80)
  12:	6cd7      	mov      	r3, r5
  14:	6c93      	mov      	r2, r4
  16:	3109      	movi      	r1, 9
  18:	7bf1      	jsr      	r12
  1a:	1492      	pop      	r4-r5, r15
  1c:	3000      	movi      	r0, 0
  1e:	2812      	subi      	r0, 19
  20:	07fd      	br      	0x1a	// 1a <ieee80211_conf_set_chanlist+0x1a>

Disassembly of section .text.ieee80211_conf_set_ssid:

00000000 <ieee80211_conf_set_ssid>:
   0:	14d1      	push      	r4, r15
   2:	6d07      	mov      	r4, r1
   4:	e0000000 	bsr      	0x0	// 0 <ieee80211_iface_get>
   8:	e9000009 	bez      	r0, 0x1a	// 1a <ieee80211_conf_set_ssid+0x1a>
   c:	3300      	movi      	r3, 0
   e:	d9802020 	ld.w      	r12, (r0, 0x80)
  12:	6c93      	mov      	r2, r4
  14:	6c4f      	mov      	r1, r3
  16:	7bf1      	jsr      	r12
  18:	1491      	pop      	r4, r15
  1a:	3000      	movi      	r0, 0
  1c:	2812      	subi      	r0, 19
  1e:	07fd      	br      	0x18	// 18 <ieee80211_conf_set_ssid+0x18>

Disassembly of section .text.ieee80211_conf_get_ssid:

00000000 <ieee80211_conf_get_ssid>:
   0:	14d1      	push      	r4, r15
   2:	6d07      	mov      	r4, r1
   4:	e0000000 	bsr      	0x0	// 0 <ieee80211_iface_get>
   8:	e900000a 	bez      	r0, 0x1c	// 1c <ieee80211_conf_get_ssid+0x1c>
   c:	e4200112 	addi      	r1, r0, 275
  10:	3220      	movi      	r2, 32
  12:	6c13      	mov      	r0, r4
  14:	e0000000 	bsr      	0x0	// 0 <strncpy>
  18:	3000      	movi      	r0, 0
  1a:	1491      	pop      	r4, r15
  1c:	3000      	movi      	r0, 0
  1e:	2812      	subi      	r0, 19
  20:	07fd      	br      	0x1a	// 1a <ieee80211_conf_get_ssid+0x1a>

Disassembly of section .text.ieee80211_conf_set_keymgmt:

00000000 <ieee80211_conf_set_keymgmt>:
   0:	14d1      	push      	r4, r15
   2:	6d07      	mov      	r4, r1
   4:	e0000000 	bsr      	0x0	// 0 <ieee80211_iface_get>
   8:	e9000009 	bez      	r0, 0x1a	// 1a <ieee80211_conf_set_keymgmt+0x1a>
   c:	d9802020 	ld.w      	r12, (r0, 0x80)
  10:	3300      	movi      	r3, 0
  12:	6c93      	mov      	r2, r4
  14:	3102      	movi      	r1, 2
  16:	7bf1      	jsr      	r12
  18:	1491      	pop      	r4, r15
  1a:	3000      	movi      	r0, 0
  1c:	2812      	subi      	r0, 19
  1e:	07fd      	br      	0x18	// 18 <ieee80211_conf_set_keymgmt+0x18>

Disassembly of section .text.ieee80211_conf_get_keymgmt:

00000000 <ieee80211_conf_get_keymgmt>:
   0:	14d0      	push      	r15
   2:	e0000000 	bsr      	0x0	// 0 <ieee80211_iface_get>
   6:	e9000005 	bez      	r0, 0x10	// 10 <ieee80211_conf_get_keymgmt+0x10>
   a:	d800203f 	ld.w      	r0, (r0, 0xfc)
   e:	1490      	pop      	r15
  10:	3000      	movi      	r0, 0
  12:	2812      	subi      	r0, 19
  14:	07fd      	br      	0xe	// e <ieee80211_conf_get_keymgmt+0xe>

Disassembly of section .text.ieee80211_conf_set_passwd:

00000000 <ieee80211_conf_set_passwd>:
   0:	14d1      	push      	r4, r15
   2:	6d07      	mov      	r4, r1
   4:	e0000000 	bsr      	0x0	// 0 <ieee80211_iface_get>
   8:	e9000009 	bez      	r0, 0x1a	// 1a <ieee80211_conf_set_passwd+0x1a>
   c:	d9802020 	ld.w      	r12, (r0, 0x80)
  10:	3300      	movi      	r3, 0
  12:	6c93      	mov      	r2, r4
  14:	3122      	movi      	r1, 34
  16:	7bf1      	jsr      	r12
  18:	1491      	pop      	r4, r15
  1a:	3000      	movi      	r0, 0
  1c:	2812      	subi      	r0, 19
  1e:	07fd      	br      	0x18	// 18 <ieee80211_conf_set_passwd+0x18>

Disassembly of section .text.ieee80211_conf_set_psk:

00000000 <ieee80211_conf_set_psk>:
   0:	14d1      	push      	r4, r15
   2:	6d07      	mov      	r4, r1
   4:	e0000000 	bsr      	0x0	// 0 <ieee80211_iface_get>
   8:	e9000009 	bez      	r0, 0x1a	// 1a <ieee80211_conf_set_psk+0x1a>
   c:	d9802020 	ld.w      	r12, (r0, 0x80)
  10:	3300      	movi      	r3, 0
  12:	6c93      	mov      	r2, r4
  14:	3103      	movi      	r1, 3
  16:	7bf1      	jsr      	r12
  18:	1491      	pop      	r4, r15
  1a:	3000      	movi      	r0, 0
  1c:	2812      	subi      	r0, 19
  1e:	07fd      	br      	0x18	// 18 <ieee80211_conf_set_psk+0x18>

Disassembly of section .text.ieee80211_conf_get_psk:

00000000 <ieee80211_conf_get_psk>:
   0:	14d1      	push      	r4, r15
   2:	6d07      	mov      	r4, r1
   4:	e0000000 	bsr      	0x0	// 0 <ieee80211_iface_get>
   8:	e900000a 	bez      	r0, 0x1c	// 1c <ieee80211_conf_get_psk+0x1c>
   c:	e4200133 	addi      	r1, r0, 308
  10:	3220      	movi      	r2, 32
  12:	6c13      	mov      	r0, r4
  14:	e0000000 	bsr      	0x0	// 0 <memcpy>
  18:	3000      	movi      	r0, 0
  1a:	1491      	pop      	r4, r15
  1c:	3000      	movi      	r0, 0
  1e:	2812      	subi      	r0, 19
  20:	07fd      	br      	0x1a	// 1a <ieee80211_conf_get_psk+0x1a>

Disassembly of section .text.ieee80211_conf_set_beacon_int:

00000000 <ieee80211_conf_set_beacon_int>:
   0:	14d1      	push      	r4, r15
   2:	6d07      	mov      	r4, r1
   4:	e0000000 	bsr      	0x0	// 0 <ieee80211_iface_get>
   8:	e9000009 	bez      	r0, 0x1a	// 1a <ieee80211_conf_set_beacon_int+0x1a>
   c:	d9802020 	ld.w      	r12, (r0, 0x80)
  10:	3300      	movi      	r3, 0
  12:	6c93      	mov      	r2, r4
  14:	3105      	movi      	r1, 5
  16:	7bf1      	jsr      	r12
  18:	1491      	pop      	r4, r15
  1a:	3000      	movi      	r0, 0
  1c:	2812      	subi      	r0, 19
  1e:	07fd      	br      	0x18	// 18 <ieee80211_conf_set_beacon_int+0x18>

Disassembly of section .text.ieee80211_conf_set_dtim_int:

00000000 <ieee80211_conf_set_dtim_int>:
   0:	14d1      	push      	r4, r15
   2:	6d07      	mov      	r4, r1
   4:	e0000000 	bsr      	0x0	// 0 <ieee80211_iface_get>
   8:	e9000009 	bez      	r0, 0x1a	// 1a <ieee80211_conf_set_dtim_int+0x1a>
   c:	d9802020 	ld.w      	r12, (r0, 0x80)
  10:	3300      	movi      	r3, 0
  12:	6c93      	mov      	r2, r4
  14:	3106      	movi      	r1, 6
  16:	7bf1      	jsr      	r12
  18:	1491      	pop      	r4, r15
  1a:	3000      	movi      	r0, 0
  1c:	2812      	subi      	r0, 19
  1e:	07fd      	br      	0x18	// 18 <ieee80211_conf_set_dtim_int+0x18>

Disassembly of section .text.ieee80211_conf_set_bssid:

00000000 <ieee80211_conf_set_bssid>:
   0:	14d1      	push      	r4, r15
   2:	6d07      	mov      	r4, r1
   4:	e0000000 	bsr      	0x0	// 0 <ieee80211_iface_get>
   8:	e9000009 	bez      	r0, 0x1a	// 1a <ieee80211_conf_set_bssid+0x1a>
   c:	d9802020 	ld.w      	r12, (r0, 0x80)
  10:	3300      	movi      	r3, 0
  12:	6c93      	mov      	r2, r4
  14:	3101      	movi      	r1, 1
  16:	7bf1      	jsr      	r12
  18:	1491      	pop      	r4, r15
  1a:	3000      	movi      	r0, 0
  1c:	2812      	subi      	r0, 19
  1e:	07fd      	br      	0x18	// 18 <ieee80211_conf_set_bssid+0x18>

Disassembly of section .text.ieee80211_conf_get_bssid:

00000000 <ieee80211_conf_get_bssid>:
   0:	14d2      	push      	r4-r5, r15
   2:	6d47      	mov      	r5, r1
   4:	e0000000 	bsr      	0x0	// 0 <ieee80211_iface_get>
   8:	e9000013 	bez      	r0, 0x2e	// 2e <ieee80211_conf_get_bssid+0x2e>
   c:	8880      	ld.h      	r4, (r0, 0x0)
   e:	e4842001 	andi      	r4, r4, 1
  12:	e904000b 	bez      	r4, 0x28	// 28 <ieee80211_conf_get_bssid+0x28>
  16:	d8202063 	ld.w      	r1, (r0, 0x18c)
  1a:	3206      	movi      	r2, 6
  1c:	21ec      	addi      	r1, 237
  1e:	6c17      	mov      	r0, r5
  20:	e0000000 	bsr      	0x0	// 0 <memcpy>
  24:	3000      	movi      	r0, 0
  26:	1492      	pop      	r4-r5, r15
  28:	3206      	movi      	r2, 6
  2a:	5828      	addu      	r1, r0, r2
  2c:	07f9      	br      	0x1e	// 1e <ieee80211_conf_get_bssid+0x1e>
  2e:	3000      	movi      	r0, 0
  30:	2812      	subi      	r0, 19
  32:	07fa      	br      	0x26	// 26 <ieee80211_conf_get_bssid+0x26>

Disassembly of section .text.ieee80211_conf_set_channel:

00000000 <ieee80211_conf_set_channel>:
   0:	14d1      	push      	r4, r15
   2:	6d07      	mov      	r4, r1
   4:	e0000000 	bsr      	0x0	// 0 <ieee80211_iface_get>
   8:	e9000009 	bez      	r0, 0x1a	// 1a <ieee80211_conf_set_channel+0x1a>
   c:	d9802020 	ld.w      	r12, (r0, 0x80)
  10:	3300      	movi      	r3, 0
  12:	6c93      	mov      	r2, r4
  14:	3104      	movi      	r1, 4
  16:	7bf1      	jsr      	r12
  18:	1491      	pop      	r4, r15
  1a:	3000      	movi      	r0, 0
  1c:	2812      	subi      	r0, 19
  1e:	07fd      	br      	0x18	// 18 <ieee80211_conf_set_channel+0x18>

Disassembly of section .text.ieee80211_conf_get_channel:

00000000 <ieee80211_conf_get_channel>:
   0:	14d0      	push      	r15
   2:	e0000000 	bsr      	0x0	// 0 <ieee80211_iface_get>
   6:	e9000004 	bez      	r0, 0xe	// e <ieee80211_conf_get_channel+0xe>
   a:	8013      	ld.b      	r0, (r0, 0x13)
   c:	1490      	pop      	r15
   e:	3000      	movi      	r0, 0
  10:	2812      	subi      	r0, 19
  12:	07fd      	br      	0xc	// c <ieee80211_conf_get_channel+0xc>

Disassembly of section .text.ieee80211_conf_set_mac:

00000000 <ieee80211_conf_set_mac>:
   0:	14d1      	push      	r4, r15
   2:	6d07      	mov      	r4, r1
   4:	e0000000 	bsr      	0x0	// 0 <ieee80211_iface_get>
   8:	e9000009 	bez      	r0, 0x1a	// 1a <ieee80211_conf_set_mac+0x1a>
   c:	d9802020 	ld.w      	r12, (r0, 0x80)
  10:	3300      	movi      	r3, 0
  12:	6c93      	mov      	r2, r4
  14:	3107      	movi      	r1, 7
  16:	7bf1      	jsr      	r12
  18:	1491      	pop      	r4, r15
  1a:	3000      	movi      	r0, 0
  1c:	2812      	subi      	r0, 19
  1e:	07fd      	br      	0x18	// 18 <ieee80211_conf_set_mac+0x18>

Disassembly of section .text.ieee80211_conf_get_mac:

00000000 <ieee80211_conf_get_mac>:
   0:	14d1      	push      	r4, r15
   2:	6d07      	mov      	r4, r1
   4:	e0000000 	bsr      	0x0	// 0 <ieee80211_iface_get>
   8:	e9000007 	bez      	r0, 0x16	// 16 <ieee80211_conf_get_mac+0x16>
   c:	3206      	movi      	r2, 6
   e:	5828      	addu      	r1, r0, r2
  10:	6c13      	mov      	r0, r4
  12:	e0000000 	bsr      	0x0	// 0 <memcpy>
  16:	3000      	movi      	r0, 0
  18:	2812      	subi      	r0, 19
  1a:	1491      	pop      	r4, r15

Disassembly of section .text.ieee80211_conf_set_bss_max_idle:

00000000 <ieee80211_conf_set_bss_max_idle>:
   0:	14d1      	push      	r4, r15
   2:	6d07      	mov      	r4, r1
   4:	e0000000 	bsr      	0x0	// 0 <ieee80211_iface_get>
   8:	e9000009 	bez      	r0, 0x1a	// 1a <ieee80211_conf_set_bss_max_idle+0x1a>
   c:	d9802020 	ld.w      	r12, (r0, 0x80)
  10:	3300      	movi      	r3, 0
  12:	6c93      	mov      	r2, r4
  14:	310b      	movi      	r1, 11
  16:	7bf1      	jsr      	r12
  18:	1491      	pop      	r4, r15
  1a:	3000      	movi      	r0, 0
  1c:	2812      	subi      	r0, 19
  1e:	07fd      	br      	0x18	// 18 <ieee80211_conf_set_bss_max_idle+0x18>

Disassembly of section .text.ieee80211_conf_set_use4addr:

00000000 <ieee80211_conf_set_use4addr>:
   0:	14d1      	push      	r4, r15
   2:	6d07      	mov      	r4, r1
   4:	e0000000 	bsr      	0x0	// 0 <ieee80211_iface_get>
   8:	e900000b 	bez      	r0, 0x1e	// 1e <ieee80211_conf_set_use4addr+0x1e>
   c:	8860      	ld.h      	r3, (r0, 0x0)
   e:	e4632004 	andi      	r3, r3, 4
  12:	e9230006 	bnez      	r3, 0x1e	// 1e <ieee80211_conf_set_use4addr+0x1e>
  16:	8065      	ld.b      	r3, (r0, 0x5)
  18:	c4645c03 	ins      	r3, r4, 3, 3
  1c:	a065      	st.b      	r3, (r0, 0x5)
  1e:	3000      	movi      	r0, 0
  20:	2812      	subi      	r0, 19
  22:	1491      	pop      	r4, r15

Disassembly of section .text.ieee80211_conf_set_wmm_enable:

00000000 <ieee80211_conf_set_wmm_enable>:
   0:	14d1      	push      	r4, r15
   2:	6d07      	mov      	r4, r1
   4:	e0000000 	bsr      	0x0	// 0 <ieee80211_iface_get>
   8:	e9000006 	bez      	r0, 0x14	// 14 <ieee80211_conf_set_wmm_enable+0x14>
   c:	8065      	ld.b      	r3, (r0, 0x5)
   e:	c4645c05 	ins      	r3, r4, 5, 5
  12:	a065      	st.b      	r3, (r0, 0x5)
  14:	3000      	movi      	r0, 0
  16:	2812      	subi      	r0, 19
  18:	1491      	pop      	r4, r15

Disassembly of section .text.ieee80211_conf_get_connstate:

00000000 <ieee80211_conf_get_connstate>:
   0:	14d0      	push      	r15
   2:	e0000000 	bsr      	0x0	// 0 <ieee80211_iface_get>
   6:	e9000003 	bez      	r0, 0xc	// c <ieee80211_conf_get_connstate+0xc>
   a:	8012      	ld.b      	r0, (r0, 0x12)
   c:	1490      	pop      	r15

Disassembly of section .text.ieee80211_conf_get_wkreason:

00000000 <ieee80211_conf_get_wkreason>:
   0:	14d0      	push      	r15
   2:	e0000000 	bsr      	0x0	// 0 <ieee80211_iface_get>
   6:	e9000004 	bez      	r0, 0xe	// e <ieee80211_conf_get_wkreason+0xe>
   a:	d8000026 	ld.b      	r0, (r0, 0x26)
   e:	1490      	pop      	r15

Disassembly of section .text.ieee80211_conf_wakeup_sta:

00000000 <ieee80211_conf_wakeup_sta>:
   0:	14d1      	push      	r4, r15
   2:	1422      	subi      	r14, r14, 8
   4:	b821      	st.w      	r1, (r14, 0x4)
   6:	b840      	st.w      	r2, (r14, 0x0)
   8:	6d0f      	mov      	r4, r3
   a:	e0000000 	bsr      	0x0	// 0 <ieee80211_iface_get>
   e:	e900000c 	bez      	r0, 0x26	// 26 <ieee80211_conf_wakeup_sta+0x26>
  12:	d9802023 	ld.w      	r12, (r0, 0x8c)
  16:	e90c000b 	bez      	r12, 0x2c	// 2c <ieee80211_conf_wakeup_sta+0x2c>
  1a:	74d0      	zextb      	r3, r4
  1c:	9840      	ld.w      	r2, (r14, 0x0)
  1e:	9821      	ld.w      	r1, (r14, 0x4)
  20:	7bf1      	jsr      	r12
  22:	1402      	addi      	r14, r14, 8
  24:	1491      	pop      	r4, r15
  26:	3000      	movi      	r0, 0
  28:	2801      	subi      	r0, 2
  2a:	07fc      	br      	0x22	// 22 <ieee80211_conf_wakeup_sta+0x22>
  2c:	ea00020b 	movi      	r0, 523
  30:	6c02      	nor      	r0, r0
  32:	07f8      	br      	0x22	// 22 <ieee80211_conf_wakeup_sta+0x22>

Disassembly of section .text.ieee80211_conf_get_txpower:

00000000 <ieee80211_conf_get_txpower>:
   0:	14d0      	push      	r15
   2:	e0000000 	bsr      	0x0	// 0 <ieee80211_iface_get>
   6:	e9000009 	bez      	r0, 0x18	// 18 <ieee80211_conf_get_txpower+0x18>
   a:	3300      	movi      	r3, 0
   c:	d9802020 	ld.w      	r12, (r0, 0x80)
  10:	6c8f      	mov      	r2, r3
  12:	310c      	movi      	r1, 12
  14:	7bf1      	jsr      	r12
  16:	1490      	pop      	r15
  18:	3000      	movi      	r0, 0
  1a:	2812      	subi      	r0, 19
  1c:	07fd      	br      	0x16	// 16 <ieee80211_conf_get_txpower+0x16>

Disassembly of section .text.ieee80211_conf_set_heartbeat_int:

00000000 <ieee80211_conf_set_heartbeat_int>:
   0:	14d1      	push      	r4, r15
   2:	6d07      	mov      	r4, r1
   4:	e0000000 	bsr      	0x0	// 0 <ieee80211_iface_get>
   8:	e9000009 	bez      	r0, 0x1a	// 1a <ieee80211_conf_set_heartbeat_int+0x1a>
   c:	d9802020 	ld.w      	r12, (r0, 0x80)
  10:	3300      	movi      	r3, 0
  12:	6c93      	mov      	r2, r4
  14:	310d      	movi      	r1, 13
  16:	7bf1      	jsr      	r12
  18:	1491      	pop      	r4, r15
  1a:	3000      	movi      	r0, 0
  1c:	2812      	subi      	r0, 19
  1e:	07fd      	br      	0x18	// 18 <ieee80211_conf_set_heartbeat_int+0x18>

Disassembly of section .text.ieee80211_conf_set_aplost_time:

00000000 <ieee80211_conf_set_aplost_time>:
   0:	14d1      	push      	r4, r15
   2:	6d07      	mov      	r4, r1
   4:	e0000000 	bsr      	0x0	// 0 <ieee80211_iface_get>
   8:	e9000009 	bez      	r0, 0x1a	// 1a <ieee80211_conf_set_aplost_time+0x1a>
   c:	d9802020 	ld.w      	r12, (r0, 0x80)
  10:	3300      	movi      	r3, 0
  12:	6c93      	mov      	r2, r4
  14:	310e      	movi      	r1, 14
  16:	7bf1      	jsr      	r12
  18:	1491      	pop      	r4, r15
  1a:	3000      	movi      	r0, 0
  1c:	2812      	subi      	r0, 19
  1e:	07fd      	br      	0x18	// 18 <ieee80211_conf_set_aplost_time+0x18>

Disassembly of section .text.ieee80211_conf_set_acs:

00000000 <ieee80211_conf_set_acs>:
   0:	14d2      	push      	r4-r5, r15
   2:	6d07      	mov      	r4, r1
   4:	6d4b      	mov      	r5, r2
   6:	e0000000 	bsr      	0x0	// 0 <ieee80211_iface_get>
   a:	e9000009 	bez      	r0, 0x1c	// 1c <ieee80211_conf_set_acs+0x1c>
   e:	d9802020 	ld.w      	r12, (r0, 0x80)
  12:	6cd7      	mov      	r3, r5
  14:	6c93      	mov      	r2, r4
  16:	310f      	movi      	r1, 15
  18:	7bf1      	jsr      	r12
  1a:	1492      	pop      	r4-r5, r15
  1c:	3000      	movi      	r0, 0
  1e:	2812      	subi      	r0, 19
  20:	07fd      	br      	0x1a	// 1a <ieee80211_conf_set_acs+0x1a>

Disassembly of section .text.ieee80211_conf_get_stalist:

00000000 <ieee80211_conf_get_stalist>:
   0:	14d2      	push      	r4-r5, r15
   2:	6d07      	mov      	r4, r1
   4:	6d4b      	mov      	r5, r2
   6:	e0000000 	bsr      	0x0	// 0 <ieee80211_iface_get>
   a:	e9000009 	bez      	r0, 0x1c	// 1c <ieee80211_conf_get_stalist+0x1c>
   e:	d9802020 	ld.w      	r12, (r0, 0x80)
  12:	6cd7      	mov      	r3, r5
  14:	6c93      	mov      	r2, r4
  16:	3112      	movi      	r1, 18
  18:	7bf1      	jsr      	r12
  1a:	1492      	pop      	r4-r5, r15
  1c:	3000      	movi      	r0, 0
  1e:	2812      	subi      	r0, 19
  20:	07fd      	br      	0x1a	// 1a <ieee80211_conf_get_stalist+0x1a>

Disassembly of section .text.ieee80211_conf_get_stacnt:

00000000 <ieee80211_conf_get_stacnt>:
   0:	14d0      	push      	r15
   2:	e0000000 	bsr      	0x0	// 0 <ieee80211_iface_get>
   6:	e9000005 	bez      	r0, 0x10	// 10 <ieee80211_conf_get_stacnt+0x10>
   a:	e0000000 	bsr      	0x0	// 0 <ieee80211_vif_sta_count>
   e:	1490      	pop      	r15
  10:	3000      	movi      	r0, 0
  12:	2812      	subi      	r0, 19
  14:	07fd      	br      	0xe	// e <ieee80211_conf_get_stacnt+0xe>

Disassembly of section .text.ieee80211_conf_get_stainfo:

00000000 <ieee80211_conf_get_stainfo>:
   0:	14d2      	push      	r4-r5, r15
   2:	1423      	subi      	r14, r14, 12
   4:	6d47      	mov      	r5, r1
   6:	6d0b      	mov      	r4, r2
   8:	b860      	st.w      	r3, (r14, 0x0)
   a:	e0000000 	bsr      	0x0	// 0 <ieee80211_iface_get>
   e:	e900000c 	bez      	r0, 0x26	// 26 <ieee80211_conf_get_stainfo+0x26>
  12:	b8a1      	st.w      	r5, (r14, 0x4)
  14:	b882      	st.w      	r4, (r14, 0x8)
  16:	d9802020 	ld.w      	r12, (r0, 0x80)
  1a:	9860      	ld.w      	r3, (r14, 0x0)
  1c:	1a01      	addi      	r2, r14, 4
  1e:	3111      	movi      	r1, 17
  20:	7bf1      	jsr      	r12
  22:	1403      	addi      	r14, r14, 12
  24:	1492      	pop      	r4-r5, r15
  26:	3000      	movi      	r0, 0
  28:	2812      	subi      	r0, 19
  2a:	07fc      	br      	0x22	// 22 <ieee80211_conf_get_stainfo+0x22>

Disassembly of section .text.ieee80211_conf_get_sta_snr:

00000000 <ieee80211_conf_get_sta_snr>:
   0:	14d2      	push      	r4-r5, r15
   2:	6d07      	mov      	r4, r1
   4:	6d4b      	mov      	r5, r2
   6:	e0000000 	bsr      	0x0	// 0 <ieee80211_iface_get>
   a:	e9000009 	bez      	r0, 0x1c	// 1c <ieee80211_conf_get_sta_snr+0x1c>
   e:	d9802020 	ld.w      	r12, (r0, 0x80)
  12:	6cd7      	mov      	r3, r5
  14:	6c93      	mov      	r2, r4
  16:	311f      	movi      	r1, 31
  18:	7bf1      	jsr      	r12
  1a:	1492      	pop      	r4-r5, r15
  1c:	3000      	movi      	r0, 0
  1e:	2812      	subi      	r0, 19
  20:	07fd      	br      	0x1a	// 1a <ieee80211_conf_get_sta_snr+0x1a>

Disassembly of section .text.ieee80211_conf_set_aphide:

00000000 <ieee80211_conf_set_aphide>:
   0:	14d1      	push      	r4, r15
   2:	6d07      	mov      	r4, r1
   4:	e0000000 	bsr      	0x0	// 0 <ieee80211_iface_get>
   8:	e900000f 	bez      	r0, 0x26	// 26 <ieee80211_conf_set_aphide+0x26>
   c:	8860      	ld.h      	r3, (r0, 0x0)
   e:	e4632002 	andi      	r3, r3, 2
  12:	e903000a 	bez      	r3, 0x26	// 26 <ieee80211_conf_set_aphide+0x26>
  16:	d8602063 	ld.w      	r3, (r0, 0x18c)
  1a:	3000      	movi      	r0, 0
  1c:	835c      	ld.b      	r2, (r3, 0x1c)
  1e:	c4445c00 	ins      	r2, r4, 0, 0
  22:	a35c      	st.b      	r2, (r3, 0x1c)
  24:	1491      	pop      	r4, r15
  26:	3000      	movi      	r0, 0
  28:	2812      	subi      	r0, 19
  2a:	07fd      	br      	0x24	// 24 <ieee80211_conf_set_aphide+0x24>

Disassembly of section .text.ieee80211_conf_get_bgrssi:

00000000 <ieee80211_conf_get_bgrssi>:
   0:	14d2      	push      	r4-r5, r15
   2:	6d07      	mov      	r4, r1
   4:	6d4b      	mov      	r5, r2
   6:	e0000000 	bsr      	0x0	// 0 <ieee80211_iface_get>
   a:	e9000009 	bez      	r0, 0x1c	// 1c <ieee80211_conf_get_bgrssi+0x1c>
   e:	d9802020 	ld.w      	r12, (r0, 0x80)
  12:	6cd7      	mov      	r3, r5
  14:	6c93      	mov      	r2, r4
  16:	3113      	movi      	r1, 19
  18:	7bf1      	jsr      	r12
  1a:	1492      	pop      	r4-r5, r15
  1c:	3000      	movi      	r0, 0
  1e:	2812      	subi      	r0, 19
  20:	07fd      	br      	0x1a	// 1a <ieee80211_conf_get_bgrssi+0x1a>

Disassembly of section .text.ieee80211_conf_set_mcast_txrate:

00000000 <ieee80211_conf_set_mcast_txrate>:
   0:	14d1      	push      	r4, r15
   2:	6d07      	mov      	r4, r1
   4:	e0000000 	bsr      	0x0	// 0 <ieee80211_iface_get>
   8:	e9000009 	bez      	r0, 0x1a	// 1a <ieee80211_conf_set_mcast_txrate+0x1a>
   c:	d9802020 	ld.w      	r12, (r0, 0x80)
  10:	3300      	movi      	r3, 0
  12:	6c93      	mov      	r2, r4
  14:	3114      	movi      	r1, 20
  16:	7bf1      	jsr      	r12
  18:	1491      	pop      	r4, r15
  1a:	3000      	movi      	r0, 0
  1c:	2812      	subi      	r0, 19
  1e:	07fd      	br      	0x18	// 18 <ieee80211_conf_set_mcast_txrate+0x18>

Disassembly of section .text.ieee80211_conf_set_hwmode:

00000000 <ieee80211_conf_set_hwmode>:
   0:	14d1      	push      	r4, r15
   2:	6d07      	mov      	r4, r1
   4:	e0000000 	bsr      	0x0	// 0 <ieee80211_iface_get>
   8:	e9000009 	bez      	r0, 0x1a	// 1a <ieee80211_conf_set_hwmode+0x1a>
   c:	d9802020 	ld.w      	r12, (r0, 0x80)
  10:	3300      	movi      	r3, 0
  12:	6c93      	mov      	r2, r4
  14:	3115      	movi      	r1, 21
  16:	7bf1      	jsr      	r12
  18:	1491      	pop      	r4, r15
  1a:	3000      	movi      	r0, 0
  1c:	2812      	subi      	r0, 19
  1e:	07fd      	br      	0x18	// 18 <ieee80211_conf_set_hwmode+0x18>

Disassembly of section .text.ieee80211_conf_set_psdata_cnt:

00000000 <ieee80211_conf_set_psdata_cnt>:
   0:	14d1      	push      	r4, r15
   2:	6d07      	mov      	r4, r1
   4:	e0000000 	bsr      	0x0	// 0 <ieee80211_iface_get>
   8:	e9000006 	bez      	r0, 0x14	// 14 <ieee80211_conf_set_psdata_cnt+0x14>
   c:	dc800025 	st.b      	r4, (r0, 0x25)
  10:	3000      	movi      	r0, 0
  12:	1491      	pop      	r4, r15
  14:	3000      	movi      	r0, 0
  16:	2812      	subi      	r0, 19
  18:	07fd      	br      	0x12	// 12 <ieee80211_conf_set_psdata_cnt+0x12>

Disassembly of section .text.ieee80211_conf_set_wmm_param:

00000000 <ieee80211_conf_set_wmm_param>:
   0:	14d2      	push      	r4-r5, r15
   2:	6d07      	mov      	r4, r1
   4:	6d4b      	mov      	r5, r2
   6:	e0000000 	bsr      	0x0	// 0 <ieee80211_iface_get>
   a:	e9000012 	bez      	r0, 0x2e	// 2e <ieee80211_conf_set_wmm_param+0x2e>
   e:	3c03      	cmphsi      	r4, 4
  10:	0c06      	bf      	0x1c	// 1c <ieee80211_conf_set_wmm_param+0x1c>
  12:	e424000f 	addi      	r1, r4, 16
  16:	7444      	zextb      	r1, r1
  18:	3903      	cmphsi      	r1, 4
  1a:	080a      	bt      	0x2e	// 2e <ieee80211_conf_set_wmm_param+0x2e>
  1c:	e9050009 	bez      	r5, 0x2e	// 2e <ieee80211_conf_set_wmm_param+0x2e>
  20:	d9802020 	ld.w      	r12, (r0, 0x80)
  24:	6cd7      	mov      	r3, r5
  26:	6c93      	mov      	r2, r4
  28:	3116      	movi      	r1, 22
  2a:	7bf1      	jsr      	r12
  2c:	1492      	pop      	r4-r5, r15
  2e:	3000      	movi      	r0, 0
  30:	2812      	subi      	r0, 19
  32:	07fd      	br      	0x2c	// 2c <ieee80211_conf_set_wmm_param+0x2c>

Disassembly of section .text.ieee80211_conf_get_wmm_param:

00000000 <ieee80211_conf_get_wmm_param>:
   0:	14d2      	push      	r4-r5, r15
   2:	6d07      	mov      	r4, r1
   4:	6d4b      	mov      	r5, r2
   6:	e0000000 	bsr      	0x0	// 0 <ieee80211_iface_get>
   a:	e9000012 	bez      	r0, 0x2e	// 2e <ieee80211_conf_get_wmm_param+0x2e>
   e:	3c03      	cmphsi      	r4, 4
  10:	0c06      	bf      	0x1c	// 1c <ieee80211_conf_get_wmm_param+0x1c>
  12:	e424000f 	addi      	r1, r4, 16
  16:	7444      	zextb      	r1, r1
  18:	3903      	cmphsi      	r1, 4
  1a:	080a      	bt      	0x2e	// 2e <ieee80211_conf_get_wmm_param+0x2e>
  1c:	e9050009 	bez      	r5, 0x2e	// 2e <ieee80211_conf_get_wmm_param+0x2e>
  20:	d9802020 	ld.w      	r12, (r0, 0x80)
  24:	6cd7      	mov      	r3, r5
  26:	6c93      	mov      	r2, r4
  28:	3118      	movi      	r1, 24
  2a:	7bf1      	jsr      	r12
  2c:	1492      	pop      	r4-r5, r15
  2e:	3000      	movi      	r0, 0
  30:	2812      	subi      	r0, 19
  32:	07fd      	br      	0x2c	// 2c <ieee80211_conf_get_wmm_param+0x2c>

Disassembly of section .text.ieee80211_conf_set_wpa_group_rekey:

00000000 <ieee80211_conf_set_wpa_group_rekey>:
   0:	14d1      	push      	r4, r15
   2:	6d07      	mov      	r4, r1
   4:	e0000000 	bsr      	0x0	// 0 <ieee80211_iface_get>
   8:	e9000009 	bez      	r0, 0x1a	// 1a <ieee80211_conf_set_wpa_group_rekey+0x1a>
   c:	d9802020 	ld.w      	r12, (r0, 0x80)
  10:	3300      	movi      	r3, 0
  12:	6c93      	mov      	r2, r4
  14:	3117      	movi      	r1, 23
  16:	7bf1      	jsr      	r12
  18:	1491      	pop      	r4, r15
  1a:	3000      	movi      	r0, 0
  1c:	2812      	subi      	r0, 19
  1e:	07fd      	br      	0x18	// 18 <ieee80211_conf_set_wpa_group_rekey+0x18>

Disassembly of section .text.ieee80211_conf_set_datatag:

00000000 <ieee80211_conf_set_datatag>:
   0:	14d2      	push      	r4-r5, r15
   2:	6d07      	mov      	r4, r1
   4:	6d4b      	mov      	r5, r2
   6:	e0000000 	bsr      	0x0	// 0 <ieee80211_iface_get>
   a:	e9000009 	bez      	r0, 0x1c	// 1c <ieee80211_conf_set_datatag+0x1c>
   e:	e9040007 	bez      	r4, 0x1c	// 1c <ieee80211_conf_set_datatag+0x1c>
  12:	e9050005 	bez      	r5, 0x1c	// 1c <ieee80211_conf_set_datatag+0x1c>
  16:	b4a4      	st.w      	r5, (r4, 0x10)
  18:	3000      	movi      	r0, 0
  1a:	1492      	pop      	r4-r5, r15
  1c:	3000      	movi      	r0, 0
  1e:	2812      	subi      	r0, 19
  20:	07fd      	br      	0x1a	// 1a <ieee80211_conf_set_datatag+0x1a>

Disassembly of section .text.ieee80211_conf_get_ant_sel:

00000000 <ieee80211_conf_get_ant_sel>:
   0:	14d0      	push      	r15
   2:	e0000000 	bsr      	0x0	// 0 <ieee80211_iface_get>
   6:	e9000009 	bez      	r0, 0x18	// 18 <ieee80211_conf_get_ant_sel+0x18>
   a:	3300      	movi      	r3, 0
   c:	d9802020 	ld.w      	r12, (r0, 0x80)
  10:	6c8f      	mov      	r2, r3
  12:	3119      	movi      	r1, 25
  14:	7bf1      	jsr      	r12
  16:	1490      	pop      	r15
  18:	3000      	movi      	r0, 0
  1a:	2812      	subi      	r0, 19
  1c:	07fd      	br      	0x16	// 16 <ieee80211_conf_get_ant_sel+0x16>

Disassembly of section .text.ieee80211_conf_get_reason_code:

00000000 <ieee80211_conf_get_reason_code>:
   0:	14d0      	push      	r15
   2:	e0000000 	bsr      	0x0	// 0 <ieee80211_iface_get>
   6:	e9000003 	bez      	r0, 0xc	// c <ieee80211_conf_get_reason_code+0xc>
   a:	8807      	ld.h      	r0, (r0, 0xe)
   c:	1490      	pop      	r15

Disassembly of section .text.ieee80211_conf_get_status_code:

00000000 <ieee80211_conf_get_status_code>:
   0:	14d0      	push      	r15
   2:	e0000000 	bsr      	0x0	// 0 <ieee80211_iface_get>
   6:	e9000003 	bez      	r0, 0xc	// c <ieee80211_conf_get_status_code+0xc>
   a:	8806      	ld.h      	r0, (r0, 0xc)
   c:	1490      	pop      	r15

Disassembly of section .text.ieee80211_conf_get_bss_bw:

00000000 <ieee80211_conf_get_bss_bw>:
   0:	14d0      	push      	r15
   2:	e0000000 	bsr      	0x0	// 0 <ieee80211_iface_get>
   6:	e9000005 	bez      	r0, 0x10	// 10 <ieee80211_conf_get_bss_bw+0x10>
   a:	d860202b 	ld.w      	r3, (r0, 0xac)
   e:	8302      	ld.b      	r0, (r3, 0x2)
  10:	1490      	pop      	r15

Disassembly of section .text.ieee80211_conf_set_rtc:

00000000 <ieee80211_conf_set_rtc>:
   0:	14d1      	push      	r4, r15
   2:	6d07      	mov      	r4, r1
   4:	e0000000 	bsr      	0x0	// 0 <ieee80211_iface_get>
   8:	e9000009 	bez      	r0, 0x1a	// 1a <ieee80211_conf_set_rtc+0x1a>
   c:	d9802020 	ld.w      	r12, (r0, 0x80)
  10:	3300      	movi      	r3, 0
  12:	6c93      	mov      	r2, r4
  14:	311b      	movi      	r1, 27
  16:	7bf1      	jsr      	r12
  18:	1491      	pop      	r4, r15
  1a:	3000      	movi      	r0, 0
  1c:	2812      	subi      	r0, 19
  1e:	07fd      	br      	0x18	// 18 <ieee80211_conf_set_rtc+0x18>

Disassembly of section .text.ieee80211_conf_get_rtc:

00000000 <ieee80211_conf_get_rtc>:
   0:	14d0      	push      	r15
   2:	e0000000 	bsr      	0x0	// 0 <ieee80211_iface_get>
   6:	e9000009 	bez      	r0, 0x18	// 18 <ieee80211_conf_get_rtc+0x18>
   a:	3300      	movi      	r3, 0
   c:	d9802020 	ld.w      	r12, (r0, 0x80)
  10:	6c8f      	mov      	r2, r3
  12:	311c      	movi      	r1, 28
  14:	7bf1      	jsr      	r12
  16:	1490      	pop      	r15
  18:	3000      	movi      	r0, 0
  1a:	2812      	subi      	r0, 19
  1c:	07fd      	br      	0x16	// 16 <ieee80211_conf_get_rtc+0x16>

Disassembly of section .text.ieee80211_conf_get_acs_result:

00000000 <ieee80211_conf_get_acs_result>:
   0:	14d1      	push      	r4, r15
   2:	6d07      	mov      	r4, r1
   4:	e0000000 	bsr      	0x0	// 0 <ieee80211_iface_get>
   8:	e9000009 	bez      	r0, 0x1a	// 1a <ieee80211_conf_get_acs_result+0x1a>
   c:	d9802020 	ld.w      	r12, (r0, 0x80)
  10:	3300      	movi      	r3, 0
  12:	6c93      	mov      	r2, r4
  14:	311d      	movi      	r1, 29
  16:	7bf1      	jsr      	r12
  18:	1491      	pop      	r4, r15
  1a:	3000      	movi      	r0, 0
  1c:	2812      	subi      	r0, 19
  1e:	07fd      	br      	0x18	// 18 <ieee80211_conf_get_acs_result+0x18>

Disassembly of section .text.ieee80211_conf_set_radio_onoff:

00000000 <ieee80211_conf_set_radio_onoff>:
   0:	14d1      	push      	r4, r15
   2:	6d07      	mov      	r4, r1
   4:	e0000000 	bsr      	0x0	// 0 <ieee80211_iface_get>
   8:	e9000009 	bez      	r0, 0x1a	// 1a <ieee80211_conf_set_radio_onoff+0x1a>
   c:	d9802020 	ld.w      	r12, (r0, 0x80)
  10:	3300      	movi      	r3, 0
  12:	6c93      	mov      	r2, r4
  14:	311e      	movi      	r1, 30
  16:	7bf1      	jsr      	r12
  18:	1491      	pop      	r4, r15
  1a:	3000      	movi      	r0, 0
  1c:	2812      	subi      	r0, 19
  1e:	07fd      	br      	0x18	// 18 <ieee80211_conf_set_radio_onoff+0x18>

Disassembly of section .text.ieee80211_conf_set_isolate:

00000000 <ieee80211_conf_set_isolate>:
   0:	14d1      	push      	r4, r15
   2:	6d07      	mov      	r4, r1
   4:	e0000000 	bsr      	0x0	// 0 <ieee80211_iface_get>
   8:	e900000a 	bez      	r0, 0x1c	// 1c <ieee80211_conf_set_isolate+0x1c>
   c:	8065      	ld.b      	r3, (r0, 0x5)
   e:	e4242001 	andi      	r1, r4, 1
  12:	c4615c01 	ins      	r3, r1, 1, 1
  16:	a065      	st.b      	r3, (r0, 0x5)
  18:	6c07      	mov      	r0, r1
  1a:	1491      	pop      	r4, r15
  1c:	3000      	movi      	r0, 0
  1e:	2812      	subi      	r0, 19
  20:	07fd      	br      	0x1a	// 1a <ieee80211_conf_set_isolate+0x1a>

Disassembly of section .text.ieee80211_conf_set_ft:

00000000 <ieee80211_conf_set_ft>:
   0:	14d1      	push      	r4, r15
   2:	6d07      	mov      	r4, r1
   4:	e0000000 	bsr      	0x0	// 0 <ieee80211_iface_get>
   8:	e9000009 	bez      	r0, 0x1a	// 1a <ieee80211_conf_set_ft+0x1a>
   c:	d9802020 	ld.w      	r12, (r0, 0x80)
  10:	3300      	movi      	r3, 0
  12:	6c93      	mov      	r2, r4
  14:	3121      	movi      	r1, 33
  16:	7bf1      	jsr      	r12
  18:	1491      	pop      	r4, r15
  1a:	3000      	movi      	r0, 0
  1c:	2812      	subi      	r0, 19
  1e:	07fd      	br      	0x18	// 18 <ieee80211_conf_set_ft+0x18>

Disassembly of section .text.ieee80211_chan_center_freq:

00000000 <ieee80211_chan_center_freq>:
   0:	14d0      	push      	r15
   2:	1421      	subi      	r14, r14, 4
   4:	b820      	st.w      	r1, (r14, 0x0)
   6:	e0000000 	bsr      	0x0	// 0 <ieee80211_iface_get>
   a:	e9000008 	bez      	r0, 0x1a	// 1a <ieee80211_chan_center_freq+0x1a>
   e:	3200      	movi      	r2, 0
  10:	9820      	ld.w      	r1, (r14, 0x0)
  12:	e0000000 	bsr      	0x0	// 0 <ieee80211_chan_to_freq>
  16:	1401      	addi      	r14, r14, 4
  18:	1490      	pop      	r15
  1a:	3000      	movi      	r0, 0
  1c:	2812      	subi      	r0, 19
  1e:	07fc      	br      	0x16	// 16 <ieee80211_chan_center_freq+0x16>

Disassembly of section .text.ieee80211_conf_set_dupfilter:

00000000 <ieee80211_conf_set_dupfilter>:
   0:	14d1      	push      	r4, r15
   2:	6d07      	mov      	r4, r1
   4:	e0000000 	bsr      	0x0	// 0 <ieee80211_iface_get>
   8:	e900000b 	bez      	r0, 0x1e	// 1e <ieee80211_conf_set_dupfilter+0x1e>
   c:	3c40      	cmpnei      	r4, 0
   e:	8062      	ld.b      	r3, (r0, 0x2)
  10:	c4000502 	mvc      	r2
  14:	c4625c02 	ins      	r3, r2, 2, 2
  18:	a062      	st.b      	r3, (r0, 0x2)
  1a:	3000      	movi      	r0, 0
  1c:	1491      	pop      	r4, r15
  1e:	3000      	movi      	r0, 0
  20:	2812      	subi      	r0, 19
  22:	07fd      	br      	0x1c	// 1c <ieee80211_conf_set_dupfilter+0x1c>

Disassembly of section .text.ieee80211_conf_set_conn_timeout:

00000000 <ieee80211_conf_set_conn_timeout>:
   0:	14d3      	push      	r4-r6, r15
   2:	6d87      	mov      	r6, r1
   4:	6d4b      	mov      	r5, r2
   6:	6d0f      	mov      	r4, r3
   8:	e0000000 	bsr      	0x0	// 0 <ieee80211_iface_get>
   c:	e9000007 	bez      	r0, 0x1a	// 1a <ieee80211_conf_set_conn_timeout+0x1a>
  10:	a8cb      	st.h      	r6, (r0, 0x16)
  12:	a8aa      	st.h      	r5, (r0, 0x14)
  14:	a88c      	st.h      	r4, (r0, 0x18)
  16:	3000      	movi      	r0, 0
  18:	1493      	pop      	r4-r6, r15
  1a:	3000      	movi      	r0, 0
  1c:	2812      	subi      	r0, 19
  1e:	07fd      	br      	0x18	// 18 <ieee80211_conf_set_conn_timeout+0x18>

Disassembly of section .text.ieee80211_conf_set_wpa_cipher:

00000000 <ieee80211_conf_set_wpa_cipher>:
   0:	14d3      	push      	r4-r6, r15
   2:	6d87      	mov      	r6, r1
   4:	6d0b      	mov      	r4, r2
   6:	6d4f      	mov      	r5, r3
   8:	e0000000 	bsr      	0x0	// 0 <ieee80211_iface_get>
   c:	e900000f 	bez      	r0, 0x2a	// 2a <ieee80211_conf_set_wpa_cipher+0x2a>
  10:	3300      	movi      	r3, 0
  12:	dcc02042 	st.w      	r6, (r0, 0x108)
  16:	dca02040 	st.w      	r5, (r0, 0x100)
  1a:	dc802041 	st.w      	r4, (r0, 0x104)
  1e:	d9802020 	ld.w      	r12, (r0, 0x80)
  22:	6c8f      	mov      	r2, r3
  24:	3125      	movi      	r1, 37
  26:	7bf1      	jsr      	r12
  28:	1493      	pop      	r4-r6, r15
  2a:	3000      	movi      	r0, 0
  2c:	2812      	subi      	r0, 19
  2e:	07fd      	br      	0x28	// 28 <ieee80211_conf_set_wpa_cipher+0x28>

Disassembly of section .text.ieee80211_conf_set_roaming:

00000000 <ieee80211_conf_set_roaming>:
   0:	14d1      	push      	r4, r15
   2:	6d07      	mov      	r4, r1
   4:	e0000000 	bsr      	0x0	// 0 <ieee80211_iface_get>
   8:	e900000c 	bez      	r0, 0x20	// 20 <ieee80211_conf_set_roaming+0x20>
   c:	d860205d 	ld.w      	r3, (r0, 0x174)
  10:	e9030008 	bez      	r3, 0x20	// 20 <ieee80211_conf_set_roaming+0x20>
  14:	8340      	ld.b      	r2, (r3, 0x0)
  16:	c4445c00 	ins      	r2, r4, 0, 0
  1a:	a340      	st.b      	r2, (r3, 0x0)
  1c:	3000      	movi      	r0, 0
  1e:	1491      	pop      	r4, r15
  20:	3000      	movi      	r0, 0
  22:	2812      	subi      	r0, 19
  24:	07fd      	br      	0x1e	// 1e <ieee80211_conf_set_roaming+0x1e>

Disassembly of section .text.ieee80211_conf_set_roam_config:

00000000 <ieee80211_conf_set_roam_config>:
   0:	14d3      	push      	r4-r6, r15
   2:	6d87      	mov      	r6, r1
   4:	6d4b      	mov      	r5, r2
   6:	6d0f      	mov      	r4, r3
   8:	e0000000 	bsr      	0x0	// 0 <ieee80211_iface_get>
   c:	e900000b 	bez      	r0, 0x22	// 22 <ieee80211_conf_set_roam_config+0x22>
  10:	d800205d 	ld.w      	r0, (r0, 0x174)
  14:	e9000007 	bez      	r0, 0x22	// 22 <ieee80211_conf_set_roam_config+0x22>
  18:	a0c5      	st.b      	r6, (r0, 0x5)
  1a:	a0a6      	st.b      	r5, (r0, 0x6)
  1c:	a087      	st.b      	r4, (r0, 0x7)
  1e:	3000      	movi      	r0, 0
  20:	1493      	pop      	r4-r6, r15
  22:	3000      	movi      	r0, 0
  24:	2812      	subi      	r0, 19
  26:	07fd      	br      	0x20	// 20 <ieee80211_conf_set_roam_config+0x20>

Disassembly of section .text.ieee80211_conf_set_mcast_key:

00000000 <ieee80211_conf_set_mcast_key>:
   0:	14d2      	push      	r4-r5, r15
   2:	6d07      	mov      	r4, r1
   4:	6d4b      	mov      	r5, r2
   6:	e0000000 	bsr      	0x0	// 0 <ieee80211_iface_get>
   a:	e9000009 	bez      	r0, 0x1c	// 1c <ieee80211_conf_set_mcast_key+0x1c>
   e:	d9802020 	ld.w      	r12, (r0, 0x80)
  12:	6cd7      	mov      	r3, r5
  14:	6c93      	mov      	r2, r4
  16:	3126      	movi      	r1, 38
  18:	7bf1      	jsr      	r12
  1a:	1492      	pop      	r4-r5, r15
  1c:	3000      	movi      	r0, 0
  1e:	2812      	subi      	r0, 19
  20:	07fd      	br      	0x1a	// 1a <ieee80211_conf_set_mcast_key+0x1a>

Disassembly of section .text.ieee80211_conf_set_ap_psmode_en:

00000000 <ieee80211_conf_set_ap_psmode_en>:
   0:	14d1      	push      	r4, r15
   2:	6d07      	mov      	r4, r1
   4:	e0000000 	bsr      	0x0	// 0 <ieee80211_iface_get>
   8:	e9000009 	bez      	r0, 0x1a	// 1a <ieee80211_conf_set_ap_psmode_en+0x1a>
   c:	d9802020 	ld.w      	r12, (r0, 0x80)
  10:	3300      	movi      	r3, 0
  12:	6c93      	mov      	r2, r4
  14:	3127      	movi      	r1, 39
  16:	7bf1      	jsr      	r12
  18:	1491      	pop      	r4, r15
  1a:	3000      	movi      	r0, 0
  1c:	2812      	subi      	r0, 19
  1e:	07fd      	br      	0x18	// 18 <ieee80211_conf_set_ap_psmode_en+0x18>
