#!/bin/sh

set -o errexit

echo "Installing cool font"
sudo pacman --noconfirm -S ttf-inconsolata freetype2 pkg-config

echo "Installing kitty"
./hack/aur.sh kitty-git

echo "Configuring kitty"
./hack/kitty-cfg.sh

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
cd $projpath
unzip $filepath
cd $projname

echo "Building st"
make
sudo make install
cd -

echo "Done, cleaning up"
cleanup
