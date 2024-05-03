#! /bin/bash

######################################################
# starship を セットアップするためのシェルスクリプト #
######################################################

# パッケージのインストール
sudo pacman -Sy starship --needed --noconfirm

# ~/.config/fish/config.fish の編集
echo "
starship init fish | source" >> $HOME/.config/fish/config.fish

# プリセットの適用（https://starship.rs/ja-JP/presets/）
starship preset gruvbox-rainbow -o ~/.config/starship.toml

# ターミナルを再起動
echo "Restart Terminal"
