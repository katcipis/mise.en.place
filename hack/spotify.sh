#!/bin/sh

set -o errexit

gpg --recv-keys --keyserver hkp://pgp.mit.edu D9C4D26D0E604491
gpg --recv-keys 5CC908FDB71E12C2

./hack/aur.sh libopenssl-1.0-compat
./hack/aur.sh libcurl-compat
./hack/aur.sh libcurl-openssl-1.0
./hack/aur.sh package-query
./hack/aur.sh  spotify
