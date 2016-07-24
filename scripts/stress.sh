#!/bin/sh
set -o errexit

cd /tmp

rm -rf mprime
git clone https://aur.archlinux.org/mprime.git
cd mprime
makepkg -sri
cd -
