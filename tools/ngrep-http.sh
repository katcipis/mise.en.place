#!/bin/sh
set -e

ngrep -q -W byline "GET|POST HTTP"
