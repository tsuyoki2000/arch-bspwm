#! /bin/bash

##########################
# 最低限の Neovim の設定 #
##########################
NVIM_CONFIG="${HOME}/.config/nvim/init.lua"

if [ ! -e $NVIM_CONFIG ]; then
  mkdir -p $HOME/.config/nvim/
  #touch $HOME/.config/nvim/init.lua
  echo "
  vim.opt.number = true
  vim.opt.relativenumber = true
  vim.opt.clipboard = 'unnamedplus'

  vim.g.mapleader = ' '
  vim.keymap.set('n', '<leader>e', vim.cmd.Ex)
  vim.keymap.set('n', ';', ':')
  " >> $NVIM_CONFIG
  #$HOME/.config/nvim/init.lua
fi
