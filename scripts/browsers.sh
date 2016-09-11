#!/bin/sh
set -o errexit

echo "Firefox"
sudo pacman --noconfirm -S firefox extra/flashplugin

echo "Install Google Chrome"
./scripts/aur.sh google-chrome
