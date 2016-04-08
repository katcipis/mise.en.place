#!/bin/sh

set -o errexit
set -o nounset

sudo pacman --noconfirm -S go
mkdir -p $GOROOT
