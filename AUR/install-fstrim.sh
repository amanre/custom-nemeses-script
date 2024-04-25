#!/bin/bash
set -e

##################################################################################################################
#
#   DO NOT JUST RUN THIS. EXAMINE AND JUDGE. RUN AT YOUR OWN RISK.
#
##################################################################################################################

#https://wiki.archlinux.org/title/Solid_state_drive#TRIM

sudo systemctl enable fstrim.timer
