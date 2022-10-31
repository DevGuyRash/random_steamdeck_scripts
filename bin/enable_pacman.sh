#!/usr/bin/env bash

sudo steamos-readonly disable
sudo pacman-key --init
sudo pacman-key --populate
sudo pacman -Sy archlinux-keyring