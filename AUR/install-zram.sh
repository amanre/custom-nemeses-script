#!/bin/bash
set -e

##################################################################################################################
#
#   DO NOT JUST RUN THIS. EXAMINE AND JUDGE. RUN AT YOUR OWN RISK.
#
##################################################################################################################

#https://github.com/systemd/zram-generator

sudo pacman -S zram-generator --noconfirm --needed

#----------------------------------------------------------------------------------

echo '[zram0]
host-memory-limit = none
zram-fraction = 1
max-zram-size = none
compression-algorithm = zstd' | sudo tee /etc/systemd/zram-generator.conf

#create new devices
sudo systemctl daemon-reload

sudo systemctl start /dev/zram0

echo "check with"
echo "swapon or zramctl or"
echo "with systemdsystemctl status systemd-zram-setup@zram0.service"