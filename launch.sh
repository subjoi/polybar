#!/bin/bash

#Terminate running bar instances
killall -q polybar

# Wait untill procs are shut down
while pgrep -u $UID -x polybar >/dev/null; do sleep 1; done

#Launch polybar

polybar primary -c ~/Documents/projects/polybar/primary.ini
#polybar secondary -c ~/Documents/projects/polybar/secondary.ini
