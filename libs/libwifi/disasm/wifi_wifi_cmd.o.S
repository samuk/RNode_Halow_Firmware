
libwifi/o/wifi_wifi_cmd.o:     file format elf32-csky-little


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

Disassembly of section .text.wifi_mgr_atcmd_outhdl:

00000000 <wifi_mgr_atcmd_outhdl>:
   0:	14d0      	push      	r15
   2:	e0000000 	bsr      	0x0	// 0 <wifi_mgr_print2host>
   6:	1490      	pop      	r15

Disassembly of section .text.wifi_mgr_proc_hgic_cmd:

00000000 <wifi_mgr_proc_hgic_cmd>:
   0:	14d6      	push      	r4-r9, r15
   2:	142d      	subi      	r14, r14, 52
   4:	9187      	ld.w      	r4, (r1, 0x1c)
   6:	b821      	st.w      	r1, (r14, 0x4)
   8:	8462      	ld.b      	r3, (r4, 0x2)
   a:	3b4d      	cmpnei      	r3, 13
   c:	6d43      	mov      	r5, r0
   e:	082f      	bt      	0x6c	// 6c <wifi_mgr_proc_hgic_cmd+0x6c>
  10:	84e9      	ld.b      	r7, (r4, 0x9)
  12:	8468      	ld.b      	r3, (r4, 0x8)
  14:	47e8      	lsli      	r7, r7, 8
  16:	6dcc      	or      	r7, r3
  18:	8465      	ld.b      	r3, (r4, 0x5)
  1a:	d9240004 	ld.b      	r9, (r4, 0x4)
  1e:	4368      	lsli      	r3, r3, 8
  20:	6e4c      	or      	r9, r3
  22:	3300      	movi      	r3, 0
  24:	d5240023 	str.b      	r3, (r4, r9 << 0)
  28:	8443      	ld.b      	r2, (r4, 0x3)
  2a:	e442200f 	andi      	r2, r2, 15
  2e:	6c5f      	mov      	r1, r7
  30:	1014      	lrw      	r0, 0x0	// 80 <wifi_mgr_proc_hgic_cmd+0x80>
  32:	e4c4000b 	addi      	r6, r4, 12
  36:	e509100b 	subi      	r8, r9, 12
  3a:	e0000000 	bsr      	0x0	// 0 <hgprintf>
  3e:	6cd3      	mov      	r3, r4
  40:	6ca3      	mov      	r2, r8
  42:	6c5b      	mov      	r1, r6
  44:	6c1f      	mov      	r0, r7
  46:	e0000000 	bsr      	0x0	// 0 <wifi_proc_drvcmd_cust>
  4a:	ea03020b 	movi      	r3, 523
  4e:	6cce      	nor      	r3, r3
  50:	64c2      	cmpne      	r0, r3
  52:	0c0f      	bf      	0x70	// 70 <wifi_mgr_proc_hgic_cmd+0x70>
  54:	9801      	ld.w      	r0, (r14, 0x4)
  56:	e0000000 	bsr      	0x0	// 0 <kfree_skb>
  5a:	9514      	ld.w      	r0, (r5, 0x50)
  5c:	3300      	movi      	r3, 0
  5e:	d9802007 	ld.w      	r12, (r0, 0x1c)
  62:	6c8f      	mov      	r2, r3
  64:	3104      	movi      	r1, 4
  66:	7bf1      	jsr      	r12
  68:	140d      	addi      	r14, r14, 52
  6a:	1496      	pop      	r4-r9, r15
  6c:	84e8      	ld.b      	r7, (r4, 0x8)
  6e:	07d5      	br      	0x18	// 18 <wifi_mgr_proc_hgic_cmd+0x18>
  70:	2f00      	subi      	r7, 1
  72:	eb0700b3 	cmphsi      	r7, 180
  76:	0809      	bt      	0x88	// 88 <wifi_mgr_proc_hgic_cmd+0x88>
  78:	1063      	lrw      	r3, 0x0	// 84 <wifi_mgr_proc_hgic_cmd+0x84>
  7a:	d0e30883 	ldr.w      	r3, (r3, r7 << 2)
  7e:	780c      	jmp      	r3
	...
  88:	ea04020b 	movi      	r4, 523
  8c:	6d12      	nor      	r4, r4
  8e:	ea06020b 	movi      	r6, 523
  92:	6d9a      	nor      	r6, r6
  94:	95f2      	ld.w      	r7, (r5, 0x48)
  96:	e5050047 	addi      	r8, r5, 72
  9a:	6e5b      	mov      	r9, r6
  9c:	661e      	cmpne      	r7, r8
  9e:	e8600631 	bt      	0xd00	// d00 <wifi_mgr_proc_hgic_cmd+0xd00>
  a2:	ea03020b 	movi      	r3, 523
  a6:	6cce      	nor      	r3, r3
  a8:	749b      	sexth      	r2, r6
  aa:	64d2      	cmpne      	r4, r3
  ac:	c4440c40 	inct      	r2, r4, 0
  b0:	9821      	ld.w      	r1, (r14, 0x4)
  b2:	e8000408 	br      	0x8c2	// 8c2 <wifi_mgr_proc_hgic_cmd+0x8c2>
  b6:	013b      	lrw      	r1, 0x0	// 3c4 <wifi_mgr_proc_hgic_cmd+0x3c4>
  b8:	6c1b      	mov      	r0, r6
  ba:	e0000000 	bsr      	0x0	// 0 <strcasecmp>
  be:	e9000038 	bez      	r0, 0x12e	// 12e <wifi_mgr_proc_hgic_cmd+0x12e>
  c2:	013d      	lrw      	r1, 0x0	// 3c8 <wifi_mgr_proc_hgic_cmd+0x3c8>
  c4:	6c1b      	mov      	r0, r6
  c6:	e0000000 	bsr      	0x0	// 0 <strcasecmp>
  ca:	e9000034 	bez      	r0, 0x132	// 132 <wifi_mgr_proc_hgic_cmd+0x132>
  ce:	013f      	lrw      	r1, 0x0	// 3cc <wifi_mgr_proc_hgic_cmd+0x3cc>
  d0:	6c1b      	mov      	r0, r6
  d2:	e0000000 	bsr      	0x0	// 0 <strcasecmp>
  d6:	e9000030 	bez      	r0, 0x136	// 136 <wifi_mgr_proc_hgic_cmd+0x136>
  da:	0221      	lrw      	r1, 0x0	// 3d0 <wifi_mgr_proc_hgic_cmd+0x3d0>
  dc:	6c1b      	mov      	r0, r6
  de:	e0000000 	bsr      	0x0	// 0 <strcasecmp>
  e2:	e900002c 	bez      	r0, 0x13a	// 13a <wifi_mgr_proc_hgic_cmd+0x13a>
  e6:	0223      	lrw      	r1, 0x0	// 3d4 <wifi_mgr_proc_hgic_cmd+0x3d4>
  e8:	6c1b      	mov      	r0, r6
  ea:	e0000000 	bsr      	0x0	// 0 <strcasecmp>
  ee:	e9000028 	bez      	r0, 0x13e	// 13e <wifi_mgr_proc_hgic_cmd+0x13e>
  f2:	0225      	lrw      	r1, 0x0	// 3d8 <wifi_mgr_proc_hgic_cmd+0x3d8>
  f4:	6c1b      	mov      	r0, r6
  f6:	e0000000 	bsr      	0x0	// 0 <strcasecmp>
  fa:	e9000024 	bez      	r0, 0x142	// 142 <wifi_mgr_proc_hgic_cmd+0x142>
  fe:	0227      	lrw      	r1, 0x0	// 3dc <wifi_mgr_proc_hgic_cmd+0x3dc>
 100:	6c1b      	mov      	r0, r6
 102:	e0000000 	bsr      	0x0	// 0 <strcasecmp>
 106:	e9000020 	bez      	r0, 0x146	// 146 <wifi_mgr_proc_hgic_cmd+0x146>
 10a:	0229      	lrw      	r1, 0x0	// 3e0 <wifi_mgr_proc_hgic_cmd+0x3e0>
 10c:	6c1b      	mov      	r0, r6
 10e:	e0000000 	bsr      	0x0	// 0 <strcasecmp>
 112:	e900001c 	bez      	r0, 0x14a	// 14a <wifi_mgr_proc_hgic_cmd+0x14a>
 116:	022b      	lrw      	r1, 0x0	// 3e4 <wifi_mgr_proc_hgic_cmd+0x3e4>
 118:	6c1b      	mov      	r0, r6
 11a:	e0000000 	bsr      	0x0	// 0 <strcasecmp>
 11e:	e9200018 	bnez      	r0, 0x14e	// 14e <wifi_mgr_proc_hgic_cmd+0x14e>
 122:	3009      	movi      	r0, 9
 124:	e0000000 	bsr      	0x0	// 0 <wificfg_set_mode>
 128:	3400      	movi      	r4, 0
 12a:	7513      	sexth      	r4, r4
 12c:	07b1      	br      	0x8e	// 8e <wifi_mgr_proc_hgic_cmd+0x8e>
 12e:	3003      	movi      	r0, 3
 130:	07fa      	br      	0x124	// 124 <wifi_mgr_proc_hgic_cmd+0x124>
 132:	3001      	movi      	r0, 1
 134:	07f8      	br      	0x124	// 124 <wifi_mgr_proc_hgic_cmd+0x124>
 136:	3002      	movi      	r0, 2
 138:	07f6      	br      	0x124	// 124 <wifi_mgr_proc_hgic_cmd+0x124>
 13a:	3004      	movi      	r0, 4
 13c:	07f4      	br      	0x124	// 124 <wifi_mgr_proc_hgic_cmd+0x124>
 13e:	3005      	movi      	r0, 5
 140:	07f2      	br      	0x124	// 124 <wifi_mgr_proc_hgic_cmd+0x124>
 142:	3008      	movi      	r0, 8
 144:	07f0      	br      	0x124	// 124 <wifi_mgr_proc_hgic_cmd+0x124>
 146:	3007      	movi      	r0, 7
 148:	07ee      	br      	0x124	// 124 <wifi_mgr_proc_hgic_cmd+0x124>
 14a:	3006      	movi      	r0, 6
 14c:	07ec      	br      	0x124	// 124 <wifi_mgr_proc_hgic_cmd+0x124>
 14e:	3400      	movi      	r4, 0
 150:	2c15      	subi      	r4, 22
 152:	07ec      	br      	0x12a	// 12a <wifi_mgr_proc_hgic_cmd+0x12a>
 154:	e0000000 	bsr      	0x0	// 0 <wificfg_get_conn_state>
 158:	7503      	sexth      	r4, r0
 15a:	079a      	br      	0x8e	// 8e <wifi_mgr_proc_hgic_cmd+0x8e>
 15c:	027c      	lrw      	r3, 0x0	// 3e8 <wifi_mgr_proc_hgic_cmd+0x3e8>
 15e:	3100      	movi      	r1, 0
 160:	830c      	ld.b      	r0, (r3, 0xc)
 162:	e0000000 	bsr      	0x0	// 0 <wificfg_get_ifidx>
 166:	7400      	zextb      	r0, r0
 168:	e0000000 	bsr      	0x0	// 0 <ieee80211_iface_start>
 16c:	7503      	sexth      	r4, r0
 16e:	0790      	br      	0x8e	// 8e <wifi_mgr_proc_hgic_cmd+0x8e>
 170:	0361      	lrw      	r3, 0x0	// 3e8 <wifi_mgr_proc_hgic_cmd+0x3e8>
 172:	3100      	movi      	r1, 0
 174:	830c      	ld.b      	r0, (r3, 0xc)
 176:	e0000000 	bsr      	0x0	// 0 <wificfg_get_ifidx>
 17a:	7400      	zextb      	r0, r0
 17c:	e0000000 	bsr      	0x0	// 0 <ieee80211_iface_stop>
 180:	7503      	sexth      	r4, r0
 182:	0786      	br      	0x8e	// 8e <wifi_mgr_proc_hgic_cmd+0x8e>
 184:	840c      	ld.b      	r0, (r4, 0xc)
 186:	e0000000 	bsr      	0x0	// 0 <wificfg_set_bss_bw>
 18a:	7503      	sexth      	r4, r0
 18c:	0781      	br      	0x8e	// 8e <wifi_mgr_proc_hgic_cmd+0x8e>
 18e:	840c      	ld.b      	r0, (r4, 0xc)
 190:	e0000000 	bsr      	0x0	// 0 <wificfg_set_tx_mcs>
 194:	7503      	sexth      	r4, r0
 196:	077c      	br      	0x8e	// 8e <wifi_mgr_proc_hgic_cmd+0x8e>
 198:	6c1b      	mov      	r0, r6
 19a:	e0000000 	bsr      	0x0	// 0 <wifi_mgr_proc_hgic_cmd>
 19e:	7400      	zextb      	r0, r0
 1a0:	e0000000 	bsr      	0x0	// 0 <wificfg_set_channel>
 1a4:	7503      	sexth      	r4, r0
 1a6:	0774      	br      	0x8e	// 8e <wifi_mgr_proc_hgic_cmd+0x8e>
 1a8:	6c1b      	mov      	r0, r6
 1aa:	e0000000 	bsr      	0x0	// 0 <wifi_mgr_proc_hgic_cmd>
 1ae:	6dc3      	mov      	r7, r0
 1b0:	e404000f 	addi      	r0, r4, 16
 1b4:	e0000000 	bsr      	0x0	// 0 <wifi_mgr_proc_hgic_cmd>
 1b8:	6d83      	mov      	r6, r0
 1ba:	e4040013 	addi      	r0, r4, 20
 1be:	e0000000 	bsr      	0x0	// 0 <wifi_mgr_proc_hgic_cmd>
 1c2:	330a      	movi      	r3, 10
 1c4:	7cc0      	mult      	r3, r0
 1c6:	5e9d      	subu      	r4, r6, r7
 1c8:	c4648024 	divu      	r4, r4, r3
 1cc:	2400      	addi      	r4, 1
 1ce:	748d      	zexth      	r2, r3
 1d0:	7510      	zextb      	r4, r4
 1d2:	74dd      	zexth      	r3, r7
 1d4:	3100      	movi      	r1, 0
 1d6:	1e04      	addi      	r6, r14, 16
 1d8:	7704      	zextb      	r12, r1
 1da:	6530      	cmphs      	r12, r4
 1dc:	0817      	bt      	0x20a	// 20a <wifi_mgr_proc_hgic_cmd+0x20a>
 1de:	ea0c1c83 	movi      	r12, 7299
 1e2:	6f32      	nor      	r12, r12
 1e4:	630c      	addu      	r12, r3
 1e6:	7731      	zexth      	r12, r12
 1e8:	eb0c07d0 	cmphsi      	r12, 2001
 1ec:	d4260443 	str.h      	r3, (r6, r1 << 1)
 1f0:	0c08      	bf      	0x200	// 200 <wifi_mgr_proc_hgic_cmd+0x200>
 1f2:	131f      	lrw      	r0, 0x0	// 3ec <wifi_mgr_proc_hgic_cmd+0x3ec>
 1f4:	e0000000 	bsr      	0x0	// 0 <hgprintf>
 1f8:	3000      	movi      	r0, 0
 1fa:	2815      	subi      	r0, 22
 1fc:	7503      	sexth      	r4, r0
 1fe:	0748      	br      	0x8e	// 8e <wifi_mgr_proc_hgic_cmd+0x8e>
 200:	2100      	addi      	r1, 1
 202:	3950      	cmpnei      	r1, 16
 204:	60c8      	addu      	r3, r2
 206:	74cd      	zexth      	r3, r3
 208:	0be8      	bt      	0x1d8	// 1d8 <wifi_mgr_proc_hgic_cmd+0x1d8>
 20a:	7400      	zextb      	r0, r0
 20c:	e0000000 	bsr      	0x0	// 0 <wificfg_set_bss_bw>
 210:	6c53      	mov      	r1, r4
 212:	6c1b      	mov      	r0, r6
 214:	e0000000 	bsr      	0x0	// 0 <wificfg_set_chan_list>
 218:	07f2      	br      	0x1fc	// 1fc <wifi_mgr_proc_hgic_cmd+0x1fc>
 21a:	842c      	ld.b      	r1, (r4, 0xc)
 21c:	e404000d 	addi      	r0, r4, 14
 220:	e0000000 	bsr      	0x0	// 0 <wificfg_set_chan_list>
 224:	7503      	sexth      	r4, r0
 226:	0734      	br      	0x8e	// 8e <wifi_mgr_proc_hgic_cmd+0x8e>
 228:	6c1b      	mov      	r0, r6
 22a:	e0000000 	bsr      	0x0	// 0 <wificfg_set_macaddr>
 22e:	7503      	sexth      	r4, r0
 230:	072f      	br      	0x8e	// 8e <wifi_mgr_proc_hgic_cmd+0x8e>
 232:	6c1b      	mov      	r0, r6
 234:	e0000000 	bsr      	0x0	// 0 <wificfg_set_ssid>
 238:	7503      	sexth      	r4, r0
 23a:	072a      	br      	0x8e	// 8e <wifi_mgr_proc_hgic_cmd+0x8e>
 23c:	6c1b      	mov      	r0, r6
 23e:	e0000000 	bsr      	0x0	// 0 <wificfg_set_bssid>
 242:	7503      	sexth      	r4, r0
 244:	0725      	br      	0x8e	// 8e <wifi_mgr_proc_hgic_cmd+0x8e>
 246:	3220      	movi      	r2, 32
 248:	3100      	movi      	r1, 0
 24a:	1804      	addi      	r0, r14, 16
 24c:	e0000000 	bsr      	0x0	// 0 <memset>
 250:	eb28003f 	cmplti      	r8, 64
 254:	0806      	bt      	0x260	// 260 <wifi_mgr_proc_hgic_cmd+0x260>
 256:	3220      	movi      	r2, 32
 258:	1904      	addi      	r1, r14, 16
 25a:	6c1b      	mov      	r0, r6
 25c:	e0000000 	bsr      	0x0	// 0 <hex2bin>
 260:	1804      	addi      	r0, r14, 16
 262:	e0000000 	bsr      	0x0	// 0 <wificfg_set_mcast_key>
 266:	7503      	sexth      	r4, r0
 268:	0713      	br      	0x8e	// 8e <wifi_mgr_proc_hgic_cmd+0x8e>
 26a:	3220      	movi      	r2, 32
 26c:	1904      	addi      	r1, r14, 16
 26e:	6c1b      	mov      	r0, r6
 270:	e0000000 	bsr      	0x0	// 0 <hex2bin>
 274:	1804      	addi      	r0, r14, 16
 276:	e0000000 	bsr      	0x0	// 0 <wificfg_set_wpa_psk>
 27a:	7503      	sexth      	r4, r0
 27c:	0709      	br      	0x8e	// 8e <wifi_mgr_proc_hgic_cmd+0x8e>
 27e:	3207      	movi      	r2, 7
 280:	123c      	lrw      	r1, 0x0	// 3f0 <wifi_mgr_proc_hgic_cmd+0x3f0>
 282:	6c1b      	mov      	r0, r6
 284:	e0000000 	bsr      	0x0	// 0 <memcmp>
 288:	3840      	cmpnei      	r0, 0
 28a:	3302      	movi      	r3, 2
 28c:	3004      	movi      	r0, 4
 28e:	c4030c20 	incf      	r0, r3, 0
 292:	e0000000 	bsr      	0x0	// 0 <wificfg_set_key_mgmt>
 296:	7503      	sexth      	r4, r0
 298:	06fb      	br      	0x8e	// 8e <wifi_mgr_proc_hgic_cmd+0x8e>
 29a:	321c      	movi      	r2, 28
 29c:	3100      	movi      	r1, 0
 29e:	9801      	ld.w      	r0, (r14, 0x4)
 2a0:	e0000000 	bsr      	0x0	// 0 <wifi_mgr_alloc_resp>
 2a4:	6dc3      	mov      	r7, r0
 2a6:	e9000044 	bez      	r0, 0x32e	// 32e <wifi_mgr_proc_hgic_cmd+0x32e>
 2aa:	1273      	lrw      	r3, 0x0	// 3f4 <wifi_mgr_proc_hgic_cmd+0x3f4>
 2ac:	90c7      	ld.w      	r6, (r0, 0x1c)
 2ae:	e486000b 	addi      	r4, r6, 12
 2b2:	8340      	ld.b      	r2, (r3, 0x0)
 2b4:	a64c      	st.b      	r2, (r6, 0xc)
 2b6:	8341      	ld.b      	r2, (r3, 0x1)
 2b8:	a441      	st.b      	r2, (r4, 0x1)
 2ba:	8342      	ld.b      	r2, (r3, 0x2)
 2bc:	8363      	ld.b      	r3, (r3, 0x3)
 2be:	a463      	st.b      	r3, (r4, 0x3)
 2c0:	a442      	st.b      	r2, (r4, 0x2)
 2c2:	126e      	lrw      	r3, 0x0	// 3f8 <wifi_mgr_proc_hgic_cmd+0x3f8>
 2c4:	8340      	ld.b      	r2, (r3, 0x0)
 2c6:	a444      	st.b      	r2, (r4, 0x4)
 2c8:	8341      	ld.b      	r2, (r3, 0x1)
 2ca:	a445      	st.b      	r2, (r4, 0x5)
 2cc:	8342      	ld.b      	r2, (r3, 0x2)
 2ce:	8363      	ld.b      	r3, (r3, 0x3)
 2d0:	a467      	st.b      	r3, (r4, 0x7)
 2d2:	a446      	st.b      	r2, (r4, 0x6)
 2d4:	126a      	lrw      	r3, 0x0	// 3fc <wifi_mgr_proc_hgic_cmd+0x3fc>
 2d6:	8340      	ld.b      	r2, (r3, 0x0)
 2d8:	a454      	st.b      	r2, (r4, 0x14)
 2da:	8341      	ld.b      	r2, (r3, 0x1)
 2dc:	a455      	st.b      	r2, (r4, 0x15)
 2de:	8342      	ld.b      	r2, (r3, 0x2)
 2e0:	8363      	ld.b      	r3, (r3, 0x3)
 2e2:	a456      	st.b      	r2, (r4, 0x16)
 2e4:	a477      	st.b      	r3, (r4, 0x17)
 2e6:	e0000000 	bsr      	0x0	// 0 <sysctrl_get_chip_id>
 2ea:	3301      	movi      	r3, 1
 2ec:	a408      	st.b      	r0, (r4, 0x8)
 2ee:	a46a      	st.b      	r3, (r4, 0xa)
 2f0:	c50056e0 	zext      	r0, r0, 23, 8
 2f4:	3300      	movi      	r3, 0
 2f6:	a46b      	st.b      	r3, (r4, 0xb)
 2f8:	a409      	st.b      	r0, (r4, 0x9)
 2fa:	e0000000 	bsr      	0x0	// 0 <sysctrl_efuse_get_smt_dat>
 2fe:	c50055e3 	zext      	r3, r0, 15, 8
 302:	a418      	st.b      	r0, (r4, 0x18)
 304:	a479      	st.b      	r3, (r4, 0x19)
 306:	c60056e3 	zext      	r3, r0, 23, 16
 30a:	4818      	lsri      	r0, r0, 24
 30c:	a47a      	st.b      	r3, (r4, 0x1a)
 30e:	a41b      	st.b      	r0, (r4, 0x1b)
 310:	e4060017 	addi      	r0, r6, 24
 314:	e0000000 	bsr      	0x0	// 0 <sysctrl_efuse_mac_addr_calc>
 318:	311c      	movi      	r1, 28
 31a:	6c1f      	mov      	r0, r7
 31c:	e0000000 	bsr      	0x0	// 0 <skb_put>
 320:	9801      	ld.w      	r0, (r14, 0x4)
 322:	e0000000 	bsr      	0x0	// 0 <kfree_skb>
 326:	341c      	movi      	r4, 28
 328:	b8e1      	st.w      	r7, (r14, 0x4)
 32a:	7513      	sexth      	r4, r4
 32c:	06b1      	br      	0x8e	// 8e <wifi_mgr_proc_hgic_cmd+0x8e>
 32e:	3400      	movi      	r4, 0
 330:	2c0b      	subi      	r4, 12
 332:	07fc      	br      	0x32a	// 32a <wifi_mgr_proc_hgic_cmd+0x32a>
 334:	846c      	ld.b      	r3, (r4, 0xc)
 336:	3b40      	cmpnei      	r3, 0
 338:	116c      	lrw      	r3, 0x0	// 3e8 <wifi_mgr_proc_hgic_cmd+0x3e8>
 33a:	c4000504 	mvc      	r4
 33e:	3100      	movi      	r1, 0
 340:	830c      	ld.b      	r0, (r3, 0xc)
 342:	e0000000 	bsr      	0x0	// 0 <wificfg_get_ifidx>
 346:	7510      	zextb      	r4, r4
 348:	6c53      	mov      	r1, r4
 34a:	3200      	movi      	r2, 0
 34c:	7400      	zextb      	r0, r0
 34e:	e0000000 	bsr      	0x0	// 0 <ieee80211_scan>
 352:	7503      	sexth      	r4, r0
 354:	069d      	br      	0x8e	// 8e <wifi_mgr_proc_hgic_cmd+0x8e>
 356:	32a8      	movi      	r2, 168
 358:	4244      	lsli      	r2, r2, 4
 35a:	3100      	movi      	r1, 0
 35c:	9801      	ld.w      	r0, (r14, 0x4)
 35e:	e0000000 	bsr      	0x0	// 0 <wifi_mgr_alloc_resp>
 362:	6d83      	mov      	r6, r0
 364:	e9000013 	bez      	r0, 0x38a	// 38a <wifi_mgr_proc_hgic_cmd+0x38a>
 368:	9007      	ld.w      	r0, (r0, 0x1c)
 36a:	3140      	movi      	r1, 64
 36c:	200b      	addi      	r0, 12
 36e:	e0000000 	bsr      	0x0	// 0 <ieee80211_get_bsslist>
 372:	342a      	movi      	r4, 42
 374:	7d00      	mult      	r4, r0
 376:	6c53      	mov      	r1, r4
 378:	6c1b      	mov      	r0, r6
 37a:	e0000000 	bsr      	0x0	// 0 <skb_put>
 37e:	9801      	ld.w      	r0, (r14, 0x4)
 380:	e0000000 	bsr      	0x0	// 0 <kfree_skb>
 384:	b8c1      	st.w      	r6, (r14, 0x4)
 386:	7513      	sexth      	r4, r4
 388:	0683      	br      	0x8e	// 8e <wifi_mgr_proc_hgic_cmd+0x8e>
 38a:	3400      	movi      	r4, 0
 38c:	2c0b      	subi      	r4, 12
 38e:	07fc      	br      	0x386	// 386 <wifi_mgr_proc_hgic_cmd+0x386>
 390:	6c1b      	mov      	r0, r6
 392:	e0000000 	bsr      	0x0	// 0 <wifi_mgr_proc_hgic_cmd>
 396:	1075      	lrw      	r3, 0x0	// 3e8 <wifi_mgr_proc_hgic_cmd+0x3e8>
 398:	6d03      	mov      	r4, r0
 39a:	3100      	movi      	r1, 0
 39c:	830c      	ld.b      	r0, (r3, 0xc)
 39e:	e0000000 	bsr      	0x0	// 0 <wificfg_get_ifidx>
 3a2:	7400      	zextb      	r0, r0
 3a4:	7451      	zexth      	r1, r4
 3a6:	e0000000 	bsr      	0x0	// 0 <ieee80211_pairing>
 3aa:	7503      	sexth      	r4, r0
 3ac:	0671      	br      	0x8e	// 8e <wifi_mgr_proc_hgic_cmd+0x8e>
 3ae:	842d      	ld.b      	r1, (r4, 0xd)
 3b0:	840c      	ld.b      	r0, (r4, 0xc)
 3b2:	e0000000 	bsr      	0x0	// 0 <wificfg_set_acs>
 3b6:	7503      	sexth      	r4, r0
 3b8:	066b      	br      	0x8e	// 8e <wifi_mgr_proc_hgic_cmd+0x8e>
 3ba:	3002      	movi      	r0, 2
 3bc:	e0000000 	bsr      	0x0	// 0 <tsensor_meas>
 3c0:	7503      	sexth      	r4, r0
 3c2:	0666      	br      	0x8e	// 8e <wifi_mgr_proc_hgic_cmd+0x8e>
	...
 400:	3224      	movi      	r2, 36
 402:	3100      	movi      	r1, 0
 404:	9801      	ld.w      	r0, (r14, 0x4)
 406:	e0000000 	bsr      	0x0	// 0 <wifi_mgr_alloc_resp>
 40a:	6d83      	mov      	r6, r0
 40c:	e9000015 	bez      	r0, 0x436	// 436 <wifi_mgr_proc_hgic_cmd+0x436>
 410:	9087      	ld.w      	r4, (r0, 0x1c)
 412:	240b      	addi      	r4, 12
 414:	6c13      	mov      	r0, r4
 416:	e0000000 	bsr      	0x0	// 0 <wificfg_get_ssid>
 41a:	6c13      	mov      	r0, r4
 41c:	e0000000 	bsr      	0x0	// 0 <strlen>
 420:	6c43      	mov      	r1, r0
 422:	6d03      	mov      	r4, r0
 424:	6c1b      	mov      	r0, r6
 426:	e0000000 	bsr      	0x0	// 0 <skb_put>
 42a:	9801      	ld.w      	r0, (r14, 0x4)
 42c:	e0000000 	bsr      	0x0	// 0 <kfree_skb>
 430:	b8c1      	st.w      	r6, (r14, 0x4)
 432:	7513      	sexth      	r4, r4
 434:	062d      	br      	0x8e	// 8e <wifi_mgr_proc_hgic_cmd+0x8e>
 436:	3400      	movi      	r4, 0
 438:	2c0b      	subi      	r4, 12
 43a:	07fc      	br      	0x432	// 432 <wifi_mgr_proc_hgic_cmd+0x432>
 43c:	3208      	movi      	r2, 8
 43e:	3100      	movi      	r1, 0
 440:	9801      	ld.w      	r0, (r14, 0x4)
 442:	e0000000 	bsr      	0x0	// 0 <wifi_mgr_alloc_resp>
 446:	6d03      	mov      	r4, r0
 448:	e9000011 	bez      	r0, 0x46a	// 46a <wifi_mgr_proc_hgic_cmd+0x46a>
 44c:	9007      	ld.w      	r0, (r0, 0x1c)
 44e:	200b      	addi      	r0, 12
 450:	e0000000 	bsr      	0x0	// 0 <wificfg_get_bssid>
 454:	3106      	movi      	r1, 6
 456:	6c13      	mov      	r0, r4
 458:	e0000000 	bsr      	0x0	// 0 <skb_put>
 45c:	9801      	ld.w      	r0, (r14, 0x4)
 45e:	e0000000 	bsr      	0x0	// 0 <kfree_skb>
 462:	b881      	st.w      	r4, (r14, 0x4)
 464:	3406      	movi      	r4, 6
 466:	7513      	sexth      	r4, r4
 468:	0613      	br      	0x8e	// 8e <wifi_mgr_proc_hgic_cmd+0x8e>
 46a:	3400      	movi      	r4, 0
 46c:	2c0b      	subi      	r4, 12
 46e:	07fc      	br      	0x466	// 466 <wifi_mgr_proc_hgic_cmd+0x466>
 470:	3244      	movi      	r2, 68
 472:	3100      	movi      	r1, 0
 474:	9801      	ld.w      	r0, (r14, 0x4)
 476:	e0000000 	bsr      	0x0	// 0 <wifi_mgr_alloc_resp>
 47a:	6d03      	mov      	r4, r0
 47c:	e9000018 	bez      	r0, 0x4ac	// 4ac <wifi_mgr_proc_hgic_cmd+0x4ac>
 480:	90c7      	ld.w      	r6, (r0, 0x1c)
 482:	260b      	addi      	r6, 12
 484:	1804      	addi      	r0, r14, 16
 486:	e0000000 	bsr      	0x0	// 0 <wificfg_get_wpa_psk>
 48a:	6c9b      	mov      	r2, r6
 48c:	3120      	movi      	r1, 32
 48e:	1804      	addi      	r0, r14, 16
 490:	e0000000 	bsr      	0x0	// 0 <key_str>
 494:	3140      	movi      	r1, 64
 496:	6c13      	mov      	r0, r4
 498:	e0000000 	bsr      	0x0	// 0 <skb_put>
 49c:	9801      	ld.w      	r0, (r14, 0x4)
 49e:	e0000000 	bsr      	0x0	// 0 <kfree_skb>
 4a2:	b881      	st.w      	r4, (r14, 0x4)
 4a4:	3440      	movi      	r4, 64
 4a6:	7513      	sexth      	r4, r4
 4a8:	e800fdf3 	br      	0x8e	// 8e <wifi_mgr_proc_hgic_cmd+0x8e>
 4ac:	3400      	movi      	r4, 0
 4ae:	2c0b      	subi      	r4, 12
 4b0:	07fb      	br      	0x4a6	// 4a6 <wifi_mgr_proc_hgic_cmd+0x4a6>
 4b2:	007a      	lrw      	r3, 0x0	// 844 <wifi_mgr_proc_hgic_cmd+0x844>
 4b4:	d8834008 	ld.bs      	r4, (r3, 0x8)
 4b8:	e4840fff 	addi      	r4, r4, 4096
 4bc:	7513      	sexth      	r4, r4
 4be:	e800fde8 	br      	0x8e	// 8e <wifi_mgr_proc_hgic_cmd+0x8e>
 4c2:	6c1b      	mov      	r0, r6
 4c4:	e0000000 	bsr      	0x0	// 0 <wifi_mgr_proc_hgic_cmd>
 4c8:	e0000000 	bsr      	0x0	// 0 <wificfg_set_beacon_int>
 4cc:	7503      	sexth      	r4, r0
 4ce:	e800fde0 	br      	0x8e	// 8e <wifi_mgr_proc_hgic_cmd+0x8e>
 4d2:	3280      	movi      	r2, 128
 4d4:	4243      	lsli      	r2, r2, 3
 4d6:	3100      	movi      	r1, 0
 4d8:	9801      	ld.w      	r0, (r14, 0x4)
 4da:	e0000000 	bsr      	0x0	// 0 <wifi_mgr_alloc_resp>
 4de:	0164      	lrw      	r3, 0x0	// 848 <wifi_mgr_proc_hgic_cmd+0x848>
 4e0:	6d83      	mov      	r6, r0
 4e2:	3100      	movi      	r1, 0
 4e4:	830c      	ld.b      	r0, (r3, 0xc)
 4e6:	e0000000 	bsr      	0x0	// 0 <wificfg_get_ifidx>
 4ea:	7400      	zextb      	r0, r0
 4ec:	e9060016 	bez      	r6, 0x518	// 518 <wifi_mgr_proc_hgic_cmd+0x518>
 4f0:	9626      	ld.w      	r1, (r6, 0x18)
 4f2:	9649      	ld.w      	r2, (r6, 0x24)
 4f4:	6086      	subu      	r2, r1
 4f6:	340c      	movi      	r4, 12
 4f8:	c4828022 	divu      	r2, r2, r4
 4fc:	e0000000 	bsr      	0x0	// 0 <ieee80211_get_stalist>
 500:	7d00      	mult      	r4, r0
 502:	6c53      	mov      	r1, r4
 504:	6c1b      	mov      	r0, r6
 506:	e0000000 	bsr      	0x0	// 0 <skb_put>
 50a:	9801      	ld.w      	r0, (r14, 0x4)
 50c:	e0000000 	bsr      	0x0	// 0 <kfree_skb>
 510:	b8c1      	st.w      	r6, (r14, 0x4)
 512:	7513      	sexth      	r4, r4
 514:	e800fdbd 	br      	0x8e	// 8e <wifi_mgr_proc_hgic_cmd+0x8e>
 518:	3400      	movi      	r4, 0
 51a:	2c0b      	subi      	r4, 12
 51c:	07fb      	br      	0x512	// 512 <wifi_mgr_proc_hgic_cmd+0x512>
 51e:	3001      	movi      	r0, 1
 520:	e0000000 	bsr      	0x0	// 0 <wificfg_save>
 524:	7503      	sexth      	r4, r0
 526:	e800fdb4 	br      	0x8e	// 8e <wifi_mgr_proc_hgic_cmd+0x8e>
 52a:	e0000000 	bsr      	0x0	// 0 <wificfg_get_stacnt>
 52e:	7503      	sexth      	r4, r0
 530:	e800fdaf 	br      	0x8e	// 8e <wifi_mgr_proc_hgic_cmd+0x8e>
 534:	840c      	ld.b      	r0, (r4, 0xc)
 536:	e0000000 	bsr      	0x0	// 0 <wificfg_set_tx_power>
 53a:	7503      	sexth      	r4, r0
 53c:	e800fda9 	br      	0x8e	// 8e <wifi_mgr_proc_hgic_cmd+0x8e>
 540:	e0000000 	bsr      	0x0	// 0 <wificfg_get_txpower>
 544:	7503      	sexth      	r4, r0
 546:	e800fda4 	br      	0x8e	// 8e <wifi_mgr_proc_hgic_cmd+0x8e>
 54a:	840c      	ld.b      	r0, (r4, 0xc)
 54c:	e0000000 	bsr      	0x0	// 0 <wificfg_set_agg_cnt>
 550:	7503      	sexth      	r4, r0
 552:	e800fd9e 	br      	0x8e	// 8e <wifi_mgr_proc_hgic_cmd+0x8e>
 556:	e0000000 	bsr      	0x0	// 0 <wificfg_get_agg_cnt>
 55a:	7503      	sexth      	r4, r0
 55c:	e800fd99 	br      	0x8e	// 8e <wifi_mgr_proc_hgic_cmd+0x8e>
 560:	3280      	movi      	r2, 128
 562:	3100      	movi      	r1, 0
 564:	9801      	ld.w      	r0, (r14, 0x4)
 566:	e0000000 	bsr      	0x0	// 0 <wifi_mgr_alloc_resp>
 56a:	6d83      	mov      	r6, r0
 56c:	e9000025 	bez      	r0, 0x5b6	// 5b6 <wifi_mgr_proc_hgic_cmd+0x5b6>
 570:	1f04      	addi      	r7, r14, 16
 572:	9086      	ld.w      	r4, (r0, 0x18)
 574:	3110      	movi      	r1, 16
 576:	6c1f      	mov      	r0, r7
 578:	e0000000 	bsr      	0x0	// 0 <wificfg_get_chan_list>
 57c:	6cd3      	mov      	r3, r4
 57e:	3100      	movi      	r1, 0
 580:	6405      	cmplt      	r1, r0
 582:	0811      	bt      	0x5a4	// 5a4 <wifi_mgr_proc_hgic_cmd+0x5a4>
 584:	38df      	btsti      	r0, 31
 586:	3400      	movi      	r4, 0
 588:	c4800c20 	incf      	r4, r0, 0
 58c:	6110      	addu      	r4, r4
 58e:	6c53      	mov      	r1, r4
 590:	6c1b      	mov      	r0, r6
 592:	e0000000 	bsr      	0x0	// 0 <skb_put>
 596:	9801      	ld.w      	r0, (r14, 0x4)
 598:	e0000000 	bsr      	0x0	// 0 <kfree_skb>
 59c:	b8c1      	st.w      	r6, (r14, 0x4)
 59e:	7513      	sexth      	r4, r4
 5a0:	e800fd77 	br      	0x8e	// 8e <wifi_mgr_proc_hgic_cmd+0x8e>
 5a4:	d0270442 	ldr.h      	r2, (r7, r1 << 1)
 5a8:	7489      	zexth      	r2, r2
 5aa:	a340      	st.b      	r2, (r3, 0x0)
 5ac:	4a48      	lsri      	r2, r2, 8
 5ae:	a341      	st.b      	r2, (r3, 0x1)
 5b0:	2100      	addi      	r1, 1
 5b2:	2301      	addi      	r3, 2
 5b4:	07e6      	br      	0x580	// 580 <wifi_mgr_proc_hgic_cmd+0x580>
 5b6:	3400      	movi      	r4, 0
 5b8:	2c0b      	subi      	r4, 12
 5ba:	07f2      	br      	0x59e	// 59e <wifi_mgr_proc_hgic_cmd+0x59e>
 5bc:	e0000000 	bsr      	0x0	// 0 <wificfg_get_bss_bw>
 5c0:	7503      	sexth      	r4, r0
 5c2:	e800fd66 	br      	0x8e	// 8e <wifi_mgr_proc_hgic_cmd+0x8e>
 5c6:	840c      	ld.b      	r0, (r4, 0xc)
 5c8:	e0000000 	bsr      	0x0	// 0 <wificfg_set_pri_chan>
 5cc:	7503      	sexth      	r4, r0
 5ce:	e800fd60 	br      	0x8e	// 8e <wifi_mgr_proc_hgic_cmd+0x8e>
 5d2:	0361      	lrw      	r3, 0x0	// 848 <wifi_mgr_proc_hgic_cmd+0x848>
 5d4:	3101      	movi      	r1, 1
 5d6:	830c      	ld.b      	r0, (r3, 0xc)
 5d8:	e0000000 	bsr      	0x0	// 0 <wificfg_get_ifidx>
 5dc:	7400      	zextb      	r0, r0
 5de:	330c      	movi      	r3, 12
 5e0:	3200      	movi      	r2, 0
 5e2:	6c5b      	mov      	r1, r6
 5e4:	e0000000 	bsr      	0x0	// 0 <ieee80211_conf_wakeup_sta>
 5e8:	7503      	sexth      	r4, r0
 5ea:	e800fd52 	br      	0x8e	// 8e <wifi_mgr_proc_hgic_cmd+0x8e>
 5ee:	6c1b      	mov      	r0, r6
 5f0:	e0000000 	bsr      	0x0	// 0 <wifi_mgr_proc_hgic_cmd>
 5f4:	e0000000 	bsr      	0x0	// 0 <wificfg_set_bss_maxidle>
 5f8:	7503      	sexth      	r4, r0
 5fa:	e800fd4a 	br      	0x8e	// 8e <wifi_mgr_proc_hgic_cmd+0x8e>
 5fe:	6c1b      	mov      	r0, r6
 600:	e0000000 	bsr      	0x0	// 0 <wifi_mgr_proc_hgic_cmd>
 604:	e0000000 	bsr      	0x0	// 0 <wificfg_set_dtim_period>
 608:	7503      	sexth      	r4, r0
 60a:	e800fd42 	br      	0x8e	// 8e <wifi_mgr_proc_hgic_cmd+0x8e>
 60e:	840c      	ld.b      	r0, (r4, 0xc)
 610:	e0000000 	bsr      	0x0	// 0 <wificfg_load_def>
 614:	e800fd2a 	br      	0x68	// 68 <wifi_mgr_proc_hgic_cmd+0x68>
 618:	0373      	lrw      	r3, 0x0	// 848 <wifi_mgr_proc_hgic_cmd+0x848>
 61a:	3100      	movi      	r1, 0
 61c:	830c      	ld.b      	r0, (r3, 0xc)
 61e:	e0000000 	bsr      	0x0	// 0 <wificfg_get_ifidx>
 622:	7400      	zextb      	r0, r0
 624:	6c5b      	mov      	r1, r6
 626:	e0000000 	bsr      	0x0	// 0 <ieee80211_disassoc>
 62a:	7503      	sexth      	r4, r0
 62c:	e800fd31 	br      	0x8e	// 8e <wifi_mgr_proc_hgic_cmd+0x8e>
 630:	6c1b      	mov      	r0, r6
 632:	e0000000 	bsr      	0x0	// 0 <wifi_mgr_proc_hgic_cmd>
 636:	e0000000 	bsr      	0x0	// 0 <wificfg_set_sleep_aplost_time>
 63a:	7503      	sexth      	r4, r0
 63c:	e800fd29 	br      	0x8e	// 8e <wifi_mgr_proc_hgic_cmd+0x8e>
 640:	037d      	lrw      	r3, 0x0	// 848 <wifi_mgr_proc_hgic_cmd+0x848>
 642:	3100      	movi      	r1, 0
 644:	830c      	ld.b      	r0, (r3, 0xc)
 646:	e0000000 	bsr      	0x0	// 0 <wificfg_get_ifidx>
 64a:	7400      	zextb      	r0, r0
 64c:	6c5b      	mov      	r1, r6
 64e:	e0000000 	bsr      	0x0	// 0 <ieee80211_unpair>
 652:	7503      	sexth      	r4, r0
 654:	e800fd1d 	br      	0x8e	// 8e <wifi_mgr_proc_hgic_cmd+0x8e>
 658:	846c      	ld.b      	r3, (r4, 0xc)
 65a:	3b40      	cmpnei      	r3, 0
 65c:	6403      	mvcv      	r0
 65e:	7400      	zextb      	r0, r0
 660:	e0000000 	bsr      	0x0	// 0 <wificfg_set_auto_chan_switch>
 664:	7503      	sexth      	r4, r0
 666:	e800fd14 	br      	0x8e	// 8e <wifi_mgr_proc_hgic_cmd+0x8e>
 66a:	846c      	ld.b      	r3, (r4, 0xc)
 66c:	3b40      	cmpnei      	r3, 0
 66e:	3400      	movi      	r4, 0
 670:	1317      	lrw      	r0, 0x0	// 84c <wifi_mgr_proc_hgic_cmd+0x84c>
 672:	c4040c20 	incf      	r0, r4, 0
 676:	6c57      	mov      	r1, r5
 678:	e0000000 	bsr      	0x0	// 0 <print_redirect>
 67c:	e800fd09 	br      	0x8e	// 8e <wifi_mgr_proc_hgic_cmd+0x8e>
 680:	320c      	movi      	r2, 12
 682:	3100      	movi      	r1, 0
 684:	9801      	ld.w      	r0, (r14, 0x4)
 686:	e0000000 	bsr      	0x0	// 0 <wifi_mgr_alloc_resp>
 68a:	6d83      	mov      	r6, r0
 68c:	e9000019 	bez      	r0, 0x6be	// 6be <wifi_mgr_proc_hgic_cmd+0x6be>
 690:	9087      	ld.w      	r4, (r0, 0x1c)
 692:	240b      	addi      	r4, 12
 694:	e0000000 	bsr      	0x0	// 0 <wificfg_keymgmt_str>
 698:	6c43      	mov      	r1, r0
 69a:	6c13      	mov      	r0, r4
 69c:	e0000000 	bsr      	0x0	// 0 <strcpy>
 6a0:	6c13      	mov      	r0, r4
 6a2:	e0000000 	bsr      	0x0	// 0 <strlen>
 6a6:	6c43      	mov      	r1, r0
 6a8:	6d03      	mov      	r4, r0
 6aa:	6c1b      	mov      	r0, r6
 6ac:	e0000000 	bsr      	0x0	// 0 <skb_put>
 6b0:	9801      	ld.w      	r0, (r14, 0x4)
 6b2:	e0000000 	bsr      	0x0	// 0 <kfree_skb>
 6b6:	b8c1      	st.w      	r6, (r14, 0x4)
 6b8:	7513      	sexth      	r4, r4
 6ba:	e800fcea 	br      	0x8e	// 8e <wifi_mgr_proc_hgic_cmd+0x8e>
 6be:	3400      	movi      	r4, 0
 6c0:	2c0b      	subi      	r4, 12
 6c2:	07fb      	br      	0x6b8	// 6b8 <wifi_mgr_proc_hgic_cmd+0x6b8>
 6c4:	840c      	ld.b      	r0, (r4, 0xc)
 6c6:	e0000000 	bsr      	0x0	// 0 <wificfg_set_pair_autostop>
 6ca:	7503      	sexth      	r4, r0
 6cc:	e800fce1 	br      	0x8e	// 8e <wifi_mgr_proc_hgic_cmd+0x8e>
 6d0:	840c      	ld.b      	r0, (r4, 0xc)
 6d2:	e0000000 	bsr      	0x0	// 0 <wificfg_set_super_pwr>
 6d6:	7503      	sexth      	r4, r0
 6d8:	e800fcdb 	br      	0x8e	// 8e <wifi_mgr_proc_hgic_cmd+0x8e>
 6dc:	6c1b      	mov      	r0, r6
 6de:	e0000000 	bsr      	0x0	// 0 <wificfg_set_repeater_ssid>
 6e2:	7503      	sexth      	r4, r0
 6e4:	e800fcd5 	br      	0x8e	// 8e <wifi_mgr_proc_hgic_cmd+0x8e>
 6e8:	3220      	movi      	r2, 32
 6ea:	1904      	addi      	r1, r14, 16
 6ec:	6c1b      	mov      	r0, r6
 6ee:	e0000000 	bsr      	0x0	// 0 <hex2bin>
 6f2:	1804      	addi      	r0, r14, 16
 6f4:	e0000000 	bsr      	0x0	// 0 <wificfg_set_repeater_psk>
 6f8:	7503      	sexth      	r4, r0
 6fa:	e800fcca 	br      	0x8e	// 8e <wifi_mgr_proc_hgic_cmd+0x8e>
 6fe:	840c      	ld.b      	r0, (r4, 0xc)
 700:	e0000000 	bsr      	0x0	// 0 <wificfg_set_auto_save>
 704:	7503      	sexth      	r4, r0
 706:	e800fcc4 	br      	0x8e	// 8e <wifi_mgr_proc_hgic_cmd+0x8e>
 70a:	1270      	lrw      	r3, 0x0	// 848 <wifi_mgr_proc_hgic_cmd+0x848>
 70c:	3100      	movi      	r1, 0
 70e:	830c      	ld.b      	r0, (r3, 0xc)
 710:	e0000000 	bsr      	0x0	// 0 <wificfg_get_ifidx>
 714:	7400      	zextb      	r0, r0
 716:	e444001d 	addi      	r2, r4, 30
 71a:	e469101d 	subi      	r3, r9, 30
 71e:	6c5b      	mov      	r1, r6
 720:	e0000000 	bsr      	0x0	// 0 <ieee80211_tx_custmgmt>
 724:	7503      	sexth      	r4, r0
 726:	e800fcb4 	br      	0x8e	// 8e <wifi_mgr_proc_hgic_cmd+0x8e>
 72a:	1268      	lrw      	r3, 0x0	// 848 <wifi_mgr_proc_hgic_cmd+0x848>
 72c:	3100      	movi      	r1, 0
 72e:	830c      	ld.b      	r0, (r3, 0xc)
 730:	e0000000 	bsr      	0x0	// 0 <wificfg_get_ifidx>
 734:	75c0      	zextb      	r7, r0
 736:	3100      	movi      	r1, 0
 738:	1b04      	addi      	r3, r14, 16
 73a:	6c9b      	mov      	r2, r6
 73c:	6c1f      	mov      	r0, r7
 73e:	e0000000 	bsr      	0x0	// 0 <ieee80211_conf_get_stainfo>
 742:	6c43      	mov      	r1, r0
 744:	e9200035 	bnez      	r0, 0x7ae	// 7ae <wifi_mgr_proc_hgic_cmd+0x7ae>
 748:	3280      	movi      	r2, 128
 74a:	4243      	lsli      	r2, r2, 3
 74c:	9801      	ld.w      	r0, (r14, 0x4)
 74e:	e0000000 	bsr      	0x0	// 0 <wifi_mgr_alloc_resp>
 752:	6d83      	mov      	r6, r0
 754:	e9000030 	bez      	r0, 0x7b4	// 7b4 <wifi_mgr_proc_hgic_cmd+0x7b4>
 758:	310c      	movi      	r1, 12
 75a:	e0000000 	bsr      	0x0	// 0 <skb_put>
 75e:	d82e0010 	ld.b      	r1, (r14, 0x10)
 762:	a020      	st.b      	r1, (r0, 0x0)
 764:	d84e001b 	ld.b      	r2, (r14, 0x1b)
 768:	8061      	ld.b      	r3, (r0, 0x1)
 76a:	c4625c00 	ins      	r3, r2, 0, 0
 76e:	a061      	st.b      	r3, (r0, 0x1)
 770:	d86e0018 	ld.b      	r3, (r14, 0x18)
 774:	a068      	st.b      	r3, (r0, 0x8)
 776:	d86e0019 	ld.b      	r3, (r14, 0x19)
 77a:	6d03      	mov      	r4, r0
 77c:	a069      	st.b      	r3, (r0, 0x9)
 77e:	1a03      	addi      	r2, r14, 12
 780:	6c1f      	mov      	r0, r7
 782:	e0000000 	bsr      	0x0	// 0 <ieee80211_conf_get_sta_snr>
 786:	d86e000c 	ld.b      	r3, (r14, 0xc)
 78a:	a46a      	st.b      	r3, (r4, 0xa)
 78c:	d86e000d 	ld.b      	r3, (r14, 0xd)
 790:	a46b      	st.b      	r3, (r4, 0xb)
 792:	3206      	movi      	r2, 6
 794:	e42e0011 	addi      	r1, r14, 18
 798:	5c06      	addi      	r0, r4, 2
 79a:	e0000000 	bsr      	0x0	// 0 <memcpy>
 79e:	9801      	ld.w      	r0, (r14, 0x4)
 7a0:	e0000000 	bsr      	0x0	// 0 <kfree_skb>
 7a4:	340c      	movi      	r4, 12
 7a6:	b8c1      	st.w      	r6, (r14, 0x4)
 7a8:	7513      	sexth      	r4, r4
 7aa:	e800fc72 	br      	0x8e	// 8e <wifi_mgr_proc_hgic_cmd+0x8e>
 7ae:	3400      	movi      	r4, 0
 7b0:	2c12      	subi      	r4, 19
 7b2:	07fb      	br      	0x7a8	// 7a8 <wifi_mgr_proc_hgic_cmd+0x7a8>
 7b4:	3400      	movi      	r4, 0
 7b6:	2c0b      	subi      	r4, 12
 7b8:	07f8      	br      	0x7a8	// 7a8 <wifi_mgr_proc_hgic_cmd+0x7a8>
 7ba:	1164      	lrw      	r3, 0x0	// 848 <wifi_mgr_proc_hgic_cmd+0x848>
 7bc:	3100      	movi      	r1, 0
 7be:	830c      	ld.b      	r0, (r3, 0xc)
 7c0:	e0000000 	bsr      	0x0	// 0 <wificfg_get_ifidx>
 7c4:	7400      	zextb      	r0, r0
 7c6:	e4240017 	addi      	r1, r4, 24
 7ca:	e4491017 	subi      	r2, r9, 24
 7ce:	e0000000 	bsr      	0x0	// 0 <ieee80211_tx_mgmt>
 7d2:	7503      	sexth      	r4, r0
 7d4:	e800fc5d 	br      	0x8e	// 8e <wifi_mgr_proc_hgic_cmd+0x8e>
 7d8:	840c      	ld.b      	r0, (r4, 0xc)
 7da:	e0000000 	bsr      	0x0	// 0 <wificfg_set_dcdc13>
 7de:	7503      	sexth      	r4, r0
 7e0:	e800fc57 	br      	0x8e	// 8e <wifi_mgr_proc_hgic_cmd+0x8e>
 7e4:	6c1b      	mov      	r0, r6
 7e6:	e0000000 	bsr      	0x0	// 0 <wifi_mgr_proc_hgic_cmd>
 7ea:	7401      	zexth      	r0, r0
 7ec:	e0000000 	bsr      	0x0	// 0 <wificfg_set_acktmo>
 7f0:	7503      	sexth      	r4, r0
 7f2:	e800fc4e 	br      	0x8e	// 8e <wifi_mgr_proc_hgic_cmd+0x8e>
 7f6:	e0000000 	bsr      	0x0	// 0 <sysctrl_efuse_get_bios_id>
 7fa:	6d83      	mov      	r6, r0
 7fc:	2e05      	subi      	r6, 6
 7fe:	7598      	zextb      	r6, r6
 800:	e0000000 	bsr      	0x0	// 0 <sysctrl_efuse_get_module_type>
 804:	3400      	movi      	r4, 0
 806:	3e0a      	cmphsi      	r6, 11
 808:	c4805ce0 	ins      	r4, r0, 7, 0
 80c:	64c3      	mvcv      	r3
 80e:	c4835c08 	ins      	r4, r3, 8, 8
 812:	7513      	sexth      	r4, r4
 814:	e800fc3d 	br      	0x8e	// 8e <wifi_mgr_proc_hgic_cmd+0x8e>
 818:	840c      	ld.b      	r0, (r4, 0xc)
 81a:	e0000000 	bsr      	0x0	// 0 <wificfg_set_pa_pwrctrl_dis>
 81e:	7503      	sexth      	r4, r0
 820:	e800fc37 	br      	0x8e	// 8e <wifi_mgr_proc_hgic_cmd+0x8e>
 824:	e0000000 	bsr      	0x0	// 0 <wificfg_get_reason_code>
 828:	7503      	sexth      	r4, r0
 82a:	e800fc32 	br      	0x8e	// 8e <wifi_mgr_proc_hgic_cmd+0x8e>
 82e:	e0000000 	bsr      	0x0	// 0 <wificfg_get_status_code>
 832:	7503      	sexth      	r4, r0
 834:	e800fc2d 	br      	0x8e	// 8e <wifi_mgr_proc_hgic_cmd+0x8e>
 838:	6c1b      	mov      	r0, r6
 83a:	e0000000 	bsr      	0x0	// 0 <wificfg_set_mcast_txparam>
 83e:	7503      	sexth      	r4, r0
 840:	e800fc27 	br      	0x8e	// 8e <wifi_mgr_proc_hgic_cmd+0x8e>
	...
 850:	6ca3      	mov      	r2, r8
 852:	6c5b      	mov      	r1, r6
 854:	6c17      	mov      	r0, r5
 856:	e0000000 	bsr      	0x0	// 0 <wifi_mgr_set_sta_freqinfo>
 85a:	7503      	sexth      	r4, r0
 85c:	e800fc19 	br      	0x8e	// 8e <wifi_mgr_proc_hgic_cmd+0x8e>
 860:	6c5b      	mov      	r1, r6
 862:	6c17      	mov      	r0, r5
 864:	e0000000 	bsr      	0x0	// 0 <wifi_mgr_reset_sta>
 868:	7503      	sexth      	r4, r0
 86a:	e800fc12 	br      	0x8e	// 8e <wifi_mgr_proc_hgic_cmd+0x8e>
 86e:	846c      	ld.b      	r3, (r4, 0xc)
 870:	3b40      	cmpnei      	r3, 0
 872:	6403      	mvcv      	r0
 874:	7400      	zextb      	r0, r0
 876:	e0000000 	bsr      	0x0	// 0 <wificfg_set_ant_auto_off>
 87a:	7503      	sexth      	r4, r0
 87c:	e800fc09 	br      	0x8e	// 8e <wifi_mgr_proc_hgic_cmd+0x8e>
 880:	840c      	ld.b      	r0, (r4, 0xc)
 882:	e0000000 	bsr      	0x0	// 0 <wificfg_set_ant_sel>
 886:	7503      	sexth      	r4, r0
 888:	e800fc03 	br      	0x8e	// 8e <wifi_mgr_proc_hgic_cmd+0x8e>
 88c:	e0000000 	bsr      	0x0	// 0 <wificfg_get_ant_sel>
 890:	7503      	sexth      	r4, r0
 892:	e800fbfe 	br      	0x8e	// 8e <wifi_mgr_proc_hgic_cmd+0x8e>
 896:	7460      	zextb      	r1, r8
 898:	6c1b      	mov      	r0, r6
 89a:	e0000000 	bsr      	0x0	// 0 <wificfg_set_wkhost_reasons>
 89e:	7503      	sexth      	r4, r0
 8a0:	e800fbf7 	br      	0x8e	// 8e <wifi_mgr_proc_hgic_cmd+0x8e>
 8a4:	01c6      	lrw      	r6, 0x0	// c08 <wifi_mgr_proc_hgic_cmd+0xc08>
 8a6:	3100      	movi      	r1, 0
 8a8:	860c      	ld.b      	r0, (r6, 0xc)
 8aa:	e0000000 	bsr      	0x0	// 0 <wificfg_get_ifidx>
 8ae:	0167      	lrw      	r3, 0x0	// c0c <wifi_mgr_proc_hgic_cmd+0xc0c>
 8b0:	75c0      	zextb      	r7, r0
 8b2:	8361      	ld.b      	r3, (r3, 0x1)
 8b4:	e4632008 	andi      	r3, r3, 8
 8b8:	9821      	ld.w      	r1, (r14, 0x4)
 8ba:	e9030009 	bez      	r3, 0x8cc	// 8cc <wifi_mgr_proc_hgic_cmd+0x8cc>
 8be:	3200      	movi      	r2, 0
 8c0:	2a0f      	subi      	r2, 16
 8c2:	6c17      	mov      	r0, r5
 8c4:	e0000000 	bsr      	0x0	// 0 <wifi_mgr_buswrite_cmdresp>
 8c8:	e800fbd0 	br      	0x68	// 68 <wifi_mgr_proc_hgic_cmd+0x68>
 8cc:	8954      	ld.h      	r2, (r1, 0x28)
 8ce:	9107      	ld.w      	r0, (r1, 0x1c)
 8d0:	3a0d      	cmphsi      	r2, 14
 8d2:	808c      	ld.b      	r4, (r0, 0xc)
 8d4:	0c27      	bf      	0x922	// 922 <wifi_mgr_proc_hgic_cmd+0x922>
 8d6:	806d      	ld.b      	r3, (r0, 0xd)
 8d8:	4368      	lsli      	r3, r3, 8
 8da:	200d      	addi      	r0, 14
 8dc:	b820      	st.w      	r1, (r14, 0x0)
 8de:	6d0c      	or      	r4, r3
 8e0:	e0000000 	bsr      	0x0	// 0 <wifi_mgr_proc_hgic_cmd>
 8e4:	b804      	st.w      	r0, (r14, 0x10)
 8e6:	9820      	ld.w      	r1, (r14, 0x0)
 8e8:	3200      	movi      	r2, 0
 8ea:	6c17      	mov      	r0, r5
 8ec:	e0000000 	bsr      	0x0	// 0 <wifi_mgr_buswrite_cmdresp>
 8f0:	7450      	zextb      	r1, r4
 8f2:	6c1f      	mov      	r0, r7
 8f4:	e0000000 	bsr      	0x0	// 0 <ieee80211_iface_sleep>
 8f8:	9844      	ld.w      	r2, (r14, 0x10)
 8fa:	6c53      	mov      	r1, r4
 8fc:	011a      	lrw      	r0, 0x0	// c10 <wifi_mgr_proc_hgic_cmd+0xc10>
 8fe:	e0000000 	bsr      	0x0	// 0 <hgprintf>
 902:	e9040012 	bez      	r4, 0x926	// 926 <wifi_mgr_proc_hgic_cmd+0x926>
 906:	1904      	addi      	r1, r14, 16
 908:	3001      	movi      	r0, 1
 90a:	e0000000 	bsr      	0x0	// 0 <system_sleep>
 90e:	d8665066 	ld.hs      	r3, (r6, 0xcc)
 912:	d8461062 	ld.h      	r2, (r6, 0xc4)
 916:	c4438043 	divs      	r3, r3, r2
 91a:	dc651063 	st.h      	r3, (r5, 0xc6)
 91e:	e800fba5 	br      	0x68	// 68 <wifi_mgr_proc_hgic_cmd+0x68>
 922:	b864      	st.w      	r3, (r14, 0x10)
 924:	07e2      	br      	0x8e8	// 8e8 <wifi_mgr_proc_hgic_cmd+0x8e8>
 926:	6c53      	mov      	r1, r4
 928:	3001      	movi      	r0, 1
 92a:	e0000000 	bsr      	0x0	// 0 <system_resume>
 92e:	e800fb9d 	br      	0x68	// 68 <wifi_mgr_proc_hgic_cmd+0x68>
 932:	840c      	ld.b      	r0, (r4, 0xc)
 934:	e0000000 	bsr      	0x0	// 0 <wificfg_set_auto_sleep_time>
 938:	7503      	sexth      	r4, r0
 93a:	e800fbaa 	br      	0x8e	// 8e <wifi_mgr_proc_hgic_cmd+0x8e>
 93e:	846c      	ld.b      	r3, (r4, 0xc)
 940:	3b41      	cmpnei      	r3, 1
 942:	6403      	mvcv      	r0
 944:	7400      	zextb      	r0, r0
 946:	e0000000 	bsr      	0x0	// 0 <wificfg_set_reassoc_wkhost>
 94a:	7503      	sexth      	r4, r0
 94c:	e800fba1 	br      	0x8e	// 8e <wifi_mgr_proc_hgic_cmd+0x8e>
 950:	842d      	ld.b      	r1, (r4, 0xd)
 952:	840c      	ld.b      	r0, (r4, 0xc)
 954:	e0000000 	bsr      	0x0	// 0 <wificfg_set_wakeup_io>
 958:	7503      	sexth      	r4, r0
 95a:	e800fb9a 	br      	0x8e	// 8e <wifi_mgr_proc_hgic_cmd+0x8e>
 95e:	0274      	lrw      	r3, 0x0	// c08 <wifi_mgr_proc_hgic_cmd+0xc08>
 960:	3100      	movi      	r1, 0
 962:	830c      	ld.b      	r0, (r3, 0xc)
 964:	e0000000 	bsr      	0x0	// 0 <wificfg_get_ifidx>
 968:	7400      	zextb      	r0, r0
 96a:	e0000000 	bsr      	0x0	// 0 <ieee80211_conf_get_wkreason>
 96e:	e9200004 	bnez      	r0, 0x976	// 976 <wifi_mgr_proc_hgic_cmd+0x976>
 972:	e0000000 	bsr      	0x0	// 0 <sys_wakeup_reason>
 976:	7503      	sexth      	r4, r0
 978:	e800fb8b 	br      	0x8e	// 8e <wifi_mgr_proc_hgic_cmd+0x8e>
 97c:	846c      	ld.b      	r3, (r4, 0xc)
 97e:	3b40      	cmpnei      	r3, 0
 980:	c4000500 	mvc      	r0
 984:	7400      	zextb      	r0, r0
 986:	e0000000 	bsr      	0x0	// 0 <wificfg_set_wkio_mode>
 98a:	7503      	sexth      	r4, r0
 98c:	e800fb81 	br      	0x8e	// 8e <wifi_mgr_proc_hgic_cmd+0x8e>
 990:	6c57      	mov      	r1, r5
 992:	021e      	lrw      	r0, 0x0	// c14 <wifi_mgr_proc_hgic_cmd+0xc14>
 994:	e0000000 	bsr      	0x0	// 0 <atcmd_output_hdl>
 998:	6c63      	mov      	r1, r8
 99a:	6c1b      	mov      	r0, r6
 99c:	e0000000 	bsr      	0x0	// 0 <atcmd_recv>
 9a0:	7503      	sexth      	r4, r0
 9a2:	e800fb76 	br      	0x8e	// 8e <wifi_mgr_proc_hgic_cmd+0x8e>
 9a6:	0366      	lrw      	r3, 0x0	// c08 <wifi_mgr_proc_hgic_cmd+0xc08>
 9a8:	d88300f9 	ld.b      	r4, (r3, 0xf9)
 9ac:	e4842004 	andi      	r4, r4, 4
 9b0:	e904000f 	bez      	r4, 0x9ce	// 9ce <wifi_mgr_proc_hgic_cmd+0x9ce>
 9b4:	3218      	movi      	r2, 24
 9b6:	0326      	lrw      	r1, 0x0	// c18 <wifi_mgr_proc_hgic_cmd+0xc18>
 9b8:	9801      	ld.w      	r0, (r14, 0x4)
 9ba:	e0000000 	bsr      	0x0	// 0 <wifi_mgr_alloc_resp>
 9be:	6d03      	mov      	r4, r0
 9c0:	e900000a 	bez      	r0, 0x9d4	// 9d4 <wifi_mgr_proc_hgic_cmd+0x9d4>
 9c4:	9801      	ld.w      	r0, (r14, 0x4)
 9c6:	e0000000 	bsr      	0x0	// 0 <kfree_skb>
 9ca:	b881      	st.w      	r4, (r14, 0x4)
 9cc:	3418      	movi      	r4, 24
 9ce:	7513      	sexth      	r4, r4
 9d0:	e800fb5f 	br      	0x8e	// 8e <wifi_mgr_proc_hgic_cmd+0x8e>
 9d4:	3400      	movi      	r4, 0
 9d6:	2c0b      	subi      	r4, 12
 9d8:	07fb      	br      	0x9ce	// 9ce <wifi_mgr_proc_hgic_cmd+0x9ce>
 9da:	3200      	movi      	r2, 0
 9dc:	9821      	ld.w      	r1, (r14, 0x4)
 9de:	6c17      	mov      	r0, r5
 9e0:	e0000000 	bsr      	0x0	// 0 <wifi_mgr_buswrite_cmdresp>
 9e4:	3400      	movi      	r4, 0
 9e6:	e0000000 	bsr      	0x0	// 0 <mcu_reset>
 9ea:	2c00      	subi      	r4, 1
 9ec:	e800fb51 	br      	0x8e	// 8e <wifi_mgr_proc_hgic_cmd+0x8e>
 9f0:	7460      	zextb      	r1, r8
 9f2:	6c1b      	mov      	r0, r6
 9f4:	e0000000 	bsr      	0x0	// 0 <wificfg_set_roaming>
 9f8:	7503      	sexth      	r4, r0
 9fa:	e800fb4a 	br      	0x8e	// 8e <wifi_mgr_proc_hgic_cmd+0x8e>
 9fe:	840c      	ld.b      	r0, (r4, 0xc)
 a00:	e0000000 	bsr      	0x0	// 0 <wificfg_set_ap_hide>
 a04:	7503      	sexth      	r4, r0
 a06:	e800fb44 	br      	0x8e	// 8e <wifi_mgr_proc_hgic_cmd+0x8e>
 a0a:	840c      	ld.b      	r0, (r4, 0xc)
 a0c:	e0000000 	bsr      	0x0	// 0 <wificfg_set_dual_ant>
 a10:	7503      	sexth      	r4, r0
 a12:	e800fb3e 	br      	0x8e	// 8e <wifi_mgr_proc_hgic_cmd+0x8e>
 a16:	842d      	ld.b      	r1, (r4, 0xd)
 a18:	840c      	ld.b      	r0, (r4, 0xc)
 a1a:	e0000000 	bsr      	0x0	// 0 <wificfg_set_max_txcnt>
 a1e:	7503      	sexth      	r4, r0
 a20:	e800fb37 	br      	0x8e	// 8e <wifi_mgr_proc_hgic_cmd+0x8e>
 a24:	137e      	lrw      	r3, 0x0	// c1c <wifi_mgr_proc_hgic_cmd+0xc1c>
 a26:	844c      	ld.b      	r2, (r4, 0xc)
 a28:	a340      	st.b      	r2, (r3, 0x0)
 a2a:	3400      	movi      	r4, 0
 a2c:	e800fb31 	br      	0x8e	// 8e <wifi_mgr_proc_hgic_cmd+0x8e>
 a30:	840c      	ld.b      	r0, (r4, 0xc)
 a32:	e0000000 	bsr      	0x0	// 0 <wificfg_set_dup_filter_en>
 a36:	7503      	sexth      	r4, r0
 a38:	e800fb2b 	br      	0x8e	// 8e <wifi_mgr_proc_hgic_cmd+0x8e>
 a3c:	840c      	ld.b      	r0, (r4, 0xc)
 a3e:	e0000000 	bsr      	0x0	// 0 <wificfg_set_dis_1v1_m2u>
 a42:	7503      	sexth      	r4, r0
 a44:	e800fb25 	br      	0x8e	// 8e <wifi_mgr_proc_hgic_cmd+0x8e>
 a48:	6c1b      	mov      	r0, r6
 a4a:	e0000000 	bsr      	0x0	// 0 <wificfg_set_rtc>
 a4e:	7503      	sexth      	r4, r0
 a50:	e800fb1f 	br      	0x8e	// 8e <wifi_mgr_proc_hgic_cmd+0x8e>
 a54:	840c      	ld.b      	r0, (r4, 0xc)
 a56:	e0000000 	bsr      	0x0	// 0 <wificfg_set_cca_for_ce>
 a5a:	7503      	sexth      	r4, r0
 a5c:	e800fb19 	br      	0x8e	// 8e <wifi_mgr_proc_hgic_cmd+0x8e>
 a60:	840c      	ld.b      	r0, (r4, 0xc)
 a62:	e0000000 	bsr      	0x0	// 0 <wificfg_set_tx_bw>
 a66:	7503      	sexth      	r4, r0
 a68:	e800fb13 	br      	0x8e	// 8e <wifi_mgr_proc_hgic_cmd+0x8e>
 a6c:	320c      	movi      	r2, 12
 a6e:	3100      	movi      	r1, 0
 a70:	9801      	ld.w      	r0, (r14, 0x4)
 a72:	e0000000 	bsr      	0x0	// 0 <wifi_mgr_alloc_resp>
 a76:	6d83      	mov      	r6, r0
 a78:	e9000019 	bez      	r0, 0xaaa	// aaa <wifi_mgr_proc_hgic_cmd+0xaaa>
 a7c:	9087      	ld.w      	r4, (r0, 0x1c)
 a7e:	240b      	addi      	r4, 12
 a80:	e0000000 	bsr      	0x0	// 0 <wificfg_wifimode_str>
 a84:	6c43      	mov      	r1, r0
 a86:	6c13      	mov      	r0, r4
 a88:	e0000000 	bsr      	0x0	// 0 <strcpy>
 a8c:	6c13      	mov      	r0, r4
 a8e:	e0000000 	bsr      	0x0	// 0 <strlen>
 a92:	6c43      	mov      	r1, r0
 a94:	6d03      	mov      	r4, r0
 a96:	6c1b      	mov      	r0, r6
 a98:	e0000000 	bsr      	0x0	// 0 <skb_put>
 a9c:	9801      	ld.w      	r0, (r14, 0x4)
 a9e:	e0000000 	bsr      	0x0	// 0 <kfree_skb>
 aa2:	b8c1      	st.w      	r6, (r14, 0x4)
 aa4:	7513      	sexth      	r4, r4
 aa6:	e800faf4 	br      	0x8e	// 8e <wifi_mgr_proc_hgic_cmd+0x8e>
 aaa:	3400      	movi      	r4, 0
 aac:	2c0b      	subi      	r4, 12
 aae:	07fb      	br      	0xaa4	// aa4 <wifi_mgr_proc_hgic_cmd+0xaa4>
 ab0:	1276      	lrw      	r3, 0x0	// c08 <wifi_mgr_proc_hgic_cmd+0xc08>
 ab2:	3100      	movi      	r1, 0
 ab4:	830c      	ld.b      	r0, (r3, 0xc)
 ab6:	e0000000 	bsr      	0x0	// 0 <wificfg_get_ifidx>
 aba:	75c0      	zextb      	r7, r0
 abc:	3204      	movi      	r2, 4
 abe:	3100      	movi      	r1, 0
 ac0:	9801      	ld.w      	r0, (r14, 0x4)
 ac2:	e0000000 	bsr      	0x0	// 0 <wifi_mgr_alloc_resp>
 ac6:	6d03      	mov      	r4, r0
 ac8:	e900001a 	bez      	r0, 0xafc	// afc <wifi_mgr_proc_hgic_cmd+0xafc>
 acc:	90c7      	ld.w      	r6, (r0, 0x1c)
 ace:	6c1f      	mov      	r0, r7
 ad0:	e0000000 	bsr      	0x0	// 0 <ieee80211_conf_get_rtc>
 ad4:	4870      	lsri      	r3, r0, 16
 ad6:	a66e      	st.b      	r3, (r6, 0xe)
 ad8:	a60c      	st.b      	r0, (r6, 0xc)
 ada:	4b68      	lsri      	r3, r3, 8
 adc:	c50055e0 	zext      	r0, r0, 15, 8
 ae0:	a66f      	st.b      	r3, (r6, 0xf)
 ae2:	a60d      	st.b      	r0, (r6, 0xd)
 ae4:	3104      	movi      	r1, 4
 ae6:	6c13      	mov      	r0, r4
 ae8:	e0000000 	bsr      	0x0	// 0 <skb_put>
 aec:	9801      	ld.w      	r0, (r14, 0x4)
 aee:	e0000000 	bsr      	0x0	// 0 <kfree_skb>
 af2:	b881      	st.w      	r4, (r14, 0x4)
 af4:	3404      	movi      	r4, 4
 af6:	7513      	sexth      	r4, r4
 af8:	e800facb 	br      	0x8e	// 8e <wifi_mgr_proc_hgic_cmd+0x8e>
 afc:	3400      	movi      	r4, 0
 afe:	2c0b      	subi      	r4, 12
 b00:	07fb      	br      	0xaf6	// af6 <wifi_mgr_proc_hgic_cmd+0xaf6>
 b02:	e0000000 	bsr      	0x0	// 0 <wificfg_get_curr_freq>
 b06:	7503      	sexth      	r4, r0
 b08:	e800fac3 	br      	0x8e	// 8e <wifi_mgr_proc_hgic_cmd+0x8e>
 b0c:	117f      	lrw      	r3, 0x0	// c08 <wifi_mgr_proc_hgic_cmd+0xc08>
 b0e:	3100      	movi      	r1, 0
 b10:	830c      	ld.b      	r0, (r3, 0xc)
 b12:	848c      	ld.b      	r4, (r4, 0xc)
 b14:	e0000000 	bsr      	0x0	// 0 <wificfg_get_ifidx>
 b18:	75c0      	zextb      	r7, r0
 b1a:	3208      	movi      	r2, 8
 b1c:	3100      	movi      	r1, 0
 b1e:	9801      	ld.w      	r0, (r14, 0x4)
 b20:	e0000000 	bsr      	0x0	// 0 <wifi_mgr_alloc_resp>
 b24:	2c00      	subi      	r4, 1
 b26:	7510      	zextb      	r4, r4
 b28:	6d83      	mov      	r6, r0
 b2a:	e9000013 	bez      	r0, 0xb50	// b50 <wifi_mgr_proc_hgic_cmd+0xb50>
 b2e:	9046      	ld.w      	r2, (r0, 0x18)
 b30:	6c53      	mov      	r1, r4
 b32:	6c1f      	mov      	r0, r7
 b34:	e0000000 	bsr      	0x0	// 0 <ieee80211_conf_get_bgrssi>
 b38:	3103      	movi      	r1, 3
 b3a:	6c1b      	mov      	r0, r6
 b3c:	e0000000 	bsr      	0x0	// 0 <skb_put>
 b40:	9801      	ld.w      	r0, (r14, 0x4)
 b42:	e0000000 	bsr      	0x0	// 0 <kfree_skb>
 b46:	3403      	movi      	r4, 3
 b48:	b8c1      	st.w      	r6, (r14, 0x4)
 b4a:	7513      	sexth      	r4, r4
 b4c:	e800faa1 	br      	0x8e	// 8e <wifi_mgr_proc_hgic_cmd+0x8e>
 b50:	3400      	movi      	r4, 0
 b52:	2c0b      	subi      	r4, 12
 b54:	07fb      	br      	0xb4a	// b4a <wifi_mgr_proc_hgic_cmd+0xb4a>
 b56:	116d      	lrw      	r3, 0x0	// c08 <wifi_mgr_proc_hgic_cmd+0xc08>
 b58:	3100      	movi      	r1, 0
 b5a:	830c      	ld.b      	r0, (r3, 0xc)
 b5c:	e0000000 	bsr      	0x0	// 0 <wificfg_get_ifidx>
 b60:	7500      	zextb      	r4, r0
 b62:	3280      	movi      	r2, 128
 b64:	3100      	movi      	r1, 0
 b66:	9801      	ld.w      	r0, (r14, 0x4)
 b68:	e0000000 	bsr      	0x0	// 0 <wifi_mgr_alloc_resp>
 b6c:	6d83      	mov      	r6, r0
 b6e:	e9000013 	bez      	r0, 0xb94	// b94 <wifi_mgr_proc_hgic_cmd+0xb94>
 b72:	9027      	ld.w      	r1, (r0, 0x1c)
 b74:	210b      	addi      	r1, 12
 b76:	6c13      	mov      	r0, r4
 b78:	e0000000 	bsr      	0x0	// 0 <ieee80211_conf_get_acs_result>
 b7c:	6c43      	mov      	r1, r0
 b7e:	6d03      	mov      	r4, r0
 b80:	6c1b      	mov      	r0, r6
 b82:	e0000000 	bsr      	0x0	// 0 <skb_put>
 b86:	9801      	ld.w      	r0, (r14, 0x4)
 b88:	e0000000 	bsr      	0x0	// 0 <kfree_skb>
 b8c:	b8c1      	st.w      	r6, (r14, 0x4)
 b8e:	7513      	sexth      	r4, r4
 b90:	e800fa7f 	br      	0x8e	// 8e <wifi_mgr_proc_hgic_cmd+0x8e>
 b94:	3400      	movi      	r4, 0
 b96:	2c0b      	subi      	r4, 12
 b98:	07fb      	br      	0xb8e	// b8e <wifi_mgr_proc_hgic_cmd+0xb8e>
 b9a:	3600      	movi      	r6, 0
 b9c:	3220      	movi      	r2, 32
 b9e:	3100      	movi      	r1, 0
 ba0:	9801      	ld.w      	r0, (r14, 0x4)
 ba2:	dcce1006 	st.h      	r6, (r14, 0xc)
 ba6:	dcce1008 	st.h      	r6, (r14, 0x10)
 baa:	dcce000b 	st.b      	r6, (r14, 0xb)
 bae:	e0000000 	bsr      	0x0	// 0 <wifi_mgr_alloc_resp>
 bb2:	6dc3      	mov      	r7, r0
 bb4:	e9000036 	bez      	r0, 0xc20	// c20 <wifi_mgr_proc_hgic_cmd+0xc20>
 bb8:	9087      	ld.w      	r4, (r0, 0x1c)
 bba:	e44e000a 	addi      	r2, r14, 11
 bbe:	1904      	addi      	r1, r14, 16
 bc0:	1803      	addi      	r0, r14, 12
 bc2:	e0000000 	bsr      	0x0	// 0 <wificfg_get_freq_range>
 bc6:	d86e1006 	ld.h      	r3, (r14, 0xc)
 bca:	a46c      	st.b      	r3, (r4, 0xc)
 bcc:	4b68      	lsri      	r3, r3, 8
 bce:	a4ce      	st.b      	r6, (r4, 0xe)
 bd0:	a4cf      	st.b      	r6, (r4, 0xf)
 bd2:	a46d      	st.b      	r3, (r4, 0xd)
 bd4:	d86e1008 	ld.h      	r3, (r14, 0x10)
 bd8:	a470      	st.b      	r3, (r4, 0x10)
 bda:	4b68      	lsri      	r3, r3, 8
 bdc:	a471      	st.b      	r3, (r4, 0x11)
 bde:	d86e000b 	ld.b      	r3, (r14, 0xb)
 be2:	a474      	st.b      	r3, (r4, 0x14)
 be4:	a4d2      	st.b      	r6, (r4, 0x12)
 be6:	a4d3      	st.b      	r6, (r4, 0x13)
 be8:	a4d6      	st.b      	r6, (r4, 0x16)
 bea:	a4d7      	st.b      	r6, (r4, 0x17)
 bec:	a4d5      	st.b      	r6, (r4, 0x15)
 bee:	310c      	movi      	r1, 12
 bf0:	6c1f      	mov      	r0, r7
 bf2:	e0000000 	bsr      	0x0	// 0 <skb_put>
 bf6:	9801      	ld.w      	r0, (r14, 0x4)
 bf8:	e0000000 	bsr      	0x0	// 0 <kfree_skb>
 bfc:	340c      	movi      	r4, 12
 bfe:	b8e1      	st.w      	r7, (r14, 0x4)
 c00:	7513      	sexth      	r4, r4
 c02:	e800fa46 	br      	0x8e	// 8e <wifi_mgr_proc_hgic_cmd+0x8e>
	...
 c1e:	0000      	.short	0x0000
 c20:	3400      	movi      	r4, 0
 c22:	2c0b      	subi      	r4, 12
 c24:	07ee      	br      	0xc00	// c00 <wifi_mgr_proc_hgic_cmd+0xc00>
 c26:	840c      	ld.b      	r0, (r4, 0xc)
 c28:	e0000000 	bsr      	0x0	// 0 <wificfg_set_radio_onoff>
 c2c:	7503      	sexth      	r4, r0
 c2e:	e800fa30 	br      	0x8e	// 8e <wifi_mgr_proc_hgic_cmd+0x8e>
 c32:	840c      	ld.b      	r0, (r4, 0xc)
 c34:	e0000000 	bsr      	0x0	// 0 <wificfg_set_mac_filter_en>
 c38:	7503      	sexth      	r4, r0
 c3a:	e800fa2a 	br      	0x8e	// 8e <wifi_mgr_proc_hgic_cmd+0x8e>
 c3e:	840c      	ld.b      	r0, (r4, 0xc)
 c40:	e0000000 	bsr      	0x0	// 0 <wificfg_set_ap_psmode>
 c44:	7503      	sexth      	r4, r0
 c46:	e800fa24 	br      	0x8e	// 8e <wifi_mgr_proc_hgic_cmd+0x8e>
 c4a:	842d      	ld.b      	r1, (r4, 0xd)
 c4c:	840c      	ld.b      	r0, (r4, 0xc)
 c4e:	e0000000 	bsr      	0x0	// 0 <wificfg_set_ap_chan_switch>
 c52:	7503      	sexth      	r4, r0
 c54:	e800fa1d 	br      	0x8e	// 8e <wifi_mgr_proc_hgic_cmd+0x8e>
 c58:	840c      	ld.b      	r0, (r4, 0xc)
 c5a:	e0000000 	bsr      	0x0	// 0 <wificfg_set_connect_paironly>
 c5e:	7503      	sexth      	r4, r0
 c60:	e800fa17 	br      	0x8e	// 8e <wifi_mgr_proc_hgic_cmd+0x8e>
 c64:	3106      	movi      	r1, 6
 c66:	c4288041 	divs      	r1, r8, r1
 c6a:	7444      	zextb      	r1, r1
 c6c:	6c1b      	mov      	r0, r6
 c6e:	e0000000 	bsr      	0x0	// 0 <wificfg_set_paired_stas>
 c72:	7503      	sexth      	r4, r0
 c74:	e800fa0d 	br      	0x8e	// 8e <wifi_mgr_proc_hgic_cmd+0x8e>
 c78:	840c      	ld.b      	r0, (r4, 0xc)
 c7a:	3400      	movi      	r4, 0
 c7c:	e0000000 	bsr      	0x0	// 0 <mcu_watchdog_timeout>
 c80:	2c00      	subi      	r4, 1
 c82:	e800fa06 	br      	0x8e	// 8e <wifi_mgr_proc_hgic_cmd+0x8e>
 c86:	d865002f 	ld.b      	r3, (r5, 0x2f)
 c8a:	3201      	movi      	r2, 1
 c8c:	c4625c03 	ins      	r3, r2, 3, 3
 c90:	dc65002f 	st.b      	r3, (r5, 0x2f)
 c94:	3400      	movi      	r4, 0
 c96:	e800f9fc 	br      	0x8e	// 8e <wifi_mgr_proc_hgic_cmd+0x8e>
 c9a:	6c1b      	mov      	r0, r6
 c9c:	e0000000 	bsr      	0x0	// 0 <wificfg_set_passwd>
 ca0:	7503      	sexth      	r4, r0
 ca2:	e800f9f6 	br      	0x8e	// 8e <wifi_mgr_proc_hgic_cmd+0x8e>
 ca6:	3214      	movi      	r2, 20
 ca8:	3100      	movi      	r1, 0
 caa:	9801      	ld.w      	r0, (r14, 0x4)
 cac:	e0000000 	bsr      	0x0	// 0 <wifi_mgr_alloc_resp>
 cb0:	6d03      	mov      	r4, r0
 cb2:	e9000013 	bez      	r0, 0xcd8	// cd8 <wifi_mgr_proc_hgic_cmd+0xcd8>
 cb6:	310c      	movi      	r1, 12
 cb8:	9007      	ld.w      	r0, (r0, 0x1c)
 cba:	6004      	addu      	r0, r1
 cbc:	e0000000 	bsr      	0x0	// 0 <sysctrl_efuse_get_chip_uuid>
 cc0:	310c      	movi      	r1, 12
 cc2:	6c13      	mov      	r0, r4
 cc4:	e0000000 	bsr      	0x0	// 0 <skb_put>
 cc8:	9801      	ld.w      	r0, (r14, 0x4)
 cca:	e0000000 	bsr      	0x0	// 0 <kfree_skb>
 cce:	b881      	st.w      	r4, (r14, 0x4)
 cd0:	340c      	movi      	r4, 12
 cd2:	7513      	sexth      	r4, r4
 cd4:	e800f9dd 	br      	0x8e	// 8e <wifi_mgr_proc_hgic_cmd+0x8e>
 cd8:	3400      	movi      	r4, 0
 cda:	2c0b      	subi      	r4, 12
 cdc:	07fb      	br      	0xcd2	// cd2 <wifi_mgr_proc_hgic_cmd+0xcd2>
 cde:	840c      	ld.b      	r0, (r4, 0xc)
 ce0:	e0000000 	bsr      	0x0	// 0 <wificfg_set_psmode>
 ce4:	844c      	ld.b      	r2, (r4, 0xc)
 ce6:	3300      	movi      	r3, 0
 ce8:	3112      	movi      	r1, 18
 cea:	d8052032 	ld.w      	r0, (r5, 0xc8)
 cee:	e0000000 	bsr      	0x0	// 0 <lmac_ioctl>
 cf2:	7503      	sexth      	r4, r0
 cf4:	e800f9cd 	br      	0x8e	// 8e <wifi_mgr_proc_hgic_cmd+0x8e>
 cf8:	3400      	movi      	r4, 0
 cfa:	2c00      	subi      	r4, 1
 cfc:	e800f9c9 	br      	0x8e	// 8e <wifi_mgr_proc_hgic_cmd+0x8e>
 d00:	9766      	ld.w      	r3, (r7, 0x18)
 d02:	e9030008 	bez      	r3, 0xd12	// d12 <wifi_mgr_proc_hgic_cmd+0xd12>
 d06:	1901      	addi      	r1, r14, 4
 d08:	6c1f      	mov      	r0, r7
 d0a:	7bcd      	jsr      	r3
 d0c:	6642      	cmpne      	r0, r9
 d0e:	c4c00c40 	inct      	r6, r0, 0
 d12:	97e0      	ld.w      	r7, (r7, 0x0)
 d14:	e800f9c4 	br      	0x9c	// 9c <wifi_mgr_proc_hgic_cmd+0x9c>
