#!/bin/bash

set -ex

DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

# Necessaries packages

sudo pacman -S --needed neovim tmux

# Yay installation for yaourt packages

if ! [ -e ~/yay ]
then
    git clone https://aur.archlinux.org/yay.git ~/yay
    cd ~/yay
    makepkg -si
fi

# Symlink bash config file

ln -sf $DIR/bashrc ~/.bashrc

# Symlink tmuux config file

[ -e ~/.tmux.conf ] || ln -sf $DIR/tmux.conf ~/.tmux.conf

# check config directory is present or create it

[ -e ~/.config ] || mkdir ~/.config

# Symlink neovim config file

[ -e ~/.config/nvim ] || ln -sf $DIR/nvim ~/.config/nvim

# Symlink i3 config file

[ -e ~/.config/i3 ] || ln -sf $DIR/i3 ~/.config/i3

# Symlink i3blocks config file

[ -e ~/.config/i3blocks ] || ln -sf $DIR/i3blocks ~/.config/i3blocks

# Symlink i3lock script

[ -e ~/.scripts ] || ln -sf $DIR/scripts ~/.scripts

