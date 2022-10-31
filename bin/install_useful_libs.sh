#!/usr/bin/env bash

# Install using pacman
sudo pacman --needed --noconfirm -Syy git base-devel openssh rsync openssl wget curl

# Enable ssh on system start
sudo systemctl enable sshd

## Creates errors on the steamdeck ##
## Install yay
#cd /home/deck || exit 1
#git clone https://aur.archlinux.org/yay.git
#cd ./yay || exit 1
#makepkg -si
#
## Remove yay folder
#cd ..
#rm -rf ./yay

