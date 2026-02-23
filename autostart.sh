#!/bin/sh

xinput set-prop "SynPS/2 Synaptics TouchPad" "libinput Left Handed Enabled" 1 &
polybar &
feh --bg-fill ~/Wallpaper/TAG1.jpg &
picom --config ~/.config/picom/picom.conf &

