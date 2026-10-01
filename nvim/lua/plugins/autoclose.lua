return {
	'm4xshen/autoclose.nvim',
	name = 'autoclose',
	config = function ()
		require('autoclose').setup({
			keys = { [">"] = { escape = false } },
			options = {
				disabled_filetypes = { 'text', 'markdown' },
				disable_when_touch = true
			}
		})
	end
}
