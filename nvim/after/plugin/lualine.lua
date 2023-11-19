require('lualine').setup({
    options = {
        disabled_filetypes = {'neo-tree'},
        theme = 'auto',
        component_separators = '',
        section_separators = '',
        ignore_focus = {},
        icons_enabled = false,
        always_divide_middle = true,
        globalstatus = true,
        refresh = { statusline = 1000 }
    },
    sections = {
      lualine_a = {'filename'},
      lualine_b = {'branch'},
      lualine_c = {'diagnostics'},
      lualine_x = {},
      lualine_y = {},
      lualine_z = {},
    },
    extensions = { 'neo-tree', 'lazy' }
})
