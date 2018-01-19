# Toplinkst TOP-GS07

## Notes
* Gets very hot  
 * If plugged directly into a USB port of a SCB it can radiate the heat into the board  
* Possible issue where on board ceramic antenna may be in use instead of the external antenna  
* If actively cooled (Removed from plastic case and fan blowing on it) performs well in close proximity with stock antenna

## Specs
``` 
$ iw list

Wiphy phy1
	max # scan SSIDs: 4
	max scan IEs length: 2257 bytes
	Retry short limit: 7
	Retry long limit: 4
	Coverage class: 0 (up to 0m)
	Device supports RSN-IBSS.
	Supported Ciphers:
		* WEP40 (00-0f-ac:1)
		* WEP104 (00-0f-ac:5)
		* TKIP (00-0f-ac:2)
		* CCMP (00-0f-ac:4)
		* 00-0f-ac:10
		* GCMP (00-0f-ac:8)
		* 00-0f-ac:9
	Available Antennas: TX 0 RX 0
	Supported interface modes:
		 * IBSS
		 * managed
		 * AP
		 * AP/VLAN
		 * WDS
		 * monitor
		 * mesh point
	Band 1:
		Capabilities: 0x2f2
			HT20/HT40
			Static SM Power Save
			RX Greenfield
			RX HT20 SGI
			RX HT40 SGI
			TX STBC
			RX STBC 2-streams
			Max AMSDU length: 3839 bytes
			No DSSS/CCK HT40
		Maximum RX AMPDU length 65535 bytes (exponent: 0x003)
		Minimum RX AMPDU time spacing: 2 usec (0x04)
		HT RX MCS rate indexes supported: 0-15, 32
		TX unequal modulation not supported
		HT TX Max spatial streams: 2
		HT TX MCS rate indexes supported may differ
		Bitrates (non-HT):
			* 1.0 Mbps
			* 2.0 Mbps (short preamble supported)
			* 5.5 Mbps (short preamble supported)
			* 11.0 Mbps (short preamble supported)
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
			* 2467 MHz [12] (20.0 dBm)
			* 2472 MHz [13] (20.0 dBm)
			* 2484 MHz [14] (disabled)
	Band 2:
		Capabilities: 0x2f2
			HT20/HT40
			Static SM Power Save
			RX Greenfield
			RX HT20 SGI
			RX HT40 SGI
			TX STBC
			RX STBC 2-streams
			Max AMSDU length: 3839 bytes
			No DSSS/CCK HT40
		Maximum RX AMPDU length 65535 bytes (exponent: 0x003)
		Minimum RX AMPDU time spacing: 2 usec (0x04)
		HT RX MCS rate indexes supported: 0-15, 32
		TX unequal modulation not supported
		HT TX Max spatial streams: 2
		HT TX MCS rate indexes supported may differ
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
			* 5180 MHz [36] (20.0 dBm)
			* 5190 MHz [38] (20.0 dBm)
			* 5200 MHz [40] (20.0 dBm)
			* 5210 MHz [42] (20.0 dBm)
			* 5220 MHz [44] (20.0 dBm)
			* 5230 MHz [46] (20.0 dBm)
			* 5240 MHz [48] (20.0 dBm)
			* 5250 MHz [50] (disabled)
			* 5260 MHz [52] (20.0 dBm) (radar detection)
			  DFS state: usable (for 261 sec)
			  DFS CAC time: 60000 ms
			* 5270 MHz [54] (20.0 dBm) (radar detection)
			  DFS state: usable (for 261 sec)
			  DFS CAC time: 60000 ms
			* 5280 MHz [56] (20.0 dBm) (radar detection)
			  DFS state: usable (for 261 sec)
			  DFS CAC time: 60000 ms
			* 5290 MHz [58] (20.0 dBm) (radar detection)
			  DFS state: usable (for 261 sec)
			  DFS CAC time: 60000 ms
			* 5300 MHz [60] (20.0 dBm) (radar detection)
			  DFS state: usable (for 261 sec)
			  DFS CAC time: 60000 ms
			* 5310 MHz [62] (20.0 dBm) (radar detection)
			  DFS state: usable (for 261 sec)
			  DFS CAC time: 60000 ms
			* 5320 MHz [64] (20.0 dBm) (radar detection)
			  DFS state: usable (for 261 sec)
			  DFS CAC time: 60000 ms
			* 5500 MHz [100] (27.0 dBm) (radar detection)
			  DFS state: usable (for 261 sec)
			  DFS CAC time: 60000 ms
			* 5510 MHz [102] (27.0 dBm) (radar detection)
			  DFS state: usable (for 261 sec)
			  DFS CAC time: 60000 ms
			* 5520 MHz [104] (27.0 dBm) (radar detection)
			  DFS state: usable (for 261 sec)
			  DFS CAC time: 60000 ms
			* 5530 MHz [106] (27.0 dBm) (radar detection)
			  DFS state: usable (for 261 sec)
			  DFS CAC time: 60000 ms
			* 5540 MHz [108] (27.0 dBm) (radar detection)
			  DFS state: usable (for 261 sec)
			  DFS CAC time: 60000 ms
			* 5550 MHz [110] (27.0 dBm) (radar detection)
			  DFS state: usable (for 261 sec)
			  DFS CAC time: 60000 ms
			* 5560 MHz [112] (27.0 dBm) (radar detection)
			  DFS state: usable (for 261 sec)
			  DFS CAC time: 60000 ms
			* 5570 MHz [114] (27.0 dBm) (radar detection)
			  DFS state: usable (for 261 sec)
			  DFS CAC time: 60000 ms
			* 5580 MHz [116] (27.0 dBm) (radar detection)
			  DFS state: usable (for 261 sec)
			  DFS CAC time: 60000 ms
			* 5590 MHz [118] (27.0 dBm) (radar detection)
			  DFS state: usable (for 261 sec)
			  DFS CAC time: 60000 ms
			* 5600 MHz [120] (27.0 dBm) (radar detection)
			  DFS state: usable (for 261 sec)
			  DFS CAC time: 60000 ms
			* 5610 MHz [122] (27.0 dBm) (radar detection)
			  DFS state: usable (for 261 sec)
			  DFS CAC time: 60000 ms
			* 5620 MHz [124] (27.0 dBm) (radar detection)
			  DFS state: usable (for 261 sec)
			  DFS CAC time: 60000 ms
			* 5630 MHz [126] (27.0 dBm) (radar detection)
			  DFS state: usable (for 261 sec)
			  DFS CAC time: 60000 ms
			* 5640 MHz [128] (27.0 dBm) (radar detection)
			  DFS state: usable (for 261 sec)
			  DFS CAC time: 60000 ms
			* 5650 MHz [130] (27.0 dBm) (radar detection)
			  DFS state: usable (for 261 sec)
			  DFS CAC time: 60000 ms
			* 5660 MHz [132] (27.0 dBm) (radar detection)
			  DFS state: usable (for 261 sec)
			  DFS CAC time: 60000 ms
			* 5670 MHz [134] (27.0 dBm) (radar detection)
			  DFS state: usable (for 261 sec)
			  DFS CAC time: 60000 ms
			* 5680 MHz [136] (27.0 dBm) (radar detection)
			  DFS state: usable (for 261 sec)
			  DFS CAC time: 60000 ms
			* 5690 MHz [138] (27.0 dBm) (radar detection)
			  DFS state: usable (for 261 sec)
			  DFS CAC time: 60000 ms
			* 5700 MHz [140] (27.0 dBm) (radar detection)
			  DFS state: usable (for 261 sec)
			  DFS CAC time: 60000 ms
			* 5745 MHz [149] (disabled)
			* 5755 MHz [151] (disabled)
			* 5765 MHz [153] (disabled)
			* 5775 MHz [155] (disabled)
			* 5785 MHz [157] (disabled)
			* 5795 MHz [159] (disabled)
			* 5805 MHz [161] (disabled)
			* 5825 MHz [165] (disabled)
			* 4920 MHz [184] (disabled)
			* 4940 MHz [188] (disabled)
			* 4960 MHz [192] (disabled)
			* 4980 MHz [196] (disabled)
	Supported commands:
		 * new_interface
		 * set_interface
		 * new_key
		 * start_ap
		 * new_station
		 * new_mpath
		 * set_mesh_config
		 * set_bss
		 * authenticate
		 * associate
		 * deauthenticate
		 * disassociate
		 * join_ibss
		 * join_mesh
		 * set_tx_bitrate_mask
		 * frame
		 * frame_wait_cancel
		 * set_wiphy_netns
		 * set_channel
		 * set_wds_peer
		 * probe_client
		 * set_noack_map
		 * register_beacons
		 * start_p2p_device
		 * set_mcast_rate
		 * Unknown command (104)
		 * connect
		 * disconnect
	Supported TX frame types:
		 * IBSS: 0x00 0x10 0x20 0x30 0x40 0x50 0x60 0x70 0x80 
0x90 0xa0 0xb0 0xc0 0xd0 0xe0 0xf0
		 * managed: 0x00 0x10 0x20 0x30 0x40 0x50 0x60 0x70 
0x80 0x90 0xa0 0xb0 0xc0 0xd0 0xe0 0xf0
		 * AP: 0x00 0x10 0x20 0x30 0x40 0x50 0x60 0x70 0x80 
0x90 0xa0 0xb0 0xc0 0xd0 0xe0 0xf0
		 * AP/VLAN: 0x00 0x10 0x20 0x30 0x40 0x50 0x60 0x70 
0x80 0x90 0xa0 0xb0 0xc0 0xd0 0xe0 0xf0
		 * mesh point: 0x00 0x10 0x20 0x30 0x40 0x50 0x60 
0x70 0x80 0x90 0xa0 0xb0 0xc0 0xd0 0xe0 0xf0
		 * P2P-client: 0x00 0x10 0x20 0x30 0x40 0x50 0x60 
0x70 0x80 0x90 0xa0 0xb0 0xc0 0xd0 0xe0 0xf0
		 * P2P-GO: 0x00 0x10 0x20 0x30 0x40 0x50 0x60 0x70 
0x80 0x90 0xa0 0xb0 0xc0 0xd0 0xe0 0xf0
		 * P2P-device: 0x00 0x10 0x20 0x30 0x40 0x50 0x60 
0x70 0x80 0x90 0xa0 0xb0 0xc0 0xd0 0xe0 0xf0
	Supported RX frame types:
		 * IBSS: 0x40 0xb0 0xc0 0xd0
		 * managed: 0x40 0xd0
		 * AP: 0x00 0x20 0x40 0xa0 0xb0 0xc0 0xd0
		 * AP/VLAN: 0x00 0x20 0x40 0xa0 0xb0 0xc0 0xd0
		 * mesh point: 0xb0 0xc0 0xd0
		 * P2P-client: 0x40 0xd0
		 * P2P-GO: 0x00 0x20 0x40 0xa0 0xb0 0xc0 0xd0
		 * P2P-device: 0x40 0xd0
	software interface modes (can always be added):
		 * AP/VLAN
		 * monitor
	valid interface combinations:
		 * #{ AP, mesh point } <= 8,
		   total <= 8, #channels <= 1
	HT Capability overrides:
		 * MCS: ff ff ff ff ff ff ff ff ff ff
		 * maximum A-MSDU length
		 * supported channel width
		 * short GI for 40 MHz
		 * max A-MPDU length exponent
		 * min MPDU start spacing
	Device supports TX status socket option.
	Device supports HT-IBSS.
	Device supports SAE with AUTHENTICATE command
	Device supports low priority scan.
	Device supports scan flush.
	Device supports AP scan.
	Device supports per-vif TX power setting
	Driver supports a userspace MPM
```
