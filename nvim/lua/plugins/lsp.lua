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

		lspc.rust_analyzer.setup({
				capabilities = capabilities,
				settings = {
					["rust-analyzer"] = {
						checkOnSave = {
							command = "clippy",
						},
						completion = {
							autoimport = {
								enable = true,
							},
						},
					},
				},
		})

		lspc.gopls.setup({
			capabilities = capabilities,
			settings = {
				gopls = {
					staticcheck = true,
					usePlaceholders = true,
					experimentalPostfixCompletions = true,
					buildFlags = {"-tags=acceptance,functional"},
					analyses = {unusedparams = true},
					hints = {
						parameterNames = true,
						assignVariableTypes = true,
						constantValues = true,
						rangeVariableTypes = true,
						compositeLiteralTypes = true,
						compositeLiteralFields = true,
						functionTypeParameters = true,
					},
				}
			}
		})

		vim.diagnostic.config({ underline = true, virtual_text = true, virtual_lines = true, signs = false })
		vim.lsp.handlers["textDocument/hover"] = vim.lsp.with(vim.lsp.handlers.hover, { max_width = 50, max_height = 20 })
	end
}
