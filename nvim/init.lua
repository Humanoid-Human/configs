require('config.lazy')

vim.cmd.colorscheme('catppuccin')

vim.opt.tabstop    = 4
vim.opt.shiftwidth = 4

vim.opt.number = true
vim.opt.relativenumber = true

vim.opt.clipboard = 'unnamedplus'

vim.opt.syntax = 'on'

vim.keymap.set('n', '<C-BS>', '"_bdw')
vim.keymap.set('i', '<C-BS>', '<C-W>')

vim.keymap.set('n', '<C-Del>', '"_dw')
vim.keymap.set('i', '<C-Del>', '<Esc>ce')

vim.keymap.set('t', '<Esc>', '<C-\\><C-n>')

vim.api.nvim_create_user_command('Tr', 'Neotree', {})
