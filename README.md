# Scripts To Make The Steamdeck Easier

I'll be adding more and more as I have time, but also feel free to contribute 
any useful scripts you have so we can create an entire repo dedicated to it.

# Installation

1. Download or copy/paste any script in [bin](https://github.com/DevGuyRash/random_steamdeck_scripts/tree/main/bin) to any folder

# Usage 

1. Run `chmod +x <filename>` to make the script executable
2. Run the script

## Compatdata Folder Naming Script

- [Documentation](https://github.com/DevGuyRash/random_steamdeck_scripts/blob/main/docs/create_links.md)
- [Script](https://github.com/DevGuyRash/random_steamdeck_scripts/blob/main/bin/create_links.sh)

## Install Gaming Tools

Installs several useful gaming tools such as ProtonUp-QT, Lutris, Bottles, boilr, etc.

- Every option will ask for confirmation before installing
- [script](https://github.com/DevGuyRash/random_steamdeck_scripts/blob/main/bin/install_gaming_tools.sh)

## Enable Pacman

This will enable read/write on the filesystem. Please do not run unless you know what you're doing.

- [Script](https://github.com/DevGuyRash/random_steamdeck_scripts/blob/main/bin/enable_pacman.sh)

## Install Useful Libraries

This will install common libraries, ~~and some are needed for [installing boilr](https://github.com/DevGuyRash/random_steamdeck_scripts/blob/main/bin/install_boilr.sh) via pacman.~~

__Make sure to enable pacman first here:__ [Enable Pacman](https://github.com/DevGuyRash/random_steamdeck_scripts/blob/main/bin/enable_pacman.sh)

- [Script](https://github.com/DevGuyRash/random_steamdeck_scripts/blob/main/bin/install_useful_libs.sh)

## Repair flatpak

### Hard repair

Remove and restart

- [Script](https://github.com/DevGuyRash/random_steamdeck_scripts/blob/main/bin/repair_flatpak_hard.sh)

### Soft repair

Only uses flatpaks repair command

- [Script](https://github.com/DevGuyRash/random_steamdeck_scripts/blob/main/bin/repair_flatpak_soft.sh)

## ~~Install Boilr via yay~~ Yay is not recommended on steamdeck

Boilr has been creating issues when installed via pacman using community rust and not 
__rustup__. Use __rustup__ as your selection if you run this script.

- [Script](https://github.com/DevGuyRash/random_steamdeck_scripts/blob/main/bin/install_boilr.sh)
