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

		lspc.gopls.setup({
			capabilities = capabilities,
			settings = {
				gopls = {
					analyses = {
						unusedparams = true,
						unusedvariable = true,
						shadow = true,
					},
					semanticTokens = true,
					staticcheck = true,
					usePlaceholders = true,
				},
			}
		})

		vim.g.zig_fmt_parse_errors = 0
		vim.cmd [[autocmd BufWritePre *.zig lua vim.lsp.buf.format()]]
		lspc.zls.setup({
			cmd = { "/opt/homebrew/bin/zig" },
		})
	end
}
