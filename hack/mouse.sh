#!/bin/sh

set -o errexit

# Useful only to logitech G300

./hack/aur.sh ratslap

ratslap --modify F3 --G4 Button3 --G5 Button3
ratslap --select F3
