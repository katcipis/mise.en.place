#!/bin/sh

set -o errexit
set -o nounset

lang="${1}"

if [[ -z "${lang}" ]]; then
    echo "language not informed"
    printf "usage: %s <language> <rev>\n" ${0}
    return
fi

sudo cp ./hack/cfg/x/"${lang}"/00-keyboard.conf /etc/X11/xorg.conf.d
sudo cp ./hack/cfg/x/"${lang}"/10-evdev.conf /etc/X11/xorg.conf.d
sudo cp ./hack/cfg/x/xinitrc $HOME/.xinitrc
