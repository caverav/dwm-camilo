#!/bin/sh
# state=$(amixer -D 'hw:0' | grep Capture | grep '\[' | grep Left | cut -c 43- | sed  -e 's/]//')
state=$(amixer  | grep Capture | grep Left | grep "\[" | cut -c 36- | sed -e 's/]//')
if [ "$state" = "off" ]
then
   notify-send -t 700 'Micrófono' 'Apagado'
else
   notify-send -t 700 'Micrófono' 'Encendido'
fi
