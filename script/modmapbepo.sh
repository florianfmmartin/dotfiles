#!/usr/bin/env bash

# start
echo 'Start of remaping...'

sleep 3

# set keyboard speed
xset r rate 275 50

# caps lock = escape
xmodmap -e 'keycode 66 = Escape'

# deactivate caps locking
xmodmap -e 'clear lock'

# map shift + . to "
xmodmap -e "keycode 60 = period quotedbl period quotedbl hyphen NoSymbol hyphen"

# map shift + 2 to @
xmodmap -e "keycode 11 = 2 at 2 at at NoSymbol at NoSymbol 2 quotedbl at"

# bepo add
xmodmap -e "keycode 24 = b B b B"
xmodmap -e "keycode 25 = eacute Eacute eacute Eacute"
xmodmap -e "keycode 26 = p P p P"
xmodmap -e "keycode 27 = o O o O"
xmodmap -e "keycode 28 = v V v V"
xmodmap -e "keycode 29 = d D d D"
xmodmap -e "keycode 30 = l L l L"
xmodmap -e "keycode 31 = j J j J"
xmodmap -e "keycode 32 = z Z z Z"
xmodmap -e "keycode 33 = w W w W"

xmodmap -e "keycode 38 = a A a A"
xmodmap -e "keycode 39 = u U b U"
xmodmap -e "keycode 40 = i I i I"
xmodmap -e "keycode 41 = e E e E"
xmodmap -e "keycode 42 = c C c C"
xmodmap -e "keycode 43 = t T t T"
xmodmap -e "keycode 44 = s S s S"
xmodmap -e "keycode 45 = r R r R"
xmodmap -e "keycode 46 = n N n N"

xmodmap -e "keycode 52 = y Y y Y"
xmodmap -e "keycode 53 = x X x X"
xmodmap -e "keycode 54 = k K k K"
xmodmap -e "keycode 55 = q Q q Q"
xmodmap -e "keycode 56 = g G g G"
xmodmap -e "keycode 57 = h H h H"
xmodmap -e "keycode 58 = f F f F"
xmodmap -e "keycode 59 = m M m M"
xmodmap -e "keycode 60 = comma apostrophe comma apostrophe"
xmodmap -e "keycode 61 = period quotedbl period quotedbl"

# end
echo 'Remap done!'

