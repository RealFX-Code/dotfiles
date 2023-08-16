#!/usr/bin/env bash

cp -R ./.config ~/

cp -r ./Pictures ~/

mkdir -p ~/div
mkdir -p ~/div/coding
mkdir -p ~/div/repos

mkdir -p ~/.local
mkdir -p ~/.local/bin

cp ./.local/bin/* ~/.local/bin/
chmod +x ̃~/.local/bin/*

cp ./.zshrc ~/.zshrc

cp ./.profile ~/.profile

cp ./.xinitrc ~/.xinitrc
chmod +x ̃~/.xinitrc

echo -e "Dotfiles installed."
