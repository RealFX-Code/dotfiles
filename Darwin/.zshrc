# .zshrc

alias ls="exa -algha"
alias l="ls"

alias ..="cd ./../"
alias ...="cd ./../../"
alias ....="cd ./../../../"
alias .....="cd ./../../../../"

alias vi="nvim"

alias neofetch="neowofetch"

eval "$(starship init zsh)"

test -e "${HOME}/.iterm2_shell_integration.zsh" && source "${HOME}/.iterm2_shell_integration.zsh"

export PATH="/usr/local/opt/node@18/bin:$PATH"

eval "$(/usr/local/bin/brew shellenv)"

