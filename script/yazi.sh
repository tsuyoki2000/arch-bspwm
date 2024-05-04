#! /bin/bash

#################################################
# yazi（CLIファイルマネージャ）をインストールするためのシェルスクリプト #
#################################################

# パッケージのインストール
sudo pacman -Syu yazi --needed --noconfirm

# config.fish のエイリアスを書き換え
sed -i "s/f='ranger'/f='yazi'/g" $HOME/.config/fish/config.fish
