#!/bin/sh
set -e

iptables -t nat -L -nv
