#!/bin/sh
set -o errexit
set -o nounset

echo "Install i3"
sudo pacman --noconfirm -S i3

./hack/i3-cfg.sh
