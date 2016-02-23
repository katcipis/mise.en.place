#!/bin/sh
set -o errexit

polling_interval=1
iostat -xz $polling_interval
