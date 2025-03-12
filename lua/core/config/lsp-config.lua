require("mason").setup()
require("mason-lspconfig").setup({
	ensure_installed = {"lua_ls", "pylsp"}
})

local on_attach = function(_, _)
	vim.keymap.set('n', '<leader>rm', vim.lsp.buf.rename, {})
	vim.keymap.set('n', '<leader>ca', vim.lsp.buf.code_action, {})
	vim.keymap.set('n', 'gd', vim.lsp.buf.definition, {})
	vim.keymap.set('n', 'gi', vim.lsp.buf.implementation, {})
	vim.keymap.set('n', 'gr', require('telescope.builtin').lsp_references, {})
	vim.keymap.set('n', 'K', vim.lsp.buf.hover, {})
end

local capabilities = require('cmp_nvim_lsp').default_capabilities()

local lspconfig = require("lspconfig")

lspconfig.lua_ls.setup {
	on_attach = on_attach,
	capabilities = capabilities
}
lspconfig.pylsp.setup{
	on_attach = on_attach,
	filetypes = {"python"},
}
lspconfig.cmake.setup{
	on_attach = on_attach,
	filetypes = {"make"},
}
lspconfig.bashls.setup{
	on_attach = on_attach,
	filetypes = {"sh"}
}
lspconfig.html.setup{
	on_attach = on_attach,
	filetypes  = {"html"}
}
lspconfig.biome.setup{
	on_attach = on_attach,
	filetypes = {"json"},
	root_dir = lspconfig.util.root_pattern("package.json", ".git", "Makefile"),
}
lspconfig.clangd.setup {
	on_attach = on_attach,
	filetypes = {"c", "cpp"}
}
lspconfig.asm_lsp.setup {
	on_attach = on_attach,
	filetypes = {"asm", "s"},
	root_dir = lspconfig.util.root_pattern(".git", vim.fn.getcwd()),
}
lspconfig.dartls.setup {
	on_attach = on_attach,
	filetypes = {"dart"},
	root_dir = lspconfig.util.root_pattern(".git", vim.fn.getcwd()),
}

lspconfig.jdtls.setup {
	on_attach = on_attach,
	filetypes = {"java"},
}

lspconfig.kotlin_language_server.setup {
	on_attach = on_attach,
	filetypes = {"kt"},
	-- root_dir = lspconfig.util.root_pattern(".git", vim.fn.getcwd()),
}
