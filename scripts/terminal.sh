#!/bin/sh

set -o errexit

version=0.7

echo "Installing cool font"
sudo pacman --noconfirm -S ttf-inconsolata

projname=st-$version
projpath=/tmp/st

rm -rf $projpath
mkdir -p $projpath

wget http://dl.suckless.org/st/$projname.tar.gz -O $projpath

