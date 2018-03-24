
* Crashes on  x64 PC after ifconfig
* Compiles on and interface comes up on Raspberry Pi
* Compiles but does not work on Raspberry Pi

Instructions to compile [mt7610u](../drivers/mt7610u.md)


```
$ iw phy info
Wiphy phy2
	max # scan SSIDs: 128
	max scan IEs length: 2304 bytes
	max # sched scan SSIDs: 0
	max # match sets: 0
	max # scan plans: 1
	max scan plan interval: -1
	max scan plan iterations: 0
	Retry short limit: 7
	Retry long limit: 4
	Coverage class: 0 (up to 0m)
	Supported Ciphers:
		* WEP40 (00-0f-ac:1)
		* WEP104 (00-0f-ac:5)
		* TKIP (00-0f-ac:2)
		* CCMP-128 (00-0f-ac:4)
	Available Antennas: TX 0 RX 0
	Supported interface modes:
		 * IBSS
		 * managed
		 * monitor
	Band 1:
		Capabilities: 0x104e
			HT20/HT40
			SM Power Save disabled
			RX HT40 SGI
			No RX STBC
			Max AMSDU length: 3839 bytes
			DSSS/CCK HT40
		Maximum RX AMPDU length 65535 bytes (exponent: 0x003)
		Minimum RX AMPDU time spacing: No restriction (0x00)
		HT TX/RX MCS rate indexes supported: 0-7
		Bitrates (non-HT):
			* 1.0 Mbps (short preamble supported)
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
			* 2412 MHz [1] (30.0 dBm)
			* 2417 MHz [2] (30.0 dBm)
			* 2422 MHz [3] (30.0 dBm)
			* 2427 MHz [4] (30.0 dBm)
			* 2432 MHz [5] (30.0 dBm)
			* 2437 MHz [6] (30.0 dBm)
			* 2442 MHz [7] (30.0 dBm)
			* 2447 MHz [8] (30.0 dBm)
			* 2452 MHz [9] (30.0 dBm)
			* 2457 MHz [10] (30.0 dBm)
			* 2462 MHz [11] (30.0 dBm)
			* 2467 MHz [12] (disabled)
			* 2472 MHz [13] (disabled)
			* 2484 MHz [14] (disabled)
	Band 2:
		Capabilities: 0x104e
			HT20/HT40
			SM Power Save disabled
			RX HT40 SGI
			No RX STBC
			Max AMSDU length: 3839 bytes
			DSSS/CCK HT40
		Maximum RX AMPDU length 65535 bytes (exponent: 0x003)
		Minimum RX AMPDU time spacing: No restriction (0x00)
		HT TX/RX MCS rate indexes supported: 0-7
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
			* 5180 MHz [36] (17.0 dBm)
			* 5190 MHz [38] (17.0 dBm)
			* 5200 MHz [40] (17.0 dBm)
			* 5220 MHz [44] (17.0 dBm)
			* 5230 MHz [46] (17.0 dBm)
			* 5240 MHz [48] (17.0 dBm)
			* 5260 MHz [52] (24.0 dBm) (radar detection)
			* 5270 MHz [54] (24.0 dBm) (radar detection)
			* 5280 MHz [56] (24.0 dBm) (radar detection)
			* 5300 MHz [60] (24.0 dBm) (radar detection)
			* 5310 MHz [62] (24.0 dBm) (radar detection)
			* 5320 MHz [64] (24.0 dBm) (radar detection)
			* 5500 MHz [100] (24.0 dBm) (radar detection)
			* 5520 MHz [104] (24.0 dBm) (radar detection)
			* 5540 MHz [108] (24.0 dBm) (radar detection)
			* 5560 MHz [112] (24.0 dBm) (radar detection)
			* 5580 MHz [116] (24.0 dBm) (radar detection)
			* 5590 MHz [118] (24.0 dBm) (radar detection)
			* 5600 MHz [120] (disabled)
			* 5620 MHz [124] (disabled)
			* 5630 MHz [126] (disabled)
			* 5640 MHz [128] (disabled)
			* 5660 MHz [132] (24.0 dBm) (radar detection)
			* 5670 MHz [134] (24.0 dBm) (radar detection)
			* 5680 MHz [136] (24.0 dBm) (radar detection)
			* 5700 MHz [140] (24.0 dBm) (radar detection)
			* 5745 MHz [149] (30.0 dBm)
			* 5755 MHz [151] (30.0 dBm)
			* 5765 MHz [153] (30.0 dBm)
			* 5785 MHz [157] (30.0 dBm)
			* 5795 MHz [159] (30.0 dBm)
			* 5805 MHz [161] (30.0 dBm)
			* 5825 MHz [165] (30.0 dBm)
			* 5835 MHz [167] (disabled)
			* 5845 MHz [169] (disabled)
			* 5855 MHz [171] (disabled)
			* 5865 MHz [173] (disabled)
			* 4920 MHz [184] (disabled)
			* 4940 MHz [188] (disabled)
			* 4960 MHz [192] (disabled)
			* 4980 MHz [196] (disabled)
			* 6040 MHz [208] (disabled)
			* 6060 MHz [212] (disabled)
			* 6080 MHz [216] (disabled)
	Supported commands:
		 * set_interface
		 * new_key
		 * join_ibss
		 * set_pmksa
		 * del_pmksa
		 * flush_pmksa
		 * connect
		 * disconnect
	software interface modes (can always be added):
	interface combinations are not supported
	Device supports scan flush.
  ```
  
