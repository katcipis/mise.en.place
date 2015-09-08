#!/bin/sh
set -e

echo "Installing git and other stuff"
sudo pacman --noconfirm -S git openssh sudo

git config --global push.default simple
git config --global user.name "Tiago Katcipis"
git config --global user.email "tiagokatcipis@gmail.com"

echo "Installing Alsa"
sudo pacman --noconfirm -S alsa-utils alsa-tools

echo "Installing network utils"
cp network.sh /usr/local/bin
