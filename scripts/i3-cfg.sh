#!/bin/sh
set -e

mkdir -p /home/$1/.i3
cp ./cfg/i3/config /home/$1/.i3/config
