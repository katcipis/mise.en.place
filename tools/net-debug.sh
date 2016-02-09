#!/bin/sh
set -o errexit

ip -s link

echo
netstat -i

echo 
netstat -s
