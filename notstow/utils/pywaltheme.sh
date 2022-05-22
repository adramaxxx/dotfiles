#!/bin/sh

wallpaper=$1
wal -n -t -s -i $1 >/dev/null
sed -i 'N;$!P;D' $HOME/.cache/wal/colors-wal-dwm.h
(cd $HOME/Documents/repos/dwm-6.2 && sudo cp config.def.h config.h; make && sudo make clean install>/dev/null)
