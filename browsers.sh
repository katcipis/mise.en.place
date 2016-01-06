#!/bin/sh
set -e

echo "Installing chromium"
sudo pacman --noconfirm -S chromium

echo "Installing flash"
curl -O https://aur.archlinux.org/cgit/aur.git/snapshot/chromium-pepper-flash.tar.gz
tar xzf chromium-pepper-flash.tar.gz
cd chromium-pepper-flash
makepkg
sudo pacman --noconfirm -U chromium-pepper-flash*.tar.xz

echo "Enabling Netflix"
curl -O https://aur.archlinux.org/cgit/aur.git/snapshot/chromium-widevine.tar.gz
tar xzf chromium-widevine.tar.gz
cd chromium-widevine
makepkg
sudo pacman --noconfirm -U chromium-widevine*.tar.xz

echo "Firefox"
sudo pacman --noconfirm -S firefox extra/flashplugin

echo "Installing Tor"
gpg --keyserver pgp.mit.edu --recv-keys 2E1AC68ED40814E0
cd /tmp
rm -rf tor-browser-en
git clone https://aur.archlinux.org/tor-browser-en.git
cd tor-browser-en
makepkg -sri
