#!/bin/sh
PAD=$( bspc config top_padding )

if [ $PAD == 30 ]
then
        bspc config top_padding 0
        polybar-msg cmd hide
else
        bspc config top_padding 30
        polybar-msg cmd show
fi
