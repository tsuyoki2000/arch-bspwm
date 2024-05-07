#! /bin/bash

#######################################################
# ueberzugpp をインストールするためのシェルスクリプト #
# yazi（CLI FileManager）で画像を表示するのに必要     #
#######################################################

# パッケージのインストール
yay -S ueberzugpp --needed --noconfirm

# コンパイルに必要だったパッケージを削除
sudo pacman -Rs $(pacman -Qdtq) --noconfirm

