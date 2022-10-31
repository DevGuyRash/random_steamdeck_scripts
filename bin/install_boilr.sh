#!/usr/bin/env bash

# Warnings and info
echo "Please be aware that due to an error with rust installing eframe, rustup must be used and takes a bit longer."
echo "To update in the future, run yay -Sy steam-boilr-gui"
read -p "Please select rustup when prompted, selecting the default will generate an error" _

# Install the needed libraries
sudo pacman --needed -Sy base-devel openssl rustup

# Ensure toolchain is installed correctly
rustup install stable
rustup default stable

# Install boilr
yay -Sy steam-boilr-gui