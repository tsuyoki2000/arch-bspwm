#! /bin/bash

##########################
# 最低限の Neovim の設定 #
##########################

#mkdir -p $HOME/.config/nvim/
#touch $HOME/.config/nvim/init.lua
echo "
vim.opt.number = true
vim.opt.relativenumber = true
vim.opt.clipboard = 'unnamedplus'

vim.g.mapleader = ' '
vim.keymap.set('n', '<leader>e', vim.cmd.Ex)
vim.keymap.set('n', ';', ':')
" >> $HOME/.config/nvim/init.lua

