#!/usr/bin/bash

set -u

# 直下
ln -s "$HOME/dotfiles/gitconfig" "$HOME/.gitconfig"

# vscode
ln -s "$HOME/dotfiles/vscode/settings.json" "$HOME/.vscode-server/data/Machine/settings.json"

# cnfigファイル下
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
