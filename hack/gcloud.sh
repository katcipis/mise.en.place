#!/bin/sh

set -o errexit
set -o nounset

version="263.0.0"

mkdir -p ~/gcloud
cd ~/gcloud

curl -O https://dl.google.com/dl/cloudsdk/channels/rapid/downloads/google-cloud-sdk-$(version)-linux-x86_64.tar.gz
tar zxvf google-cloud-sdk-$(version)-linux-x86_64.tar.gz google-cloud-sdk
./google-cloud-sdk/install.sh
