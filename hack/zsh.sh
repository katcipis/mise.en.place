#!/bin/sh
set -o nounset
set -o errexit

echo "Installing zsh"
sudo pacman --noconfirm -S zsh

echo "setting zsh as default shell"
sudo chsh -s /usr/bin/zsh katcipis

WORKDIR=/tmp/zsh
rm -rf $WORKDIR
mkdir -p $WORKDIR
cd $WORKDIR
wget https://github.com/katcipis/my.zsh/archive/master.zip
unzip master.zip
cd my.zsh-master
make
rm -rf $WORKDIR
