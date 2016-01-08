#!/bin/sh
set -e

echo "Installing Tor"
gpg --keyserver pgp.mit.edu --recv-keys 2E1AC68ED40814E0
cd /tmp
rm -rf tor-browser-en
git clone https://aur.archlinux.org/tor-browser-en.git
cd tor-browser-en
makepkg -sri
