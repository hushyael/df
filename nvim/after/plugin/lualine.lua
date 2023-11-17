require('lualine').setup({
    options = {
        component_separators = '',
        section_separators = '',
        icons_enabled = false,
        theme = 'auto',
        disabled_filetypes = {'NVimTree'},
        ignore_focus = {},
        always_divide_middle = true,
        globalstatus = true,
        refresh = {
            statusline = 1000,
        }
    },
    sections = {
      lualine_a = {'filename'},
      lualine_b = {},
      lualine_c = {},
      lualine_x = {},
      lualine_y = {},
      lualine_z = {},
    },
    extensions = {
        'nvim-tree',
        'lazy',
    }
})