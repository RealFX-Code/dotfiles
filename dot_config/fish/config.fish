## Source from conf.d before our fish config
source ~/.config/fish/conf.d/done.fish

## Set values
## Run fastfetch as welcome message
function fish_greeting
  hyfetch -b fastfetch
  echo
  #df -h /{,boot,/var{,/log,/db/repos,/cache}}
  df -h /{,boot,home/leah/aosp1,/home/leah/bigdisk}
  echo
end

# Format man pages
# set -x MANROFFOPT "-c"
# set -x MANPAGER "sh -c 'col -bx | bat -l man -p'"

# Set settings for https://github.com/franciscolourenco/done
set -U __done_min_cmd_duration 10000
set -U __done_notification_urgency_level low

## Environment setup
# Apply .profile: use this to put fish compatible .profile stuff in
if test -f ~/.fish_profile
  source ~/.fish_profile
end

## Functions
# Functions needed for !! and !$ https://github.com/oh-my-fish/plugin-bang-bang
function __history_previous_command
  switch (commandline -t)
  case "!"
    commandline -t $history[1]; commandline -f repaint
  case "*"
    commandline -i !
  end
end

function __history_previous_command_arguments
  switch (commandline -t)
  case "!"
    commandline -t ""
    commandline -f history-token-search-backward
  case "*"
    commandline -i '$'
  end
end

if [ "$fish_key_bindings" = fish_vi_key_bindings ];
  bind -Minsert ! __history_previous_command
  bind -Minsert '$' __history_previous_command_arguments
else
  bind ! __history_previous_command
  bind '$' __history_previous_command_arguments
end

# Fish command history
function history
    builtin history --show-time='%F %T '
end

function backup --argument filename
    cp $filename $filename.bak
end

# Copy DIR1 DIR2
function copy
    set count (count $argv | tr -d \n)
    if test "$count" = 2; and test -d "$argv[1]"
        set from (echo $argv[1] | trim-right /)
        set to (echo $argv[2])
        command cp -r $from $to
    else
        command cp $argv
    end
end

set -gx _JAVA_AWT_WM_NONREPARENTING 1

alias ls='eza --color=always --group-directories-first --icons -alg'

# Common use
alias wget='wget -c '
alias ..='cd ..'
alias ...='cd ../..'
alias ....='cd ../../..'
alias .....='cd ../../../..'
alias ......='cd ../../../../..'

#starship init fish | source

function fish_prompt --description 'Informative prompt'
    #Save the return status of the previous command
    set -l last_pipestatus $pipestatus
    set -lx __fish_last_status $status # Export for __fish_print_pipestatus.

    if functions -q fish_is_root_user; and fish_is_root_user
        printf '%s@%s %s%s%s# ' $USER (prompt_hostname) (set -q fish_color_cwd_root
                                                         and set_color $fish_color_cwd_root
                                                         or set_color $fish_color_cwd) \
            (prompt_pwd) (set_color normal)
    else
        set -l status_color (set_color $fish_color_status)
        set -l statusb_color (set_color --bold $fish_color_status)
        set -l pipestatus_string (__fish_print_pipestatus "[" "]" "|" "$status_color" "$statusb_color" $last_pipestatus)

        printf '[%s] %s%s@%s %s%s %s%s%s \n> ' (date "+%H:%M:%S") (set_color brblue) \
            $USER (prompt_hostname) (set_color $fish_color_cwd) $PWD $pipestatus_string \
            (set_color normal)
    end
end

