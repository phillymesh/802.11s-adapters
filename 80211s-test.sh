#!/bin/bash

#Run as root please
if [ "$EUID" -ne 0 ]
  then echo "Please run as root"
  exit 
fi

#Install deps
apt-get install lshw

#Detetmines mesh point, sometimes is blank.
echo '$ iw list'
iw list
echo -e '\n'

#Let's get the driver
echo '$ lshw -C network'
lshw -C network
