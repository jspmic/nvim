require('nvim-toggler').setup({
	inverses = {
		['me'] = 'you',
		['security'] = 'insecurity',
		['remove'] = 'add',
		['big'] = 'skinny',
		['=='] = '!=',
		['>='] = '<',
		['<='] = '>',
		['=='] = '!=',
		['break'] = 'continue',
		['beautiful'] = 'ugly'
	}
})
vim.keymap.set({'n','v'}, '<leader>i', require('nvim-toggler').toggle)
