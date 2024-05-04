#! /bin/bash

##########################
# NvChad（Neovimディストリビューション）のセットアップ #
##########################
NVIM_CONFIG="${HOME}/.config/nvim/init.lua"

# ripgrep のインストール
sudo pacman -S ripgrep --needed --noconfirm

if [ ! -e $NVIM_CONFIG ]; then
  mkdir -p $HOME/.config/nvim/
  git clone https://github.com/NvChad/starter $HOME/.config/nvim
  rm -rf $HOME/.config/nvim/.git
fi
