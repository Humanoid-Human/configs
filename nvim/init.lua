vim.keymap.set('n', '<SPACE>', '<Nop>')
vim.g.mapleader = ' '
vim.g.terminal_emulator = 'kitty'

require('config.lazy')

vim.cmd.colorscheme('catppuccin')

vim.opt.tabstop    = 4
vim.opt.shiftwidth = 4

vim.opt.number = true
vim.opt.rnu    = true

vim.opt.clipboard = 'unnamedplus'

vim.lsp.inlay_hint.enable()
vim.lsp.completion.enable()
vim.opt.completeopt = 'menuone,popup'

vim.lsp.enable('rust_analyzer')
vim.lsp.enable('gdscript')
vim.lsp.enable('clangd')

vim.api.nvim_create_autocmd(
	{ 'BufWinEnter' },
	{ command = 'Neotree action=show' }
)

require('keymaps')
