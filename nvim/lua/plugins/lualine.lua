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
				lualine_b = { 'branch', 'diff' },
				lualine_x = { 'filetype' },
				lualine_y = { 'prose_word_count', 'diagnostics', 'progress' }
			}
		})
	end
}
