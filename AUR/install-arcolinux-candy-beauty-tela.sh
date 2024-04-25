#!/bin/bash
set -e

##################################################################################################################
#
#   DO NOT JUST RUN THIS. EXAMINE AND JUDGE. RUN AT YOUR OWN RISK.
#
##################################################################################################################

rm -rf /tmp/ArcoLinux-Candy-Beauty-Tela
git clone https://github.com/erikdubois/ArcoLinux-Candy-Beauty-Tela /tmp/ArcoLinux-Candy-Beauty-Tela
cp -r /tmp/ArcoLinux-Candy-Beauty-Tela/.icons/* ~/.icons
rm -rf /tmp/ArcoLinux-Candy-Beauty-Tela