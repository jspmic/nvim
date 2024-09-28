require("toggleterm").setup({
  shade_terminals = false,
  direction = "float",
  border = "double"
})

vim.keymap.set('n', "<C-x>", ':ToggleTerm<CR>')
vim.keymap.set('t', '<C-x>', "<c-\\><c-n>")
