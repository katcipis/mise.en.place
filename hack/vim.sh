#!/bin/sh
set -o errexit
set -o nounset

cd /tmp
echo "Installing my vim"
cd -
rm -rf my.vim
git clone https://github.com/katcipis/my.vim.git
cd my.vim
make bootstrap
make
