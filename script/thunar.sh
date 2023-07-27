#! /bin/bash

#########################################################
# thunar を インストールするためのシェルスクリプト #
#########################################################

# パッケージのインストール
# thunar（thunar本体）
# thunar-archive-plugin（コンテキストメニューに圧縮・解凍のメニューを追加）
# file-roller（GNOME の圧縮・解凍ソフト）
sudo pacman -Syu thunar thunar-archive-plugin file-roller --needed --noconfirm
