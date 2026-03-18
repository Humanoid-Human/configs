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
    	window = { width = 24 }
  	}
}
