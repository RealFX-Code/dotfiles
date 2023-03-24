#!/usr/bin/env bash

cp -R ./.config ~/

mkdir -p ~/div
mkdir -p ~/div/coding
mkdir -p ~/div/repos

cp ./.zshrc ~/.zshrc

cp ./.profile ~/.profile

sudo dnf update

sudo dnf install wget curl zsh git btop bat exa openssh-clients openssh python3-pip basesystem

chsh -s /usr/bin/zsh

if [[ ! $(uname -r) == *"WSL"* ]]; then
  echo "WSL Kernel isn't in use !!"
  echo "Check out: https://learn.microsoft.com/en-us/windows/wsl/install-manual#step-4---download-the-linux-kernel-update-package"
fi
