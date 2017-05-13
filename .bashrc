#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
PS1='[\u@\h \W]\$ '
# color folders
LS_COLORS=$LS_COLORS:'di=1;30:' ; export LS_COLORS
