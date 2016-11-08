#!/bin/sh
set -o errexit
set -o nounset

echo "Installing grub at: "$1
sudo pacman --noconfirm -S grub
sudo grub-install --target=i386-pc $1
sudo grub-mkconfig -o /boot/grub/grub.cfg
