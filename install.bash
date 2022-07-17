#!/usr/bin/bash

set -u

# git
ln -s "$HOME/dotfiles/git/gitconfig" "$HOME/.gitconfig"

# vscode
ln -s "$HOME/dotfiles/vscode/settings.json" "$HOME/.vscode-server/data/Machine/settings.json"

# neovim
arr_nvim=("init.vim" \
"dein.toml" \
"dein_lazy.toml")

mkdir -p "$HOME/.config/nvim"

for path in ${arr_nvim[@]}; do
    ln -s "$HOME/dotfiles/nvim/$path" "$HOME/.config/nvim/$path"
done

# fish
arr_fish=("config.fish" \
"fish_plugins" \
"fish_variables" \
"functions/fish_mode_prompt.fish" \
"functions/fish_prompt.fish" \
"functions/fish_right_prompt.fish" \
"functions/fisher.fish")

mkdir -p "$HOME/.config/fish/functions"

for path in ${arr_fish[@]}; do
    ln -s "$HOME/dotfiles/fish/$path" "$HOME/.config/fish/$path"
done
