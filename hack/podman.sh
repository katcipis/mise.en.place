#!/bin/sh

echo "installing and setting up rootless podman"

set -o nounset
set -o errexit

sudo pacman --noconfirm -S podman slirp4netns fuse-overlayfs

# FROM: https://github.com/containers/podman/blob/master/docs/tutorials/rootless_tutorial.md
sudo touch /etc/subuid
sudo touch /etc/subgid
sudo usermod --add-subuids 1001-655370 --add-subgids 1001-655370 "${USER}"
sudo usermod --add-subuids 1000-1 --add-subgids 1000-1 root
