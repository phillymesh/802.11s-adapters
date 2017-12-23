# 802.11s-adapters
A list of compatible 802.11s adapters.
Run `sudo bash 80211s-test.sh` to get devics info for your hardware.

## Good Devices

| Device                    | Driver       | 802.11s | AdHoc | Band | Notes      |
| :------------------------ | :----------- | :------ | :-----| :----| :----------|
| [TP-LINK TL-WN722N v1](tplink-tl-wn722n-v1/tplink-tl-wn722n-v1.md)| ath9k_htc | Yes | Yes | 2.4Ghz |Detachable Antenna |
| [Toplinkst TOP-GS07](toplinkst-top-gs07/toplinkst-top-gs07.md)    | rt2800usb | Yes | Yes | 2.4/5Ghz | Gets Very Hot      |
| [Edimax EW-7811Un](edimax-ew-7811un/edimax-ew-7811un.md) | rtl8192cu | Yes | Yes | 2.4Ghz | RPI Workaround              |
| [OurLiNK](ourlink-150m/ourlink-150m.md) | rtl8192cu | Yes | Yes | 2.4Ghz | Available [adaFruit](https://www.adafruit.com/product/1012) |
| [Alfa AWUS036H](alfa-AWUS036H/alfa-AWUS036H.md) | rt2800usb | Yes | Yes | 2.4Ghz | Detachable Antenna |
| ASUS USB-N14 | | | || Reported Meshable, need confirmation |

## Bad Devices 
| Device                    | Driver       | 802.11s | AdHoc | Band | Notes      |
| :------------------------ | :----------- | :------ | :-----| :----| :----------|
| TP-LINK TL-WN722N v2      | No Known Drivers | | | 2.5/5Ghz | |
| [TP-Link AC600 Archer T2UH](tplink-ac600-t2uh/tplink-ac600-t2uh.md) | mt7610u | | | 2.5/5Ghz| [Non Standard Driver](https://github.com/ulli-kroll/mt7610u) , no 80211 Support |
| Raspberry Pi 3 Onboard | brcmfmac | No | Yes | 2.4Ghz | |
| Orange Pi Zero | xradio | No | Yes | 2.4Ghz | Reports 80211s but dot not actually work.<br> Poor quality driver TOPS 10Mbps|
| Orange Pi Lite Onboard | | No | No | 2.4Ghz | ONLY works with old API, client mode ONLY |
