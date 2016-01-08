#!/bin/sh
set -e

cd /tmp

echo "Installing Vim"
rm -rf vim
git clone https://github.com/vim/vim.git
cd vim
./configure --with-x --enable-pythoninterp=yes --enable-python3interp=yes
make
sudo make install
sudo ln -s  /usr/local/bin/vim /usr/bin/vi

echo "Installing my vim"
cd -
rm -rf my.vim
git clone https://github.com/katcipis/my.vim.git
cd my.vim
make
