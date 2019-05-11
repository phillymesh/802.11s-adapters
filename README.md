# 802.11s-adapters
A list of compatible 802.11s adapters.
Run `sudo bash 80211s-test.sh` to get devics info for your hardware.

## Good Devices

| Device                    | Driver       | 802.11s | AdHoc | Band | Notes      |
| :------------------------ | :----------- | :------ | :-----| :----| :----------|
| [TP-LINK TL-WN722N v1](tplink-tl-wn722n-v1/tplink-tl-wn722n-v1.md)| ath9k_htc | Yes | Yes | 2.4Ghz |Detachable Antenna |
| [TP-LINK TL-WN821N v1,2,3](tl-wn821n/tl-wn821n.md.md)| ath9k_htc | Yes | Yes | 2.4Ghz | |
| [Toplinkst TOP-GS07](toplinkst-top-gs07/toplinkst-top-gs07.md)    | rt2800usb | Yes | Yes | 2.4/5Ghz |Gets Very Hot      |
| [Toplinkst TOP-S5](toplinkst-top-s5/toplinkst-top-s5.md) | rt2800usb | Yes | Yes | 2.4/5Ghz | Headers for USB (no actual usb plug) Similar to GS07, Dual Antenna not as hot |
| [Edimax EW-7811Un](edimax-ew-7811un/edimax-ew-7811un.md) | rtl8192cu | Yes | Yes | 2.4Ghz | RPI Workaround for blacklisted module. Works on Stretch |
| [OURLiNK](ourlink-150m/ourlink-150m.md) | rtl8192cu | Yes | Yes | 2.4Ghz | Available [adaFruit](https://www.adafruit.com/product/1012) |
| [Alfa AWUS036H](alfa-AWUS036h/alfa-AWUS036h.md) | rt2800usb | Yes | Yes | 2.4Ghz | Detachable Antenna, b,g only, 1000mw |
| [Alfa AWUS036NH](alfa-awus036nh/alfa-awus036nh.md) | rt2800usb | Yes | Yes | 2.4Ghz | Detachable Antenna b,g,n, 2000mw|
| [WXTUP AT9271](wxtup-ar9271/wxtup-ar9271.md) | ath9k_htc | Yes | Yes | 2.4GHz | Generic of TP-Link TL-WN722N|
| ASUS USB-N14 | | | || Reported Meshable, need confirmation |
| Panda wireless PAU06 | | | || Reported Meshable, need confirmation |
| [Sitecom WL-302](sitecom-wl-302/sitecom-wl-302.md) | rt2800usb | Yes | Yes | 2.4GHz | |

## Bad Devices That could still be usefull (AP, AdHoc, etc)
| Device                    | Driver       | 802.11s | AdHoc | Band | Notes      |
| :------------------------ | :----------- | :------ | :-----| :----| :----------|
| [TP-LINK TL-WN722N v2/3](tplink-tl-wn722n-v2/tplink-tl-wn722n-v2.md)| rtl8188eu | No | Yes | 2.4Ghz |Detachable Antenna [Non Standard Driver](https://github.com/abhijeet2096/TL-WN722N-V2.git) |
| Raspberry Pi 3 Onboard | brcmfmac | No | Yes | 2.4Ghz, Meshpoing in 20Mhz width only | |
| [Raspberry Pi 3b+ Onboard](raspberry3bplus/raspberry3bplus.md) | brcmfmac | No | Yes | 2.4Ghz/5Ghz | AC (need confirmation) |
| [Orange Pi Zero Onboard](orangepizero/orangepizero.md) | xradio_wlan | No | No | 2.4Ghz | Reports 802.11s but does not actually work. Poor quality driver TOPS 10Mbps|
| Tenda U112              | rtl8812au | No | Yes | 2.4/5ghz | AC1300 Device, [Non Standard Driver](https://github.com/xxNull-lsk/rtl8812AU/tree/2087f8addfa255c4c452260d4abc1645293158d4) |

## Bad Devices 
| Device                    | Driver       | 802.11s | AdHoc | Band | Notes      |
| :------------------------ | :----------- | :------ | :-----| :----| :----------|
| [TP-Link AC600 Archer T2UH](tplink-ac600-t2uh/tplink-ac600-t2uh.md) | mt7610u | No | | 2.4/5Ghz| [Non Standard Driver](https://github.com/ulli-kroll/mt7610u) , no 80211s Support, Wont work on some boards |
| [Toplinkst TOP-5M01](toplinkst-top-5m01/toplinkst-top-5m01.md) | mt7610u | No | | 2.4/5Ghz| [Non Standard Driver](https://github.com/ulli-kroll/mt7610u), Driver Not working |
| TP-Link TL-WN725N          | r8188eu | No | No | 2.4Ghz | ONLY works with old wireless API, client mode ONLY | 
| Orange Pi Lite Onboard | rtl8189fs | No | No | 2.4Ghz | New drivers out, AP seems to crash last tested  |
| [NetCore-NM392](netcore-nw392/netcore-nw392.md) | rtl8812AU | No | Not Working | 2.4/5ghz | AC Adapter, [Non Standard Driver](https://github.com/diederikdehaas/rtl8812AU), Adhoc not working |

## Untested Devices
| Device                    | Driver       | 802.11s | AdHoc | Band | Notes      |
| :------------------------ | :----------- | :------ | :-----| :----| :----------|
| TP-Link AC600 T2U v2      | mt7650U | No | | 2.4/5Ghz| Non Mainline Drive |

### Unlisted Boards

If you have a board thats not listed please let us know. 

If your looking at a board and its no listed check out [this list of wireless drivers](https://wireless.wiki.kernel.org/en/users/Drivers) for some direction (Mesh column is 80211s).
