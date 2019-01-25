#!/bin/bash
set -e -u

PACKAGES=""
PACKAGES+=" python-yaml" # Needed by open-adventure

sudo DEBIAN_FRONTEND=noninteractive \
	apt-get install -yq --no-install-recommends $PACKAGES

sudo mkdir -p /data/data/com.termux/files/usr
sudo chown -R `whoami` /data
