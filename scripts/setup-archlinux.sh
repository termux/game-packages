#!/bin/bash
set -e -u

PACKAGES=""
PACKAGES+=" python2-yaml" # Needed by open-adventure

sudo pacman -Syq --noconfirm $PACKAGES

sudo mkdir -p /data/data/com.termux/files/usr
sudo chown -R `whoami` /data
