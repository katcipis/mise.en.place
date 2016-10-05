#!/bin/sh
set -e
set -u

echo "Installing gnome"
sudo pacman --noconfirm -S gnome

echo "Installing I3"
sudo pacman --noconfirm -S  i3-wm i3status i3lock

echo "Installing xcwd"
./scripts/aur.sh xcwd-git
