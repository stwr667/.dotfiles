#!/bin/bash
pngpaste /tmp/ss.png
width=$((`sips -g pixelWidth /tmp/ss.png | cut -s -d ':' -f 2 | cut -c 2-` / 2))
sips -Z $width /tmp/ss.png
$HOME/.dotfiles/home/bin/impbcopy /tmp/ss.png

