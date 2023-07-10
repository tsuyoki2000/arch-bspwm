#! /bin/bash

#########################################################
# Fcitx5-mozc を インストールするためのシェルスクリプト #
#########################################################
ETC_ENV="/etc/environment"

# パッケージのインストール
# fcitx5-mozc（fcitx5本体）
# fcitx5-configtool（fcitx5設定ツール）
sudo pacman -Syu fcitx5-mozc fcitx5-configtool --needed --noconfirm

# /etc/environment にお決まりの呪文を追加
sudo sh -c "echo GTK_IM_MODULE=fcitx5 >> $ETC_ENV"
sudo sh -c "echo QT_IM_MODULE=fcitx5 >> $ETC_ENV"
sudo sh -c "echo XMODIFIERS=@im=fcitx5 >> $ETC_ENV"

# ログイン時に fcitx5 を自動起動するために /.config/bspwm/bspwmrc に追加
echo "
# CapsLockキー を Ctrlキー にする
setxkbmap -option ctrl:nocaps

# fcitx5 自動起動
fcitx5 &
" >> $HOME/.config/bspwm/bspwmrc

# /etc/environment を編集しているので、設定を有効にするために再起動が必要
# （/etc/environment は OS起動時に読み込まれる）
echo "Type reboot"
#reboot
