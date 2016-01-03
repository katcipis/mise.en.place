#!/bin/sh
set -e

groupadd katcipis
useradd -m -g katcipis -s /bin/zsh katz
useradd -m -g katcipis -s /bin/bash fepha
