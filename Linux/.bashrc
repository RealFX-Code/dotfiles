#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
alias grep='grep --color=auto'

export PATH="/home/leah/.local/bin:/home/leah/bin:$PATH"

eval "$(starship init bash)"

# Only for Arch based stuff.
alias autoremove="sudo pacman -Rcs \$(pacman -Qdtq)"

alias cm="chezmoi"

export EDITOR="vim"

# export NVM_DIR="$HOME/.nvm"
# [ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
# [ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

# bun
# export BUN_INSTALL="$HOME/.bun"
# export PATH=$BUN_INSTALL/bin:$PATH
