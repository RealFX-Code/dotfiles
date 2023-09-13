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

echo -e "[!!] Starting DWM."

source ~/.profile

source ~/.screenlayout/mom.sh&
feh --bg-fill ~/Pictures/Wallpapers/pink-flowers.jpeg&
slstatus&
# source ~/div/software/lean-conky-config/start.sh&

while true;
do
	dbus-run-session dwm
done
