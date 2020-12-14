#!/usr/bin/env zsh

if [[ $(bspc config window_gap) == 0 ]]
then
    bspc config border_width          4
    bspc config window_gap            12
    export BSPWM_CUSTOM_GAP=1
else
    bspc config border_width          0
    bspc config window_gap            0
    export BSPWM_CUSTOM_GAP=0
fi
