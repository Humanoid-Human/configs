local w = 24
pcall(function () w = require('local').ntree_width end)

return {
	"nvim-neo-tree/neo-tree.nvim",
	name = "neotree",
  	branch = "v3.x",
  	dependencies = {
    	"nvim-lua/plenary.nvim",
    	"MunifTanjim/nui.nvim",
    	"nvim-tree/nvim-web-devicons"
  	},
  	lazy = false,
  	---@module 'neo-tree'
  	---@type neotree.Config
  	opts = { window = {
		width = w,
		mappings = {
			["<tab>"] = function(state)
				state.commands["open"](state)
				vim.cmd("Neotree reveal")
			end,
		}
	}}
}
