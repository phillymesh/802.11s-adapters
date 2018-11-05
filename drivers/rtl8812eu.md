# Headers for Raspbian
- note `apt-get install linux-headers` no longer works
- I had issues getting the headers to install at times.  Install headers FIRST before running `apt-get update`

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

# abhijeet2096  
## TL-WN722N-V2/3 Support
```
git clone https://github.com/abhijeet2096/TL-WN722N-V2.git
cd TL-WN722N-V2
ARCH=arm make
sudo make install
```
