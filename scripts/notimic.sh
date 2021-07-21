#!/bin/sh
amixer -D 'hw:0' | grep Capture | grep '\[' | grep Left | cut -c 43- | sed  -e 's/]//' | xargs notify-send -t 700 'Micrófono'
