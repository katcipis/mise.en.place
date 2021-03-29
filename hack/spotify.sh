#!/bin/sh
set -o errexit
set -o nounset

curl -sS https://download.spotify.com/debian/pubkey_0D811D58.gpg | gpg --import -
hack/aur.sh spotify
