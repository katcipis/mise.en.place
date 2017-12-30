#!/bin/sh
set -o errexit
set -o nounset

echo "Installing cool font"
sudo pacman --noconfirm -S ttf-inconsolata freetype2 pkg-config

cd /tmp
rm -rf image
git clone https://go.googlesource.com/image
mkdir -p $HOME/.local/share/fonts
cp -pr /tmp/image/font/gofont/ttfs  $HOME/.local/share/fonts/go
