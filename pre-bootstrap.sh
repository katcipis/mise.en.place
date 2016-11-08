#!/bin/sh

set -o errexit

pacman --noconfirm -S dialog wpa_supplicant sudo dhcpcd
