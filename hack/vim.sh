#!/bin/sh
set -o errexit
set -o nounset

workdir=$(mktemp -d)
cd "${workdir}"

echo "Installing my vim"
git clone https://github.com/katcipis/my.vim.git
cd my.vim
make

rm -rf "${workdir}"
