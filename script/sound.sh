#!/usr/bin/env bash

VOLUME=$(pamixer --get-volume)
MUTE=$(pamixer --get-mute)

if [ $MUTE = "false" ];
then
        printf "V:%3u" $VOLUME
else
        printf "M:%3u" $VOLUME
fi
