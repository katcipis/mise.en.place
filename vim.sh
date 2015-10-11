#!/bin/sh
set -e

cd /tmp

echo "Removing vi"
sudo pacman -R vi

echo "Installing Vim"
git clone https://github.com/vim/vim.git
cd vim
./configure --with-x --enable-pythoninterp=yes --enable-python3interp=yes
make
sudo make install
sudo ln -s  /usr/local/bin/vim /usr/bin/vi

echo "Installing my vim"
git clone git@github.com:katcipis/my.vim.git
cd my.vim
make bootstrap
make
