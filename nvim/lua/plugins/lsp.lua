return {
	"neovim/nvim-lspconfig",
	dependencies = {
		"ziglang/zig.vim",
		"hrsh7th/cmp-nvim-lsp",
	},

	config = function()
		local lspc = require("lspconfig")
		local cmplsp = require("cmp_nvim_lsp")
		local capabilities = cmplsp.default_capabilities()

		lspc.zls.setup({})

		lspc.rust_analyzer.setup({})

		lspc.gopls.setup({
			capabilities = capabilities,
			settings = {
				gopls = {
					staticcheck = true,
					usePlaceholders = true,
					buildFlags = {"-tags=acceptance,functional"}
				}
			}
		})

		vim.diagnostic.config({ underline = true, virtual_text = true, virtual_lines = true, signs = false })
		vim.lsp.handlers["textDocument/hover"] = vim.lsp.with(vim.lsp.handlers.hover, { max_width = 50, max_height = 20 })
	end
}
