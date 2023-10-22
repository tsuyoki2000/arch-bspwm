#! /bin/bash

###################################
# pacman に関するシェルスクリプト #
###################################

# カラー出力とプログレスバーをパックマンにする
# 具体的には「#Color」のコメントを外し、下の行に「ILoveCandy」を追加する
sudo sh -c "sed -i 's/#Color/Color\'$'\nILoveCandy/g' /etc/pacman.conf"
