#!/bin/sh
set -o errexit
set -o nounset

curl -sS https://download.spotify.com/debian/pubkey_7A3A762FAFD4A51F.gpg | gpg --import -
hack/aur.sh spotify
