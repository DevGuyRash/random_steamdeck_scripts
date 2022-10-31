#!/usr/bin/env bash

# Warnings and info
echo "Please be aware that due to an error with rust installing eframe, rustup must be used and takes a bit longer."
echo "To update in the future, run yay -Sy steam-boilr-gui"
read -p "Please select rustup when prompted, selecting the default will generate an error" _

# Install the needed libraries
sudo pacman --needed -Sy base-devel openssl rustup

# Install boilr
yay -Sy steam-boilr-gui

# Install decky
curl -L "https://github.com/SteamDeckHomebrew/decky-loader/raw/main/dist/install_release.sh" | sh