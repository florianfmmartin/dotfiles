#!/usr/bin/env bash

# start
echo 'Start of remaping...'
sleep 3
setxkbmap ca
sleep 3

# set keyboard speed
xset r rate 225 90

# caps lock = escape
# xmodmap -e 'keycode 66 = Escape'
# deactivate caps locking
# xmodmap -e 'clear lock'

# map shift + . to "
xmodmap -e "keycode 60 = period quotedbl period quotedbl hyphen NoSymbol hyphen"

# map shift + 2 to @
xmodmap -e "keycode 11 = 2 at 2 at at NoSymbol at NoSymbol 2 quotedbl at"

# end
echo 'Remap done!'

