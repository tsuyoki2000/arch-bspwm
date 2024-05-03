#! /bin/bash

#################################################
# fish をインストールするためのシェルスクリプト #
#################################################

# パッケージのインストール
sudo pacman -Syu fish --needed --noconfirm

# シェルの変更
sudo chsh -s /bin/fish $USER

# 通常は手動（以下の順序）で変更するのだが、
# パスワードを入力せずに変更するために、上記のやり方にした
#
# $ chsh
# $ パスワード入力
# $ /bin/fish

# fish の挨拶文を無効化
echo "
set fish_greeting" >> $HOME/.config/fish/config.fish

