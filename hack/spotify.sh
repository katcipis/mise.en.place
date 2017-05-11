#!/bin/sh

set -o errexit

./hack/aur.sh libopenssl-1.0-compat
./hack/aur.sh libcurl-compat
./hack/aur.sh package-query
./hack/aur.sh  spotify
