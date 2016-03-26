#!/bin/sh
set -e

sudo pacman --noconfirm -S xorg-server xorg-server-utils xf86-input-synaptics \
    xf86-input-keyboard xf86-input-mouse xorg-utils xorg-xinit

sudo cp ./cfg/x/00-keyboard.conf /etc/X11/xorg.conf.d
sudo cp ./cfg/x/10-evdev.conf /etc/X11/xorg.conf.d
sudo cp ./cfg/x/xinitrc $HOME/.xinitrc
