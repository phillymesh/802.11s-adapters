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
sed -i 's/CONFIG_PLATFORM_I386_PC = y/CONFIG_PLATFORM_I386_PC = n/' Makefile > /dev/null
sed -i 's/CONFIG_PLATFORM_ARM_RPI = n/CONFIG_PLATFORM_ARM_RPI = y/' Makefile > /dev/null
make 
make install
```

# abhijeet2096  
## TL-WN722N-V2/3 Support
```
git clone https://github.com/abhijeet2096/TL-WN722N-V2.git
ARCH=arm make
make install
```
