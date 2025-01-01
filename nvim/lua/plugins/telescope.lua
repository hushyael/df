return {
	'nvim-telescope/telescope.nvim',
	tag = '0.1.8',
	dependencies = { 'nvim-lua/plenary.nvim' },
	config = function()
		local ts = require("telescope")
		local tsbuiltin = require('telescope.builtin')
		local actions = require("telescope.actions")
		local open_with_trouble = require("trouble.sources.telescope").open
		local add_to_trouble = require("trouble.sources.telescope").add


		vim.keymap.set('n', 'ff', "<cmd>lua require'telescope.builtin'.find_files({find_command = {'rg', '--files', '--hidden', '-g', '!.git' }})<cr>", {})
		vim.keymap.set('n', 'fg', tsbuiltin.live_grep, {})
		vim.keymap.set('n', 'fw', tsbuiltin.grep_string, {})
		vim.keymap.set('n', 'fd', tsbuiltin.diagnostics, {})
		vim.keymap.set('n', 'fb', tsbuiltin.buffers, {})

		ts.setup({
			defaults = {
				mappings = {
					i = { ["<c-t>"] = open_with_trouble },
					n = { ["<c-t>"] = open_with_trouble },
				},
			}
		})
	end
}
