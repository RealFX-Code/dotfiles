#!/bin/sh

userresources=$HOME/.Xresources
usermodmap=$HOME/.Xmodmap
sysresources=/etc/X11/xinit/.Xresources
sysmodmap=/etc/X11/xinit/.Xmodmap

# merge in defaults and keymaps

if [ -f $sysresources ]; then
    xrdb -merge $sysresources
fi

if [ -f $sysmodmap ]; then
    xmodmap $sysmodmap
fi

if [ -f "$userresources" ]; then
    xrdb -merge "$userresources"
fi

if [ -f "$usermodmap" ]; then
    xmodmap "$usermodmap"
fi

# main dwm stuffs

export XCURSOR_SIZE = 16

echo -e "[!!] Starting DWM."

source ~/.screenlayout/mom.sh&
feh --bg-fill ~/Pictures/Wallpapers/pink-flowers.jpeg&
slstatus&

while true;
do
	dwm
done
