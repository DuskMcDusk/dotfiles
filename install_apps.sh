#!/bin/bash

echo 'updating'
sudo apt update && sudo apt upgrade -y

if [[ "$1"="--upgrade" ]]; then
  sudo apt-upgrade
fi

sudo apt install -y \
build-essential \
git \
gh \
i3 \
pulseaudio-utils

echo "clean up"
sudo apt autoremove -y

echo "installation completed"

