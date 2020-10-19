#!/bin/sh
xrandr --output eDP1 --off --output DP1 --off --output HDMI1 --primary --mode 1920x1080 --pos 0x0 --rotate right --output HDMI2 --off --output VIRTUAL1 --off

killall -QUIT polybar

polybar-msg cmd quit

(sleep 2; polybar main) &

bspc monitor HDMI1 -d I II III IV
bspc monitor eDP1 -r

bspc wm -r

