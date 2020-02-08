#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
alias vi='nvim'
alias vim='nvim'
PS1='[\u@\h \W]\$ '

source /usr/share/git/completion/git-completion.bash
source /usr/share/git/completion/git-prompt.sh

alias k=kubectl
complete -F __start_kubectl k

export EDITOR=nvim
export FCEDIT=nvim
