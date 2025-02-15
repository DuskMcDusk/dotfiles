#!/bin/bash

echo 'updating'
sudo apt update && sudo apt upgrade -y

if [[ "$1"="--upgrade" ]]; then
  sudo apt-upgrade
fi

sudo apt install -y \
build-essential \
git \
curl \
gh \
i3 \
pulseaudio-utils \
brightnessctl

# configure brightnessctl to run without sudo
sudo usermod -aG video ${USER}

echo "clean up"
sudo apt autoremove -y

echo "installation completed"

