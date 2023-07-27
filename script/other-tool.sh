#! /bin/bash
#
##################
# その他のツール #
##################

# インストールするパッケージ
PACKAGE="
firefox-i18n-ja
arandr
nitrogen
picom
polybar
htop
"

# パッケージのインストール
sudo pacman -Syu $PACKAGE --needed --noconfirm

# ~/.config/bspwm/bspwmrc の編集
echo "
# 解像度設定スクリプト
$HOME/.screenlayout/display.sh

# 背景画像
nitrogen --restore

# Polybar 起動スクリプト
#$HOME/.config/polybar/launch.sh
killall polybar
polybar &

# 透過処理
picom &
" >> $HOME/.config/bspwm/bspwmrc

