#!/usr/bin/env bash

# Terminate already running bar instances
killall -q polybar

# Wait until the processes have been shut down
while pgrep -u $UID -x polybar >/dev/null; do sleep 1; done

# Launch bar1 and bar2
polybar -c /home/matt/.config/polybar/electro7 top &
polybar -c /home/matt/.config/polybar/electro7 top2 &
polybar -c /home/matt/.config/polybar/electro7 bottom &
#polybar -c /home/matt/.config/polybar/newconfig bottom &
#polybar -c /home/matt/.config/polybar/newconfig top2 &
#polybar -c /home/matt/.config/polybar/newconfig bottom2 &

echo "Bars launched..."
