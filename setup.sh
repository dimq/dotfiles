#!/bin/bash

set -ex

DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

# Necessaries packages

#yay -S neovim tmux

# Symlink bash config file

[ -e ~/.bashrc ] || ln -s $DIR/bashrc ~/.bashrc

# Symlink tmuux config file

[ -e ~/.tmux.conf ] || ln -s $DIR/tmux.conf ~/.tmux.conf

# check config directory is present or create it

[ -e ~/.config ] || mkdir ~/.config

# Symlink neovim config file

[ -e ~/.config/nvim ] || ln -sf $DIR/nvim ~/.config/nvim

