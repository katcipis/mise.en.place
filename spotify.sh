#!/bin/sh
set -e

cd /tmp

git clone https://aur.archlinux.org/libgcrypt15.git
cd libgcrypt15
makepkg -sri
cd -

git clone https://aur.archlinux.org/spotify.git
cd spotify
makepkg -sri
