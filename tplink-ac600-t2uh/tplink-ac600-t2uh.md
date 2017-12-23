
* Crashes on  x64 PC after ifconfig
* Compiles on and interface comes up on Raspberry Pi
* Compiles but does not work on Raspberry Pi

# Compile driver for Raspberry Pi

```
apt-get update
apt-get upgrade
apt-get install linux-headers
git clone https://github.com/ulli-kroll/mt7610u.git

# line 2072 of chips/mt76x0.c
# udelay(2200);  to  udelay(2000);

find ./ -type f -exec sed -i -e 's/udelay(2200/udelay(2000/g' {} \;
make ARCH=arm
```
# Compile driver for OrangePi
currently does NOT work
```
apt-get update
apt-get upgrade
apt-get install linux-headers-next-sunxi
git clone https://github.com/ulli-kroll/mt7610u.git

# line 2072 of chips/mt76x0.c
# udelay(2200);  to  udelay(2000);

find ./ -type f -exec sed -i -e 's/udelay(2200/udelay(2000/g' {} \;
make ARCH=arm
```
