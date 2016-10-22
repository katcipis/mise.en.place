#!/bin/sh

set -o errexit

version=0.7

echo "Installing cool font"
#sudo pacman --noconfirm -S ttf-inconsolata

projname=st-$version
projpath=/tmp/st
filepath=$projpath/st.tar.gz

function cleanup() {
    rm -rf $projname
    rm -rf $projpath
}

cleanup

mkdir -p $projpath

wget http://dl.suckless.org/st/$projname.tar.gz -O $filepath
tar xvfz $filepath
cp ./scripts/cfg/st/config.h $projname
cd $projname

echo "Building st"
make
sudo make install
cd -

echo "Done, cleaning up"
cleanup
