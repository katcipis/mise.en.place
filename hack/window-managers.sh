#!/bin/sh
set -o errexit
set -o nounset

echo "Installing taowm"
go get -u github.com/katcipis/taowm

echo "Install i3"
sudo pacman --noconfirm -S i3
