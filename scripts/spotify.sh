#!/bin/sh
set -o errexit

./scripts/aur.sh  libgcrypt15
./scripts/aur.sh  libcurl-compat
./scripts/aur.sh  spotify
