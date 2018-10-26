#!/bin/bash
[[ -f ~/.Xmodmap ]] && xmodmap ~/.Xmodmap
xrdb -merge ~/.Xresources
xhost +local:
xrandr --dpi 125.37
#xbacklight -set 30
exec dwm
