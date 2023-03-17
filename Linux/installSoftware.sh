#!/usr/bin/bash

sudo apt install zsh wofi rofi i3 python3-pip curl wget

chsh /usr/bin/zsh

curl -sS https://starship.rs/install.sh | sh

pip install wheel hyfetch

curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.3/install.sh | bash

echo -e "to install from source: Sway, Wlroots, Waybar"
echo -e "!! if you're using an NVIDIA gpu, DON'T compile sway with xwayland. !!"
