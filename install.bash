#!/usr/bin/bash

set -u

arr=(\
 "nvim/init.vim"\
 "nvim/dein.toml"\
 "nvim/dein_lazy.toml"\
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
    ln -s "$HOME/dotfiles/config/$path" "$HOME/.config/$path"
done
