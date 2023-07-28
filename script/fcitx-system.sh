#! /bin/bash

#########################################################
# Fcitx-mozc を インストールするためのシェルスクリプト #
#########################################################
ETC_ENV="/etc/environment"

# パッケージのインストール
# fcitx-mozc（fcitx5本体）
# fcitx-configtool（fcitx5設定ツール）
sudo pacman -Syu fcitx-mozc fcitx-configtool --needed --noconfirm

# /etc/environment にお決まりの呪文を追加
# 「=fcitx5」と書かなくても「=fcitx」で動作する
sudo sh -c "echo GTK_IM_MODULE=fcitx >> $ETC_ENV"
sudo sh -c "echo QT_IM_MODULE=fcitx >> $ETC_ENV"
sudo sh -c "echo XMODIFIERS=@im=fcitx >> $ETC_ENV"

# ログイン時に fcitx5 を自動起動するために /.config/bspwm/bspwmrc に追加
echo "
# fcitx 自動起動
fcitx-autostart
" >> $HOME/.config/bspwm/bspwmrc

# /etc/environment を編集しているので、設定を有効にするために再起動が必要
# （/etc/environment は OS起動時に読み込まれる）
echo "Type reboot"
#reboot
