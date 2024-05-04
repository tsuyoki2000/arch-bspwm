#! /bin/bash

######################################################
# alacritty をセットアップするためのシェルスクリプト #
######################################################

# パッケージのインストール
sudo pacman -Sy alacritty --needed --noconfirm

# 設定ファイルのコピー
mkdir -p $HOME/.config/alacritty
cp .config/alacritty/alacritty.toml $HOME/.config/alacritty/
