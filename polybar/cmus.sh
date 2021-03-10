#!/bin/sh
artist=$(echo -n $(cmus-remote -C status | grep "tag artist " | cut -c 12-))
stat=$(echo -n $(cmus-remote -C status | grep status | cut -c 8-))
shuffle=$(echo -n $(cmus-remote -C status | grep shuffle | cut -c 13-))

if [[ $artist = *[!\ ]* ]]; then
        song=$(echo -n $(cmus-remote -C status | grep title | cut -c 11-))
        #echo -n "<$stat> <shuffle: $shuffle> | $artist - $song"
else
        song="no mediatag"
fi

echo -n $artist - $song
