#!/bin/bash

interface=enp1s0
sudo systemctl start dhcpcd@${interface}
