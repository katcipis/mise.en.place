#!/bin/sh
set -e

sudo groupadd katcipis
sudo useradd -m -g katcipis -s /bin/zsh katz
sudo useradd -m -g katcipis -s /bin/bash fepha
