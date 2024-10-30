return {
	'nvim-telescope/telescope.nvim',
	tag = '0.1.8',
  dependencies = { 'nvim-lua/plenary.nvim' },
	config = function()
		local tsbuiltin = require('telescope.builtin')

		defaults = {
			sorting_strategy = 'ascending',
		}

		vim.keymap.set('n', 'ff', "<cmd>lua require'telescope.builtin'.find_files({ find_command = {'rg', '--files', '--hidden', '-g', '!.git' }})<cr>", {})
		vim.keymap.set('n', 'fg', tsbuiltin.live_grep, {})
		vim.keymap.set('n', 'fw', tsbuiltin.grep_string, {})
		vim.keymap.set('n', 'fb', tsbuiltin.buffers, {})
	end
}
