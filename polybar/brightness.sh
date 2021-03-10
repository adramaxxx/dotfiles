#!/bin/sh

file="/sys/class/backlight/amdgpu_bl0/subsystem/amdgpu_bl0/brightness"
currentlight=$(doas bat $file)

currentlightP=$(echo "scale=2;($currentlight/255)*100" | bc)
#echo $currentlightP
echo -n "$currentlightP%"
