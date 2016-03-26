#!/bin/bash

interface=enp1s0

sudo setxkbmap -model abnt2 -layout br

echo -ne "Wait for setup network with dhcpcd [$interface]: "

while true; do
   sudo dhcpcd ${interface} > /dev/null 2>&1
   if [ "${?}x" = "0x" ]; then
       echo "ok"
       exit 0
   fi
done
