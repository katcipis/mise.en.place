#!/bin/sh
set -e

groupadd katz
useradd -m -g katz -s /bin/bash katz
passwd katz
