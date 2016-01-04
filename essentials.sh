#!/bin/sh
set -e

echo "Installing git and other stuff"
sudo pacman --noconfirm -S git openssh sudo terminator curl dmenu openvpn icedtea-web cmake

git config --global push.default simple
git config --global user.name "Tiago Katcipis"
git config --global user.email "tiagokatcipis@gmail.com"

echo "Installing Sound Stuff"
sudo pacman --noconfirm -S alsa-utils alsa-tools pulseaudio pavucontrol

echo "Configure time properly"
sudo ln -fs /usr/share/zoneinfo/America/Sao_Paulo /etc/localtime
sudo timedatectl set-ntp true

echo "VPN Support"
sudo pacman --noconfirm -S pkgfile openvpn

echo "Golang Support"
sudo pacman -S go
