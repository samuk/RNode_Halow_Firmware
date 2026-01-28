
libwifi/o/wnb_ap_cfg.o:     file format elf32-csky-little


Disassembly of section .text.ieee80211_wnbap_ioctl:

00000000 <ieee80211_wnbap_ioctl>:
   0:	14d0      	push      	r15
   2:	eb410026 	cmpnei      	r1, 38
   6:	0c04      	bf      	0xe	// e <ieee80211_ap_ioctl+0xe>
   8:	e0000000 	bsr      	0x0	// 0 <ieee80211_ap_ioctl>
   c:	1490      	pop      	r15
   e:	3000      	movi      	r0, 0
  10:	07fe      	br      	0xc	// c <ieee80211_wnbap_ioctl+0xc>
