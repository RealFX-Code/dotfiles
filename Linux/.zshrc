# If you come from bash you might have to change your $PATH.

export PATH=~/.local/bin:$PATH

eval $(starship init zsh)

alias ..="cd .."
alias ...="cd ../.."
alias ....="cd ../../.."
alias .....="cd ../../../.."
alias ......="cd ../../../../../"

# i basically use vi as a shortcut but i'm trying to not get used to it
alias vi="nvim"

alias c="clear"

alias cat="batcat"

alias l="ls"
alias ls="exa -algha"
alias lt="tree"

