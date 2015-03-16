#!/bin/sh

echo "Installing vim and my vimrc"
sudo apt-get install -y vim-gnome
cd /tmp
git clone https://github.com/katcipis/my.vim.git
cd my.vim
make
