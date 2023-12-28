vim.keymap.set('v', '<', '<gv')
vim.keymap.set('v', '>', '>gv')
vim.keymap.set('', ',v', ':vsplit')
vim.keymap.set('', ',s', ':split')

vim.keymap.set('', 'j', "(v:count == 0 ? 'gj' : 'j')", {silent = true, expr = true, remap = false})
vim.keymap.set('', 'k', "(v:count == 0 ? 'gk' : 'k')", {silent = true, expr = true, remap = false})

vim.keymap.set('n', '<Space>', '<Nop>', { silent = true, remap = false })
vim.keymap.set('n', 'Q', '<nop>')
vim.keymap.set('n', '<c-o>', '<nop>')
vim.keymap.set('n', '<c-O>', '<nop>')
