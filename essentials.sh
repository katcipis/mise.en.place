#!/bin/sh
set -e

echo "Installing essentials"
sudo pacman --noconfirm -S git openssh sudo

git config --global push.default simple
git config --global user.name "Tiago Katcipis"
git config --global user.email "tiagokatcipis@gmail.com"
