#!/bin/sh

set -o errexit

echo "Installing cool font"
sudo pacman --noconfirm -S ttf-inconsolata
