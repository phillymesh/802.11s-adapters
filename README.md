# 802.11s-adapters
A list of compatible 802.11s adapters.
Run `sudo bash 80211s-test.sh` to get devics info for your hardware.

## Good Devices

| Device                    | Driver       | 802.11s | AdHoc | Band | Notes      |
| :------------------------ | :----------- | :------ | :-----| :----| :----------|
| [TP-LINK TL-WN722N v1](tplink-tl-wn722n-v1/tplink-tl-wn722n-v1.md)| ath9k_htc | Yes | Yes | 2.4Ghz |Detachable Antenna |
| [Toplinkst TOP-GS07](toplinkst-top-gs07/toplinkst-top-gs07.md)    | rt2800usb | Yes | Yes | 2.4/5Ghz |Gets Very Hot      |
| [Toplinkst RT5572](toplinkst-rt5572/toplinkst-top-5m01.md) | rt2800usb | Yes | Yes | 2.5/5Ghz | Headers for USB (no actualy usb plug) Similar to GS07, Daul Antenna not as hot |
| [Edimax EW-7811Un](edimax-ew-7811un/edimax-ew-7811un.md) | rtl8192cu | Yes | Yes | 2.4Ghz | RPI Workaround for blacklisted module. Works on Stretch |
| [OURLiNK](ourlink-150m/ourlink-150m.md) | rtl8192cu | Yes | Yes | 2.4Ghz | Available [adaFruit](https://www.adafruit.com/product/1012) |
| [Alfa AWUS036H](alfa-awus036h/alfa-awus036h.md) | rt2800usb | Yes | Yes | 2.4Ghz | Detachable Antenna, b,g only, 1000mw |
| [Alfa AWUS036NH](alfa-awus036h/alfa-awus036nh.md) | rt2800usb | Yes | Yes | 2.4Ghz | Detachable Antenna b,g,n, 2000mw|
| ASUS USB-N14 | | | || Reported Meshable, need confirmation |


## Bad Devices That could still be usefull (AP, AdHoc, etc)
| Device                    | Driver       | 802.11s | AdHoc | Band | Notes      |
| :------------------------ | :----------- | :------ | :-----| :----| :----------|
| Raspberry Pi 3 Onboard | brcmfmac | No | Yes | 2.4Ghz | |
| Orange Pi Zero Onboard | xradio_wlan | No | Yes | 2.4Ghz | Reports 80211s but does not actually work. Poor quality driver TOPS 10Mbps|
| Tenda U112              | rtl8812au | No | Yes | 2.4/5ghz | AC1300 Device, [Non Standard Driver](https://github.com/xxNull-lsk/rtl8812AU/tree/2087f8addfa255c4c452260d4abc1645293158d4) |

## Bad Devices 
| Device                    | Driver       | 802.11s | AdHoc | Band | Notes      |
| :------------------------ | :----------- | :------ | :-----| :----| :----------|
| TP-Link TL-WN722N v2      | No Known Drivers | | | 2.5/5Ghz | |
| [TP-Link AC600 Archer T2UH](tplink-ac600-t2uh/tplink-ac600-t2uh.md) | mt7610u | No | | 2.5/5Ghz| [Non Standard Driver](https://github.com/ulli-kroll/mt7610u) , no 80211s Support |
| [Toplinkst TOP-5M01](toplinkst-top-5m01/toplinkst-top-5m01.md) | mt7610u | No | | 2.5/5Ghz| [Non Standard Driver](https://github.com/ulli-kroll/mt7610u) , Support, not working |
| TP-Link TL-WN725N          | r8188eu | No | No | 2.4Ghz | ONLY works with old wireless API, client mode ONLY | 
| Orange Pi Lite Onboard | rtl8189fs | No | No | 2.4Ghz | ONLY works with old wireless API, client mode ONLY |
