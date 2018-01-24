# Net Core NW392 AC

## Notes
Adhoc mode didnt want to come up, Failed on join when ht40+ was used, if removed no error but did not display channel it was on or make a connection.

More Info: [Driver](https://github.com/diederikdehaas/rtl8812AU) [Driver 2](https://github.com/abperiasamy/rtl8812AU_8821AU_linux)

**ISSUE** Joining Ad Hoc crashes with the following
```
[942394.013602] ------------[ cut here ]------------
[942394.013627] WARNING: CPU: 5 PID: 17863 at /build/linux-hwe-vH8Hlo/linux-hwe-4.10.0/net/wireless/ibss.c:68 cfg80211_ibss_joined+0x162/0x170 [cfg80211]

[942394.013690] Call Trace:
[942394.013696]  dump_stack+0x63/0x90
[942394.013699]  __warn+0xcb/0xf0
[942394.013700]  warn_slowpath_null+0x1d/0x20
[942394.013715]  cfg80211_ibss_joined+0x162/0x170 [cfg80211]
[942394.013746]  rtw_cfg80211_ibss_indicate_connect+0x12f/0x139 [rtl8812au]
[942394.013772]  rtw_os_indicate_connect+0x20/0x5c [rtl8812au]
[942394.013791]  rtw_indicate_connect+0x30/0x48 [rtl8812au]
[942394.013810]  start_create_ibss+0x138/0x15d [rtl8812au]
[942394.013829]  createbss_hdl+0xf7/0x101 [rtl8812au]
[942394.013842]  rtw_cmd_thread+0x28e/0x3a7 [rtl8812au]
[942394.013845]  kthread+0x109/0x140
[942394.013858]  ? rtw_stop_cmd_thread+0x54/0x54 [rtl8812au]
[942394.013861]  ? kthread_create_on_node+0x60/0x60
[942394.013864]  ret_from_fork+0x2c/0x40
[942394.013866] ---[ end trace 89d93eaea37fa2d1 ]---
[942394.013867] RTL871X: assoc success
[942394.013886] IPv6: ADDRCONF(NETDEV_CHANGE): wlx08107a66a698: link becomes ready
```
## Specs

```
iw phy0 info
```

```
Wiphy phy0
	max # scan SSIDs: 9
	max scan IEs length: 2304 bytes
	Retry short limit: 7
	Retry long limit: 4
	Coverage class: 0 (up to 0m)
	Supported Ciphers:
		* WEP40 (00-0f-ac:1)
		* WEP104 (00-0f-ac:5)
		* TKIP (00-0f-ac:2)
		* CCMP (00-0f-ac:4)
	Available Antennas: TX 0 RX 0
	Supported interface modes:
		 * IBSS
		 * managed
		 * AP
		 * monitor
		 * P2P-client
		 * P2P-GO
	Band 1:
		Capabilities: 0x1862
			HT20/HT40
			Static SM Power Save
			RX HT20 SGI
			RX HT40 SGI
			No RX STBC
			Max AMSDU length: 7935 bytes
			DSSS/CCK HT40
		Maximum RX AMPDU length 65535 bytes (exponent: 0x003)
		Minimum RX AMPDU time spacing: 16 usec (0x07)
		HT TX/RX MCS rate indexes supported: 0-15, 32
		Bitrates (non-HT):
			* 1.0 Mbps
			* 2.0 Mbps
			* 5.5 Mbps
			* 11.0 Mbps
			* 6.0 Mbps
			* 9.0 Mbps
			* 12.0 Mbps
			* 18.0 Mbps
			* 24.0 Mbps
			* 36.0 Mbps
			* 48.0 Mbps
			* 54.0 Mbps
		Frequencies:
			* 2412 MHz [1] (20.0 dBm)
			* 2417 MHz [2] (20.0 dBm)
			* 2422 MHz [3] (20.0 dBm)
			* 2427 MHz [4] (20.0 dBm)
			* 2432 MHz [5] (20.0 dBm)
			* 2437 MHz [6] (20.0 dBm)
			* 2442 MHz [7] (20.0 dBm)
			* 2447 MHz [8] (20.0 dBm)
			* 2452 MHz [9] (20.0 dBm)
			* 2457 MHz [10] (20.0 dBm)
			* 2462 MHz [11] (20.0 dBm)
			* 2467 MHz [12] (20.0 dBm) (no IR)
			* 2472 MHz [13] (20.0 dBm) (no IR)
			* 2484 MHz [14] (disabled)
	Band 2:
		Capabilities: 0x1862
			HT20/HT40
			Static SM Power Save
			RX HT20 SGI
			RX HT40 SGI
			No RX STBC
			Max AMSDU length: 7935 bytes
			DSSS/CCK HT40
		Maximum RX AMPDU length 65535 bytes (exponent: 0x003)
		Minimum RX AMPDU time spacing: 16 usec (0x07)
		HT TX/RX MCS rate indexes supported: 0-15, 32
		Bitrates (non-HT):
			* 6.0 Mbps
			* 9.0 Mbps
			* 12.0 Mbps
			* 18.0 Mbps
			* 24.0 Mbps
			* 36.0 Mbps
			* 48.0 Mbps
			* 54.0 Mbps
		Frequencies:
			* 5170 MHz [34] (disabled)
			* 5180 MHz [36] (30.0 dBm)
			* 5190 MHz [38] (disabled)
			* 5200 MHz [40] (30.0 dBm)
			* 5210 MHz [42] (disabled)
			* 5220 MHz [44] (30.0 dBm)
			* 5230 MHz [46] (disabled)
			* 5240 MHz [48] (30.0 dBm)
			* 5260 MHz [52] (30.0 dBm) (no IR, radar detection)
			  DFS state: usable (for 8 sec)
			  DFS CAC time: 60000 ms
			* 5280 MHz [56] (30.0 dBm) (no IR, radar detection)
			  DFS state: usable (for 8 sec)
			  DFS CAC time: 60000 ms
			* 5300 MHz [60] (30.0 dBm) (no IR, radar detection)
			  DFS state: usable (for 8 sec)
			  DFS CAC time: 60000 ms
			* 5320 MHz [64] (30.0 dBm) (no IR, radar detection)
			  DFS state: usable (for 8 sec)
			  DFS CAC time: 60000 ms
			* 5500 MHz [100] (30.0 dBm) (no IR, radar detection)
			  DFS state: usable (for 8 sec)
			  DFS CAC time: 60000 ms
			* 5520 MHz [104] (30.0 dBm) (no IR, radar detection)
			  DFS state: usable (for 8 sec)
			  DFS CAC time: 60000 ms
			* 5540 MHz [108] (30.0 dBm) (no IR, radar detection)
			  DFS state: usable (for 8 sec)
			  DFS CAC time: 60000 ms
			* 5560 MHz [112] (30.0 dBm) (no IR, radar detection)
			  DFS state: usable (for 8 sec)
			  DFS CAC time: 60000 ms
			* 5580 MHz [116] (30.0 dBm) (no IR, radar detection)
			  DFS state: usable (for 8 sec)
			  DFS CAC time: 60000 ms
			* 5600 MHz [120] (30.0 dBm) (no IR, radar detection)
			  DFS state: usable (for 8 sec)
			  DFS CAC time: 60000 ms
			* 5620 MHz [124] (30.0 dBm) (no IR, radar detection)
			  DFS state: usable (for 8 sec)
			  DFS CAC time: 60000 ms
			* 5640 MHz [128] (30.0 dBm) (no IR, radar detection)
			  DFS state: usable (for 8 sec)
			  DFS CAC time: 60000 ms
			* 5660 MHz [132] (30.0 dBm) (no IR, radar detection)
			  DFS state: usable (for 8 sec)
			  DFS CAC time: 60000 ms
			* 5680 MHz [136] (30.0 dBm) (no IR, radar detection)
			  DFS state: usable (for 8 sec)
			  DFS CAC time: 60000 ms
			* 5700 MHz [140] (30.0 dBm) (no IR, radar detection)
			  DFS state: usable (for 8 sec)
			  DFS CAC time: 60000 ms
			* 5745 MHz [149] (30.0 dBm)
			* 5765 MHz [153] (30.0 dBm)
			* 5785 MHz [157] (30.0 dBm)
			* 5805 MHz [161] (30.0 dBm)
			* 5825 MHz [165] (30.0 dBm)
			* 5920 MHz [184] (disabled)
			* 5940 MHz [188] (disabled)
			* 5960 MHz [192] (disabled)
			* 5980 MHz [196] (disabled)
			* 6000 MHz [200] (disabled)
			* 6020 MHz [204] (disabled)
			* 6040 MHz [208] (disabled)
			* 6060 MHz [212] (disabled)
			* 6080 MHz [216] (disabled)
	Supported commands:
		 * new_interface
		 * set_interface
		 * new_key
		 * start_ap
		 * new_station
		 * set_bss
		 * join_ibss
		 * set_pmksa
		 * del_pmksa
		 * flush_pmksa
		 * remain_on_channel
		 * frame
		 * set_channel
		 * connect
		 * disconnect
	Supported TX frame types:
		 * IBSS: 0x00 0x10 0x20 0x30 0x40 0x50 0x60 0x70 0x80 0x90 0xa0 0xb0 0xc0 0xd0 0xe0 0xf0
		 * managed: 0x00 0x10 0x20 0x30 0x40 0x50 0x60 0x70 0x80 0x90 0xa0 0xb0 0xc0 0xd0 0xe0 0xf0
		 * AP: 0x00 0x10 0x20 0x30 0x40 0x50 0x60 0x70 0x80 0x90 0xa0 0xb0 0xc0 0xd0 0xe0 0xf0
		 * AP/VLAN: 0x00 0x10 0x20 0x30 0x40 0x50 0x60 0x70 0x80 0x90 0xa0 0xb0 0xc0 0xd0 0xe0 0xf0
		 * P2P-client: 0x00 0x10 0x20 0x30 0x40 0x50 0x60 0x70 0x80 0x90 0xa0 0xb0 0xc0 0xd0 0xe0 0xf0
		 * P2P-GO: 0x00 0x10 0x20 0x30 0x40 0x50 0x60 0x70 0x80 0x90 0xa0 0xb0 0xc0 0xd0 0xe0 0xf0
	Supported RX frame types:
		 * IBSS: 0xd0
		 * managed: 0x40 0xd0
		 * AP: 0x00 0x20 0x40 0xa0 0xb0 0xc0 0xd0
		 * AP/VLAN: 0x00 0x20 0x40 0xa0 0xb0 0xc0 0xd0
		 * P2P-client: 0x40 0xd0
		 * P2P-GO: 0x00 0x20 0x40 0xa0 0xb0 0xc0 0xd0
	WoWLAN support:
		 * wake up on anything (device continues operating normally)
	software interface modes (can always be added):
		 * monitor
	interface combinations are not supported
	Device supports scan flush.
```
