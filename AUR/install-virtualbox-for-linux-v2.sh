#!/bin/bash
set -e

##################################################################################################################
#
#   DO NOT JUST RUN THIS. EXAMINE AND JUDGE. RUN AT YOUR OWN RISK.
#
##################################################################################################################
echo "###########################################################################"
echo "##      This script assumes you have the linux kernel running        ##"
echo "###########################################################################"

sudo pacman -S --noconfirm --needed virtualbox
sudo pacman -S --needed --noconfirm virtualbox-host-dkms

echo "###########################################################################"
echo "##      Removing all the messages virtualbox produces         ##"
echo "###########################################################################"
VBoxManage setextradata global GUI/SuppressMessages "all"

echo "###########################################################################"
echo "#########               You have to reboot.                       #########"
echo "###########################################################################"
