#!/usr/bin/env bash

sudo ostree prune --rep=/var/lib/flatpak/repo
sudo flatpak repair
sudo systemctl restart flatpak-system-helper.service