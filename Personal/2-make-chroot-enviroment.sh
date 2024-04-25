#!/bin/bash
# Make a clean chroot -----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

sudo pacman -S devtools --needed --noconfirm

echo "chroot for am packages"

[ -d $HOME"/Documents/chroot-amoslinux" ] || mkdir -p $HOME"/Documents/chroot-amoslinux"
CHROOT=$HOME/Documents/chroot-amoslinux
mkarchroot $CHROOT/root base-devel
arch-nspawn $CHROOT/root pacman -Syu

echo "chroot for all but am packages"

[ -d $HOME"/Documents/chroot" ] || mkdir -p $HOME"/Documents/chroot"
CHROOT=$HOME/Documents/chroot
mkarchroot $CHROOT/root base-devel
arch-nspawn $CHROOT/root pacman -Syu


echo "Done "
sleep 3

# make a chroot kernel environment -----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

#sudo pacman -S devtools --needed --noconfirm

#echo "chroot for am kernel packages"

#[ -d $HOME"/Documents/chroot-am-kernel" ] || mkdir -p $HOME"/Documents/chroot-am-kernel"
#CHROOT=$HOME/Documents/chroot-am-kernel
#mkarchroot $CHROOT/root base-devel
#arch-nspawn $CHROOT/root pacman -Syu

#echo "Done"
