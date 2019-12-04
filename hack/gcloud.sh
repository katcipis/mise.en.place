#!/bin/sh

set -o errexit
set -o nounset

workdir=$(mktemp -d)
installdir=$HOME/.local/gcloud
version="272.0.0"

cd ${workdir}
curl -O https://dl.google.com/dl/cloudsdk/channels/rapid/downloads/google-cloud-sdk-${version}-linux-x86_64.tar.gz
tar zxvf google-cloud-sdk-${version}-linux-x86_64.tar.gz
rm -rf ${installdir}
mv google-cloud-sdk ${installdir}
cd ${installdir}
./install.sh
rm -rf ${workdir}
