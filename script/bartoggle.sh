#!/bin/sh
PAD=$(bspc config top_padding)

if [ $PAD == 22 ]
then
        polybar-msg cmd hide
        bspc config top_padding 0
else
        polybar-msg cmd show
        bspc config top_padding 22
fi
