local expr = {silent = true, expr = true, remap = false}

vim.cmd.colorscheme('sema')
vim.opt.termguicolors = true

vim.g.mapleader = " "
vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

vim.opt.hlsearch = true
vim.opt.tabstop = 4
vim.opt.scrolloff = 4
vim.opt.shiftwidth = 4
vim.opt.laststatus = 0
vim.opt.showtabline = 0
vim.opt.fillchars = 'diff:╱'

vim.opt.number = true
vim.opt.showmode = false
vim.opt.smartindent = true

vim.opt.completeopt = { 'menu', 'menuone', 'noselect' }

