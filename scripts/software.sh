#!/bin/bash
#set -e

#tput setaf 0 = black
#tput setaf 1 = red
#tput setaf 2 = green
#tput setaf 3 = yellow
#tput setaf 4 = dark blue
#tput setaf 5 = purple
#tput setaf 6 = cyan
#tput setaf 7 = gray
#tput setaf 8 = light blue
##################################################################################################################

installed_dir=$(dirname $(readlink -f $(basename `pwd`)))

echo
tput setaf 2
echo "################################################################"
echo "###################  Software to install"
echo "################################################################"
tput sgr0
echo


PKGS=(

catppuccin-icons
pywal-conky-git
tokyonight-icons
catppuccin-gtk-theme-mocha
catppuccin-gtk-theme-macchiato
catppuccin-gtk-theme-frappe
catppuccin-gtk-theme-latte
betterlockscreen
ttf-bitstream-vera
ttf-dejavu
ttf-droid
ttf-hack
ttf-inconsolata
ttf-liberation
ttf-roboto
ttf-roboto-mono
ttf-ubuntu-font-family
adobe-source-sans-fonts
gsfonts
#visual-studio-code-bin
file-roller
galculator
gparted
# Gaming Related ++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

#proton-ge-custom-bin
#protonup-git
#proton-community-updater
#steam
#steam-fonts
#steam-tweaks
#steam-native-runtime
#goverlay-bin
#bottles
#gamemode
#lib32-gamemode
#lutris
#wine-staging
#winetricks
#playonlinux
#samsung-unified-driver-common
#samsung-unified-driver-printer
#samsung-unified-driver-scanner
#canon-pixma-ts5055-complete
imagewriter
qbittorrent
kdocker
kshutdown

)

for PKG in "${PKGS[@]}"; do
    echo "INSTALLING ${PKG}"
    yay -S "$PKG" --noconfirm --needed
done

echo
tput setaf 2
echo "################################################################"
echo "################### Done"
echo "################################################################"
tput sgr0
echo
