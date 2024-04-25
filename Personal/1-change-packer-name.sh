#!/bin/bash
#change packer name ----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
FIND='#PACKAGER="John Doe <john@doe.com>"'

echo
tput setaf 1
echo "  Choose wisely - one time setup after clean install   "
tput sgr0
echo
echo "Select the correct name"
echo
echo "0.  Do nothing"
echo "1.  Achim"
echo "Type the number..."

read CHOICE

case $CHOICE in

    0 )
      echo
      echo "We did nothing as per your request"
      echo
      ;;

    1 )
      REPLACE='PACKAGER="Achim Reiz <amanre556@gmail.com>"'
      ;;
esac

  find /etc/makepkg.conf -type f -exec sudo sed -i "s/$FIND/$REPLACE/g" {} \;

echo $REPLACE" is now the signer for the packages"