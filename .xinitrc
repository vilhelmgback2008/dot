#!/bin/bash

cd $HOME

test ! -d ~/tmp && mkdir ~/tmp

export _JAVA_AWT_WM_NONREPARENTING=1

xset r rate 300 20
xset b off
xset s noblank

setxkbmap -layout se -variant nodeadkeys

xrandr --auto

pkill -9 -f dwmstat

xsettingsd &
/usr/lib/geoclue-2.0/demos/agent &
redshift-gtk &
flameshot &
lxsession &
xcompmgr &
~/bin/dwmstat &
numlockx &

exec dwm >~/tmp/dwm.log 2>&1
