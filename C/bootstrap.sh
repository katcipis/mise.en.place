#!/usr/bin/env bash

echo "Installing stuff"
apt-get update
apt-get install -y pkg-config autogen autoconf build-essential git vim exuberant-ctags unzip

echo "Installing some vim juice ;-)"
wget https://github.com/katcipis/my.vim/archive/master.zip
unzip master.zip
cd my.vim-master
make install
make install-plugins
cd ..
rm -rf my.vim-master master.zip
