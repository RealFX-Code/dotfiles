#!/bin/bash

# install homebrew
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

# install nvm
brew install nvm

source $(brew --prefix nvm)/nvm.sh

nvm install --lts
nvm use --lts

# install starship
curl -sS https://starship.rs/install.sh | sh

