#!/bin/bash

# This is taken from here: http://apple.stackexchange.com/questions/105185/how-can-i-stop-my-retina-display-from-taking-2x-sized-screenshots
pngpaste /tmp/ss.png
width=$((`sips -g pixelWidth /tmp/ss.png | cut -s -d ':' -f 2 | cut -c 2-` / 2))
sips -Z $width /tmp/ss.png
impbcopy /tmp/ss.png
