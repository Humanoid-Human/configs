vim.keymap.set('n', '<SPACE>', '<Nop>')

vim.g.mapleader = ' '

require('config.lazy')

vim.opt.tabstop    = 4
vim.opt.shiftwidth = 4

vim.opt.number = true
vim.opt.rnu    = true

vim.g.terminal_emulator = 'kitty'
vim.opt.clipboard = 'unnamedplus'

vim.keymap.set('n', '<Up>', 'g<Up>')
vim.keymap.set('n', '<Down>', 'g<Down>')
vim.keymap.set('i', '<Up>', '<C-o>g<Up>')
vim.keymap.set('i', '<Down>', '<C-o>g<Down>')

vim.keymap.set('n', '<C-BS>', '"_bdw')
vim.keymap.set('i', '<C-BS>', '<C-W>')

vim.keymap.set('n', '<C-Del>', '"_dw')
vim.keymap.set('i', '<C-Del>', '<Esc>lce')

vim.keymap.set('t', '<Esc>', '<C-\\><C-n>')

vim.keymap.set('n', '<C-H>', vim.cmd.noh)

vim.keymap.set('v', '<C-]>', '>gv')
vim.keymap.set('v', '<C-[>', '<gv')
vim.keymap.set('v', '<Esc>', '<C-Esc>')

vim.cmd.colorscheme('catppuccin')
