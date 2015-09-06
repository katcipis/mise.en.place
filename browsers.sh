#!/bin/sh
set -e

echo "Installing chromium"
pacman --noconfirm -S chromium

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
