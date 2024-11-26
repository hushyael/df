return {
	'lewis6991/gitsigns.nvim',
	config = function()
		local gs = require('gitsigns')

		vim.keymap.set('n', '<Space>H', gs.preview_hunk_inline, {})
		vim.keymap.set('n', '<Space>R', gs.reset_hunk, {})

		gs.setup({
			signs = {
				add          = { text = '┃' },
				change       = { text = '┃' },
				delete       = { text = '┃' },
				topdelete    = { text = '┃' },
				changedelete = { text = '┃' },
				untracked    = { text = '┃' },
		  }
		})
	end
}
