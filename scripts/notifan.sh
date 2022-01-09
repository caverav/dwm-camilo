#!/bin/sh
profile=$(asusctl profile -p)
if [ "$profile" = "Active profile is Quiet" ]; then
   notify-send -t 700 "Silencioso"
elif [ "$profile" = "Active profile is Performance" ]; then
   notify-send -t 700 "Rendimiento (ruidoso)"
elif [ "$profile" = "Active profile is Balanced" ]; then
   notify-send -t 700 "Balanceado"
else
   notify-send -t 700 "Error"
fi
