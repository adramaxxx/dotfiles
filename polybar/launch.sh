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
  $(sleep 2s)
  polybar -c /home/adramax/.config/polybar/config --reload primary &
  polybar -c /home/adramax/.config/polybar/config --reload secondarylaptop &
  polybar -c /home/adramax/.config/polybar/config --reload vertmonitor &
elif [[ $monitorcount == 2 ]]
then
  $(sleep 2s)
  polybar --reload primary &
  polybar --reload secondarylaptop &
  #polybar --reload secondary &
else
  $(sleep 2s)
  polybar --reload secondarylaptop &
fi

echo "Bars launched..."
