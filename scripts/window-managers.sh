#!/bin/sh
set -e
set -u

echo "Installing I3"
sudo pacman --noconfirm -S  i3-wm i3status i3lock
