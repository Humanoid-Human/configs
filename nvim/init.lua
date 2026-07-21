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
if not vim.lsp.is_enabled('clangd') then
    vim.lsp.enable('clangd', {
		init_options = { fallbackFlags = { 'std=c++23' } }
	})
end

vim.api.nvim_create_autocmd(
	{ 'VimEnter' },
	{ command = 'Neotree show' }
)

vim.api.nvim_create_autocmd(
	{ 'BufEnter' },
	{
		pattern = '*.md',
		callback = function () vim.opt_local.textwidth = 80 end
	}
)

require('keymaps')
