local augroup = vim.api.nvim_create_augroup
local autocmd = vim.api.nvim_create_autocmd

local pples_group = augroup('pples', {})
local yank_group = augroup('HighlightYank', {})

-- 2 spaces for selected filetypes
autocmd('FileType', {
  pattern = 'xml,html,xhtml,css,scss,javascript,lua,yaml,htmljinja',
  callback = function()
    vim.opt_local.shiftwidth = 2
    vim.opt_local.tabstop = 2
  end
})

-- highlight on yank
autocmd('TextYankPost', {
  group = yank_group,
  pattern = '*',
  callback = function()
    vim.highlight.on_yank({
      higroup = 'IncSearch',
      timeout = 40,
    })
  end,
})

--- remove all trailing whitespace on save
autocmd('BufWritePre', {
  group = pples_group,
  pattern = '*',
  command = [[%s/\s\+$//e]],
})

-- organize go imports on save
autocmd('BufWritePre', {
  pattern = { '*.go' },
  callback = function()
    vim.lsp.buf.format({ async = true })

    for _, client in pairs(vim.lsp.buf_get_clients()) do
      local params = vim.lsp.util.make_range_params(nil, client.offset_encoding)
      params.context = { only = { "source.organizeImports" } }

      local result = vim.lsp.buf_request_sync(0, "textDocument/codeAction", params, 5000)
      for _, res in pairs(result or {}) do
        for _, r in pairs(res.result or {}) do
          if r.edit then
            vim.lsp.util.apply_workspace_edit(r.edit, client.offset_encoding)
          else
            vim.lsp.buf.execute_command(r.command)
          end
        end
      end
    end
  end
})

-- gopls setup
autocmd('LspAttach', {
  group = vim.api.nvim_create_augroup('UserLspConfig', {}),

  callback = function(ev)
    local opts = { buffer = ev.buf }
		vim.diagnostic.config({ underline = true, virtual_text = true, virtual_lines = true, signs = false })
    vim.bo[ev.buf].omnifunc = 'v:lua.vim.lsp.omnifunc'

    vim.keymap.set('n', 'gi', vim.lsp.buf.implementation, opts)
    vim.keymap.set('n', 'gr', vim.lsp.buf.references, opts)
    vim.keymap.set('n', '<C-o>', vim.lsp.buf.definition, opts)
    vim.keymap.set('n', '<C-t>', vim.lsp.buf.type_definition, opts)
	  vim.keymap.set('n', '<C-k>', vim.lsp.buf.hover, opts)
	  vim.keymap.set('n', 'ca', vim.lsp.buf.code_action, opts)
  end
})
