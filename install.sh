#!/bin/sh

mkdir -p ~/.config/nvim
mkdir -p ~/.config/fish/

ln -s ~/dotfiles/config/nvim/init.vim ~/.config/nvim/init.vim
ln -s ~/dotfiles/config/fish/config.fish ~/.config/fish/config.fish