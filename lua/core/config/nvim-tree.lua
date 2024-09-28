-- disable netrw at the very start of your init.lua
vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

-- set termguicolors to enable highlight groups
vim.opt.termguicolors = true

-- Proper setup
require("nvim-tree").setup()

vim.keymap.set('n', '<c-n>', ':NvimTreeToggle<CR>')
vim.keymap.set('n', '<c-c>', ':NvimTreeCollapse<CR>')
