#!/bin/sh
set -o errexit

cd /tmp

rm -rf libgcrypt15
git clone https://aur.archlinux.org/libgcrypt15.git
cd libgcrypt15
makepkg -sri
cd -

rm -rf libcurl-compat
git clone https://aur.archlinux.org/libcurl-compat.git
cd libcurl-compat
makepkg -sri
cd -

rm -rf spotify
git clone https://aur.archlinux.org/spotify.git
cd spotify
makepkg -sri
