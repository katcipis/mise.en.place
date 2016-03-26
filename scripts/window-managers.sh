#!/bin/sh
set -e
set -u

echo "Installing gnome"
sudo pacman --noconfirm -S gnome

echo "Installing I3"
sudo pacman --noconfirm -S  i3-wm i3status i3lock

#cd /tmp
#rm -rf i3-gnome
#git clone https://aur.archlinux.org/i3-gnome.git
#cd i3-gnome
#makepkg -sri
