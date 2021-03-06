#!/bin/bash

set -ex

DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

# Necessaries packages

sudo pacman -S --needed neovim tmux scrot imagemagick base-devel rxvt-unicode

# Yay installation for yaourt packages

if ! [ -e ~/yay ]
then
    git clone https://aur.archlinux.org/yay.git ~/yay
    cd ~/yay
    makepkg -si
fi

yay -S zsh zsh-completions oh-my-zsh-git fzf \
	otf-sfmono ttf-google-sans ttf-font-awesome ttf-ionicons \
	firefox python zsh-dircolors-solarized go

# Symlink bash config file

ln -sf $DIR/shell/zshrc ~/.zshrc


#Symlink profile config file

ln -sf $DIR/profile ~/.zprofile

# Symlink tmuux config file

[ -e ~/.tmux.conf ] || ln -sf $DIR/tmux.conf ~/.tmux.conf

# check config directory is present or create it

[ -e ~/.config ] || mkdir ~/.config

# Symlink neovim config file

[ -e ~/.config/nvim ] || ln -sf $DIR/nvim ~/.config/nvim

# Symlink i3 config file

[ -e ~/.config/i3 ] || ln -sf $DIR/i3 ~/.config/i3

# Symlink i3lock script

[ -e ~/.scripts ] || ln -sf $DIR/scripts ~/.scripts

