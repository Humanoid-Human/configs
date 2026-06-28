return {
    'nvim-telescope/telescope.nvim',
	name = 'telescope',
	version = '*',
    dependencies = {
        'nvim-lua/plenary.nvim',
        { 'nvim-telescope/telescope-fzf-native.nvim', build = 'make' },
    }
}
