#!/bin/sh
set -o errexit
set -o nounset

cd /tmp
rm -rf image
git clone https://go.googlesource.com/image
mkdir -p $HOME/.local/share/fonts
cp -pr /tmp/image/font/gofont/ttfs  $HOME/.local/share/fonts/go
