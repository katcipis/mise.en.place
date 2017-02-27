#!/bin/sh
set -e

groupadd katcipis
useradd -m -g katcipis -s /bin/bash katcipis
passwd katcipis
