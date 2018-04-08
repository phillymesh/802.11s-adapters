# Headers for Raspbian
note `apt-get install linux-headers` no longer works

```
apt-get update
apt-get upgrade
reboot
apt-get update
apt-get install raspberrypi-kernel-headers

```

# Headers for Armbian

```
apt-get update
apt-get upgrade
reboot
apt-get install linux-headers-next-sunxi
```

# diederikdehaas Driver
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
