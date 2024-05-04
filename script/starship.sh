#! /bin/bash

######################################################
# starship を セットアップするためのシェルスクリプト #
######################################################

# パッケージのインストール
sudo pacman -Sy starship --needed --noconfirm

# プリセットの適用（https://starship.rs/ja-JP/presets/）
starship preset gruvbox-rainbow -o ~/.config/starship.toml

# ~/.config/fish/config.fish の編集
echo "
# starship を表示
starship init fish | source" >> $HOME/.config/fish/config.fish

# ターミナルを再起動
echo "Restart Terminal"
