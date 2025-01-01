return {
	'folke/trouble.nvim',
	opts = {
		open_no_results = true,
		indent_guides = false,
		keys = {
			["<leader>g"] = "jump"
		}
	},
	cmd = "Trouble",
	keys = {
		{
			"<leader>m",
      "<cmd>Trouble diagnostics toggle<cr>",
      desc = "Diagnostics (Trouble)",
		}
	},
}
