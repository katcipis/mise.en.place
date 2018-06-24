#!/bin/sh

set -o errexit

if [ "$#" -ne 2 ]; then
    echo "Illegal number of parameters"
fi

grubdevice=$1

pacman --noconfirm -S dialog wpa_supplicant sudo dhcpcd vim

./hack/users.sh

echo "done, configure the user to be sudo"
visudo
