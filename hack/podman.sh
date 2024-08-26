#!/bin/sh

set -o nounset
set -o errexit

echo "installing and setting up podman"

sudo pacman --noconfirm -S podman slirp4netns fuse-overlayfs

# FROM: https://github.com/containers/podman/blob/master/docs/tutorials/rootless_tutorial.md
# On my host these files doesn't exist
#sudo touch /etc/subuid
#sudo touch /etc/subgid
# The mapping is quite large, this avoids problems when using docker built
# images like the ubuntu one not being able to map the uid/gid configured
# on the image to the host, giving errors like:
#
# - https://github.com/lxc/lxd/issues/3310
# - https://unix.stackexchange.com/questions/505123/what-to-put-in-etc-subu-gid-to-run-unprivileged-containers
#sudo usermod --add-subuids 1001-655370 --add-subgids 1001-655370 "${USER}"

echo "done"
