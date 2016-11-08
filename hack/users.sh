#!/bin/sh
set -e

sudo groupadd katcipis
sudo useradd -m -g katcipis -s /bin/bash katcipis
sudo passwd katcipis
