#!/bin/sh

monitor="DisplayPort-0"
res=$(xsetwacom list devices | awk '{print $7}')

option1=$(echo $res | cut -c 1-2)
option2=$(echo $res | cut -c 4-5)
option3=$(echo $res | cut -c 7-8)

xsetwacom set $option1 MapToOutput $monitor
xsetwacom set $option2 MapToOutput $monitor
xsetwacom set $option3 MapToOutput $monitor
