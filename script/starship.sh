#! /bin/bash

######################################################
# starship を セットアップするためのシェルスクリプト #
######################################################

# パッケージのインストール
sudo pacman -Sy starship --needed --noconfirm

# ~/.config/fish/config.fish の編集
echo "
starship init fish | source" >> $HOME/.config/fish/config.fish

# ターミナルを再起動
echo "Restart Terminal"
