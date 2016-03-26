#!/bin/sh
set -o errexit

sudo pacman --noconfirm -S dconf

cd /tmp
rm -rf gnome-terminal-colors-solarized
git clone git@github.com:Anthony25/gnome-terminal-colors-solarized.git
cd gnome-terminal-colors-solarized
./install.sh
