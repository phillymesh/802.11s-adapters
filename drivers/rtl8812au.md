# Which hardware?

[aircrack-ng's rtl8812au](https://github.com/aircrack-ng/rtl8812au) is known to work well for the RTL8812AU, RTL8811AU, and RTL8814AU chipsets. 

Supports:
- AP mode 11a/b/g/n/ac
- STA mode 11a/b/g/n/ac
- Full expected speed for both (just over half theoretical maximum throughput is achieved if not USB limited).

Does not support:
- Ad-hoc is, as of time of writing, broken (see [this issue](https://github.com/aircrack-ng/rtl8812au/issues/311)).

# Driver installation

## Headers for Raspbian

For the kernel source, quoting [aircrack-ng](https://github.com/aircrack-ng/rtl8812au/blob/v5.2.20/README.md):

> For Raspberry (RPI 2/3) you will need kernel sources
```
# As root, do the following
wget "https://raw.githubusercontent.com/notro/rpi-source/master/rpi-source" -O /usr/bin/rpi-source
chmod 755 /usr/bin/rpi-source
# TODO: Check that this does not require dependencies not present in lite img
rpi-source 
```

## Headers for Armbian

```
apt-get update
apt-get upgrade
reboot
apt-get install linux-headers-next-sunxi
```

## [aircrack-ng's rtl8812au](https://github.com/aircrack-ng/rtl8812au)

Install dependencies
```
# If you have not done so yet
sudo apt update && sudo apt upgrade
# Direct requirements to build
sudo apt-get install build-essentials bc libelf-dev
```

Based on your model of Pi, change the Makefile ([info source](https://github.com/aircrack-ng/rtl8812au/blob/v5.2.20/README.md))

Then run this step to change platform in Makefile:

- For RPI 0 / 1 / 2 / 3:

```
sed -i 's/CONFIG_PLATFORM_I386_PC = y/CONFIG_PLATFORM_I386_PC = n/g' Makefile
sed -i 's/CONFIG_PLATFORM_ARM_RPI = n/CONFIG_PLATFORM_ARM_RPI = y/g' Makefile
```

- For RPI 3 B+ you will need to run those below which builds the ARM64 arch driver:

```
sed -i 's/CONFIG_PLATFORM_I386_PC = y/CONFIG_PLATFORM_I386_PC = n/g' Makefile
sed -i 's/CONFIG_PLATFORM_ARM64_RPI = n/CONFIG_PLATFORM_ARM64_RPI = y/g' Makefile
```

At this point, you can compile using `make`; run `make -j4` if you have a 4-core Pi, to speed up compilation. The kernel object file `88XXau.ko` will be produced.

You can install this with `sudo make install`.

### Module options

In `/etc/modprobe.d/88XXau.conf`:

```
options 88XXau rtw_power_mgnt=0 rtw_power_mgnt=0 rtw_enusbss=0 rtw_ips_mode=1 rtw_vht_enable=2 rtw_ht_enable=1 rtw_led_enable=1 rtw_full_ch_in_p2p_handshake=1
```

### Working hostapd

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

## diederikdehaas' rtl8812au

** Note: use aircrack-ng's driver instead; unlike this one, it is under active development! **

```
git clone https://github.com/diederikdehaas/rtl8812AU.git
cd rtl8812AU
# Compile for RPI
sed -i 's/CONFIG_PLATFORM_I386_PC = y/CONFIG_PLATFORM_I386_PC = n/' Makefile > /dev/null
sed -i 's/CONFIG_PLATFORM_ARM_RPI = n/CONFIG_PLATFORM_ARM_RPI = y/' Makefile > /dev/null
# add misisng UID 0x2604, 0x0012
sed 's/{USB_DEVICE(0x7392, 0xA822),.driver_info = RTL8812}/{USB_DEVICE(0x2604, 0x0012),.driver_info = RTL8812},\n{USB_DEVICE(0x7392, 0xA822),.driver_info = RTL8812}/'  os_dep/linux/usb_intf.c > /dev/null
make 
make install
```
