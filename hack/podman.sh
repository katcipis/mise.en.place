#!/bin/sh

set -o nounset
set -o errexit

sudo pacman --noconfirm -S podman slirp4netns fuse-overlayfs
sudo pacman --noconfirm -S podman-docker
