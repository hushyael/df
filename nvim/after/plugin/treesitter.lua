require('nvim-treesitter.configs').setup({
    ensure_installed = {
        "c", "go", "rust",
        "sql", "lua", "vim",
        "proto", "gomod", "gosum",
        "make", "json", "dockerfile",
        "yaml", "markdown", "markdown_inline"
    },
    sync_install = false,
    auto_install = false,
    highlight = { enable = true }
})
