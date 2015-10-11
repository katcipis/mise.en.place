#!/bin/sh
set -e

sudo pacman --noconfirm -S xorg-server xorg-server-utils xf86-input-synaptics \
    xf86-input-keyboard xf86-input-mouse xorg-utils xorg-xinit

sudo cp ./xorg.conf.d/10-evdev.conf /etc/X11/xorg.conf.d/10-evdev.conf
