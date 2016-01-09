#!/bin/sh
set -e

echo "Installing my vim"
cd /tmp
rm -rf my.vim
git clone https://github.com/katcipis/my.vim.git
cd my.vim
make bootstrap
make
