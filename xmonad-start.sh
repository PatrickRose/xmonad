#!/bin/sh

xsetroot -cursor_name left_ptr

setxkbmap -layout gb

feh --bg-fill /home/patrick/.xmonad/background.png

setxkbmap -layout gb

trayer --edge top --align right --SetDockType true --SetPartialStrut true --expand true --width 10 --transparent true --tint 0x191970 --height 12 &

xscreensaver -no-splash &
 
if [ -x /usr/bin/nm-applet ] ; then
   nm-applet --sm-disable &
fi
 
(sleep 2 && dropboxd) &
