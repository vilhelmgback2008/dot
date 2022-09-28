#!/bin/bash

cd $HOME

test ! -d ~/tmp && mkdir ~/tmp

xset r rate 300 20
xset b off
xset s noblank

setxkbmap -layout se -variant nodeadkeys

xrandr --auto

xsettingsd &

export _JAVA_AWT_WM_NONREPARENTING=1

exec dwm >~/tmp/dwm.log 2>&1
