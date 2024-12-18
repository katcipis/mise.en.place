#!/bin/sh
set -e

echo "Installing essential tools"
sudo pacman --noconfirm -S nethogs lsof gnu-netcat openssh sudo curl dmenu fzf evince neovim npm autoconf automake
sudo pacman --noconfirm -S make cmake xclip unrar slock numlockx wget fakeroot unzip python-pip pkg-config jq
sudo pacman --noconfirm -S dnsutils linux-headers squashfs-tools cdrkit xorriso dosfstools ntfs-3g less debugedit

echo "Configure time properly"
sudo ln -fs /usr/share/zoneinfo/Europe/Rome /etc/localtime
sudo timedatectl set-ntp true

echo "Locale support"
echo "en_US.UTF-8 UTF-8" | sudo tee -a /etc/locale.gen
sudo locale-gen
sudo localectl set-locale LANG=en_US.UTF-8

echo "Installing Sound Stuff"
sudo pacman --noconfirm -S alsa-utils alsa-tools pulseaudio pavucontrol

echo "Installing image manipulation tools"
sudo pacman --noconfirm -S imagemagick

echo "Install Gstreamer"
sudo pacman --noconfirm -S gstreamer gst-libav gst-plugins-bad  gst-plugins-good gst-plugins-base gst-plugins-ugly vlc

echo "Install Monitoring tools"
sudo pacman --noconfirm -S iotop iftop htop sysstat bcc-tools

echo "Install nautilus"
sudo pacman --noconfirm -S nautilus gvfs-mtp xdg-utils eog

echo "Install terminal"
sudo pacman --noconfirm -S ttf-inconsolata-go-nerd ttf-jetbrains-mono-nerd
sudo pacman --noconfirm -S alacritty
