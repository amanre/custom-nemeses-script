#!/bin/bash
set -e

##################################################################################################################
#
#   DO NOT JUST RUN THIS. EXAMINE AND JUDGE. RUN AT YOUR OWN RISK.
#
##################################################################################################################
echo "###########################################################################"
echo "##      This script assumes you have the linux-hardened kernel running        ##"
echo "###########################################################################"

sudo pacman -S --noconfirm --needed virtualbox
sudo pacman -S --noconfirm --needed linux-hardened-headers
sudo pacman -S --needed virtualbox-host-dkms

echo "###########################################################################"
echo "##      Removing all the messages virtualbox produces         ##"
echo "###########################################################################"
VBoxManage setextradata global GUI/SuppressMessages "all"

echo "###########################################################################"
echo "#########               You have to reboot.                       #########"
echo "###########################################################################"
