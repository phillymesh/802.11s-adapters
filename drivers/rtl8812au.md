[TOC]

# Which hardware?

[aircrack-ng's rtl8812au](https://github.com/aircrack-ng/rtl8812au) is known to work well for the RTL8812AU, RTL8811AU, and RTL8814AU chipsets. 

Supports:
- AP mode 11a/b/g/n/ac
- STA mode 11a/b/g/n/ac
- Full expected speed for both (just over half theoretical maximum throughput is achieved if not USB limited).

Does not support:
- Ad-hoc is, as of time of writing, broken (see [this issue](https://github.com/aircrack-ng/rtl8812au/issues/311)).

# Header installation
Kernel headers are required for the compiler to link to a bunch of stuff. Get these before attempting to compile:

## Headers for Raspbian

To acquire the kernel sources, run: ([info source](https://github.com/aircrack-ng/rtl8812au/blob/v5.2.20/README.md)):

```
# As root, do the following
apt install bc # bc required to run rpi-source
wget "https://raw.githubusercontent.com/notro/rpi-source/master/rpi-source" -O /usr/bin/rpi-source
chmod 755 /usr/bin/rpi-source
rpi-source
```

## Headers for Armbian (TODO: Test this)


```
apt-get update
apt-get upgrade
reboot
apt-get install linux-headers-next-sunxi
```

# [aircrack-ng's rtl8812au](https://github.com/aircrack-ng/rtl8812au)

## Install dependencies
```
# If you have not done so yet
sudo apt update
# Direct requirements to build
sudo apt -y install git build-essential bc libelf-dev
```

## Clone [repository](https://github.com/aircrack-ng/rtl8812au)

```
git clone https://github.com/aircrack-ng/rtl8812au
cd rtl8812au
```

## Compile

Based on your model of Pi, change the Makefile, then run this step to change platform ([info source](https://github.com/aircrack-ng/rtl8812au/blob/v5.2.20/README.md)):

- For RPI 0 / 1 / 2 / 3:

```
sed -i 's/CONFIG_PLATFORM_I386_PC = y/CONFIG_PLATFORM_I386_PC = n/g' Makefile
sed -i 's/CONFIG_PLATFORM_ARM_RPI = n/CONFIG_PLATFORM_ARM_RPI = y/g' Makefile
```

- For RPI 3B+ you will need to run those below which builds the ARM64 arch driver:

```
sed -i 's/CONFIG_PLATFORM_I386_PC = y/CONFIG_PLATFORM_I386_PC = n/g' Makefile
sed -i 's/CONFIG_PLATFORM_ARM64_RPI = n/CONFIG_PLATFORM_ARM64_RPI = y/g' Makefile
```

At this point, you can compile using `sudo make`; run `sudo make -j4` if you have a 4-core Pi, to speed up compilation. The kernel object file `88XXau.ko` will be produced.

You can install this with `sudo make install`.

## Module options

In `/etc/modprobe.d/88XXau.conf`:

```
options 88XXau rtw_power_mgnt=0 rtw_power_mgnt=0 rtw_enusbss=0 rtw_ips_mode=1 rtw_vht_enable=2 rtw_ht_enable=1 rtw_led_enable=1 rtw_full_ch_in_p2p_handshake=1
```

## Working `hostapd`

```
ctrl_interface=/var/run/hostapd
ctrl_interface_group=0
interface=INTERFACE_NAME
driver=nl80211

############
# AP configs
ssid=YourSSID
wpa=3
wpa_passphrase=YourSecret
wpa_key_mgmt=WPA-PSK
wpa_pairwise=TKIP CCMP
rsn_pairwise=CCMP

hw_mode=a

##############
# IEEE 802.11n
ieee80211n=1
ht_capab=[HT20][HT40+][SHORT-GI-20][SHORT-GI-40][DSSS_CCK-40]

###############
# IEEE 802.11ac
ieee80211ac=1
channel=36
vht_oper_centr_freq_seg0_idx=42 # This must be 6 higher than channel
vht_oper_chwidth=1
vht_capab=[MAX-MPDU-11454][SHORT-GI-80]
```

## Increasing TX Power

```
# To set to 24 dBm (usual max for firmware):
sudo iw dev wlx18d6c70fc510 set txpower fixed 2400
```

Some devices to not always respond to this immediately, if at all. I can confirm that the rtl8814au devices DO respond to this, however. We should build a table of which do and which do not.
