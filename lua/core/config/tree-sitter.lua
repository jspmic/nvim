require( "nvim-treesitter.configs" ).setup({
	ensure_installed = {"c", "python", "lua", "rust", "json"},
	highlight = {
		enable = true
	}
})
