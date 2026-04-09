package.path = '~/configs/nvim/?.lua;'..package.path

local w = 24
pcall(function () w = require('local').ntree_width end)

return {
	"nvim-neo-tree/neo-tree.nvim",
	name = "neotree",
  	branch = "v3.x",
  	dependencies = {
    	"nvim-lua/plenary.nvim",
    	"MunifTanjim/nui.nvim",
    	"nvim-tree/nvim-web-devicons", -- optional, but recommended
  	},
  	lazy = false, -- neo-tree will lazily load itself
  	---@module 'neo-tree'
  	---@type neotree.Config
  	opts = {
    	window = { width = w }
  	},
	config = function ()
		vim.api.nvim_create_user_command('Tree', 'Neotree', {})
	end
}
