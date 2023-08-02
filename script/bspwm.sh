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
xfce4-terminal
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
#sed -i "s/urxvt/alacritty #urxvt/g" $HOME/.config/sxhkd/sxhkdrc
sed -i "s/urxvt/xfce4-terminal #urxvt/g" $HOME/.config/sxhkd/sxhkdrc

# /etc/environment にデフォルトアプリを設定
ETC_ENV="/etc/environment"
sudo sh -c "echo EDITOR=nvim >> $ETC_ENV"
sudo sh -c "echo BROWSER=firefox >> $ETC_ENV"

# ディスプレイ・マネージャー（sddm）のインストールとサービスの有効化
sudo pacman -S sddm --noconfirm
sudo systemctl enable sddm

# ~/.bashrc の編集
echo "
alias vim='nvim'
alias ll='ls -l'
alias la='ls -lA'
alias ..='cd ..'
alias autoremove='sudo pacman -Rsc \$(pacman -Qdtq)'
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
