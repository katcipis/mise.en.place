#!/bin/sh
set -e 

echo "Installing Vagrant"
sudo pacman --noconfirm -S virtualbox virtualbox-host-dkms net-tools
sudo usermod -a -G vboxusers $USER
sudo pacman --noconfirm -S vagrant
