return {
	'm4xshen/autoclose.nvim',
	name = 'autoclose',
	config = function ()
		require('autoclose').setup({
			keys = {
				["("] = { close = false },
				[")"] = { escape = false },
				[">"] = { escape = false }
			}
		})
	end
}
