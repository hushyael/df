local autocmd = vim.api.nvim_create_autocmd
local augroup = vim.api.nvim_create_augroup

autocmd('FileType', {
  pattern = 'html,css,scss,lua,yaml,json',
  callback = function()
    vim.opt_local.shiftwidth = 2
    vim.opt_local.tabstop = 2
  end
})

autocmd('TextYankPost', {
  group = augroup('highlight', {}),
  pattern = '*',
  callback = function()
    vim.highlight.on_yank({
      higroup = 'IncSearch',
      timeout = 40,
    })
  end,
})

autocmd('BufWritePre', {
  group = augroup('trailing', {}),
  pattern = '*',
  command = [[%s/\s\+$//e]],
})

autocmd("BufWritePre", {
  pattern = "*.go",
  callback = function()
    local params = vim.lsp.util.make_range_params()
    params.context = {only = {"source.organizeImports"}}

    local result = vim.lsp.buf_request_sync(0, "textDocument/codeAction", params)
    for cid, res in pairs(result or {}) do
      for _, r in pairs(res.result or {}) do
        if r.edit then
          local enc = (vim.lsp.get_client_by_id(cid) or {}).offset_encoding or "utf-16"
          vim.lsp.util.apply_workspace_edit(r.edit, enc)
        end
      end
    end
    vim.lsp.buf.format({async = false})
  end
})

autocmd('LspAttach', {
  group = vim.api.nvim_create_augroup('UserLspConfig', {}),

  callback = function(ev)
    local opts = { buffer = ev.buf }

		vim.diagnostic.config({ underline = true, virtual_text = true, virtual_lines = true, signs = false })
    vim.bo[ev.buf].omnifunc = 'v:lua.vim.lsp.omnifunc'

		vim.lsp.handlers["textDocument/hover"] = vim.lsp.with(
		  vim.lsp.handlers.hover, {
				border = "single",
				width = 50,
				height = 10,
			}
		)

	  vim.keymap.set('n', '<C-k>', vim.lsp.buf.hover, opts)
	  vim.keymap.set('n', 'gca', vim.lsp.buf.code_action, opts)
  end
})

