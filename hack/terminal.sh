#!/bin/sh

set -o errexit

echo "Installing cool font"
#sudo pacman --noconfirm -S ttf-inconsolata

projname=st-master
projpath=/tmp/st
filepath=$projpath/st.zip

function cleanup() {
    rm -rf $projname
    rm -rf $projpath
}

cleanup

mkdir -p $projpath

wget https://github.com/katcipis/st/archive/master.zip -O $filepath
unzip $filepath
cd $projname

echo "Building st"
make
sudo make install
cd -

echo "Done, cleaning up"
cleanup
