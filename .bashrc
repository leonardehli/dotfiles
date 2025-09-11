# If not running interactively, don't do anything
[[ $- != *i* ]] && return

[ -f ~/.config/shell/profile ] && . ~/.config/shell/profile

set -o vi
bind -m vi-insert 'Control-l: clear-screen'
