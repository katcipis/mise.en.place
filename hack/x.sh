#!/bin/sh

set -e

sudo pacman --noconfirm -S xorg-server xf86-input-synaptics \
    xf86-input-keyboard xf86-input-mouse xorg-xinit xorg-server-xephyr

sudo cp ./hack/cfg/x/00-keyboard.conf /etc/X11/xorg.conf.d
sudo cp ./hack/cfg/x/10-evdev.conf /etc/X11/xorg.conf.d
sudo cp ./hack/cfg/x/xinitrc $HOME/.xinitrc
