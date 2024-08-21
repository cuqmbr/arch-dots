#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

export HISTFILESIZE=
export HISTSIZE=
export HISTIGNORE=' *'

# Source Environment Variables and Aliases
source "${HOME}"/.environment

PS1='\[\033[1;31m\][$(whoami)@$(cat /etc/hostname) $(date +"%d.%m %H:%M:%S") \W]\n\[\033[0m\]\$ '
