#!/usr/bin/env bash

sudo flatpak repair
sudo systemctl restart flatpak-system-helper.service