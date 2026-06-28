--
-- keymaps file
--

-- lsp stuff
vim.keymap.set('n', '<leader>ld', vim.diagnostic.open_float,
	{ desc = "Open diagnostic" })
vim.keymap.set('n', '<leader>ln', '[d',
	{ desc = "Next diagnostic"})
vim.keymap.set('n', '<leader>lp', ']d',
	{ desc = "Next diagnostic"})
vim.keymap.set('n', '<leader>lr', vim.lsp.buf.rename,
	{ desc = "Rename"})

-- completion settings
vim.keymap.set('i', '<C-Space>', vim.lsp.completion.get)
vim.keymap.set('i', '\t',
	function () return vim.fn.pumvisible() == 1 and '<C-y>' or '\t' end,
	{ expr = true })
vim.keymap.set('i', 'j',
	function () return vim.fn.pumvisible() == 1 and '<C-n>' or 'j' end,
	{ expr = true })
vim.keymap.set('i', 'k',
	function () return vim.fn.pumvisible() == 1 and '<C-p>' or 'k' end,
	{ expr = true })

-- neotree
vim.keymap.set('n', '<leader>t', '<cmd>Neotree<cr>')

-- telescope
vim.keymap.set('n', '<leader>ff', '<cmd>Telescope find_files<cr>',
	{ desc = "find files" })
vim.keymap.set('n', '<leader>fg', '<cmd>Telescope live_grep<cr>',
	{ desc = "live grep" })
vim.keymap.set('n', '<leader>fb', '<cmd>Telescope buffers<cr>',
	{ desc = "find buffers" })
vim.keymap.set('n', '<leader>fh', '<cmd>Telescope help_tags<cr>',
	{ desc = "help tags" })

-- movement works with wrapped lines
vim.keymap.set('n', 'j', 'gj')
vim.keymap.set('n', 'k', 'gk')
vim.keymap.set('n', '<Up>', 'g<Up>')
vim.keymap.set('n', '<Down>', 'g<Down>')
vim.keymap.set('i', '<Up>', '<C-o>g<Up>')
vim.keymap.set('i', '<Down>', '<C-o>g<Down>')

-- Ctrl-BS and Ctrl-Del
vim.keymap.set('n', '<C-BS>', '"_bdw')
vim.keymap.set('i', '<C-BS>', '<C-W>')
vim.keymap.set('n', '<C-Del>', '"_dw')
vim.keymap.set('i', '<C-Del>', '<Space><Esc>ce')

-- exit terminal mode with Esc
vim.keymap.set('t', '<Esc>', '<C-\\><C-n>')

-- remove highlights from searches
vim.keymap.set('n', '<C-;>', vim.cmd.noh)

-- indent and dedent
vim.keymap.set('v', '<C-]>', '>gv')
vim.keymap.set('v', '<C-[>', '<gv')
vim.keymap.set('v', '<Esc>', '<C-Esc>')

-- surround
vim.keymap.set('v', '(', '"ac(<C-r>a)')
vim.keymap.set('v', '[', '"ac[<C-r>a]')
vim.keymap.set('v', '{', '"ac{<C-r>a}')

-- save
vim.keymap.set({'n', 'i'}, '<C-S>', vim.cmd.w)
