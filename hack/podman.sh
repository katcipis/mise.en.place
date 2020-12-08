#!/bin/sh

echo "installing and setting up rootless podman"

set -o nounset
set -o errexit

sudo pacman --noconfirm -S podman slirp4netns fuse-overlayfs

# FROM: https://github.com/containers/podman/blob/master/docs/tutorials/rootless_tutorial.md
sudo touch /etc/subuid
sudo touch /etc/subgid
sudo usermod --add-subuids 260000-325536 --add-subgids 260000-325536 "${USER}"
