#!/bin/sh
set -o errexit
set -o nounset

arch="x86_64"
mkdir -p .backup

cp -pr /etc/pacman.conf .backup
printf "[catalyst]\nSigLevel = Never\nServer = http://catalyst.wirephire.com/repo/catalyst/$arch" | sudo tee --append /etc/pacman.conf

sudo pacman -Syu
sudo pacman -S catalyst-hook catalyst-utils catalyst-libgl lib32-catalyst-utils  lib32-catalyst-libgl  lib32-opencl-catalyst
