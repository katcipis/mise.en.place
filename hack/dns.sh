#!/bin/sh

set -o errexit

echo "Forcing DNS to be Google, some ISP DNS are pretty crappy"
sudo cp ./hack/cfg/dns/resolv.conf /etc/resolv.conf
sudo chattr +i /etc/resolv.conf
