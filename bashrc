#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
alias vim='nvim'
PS1='[\u@\h \W]\$ '

source /usr/share/git/completion/git-completion.bash
source /usr/share/git/completion/git-prompt.sh

export WG_QUICK_USERSPACE_IMPLEMENTATION=~/.cargo/bin/boringtun
export WG_SUDO=1
