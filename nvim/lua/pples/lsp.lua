local lsp = require('lsp-zero')
local cmp = require('cmp')
local cmp_format = require('lsp-zero').cmp_format()
local cmp_action = require('lsp-zero').cmp_action()

require('lspconfig').rust_analyzer.setup({
  on_attach=on_attach,
  settings = {
      ["rust-analyzer"] = {
          imports = {
              granularity = {
                  group = "module",
              },
              prefix = "self",
          },
          cargo = {
              buildScripts = {
                  enable = true,
              },
          },
          procMacro = {
              enable = true
          },
      }
  }
})

require('lspconfig').gopls.setup({
  on_attach = function(c, b)
    ih.on_attach(c, b)
  end,
  settings = {
		gopls = {
			analyses = {
				unusedparams = true,
				shadow = true,
			},
			usePlaceholders = true,
			staticcheck = true,
			semanticTokens = true,
			completeUnimported = true
	}
  }
})

vim.lsp.handlers["textDocument/publishDiagnostics"] =
	vim.lsp.with(vim.lsp.diagnostic.on_publish_diagnostics, {
			underline = true,
			virtual_text = false,
			signs = false,
			update_in_insert = false
	})

cmp.setup({
  format = cmp_format,
  sources = { { name = 'nvim_lsp' }, { name = 'buffer' }, { name = 'path' } },
  mapping = cmp.mapping.preset.insert({
    ['<C-n>'] = cmp.mapping.select_next_item(),
    ['<C-p>'] = cmp.mapping.select_prev_item(),
    ['<C-d>'] = cmp.mapping.scroll_docs(5),
    ['<C-u>'] = cmp.mapping.scroll_docs(-5),
    ['<Tab>'] = cmp.mapping.confirm({select = true}),
    ['<CR>'] = cmp.mapping.confirm({select = true}),
		['<Tab>'] = cmp.mapping(function(fallback)
										local status_ok, luasnip = pcall(require, "luasnip")
										if status_ok and luasnip.expand_or_jumpable() then
												luasnip.expand_or_jump()
										else
												fallback()
										end
								end, { "i", "s" }),
        ["<S-Tab>"] = cmp.mapping(function(fallback)
            local status_ok, luasnip = pcall(require, "luasnip")
            if status_ok and luasnip.jumpable(-1) then
                luasnip.jump(-1)
            else
                fallback()
            end
        end, { "i", "s" })
  }),
})

lsp.on_attach(function(client, bufnr)
  lsp.default_keymaps({ buffer = bufnr })
end)
