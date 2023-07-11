#! /bin/bash

###################################################
# bspwm を セットアップするためのシェルスクリプト #
###################################################

# インストールするパッケージ
PACKAGE="
xorg
bspwm
sxhkd
dmenu
alacritty
otf-ipafont
neovim
xclip
git
"

# パッケージのインストール
#sudo pacman -Syu --needed --noconfirm - < packages-bspwm.txt
sudo pacman -Syu $PACKAGE --needed --noconfirm

# 設定ファイル（bspwmrc と sxhkdrc）のコピー
mkdir -p $HOME/.config/bspwm
mkdir -p $HOME/.config/sxhkd
cp /usr/share/doc/bspwm/examples/bspwmrc $HOME/.config/bspwm/
cp /usr/share/doc/bspwm/examples/sxhkdrc $HOME/.config/sxhkd/

# ~/.config/sxhkd/sxhkdrc の編集
sed -i "s/urxvt/alacritty #urxvt/g" $HOME/.config/sxhkd/sxhkdrc

# ディスプレイ・マネージャー（sddm）のインストールとサービスの有効化
sudo pacman -S sddm --noconfirm
sudo systemctl enable sddm

# ~/.bashrc の編集
echo "
alias vim='nvim'
alias ll='ls -l'
alias la='ls -lA'
alias ..='cd ..'
alias autoremove='sudo pacman -Rsc $(pacman -Qdtq)'
" >> $HOME/.bashrc

# ~/.config/bspwm/bspwmrc の編集
echo "
# マウスのアイコン
xsetroot -cursor_name left_ptr

# CapsLockキー を Ctrlキー にする
setxkbmap -option ctrl:nocaps
" >> $HOME/.config/bspwm/bspwmrc

# 再起動を促すメッセージを表示
echo "Type reboot"
#reboot
