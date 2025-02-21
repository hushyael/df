vim.keymap.set('n', '<C-k>', ':wincmd k<CR>', { silent = true })
vim.keymap.set('n', '<C-j>', ':wincmd j<CR>', { silent = true })
vim.keymap.set('n', '<C-h>', ':wincmd h<CR>', { silent = true })
vim.keymap.set('n', '<C-l>', ':wincmd l<CR>', { silent = true })

vim.keymap.set('n', '<leader>b', ':Neotree toggle<CR>', { silent = true })

vim.keymap.set('n', '<leader>q', ':q<CR>', { silent = true })
vim.keymap.set('n', '<leader>s', ':w<CR>', { silent = true })
vim.keymap.set('n', '<leader>w', ':Bwipeout<CR>', { silent = true })

vim.keymap.set('n', ',s', ':vsplit<CR>', { silent = true })
vim.keymap.set('n', ',v', ':split<CR>', { silent = true })

vim.keymap.set('v', '>', '>gv', { silent = true })
vim.keymap.set('v', '<', '<gv', { silent = true })

vim.keymap.set('n', '<C-Tab>', ':bnext<CR>')
vim.keymap.set('n', '<S-Tab>', ':bprev<CR>')
vim.keymap.set('n', '<Space>', '<Nop>', { silent = true, remap = false })

