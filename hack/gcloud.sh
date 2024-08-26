#!/bin/sh

set -o errexit
set -o nounset

workdir=$(mktemp -d)
basedir=$HOME/.local
installdir=$basedir/google-cloud-sdk
version="489.0.0"

cd "${workdir}"
curl -O https://dl.google.com/dl/cloudsdk/channels/rapid/downloads/google-cloud-sdk-${version}-linux-x86_64.tar.gz
tar zxvf google-cloud-sdk-${version}-linux-x86_64.tar.gz
rm -rf "${installdir}"
mv google-cloud-sdk "${basedir}"
cd "${installdir}"
./install.sh
rm -rf "${workdir}"
