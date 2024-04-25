#!/bin/bash
#set -e

##################################################################################################################
#
#   DO NOT JUST RUN THIS. EXAMINE AND JUDGE. RUN AT YOUR OWN RISK.
#
##################################################################################################################
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

# Print welcome & title

echo -e "\033[32m  _____                 _             _   _       "
echo -e " |_   _|               | |           | | | |              "
echo -e "   | |    _ __    ___  | |_    __ _  | | | |   ___   _ __ "
echo -e "   | |   | |_ \  / __| | __|  / _| | | | | |  / _ \ | |__|"
echo -e "  _| |_  | | | | \__ \ | |_  | (_| | | | | | |  __/ | |   "
echo -e " |_____| |_| |_| |___/  \__|  \__,_| |_| |_|  \___| |_|   \e[0m"


echo " "
echo "Welcome $USER!" && sleep 3

sudo pacman -Syyu

echo
tput setaf 2
echo "################################################################"
echo "################### Remove Conflicting Software"
echo "################################################################"
tput sgr0
echo

    installed_dir=$(dirname $(readlink -f $(basename `pwd`)))
cd $installed_dir/scripts
sh software.sh*
sh install-all-desktop-themes*
#sh install-xfce-themes-for-notebook*
#sh install-xfce-themes-for-notebook-1366x768*
sh install-bspwm*
sh install-rofi*
sh software-AUR-repo*
sh mpd-ncmpcpp*
#sh zram.sh*
sh fstrim.sh*
#sh delete-all-desktop-themes.sh*
#sh install-all-desktop-themes*


echo
tput setaf 2
echo "################################################################"
echo "################### Going to the Personal folder"
echo "################################################################"
tput sgr0
echo

installed_dir=$(dirname $(readlink -f $(basename `pwd`)))
cd $installed_dir/Personal
sh 1-change-packer-name*
#sh 2-make-chroot-enviroment*
sh 3-change-compression-settings*
sh 4-install-personal-settings-folders*
#sh 5-install-personal-settings-bookmarks*
sh 7-install-personal-settings-screenshot-to-jpg*
sh 8-fix-simplescreenrecorder*
sh 9-fix-sublime-text-icons*
sh 10-fix-telegram*
sh 11-autostart-applications*
#sh 12-btrfs-setup*
sh 13-install-all-fonts-needed-for-conkys*
#sh 14-dep-calamares*

# change shell to zsh
sudo chsh $USER -s /bin/zsh
# Final skel
sh skel*
# reboot
sudo reboot
