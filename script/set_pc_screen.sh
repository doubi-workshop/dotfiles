#!/bin/bash
# Author: rookiepig
# Content: use xrandr to set double screen workspace
# 2016-06-07 16:02

echo "Set screen layout using xrandr.."
xrandr --output VGA-1 --primary
xrandr --output DVI-0 --rotate left 
xrandr --output DVI-0 --right-of VGA-1
echo "Done"
