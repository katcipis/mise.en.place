#!/bin/sh
set -e

echo "Installing git and other basic stuff"
sudo pacman --noconfirm -S git nethogs lsof gnu-netcat openssh sudo curl dmenu fzf evince
sudo pacman --noconfirm -S cmake xclip unrar slock numlockx wget fakeroot unzip python-pip
sudo pacman --noconfirm -S dnsutils linux-headers squashfs-tools cdrkit xorriso dosfstools ntfs-3g

git config --global push.default simple
git config --global user.name "Tiago Katcipis"
git config --global user.email "tiagokatcipis@gmail.com"

echo "Configure time properly"
sudo ln -fs /usr/share/zoneinfo/Europe/Rome /etc/localtime
sudo timedatectl set-ntp true

echo "Configure keyboard layout"
sudo localectl set-keymap br-abnt2

echo "VPN Support"
sudo pacman --noconfirm -S pkgfile openvpn

echo "Locale support"
echo "en_US.UTF-8 UTF-8" | sudo tee -a /etc/locale.gen
sudo locale-gen
sudo localectl set-locale LANG=en_US.UTF-8

echo "Installing Sound Stuff"
sudo pacman --noconfirm -S alsa-utils alsa-tools pulseaudio pavucontrol

echo "Installing image/diagrams tools"
sudo pacman --noconfirm -S imagemagick dia

echo "Install Gstreamer"
sudo pacman --noconfirm -S gstreamer gst-libav gst-plugins-bad  gst-plugins-good gst-plugins-base gst-plugins-ugly

echo "Install Monitoring tools"
sudo pacman --noconfirm -S sysdig iotop iftop htop sysstat

echo "Install nautilus"
sudo pacman --noconfirm -S nautilus gvfs-mtp transmission-gtk xdg-utils eog

echo "Install subtitles and youtube downloading tools"
sudo pip install youtube-dl
sudo pip install subliminal
