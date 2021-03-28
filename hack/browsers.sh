#!/bin/sh
set -o errexit

echo "Firefox"
sudo pacman --noconfirm -S firefox

echo "Install Google Chrome"
./hack/aur.sh google-chrome
