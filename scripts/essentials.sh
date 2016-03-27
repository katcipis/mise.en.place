#!/bin/sh
set -e

echo "Installing git and other basic stuff"
sudo pacman --noconfirm -S git tig openssh sudo gnome-terminal curl dmenu cmake xclip unrar

git config --global push.default simple
git config --global user.name "Tiago Katcipis"
git config --global user.email "tiagokatcipis@gmail.com"

echo "Configure time properly"
sudo ln -fs /usr/share/zoneinfo/America/Sao_Paulo /etc/localtime
sudo timedatectl set-ntp true

echo "Configure keyboard layout"
sudo localectl set-keymap br-abnt2

echo "VPN Support"
sudo pacman --noconfirm -S pkgfile openvpn

echo "Golang Support"
sudo pacman --noconfirm -S go

echo "Locale support"
echo "en_US.UTF-8 UTF-8" | sudo tee -a /etc/locale.gen
sudo locale-gen
sudo localectl set-locale LANG=en_US.UTF-8

echo "Installing Sound Stuff"
sudo pacman --noconfirm -S alsa-utils alsa-tools pulseaudio pavucontrol
