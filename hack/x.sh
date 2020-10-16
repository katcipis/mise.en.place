#!/bin/sh

set -e

sudo pacman --noconfirm -S xorg-server xf86-input-synaptics \
    xorg-xinit xorg-server-xephyr xorg-xrandr

sudo cp ./hack/cfg/x/00-keyboard.conf /etc/X11/xorg.conf.d
sudo cp ./hack/cfg/x/10-evdev.conf /etc/X11/xorg.conf.d
sudo cp ./hack/cfg/x/xinitrc $HOME/.xinitrc
