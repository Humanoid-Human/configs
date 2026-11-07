return {
    'nvim-lualine/lualine.nvim',
    dependencies = {
		'nvim-tree/nvim-web-devicons',
		{ "skwee357/nvim-prose", opts = {} },
	},
	init = function () 
		require('lualine').setup({
			options = { globalstatus = true },
			sections = {
				lualine_b = { 'filename', 'diff' },
				lualine_c = { 'branch' },
				lualine_x = { 'prose_word_count', 'diagnostics' },
				lualine_y = { 'filetype' }
			}
		})
	end
}
