#!/bin/sh
set -o errexit

./hack/aur.sh  libgcrypt15
./hack/aur.sh  libcurl-compat
./hack/aur.sh  spotify
