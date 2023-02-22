#!/bin/sh

set -o errexit
set -o nounset

cfgdir="$HOME/.config/alacritty"
mkdir -p "${cfgdir}"
cp ./hack/cfg/alacritty/alacritty.yml "${cfgdir}"
