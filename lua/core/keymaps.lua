vim.g.mapleader = ' '

vim.keymap.set('n','<leader>h', ':nohlsearch<CR>')
vim.keymap.set('n', '<leader>f', ':LspStop<CR>')
vim.keymap.set('n', '<leader>o', ':LspStart<CR>')
vim.keymap.set('n', "<leader>n", ":Telescope nerdy<CR>")
vim.api.nvim_set_keymap('n', '<leader>cs', "<cmd>Telescope colorscheme<cr>", { noremap = true, silent = true })
vim.keymap.set('n', "<leader>c", ":LazyGit<CR>")
vim.keymap.set('n', "<leader>t", ":Themery<CR>")
vim.keymap.set('n', "<leader>r", ":TagbarToggle<CR>")
vim.keymap.set('n', "<leader>d", ":TagbarClose<CR>")
vim.keymap.set('n', "<leader>v", ":set virtualedit=all<CR>")

vim.opt.shiftwidth = 4
vim.opt.tabstop = 4
vim.o.clipboard = "unnamedplus"
