#!/bin/sh
set -e

echo "Installing I3"
sudo pacman --noconfirm -S i3-wm i3status i3lock dmenu

echo "Installing Rio"
cd $HOME
git clone git@github.com:katcipis/plan9port.git
cd plan9port
./INSTALL
