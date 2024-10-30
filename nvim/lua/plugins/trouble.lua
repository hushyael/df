return {
  "folke/trouble.nvim",
  opts = {
		indent_guides = false,
		auto_close = true,
	},
  cmd = "Trouble",
  keys = {
		{"<C-r>", "<cmd>Trouble lsp_references<cr>"},
		{"<C-i>", "<cmd>Trouble lsp_implementations<cr>"},
		{"<C-o>", "<cmd>Trouble lsp_definitions<cr>"},
		{"g<leader>", "<cmd>Trouble jump<cr>"},
    {"<leader>M", "<cmd>Trouble diagnostics toggle<cr>", desc = "Diagnostics (Trouble)"},
  },
}
