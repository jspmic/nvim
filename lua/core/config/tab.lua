local map = vim.api.nvim_set_keymap
local opts = { noremap = true, silent = true }

-- Move to previous/next
map('n', '<A-h>', '<Cmd>BufferPrevious<CR>', opts)
map('n', '<A-l>', '<Cmd>BufferNext<CR>', opts)

-- Re-order to previous/next
map('n', '<A-j>', '<Cmd>BufferMovePrevious<CR>', opts)
map('n', '<A-k>', '<Cmd>BufferMoveNext<CR>', opts)

-- Close buffer
map('n', '<A-u>', '<Cmd>BufferClose<CR>', opts)
