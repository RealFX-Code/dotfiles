#!/usr/bin/env bash

cp -R ./.config ~/

mkdir -p ~/div
mkdir -p ~/div/coding
mkdir -p ~/div/repos

cp ./.zshrc ~/.zshrc

cp ./.profile ~/.profile

echo You may now install software using \"./installSoftware.sh\", as the main dotfiles are installed.
