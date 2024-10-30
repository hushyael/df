return {
	"hrsh7th/nvim-cmp",
	dependencies = {
    "hrsh7th/cmp-buffer",
    "hrsh7th/cmp-path",
    {
      "L3MON4D3/LuaSnip",
      version = "v2.*",
    },
    "saadparwaiz1/cmp_luasnip",
  },
	config = function()
		local cmp = require("cmp")
    local luasnip = require("luasnip")

		cmp.setup({
			completion = {
        completeopt = "menu,menuone,preview,noselect",
      },
			snippet = {
        expand = function(args)
          luasnip.lsp_expand(args.body)
        end,
      },
			sources = cmp.config.sources({
        { name = "nvim_lsp"},
        { name = "buffer" },
        { name = "path" },
      }),
			mapping = cmp.mapping.preset.insert({
				['<C-n>'] = cmp.mapping.select_next_item(),
				['<C-p>'] = cmp.mapping.select_prev_item(),
				['<C-d>'] = cmp.mapping.scroll_docs(5),
				['<C-u>'] = cmp.mapping.scroll_docs(-5),
				['<CR>'] = cmp.mapping.confirm({select = true}),
				['<Tab>'] = cmp.mapping(function(fallback)
						if cmp.visible() then
							cmp.confirm()
						elseif luasnip.expand_or_jumpable() then
								luasnip.expand_or_jump()
						else
								fallback()
						end
					end, { "i", "s" }),
        ["<S-Tab>"] = cmp.mapping(function(fallback)
            if luasnip.jumpable(-1) then
                luasnip.jump(-1)
            else
                fallback()
            end
					end, { "i", "s" })
			})
		})
	end
}
