#!/usr/bin/env sh

# Terminate already running bar instances
killall -q polybar
# If all your bars have ipc enabled, you can also use 
# polybar-msg cmd quit

monitorcount=0

for m in $(xrandr --query | grep " connected" | cut -d" " -f1); do
  monitorcount=$((monitorcount + 1))
done

if [[ $monitorcount == 3 ]]
then 
  sethome
else
  setmobile
fi

echo "Bars launched..."
