return {
	"neovim/nvim-lspconfig",
	name = "nvim-lspconfig",
	lazy = false,
	version = "*",
	config = function ()
		vim.lsp.config("rust_analyzer", {
			settings = {
			  ["rust-analyzer"] = {
					diagnostics = { enable = true; }
				}
			}
    	})
		vim.lsp.inlay_hint.enable(true)
		vim.lsp.enable("rust_analyzer")
		
		vim.keymap.set("n", "<Leader>d", "<C-w>d")
	end
}
