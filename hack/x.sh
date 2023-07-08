#!/bin/sh

set -e

sudo pacman --noconfirm -S xorg-server xf86-input-synaptics \
    xorg-xinit xorg-server-xephyr xorg-xrandr

./hack/x-cfg.sh us
