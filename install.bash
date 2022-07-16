#!/usr/bin/bash

set -u

BASEDIR=$(dirname $0)
cd $BASEDIR

arr=("nvim/init.vim"
 "fish/config.fish"\
 "fish/fish_plugins"\
 "fish/fish_variables"\
 "fish/functions/fish_mode_prompt.fish"\
 "fish/functions/fish_prompt.fish"\
 "fish/functions/fish_right_prompt.fish"\
 "fish/functions/fisher.fish"\
)

# neovim
mkdir -p "$HOME/.config/nvim"
mkdir -p "$HOME/.config/fish/functions"

for path in ${arr[@]}; do
    echo "ln -s" "$HOME/dotfiles/config/$path" "$HOME/.config/$path"
    ln -s "$HOME/dotfiles/config/$path" "$HOME/.config/$path"
done
