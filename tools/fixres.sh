#!/bin/sh
set -o errexit

# Hack for edid fucked up monitors
xrandr --newmode "1920x1080x60.0" 148.50  1920 2008 2052 2200  1080 1084 1089 1125 +hsync +vsync
xrandr --addmode HDMI-1 "1920x1080x60.0"
xrandr --output HDMI-1 --mode "1920x1080x60.0"
