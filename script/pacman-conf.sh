#! /bin/bash

###################################
# pacman に関するシェルスクリプト #
###################################

# カラー出力とプログレスバーをパックマンにする
sudo sh -c "sed -i 's/#Color/Color\'$'\nILoveCandy/g' /etc/pacman.conf"
