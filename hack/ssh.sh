#!/bin/sh

set -o nounset
set -o errexit

sshdir="${HOME}"/.ssh
mkdir -p "${sshdir}"
cp ./hack/cfg/ssh/config "${sshdir}"
