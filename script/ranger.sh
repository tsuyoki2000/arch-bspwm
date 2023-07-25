#! /bin/bash

#########################################################
# ranger を インストールするためのシェルスクリプト #
#########################################################

# パッケージのインストール
# ranger（ranger本体）
# highlight（ソースコードを色分け表示）
# ueberzug（画像のプレビュー）
sudo pacman -Syu ranger highlight ueberzug --needed --noconfirm

# 設定ファイルの作成
ranger --copy-config all

# ~/.config/ranger/rc.conf の編集
# 枠線の表示
sed -i "s/set draw_borders none/set draw_borders both/g" $HOME/.config/ranger/rc.conf
# 画像表示を「true」にする
sed -i "s/set preview_images false/set preview_images true/g" $HOME/.config/ranger/rc.conf
# 画像の表示方法に「ueberzug」を指定
sed -i "s/set preview_images_method w3m/set preview_images_method ueberzug/g" $HOME/.config/ranger/rc.conf
