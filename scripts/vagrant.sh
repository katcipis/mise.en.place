#!/bin/sh
set -e 

echo "Installing Vagrant"
sudo pacman -S virtualbox virtualbox-host-dkms net-tools
sudo usermod -a -G vboxusers $USER
sudo pacman -S vagrant
