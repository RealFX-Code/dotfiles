#!/usr/bin/env bash

cp -R ./.config ~/

cp -r ./Pictures ~/

mkdir -p ~/div
mkdir -p ~/div/coding
mkdir -p ~/div/repos

mkdir -p ~/.local
mkdir -p ~/.local/bin

cp ./.local/bin/* ~/.local/bin/

cp ./.zshrc ~/.zshrc

cp ./.profile ~/.profile

echo -e "Dotfiles installed."
