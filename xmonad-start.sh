#!/bin/sh

xsetroot -cursor_name left_ptr

setxkbmap -layout gb

feh --bg-fill /home/patrick/.xmonad/wallpaper.jpg

setxkbmap -layout gb

trayer --edge top --align right --SetDockType true --SetPartialStrut true --expand true --width 10 --transparent true --tint 0x191970 --height 12 &

xscreensaver -no-splash &

if [ -x /usr/bin/nm-applet ] ; then
    nm-applet --sm-disable &
fi

if [ -x /usr/bin/pasystray ] ; then
    pasystray &
fi

if [ -x /usr/bin/dropboxd ] ; then
    (sleep 2 && dropboxd) &
fi

if [ -x /usr/bin/emacs ] ; then
    emacs --daemon
fi
