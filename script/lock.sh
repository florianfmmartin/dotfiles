#!/bin/sh

B='#282c34ff'  # blank
C='#282c34ff'  # clear ish
D='#abb2bfff'  # default
T='#abb2bfff'  # text
W='#61afefff'  # wrong
V='#61afefff'  # verifying

i3lock \
--color='#282c34'     \
--insidevercolor=$C   \
--ringvercolor=$V     \
\
--insidewrongcolor=$C \
--ringwrongcolor=$W   \
\
--insidecolor=$B      \
--ringcolor=$D        \
--linecolor=$B        \
--separatorcolor=$D   \
\
--verifcolor=$T        \
--wrongcolor=$T        \
--timecolor=$T        \
--datecolor=$T        \
--layoutcolor=$T      \
--keyhlcolor=$W       \
--bshlcolor=$W        \
\
--screen 1            \
# --blur 10              \
--clock               \
--indicator           \
--timestr="%H:%M:%S"  \
--datestr="%A, %m %Y" \
--keylayout 2         \

# --veriftext="Drinking verification can..."
# --wrongtext="Nope!"
# --textsize=20
# --modsize=10
# --timefont="fira-code-light"
# --datefont="fira-code-light"
# etc
