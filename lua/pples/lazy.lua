local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable",
    lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)


local lsp_deps = {
  "neovim/nvim-lspconfig",
  "saadparwaiz1/cmp_luasnip",
  "L3MON4D3/LuaSnip",
  "rafamadriz/friendly-snippets",
  "hrsh7th/cmp-nvim-lsp",
  "hrsh7th/cmp-nvim-lua",
  "hrsh7th/nvim-cmp",
  "hrsh7th/cmp-buffer",
  "hrsh7th/cmp-path",
}

require("lazy").setup({
  {
    "VonHeikemen/lsp-zero.nvim",
    branch = "v3.x",
    lazy = true,
    dependencies = lsp_deps,
  },
  {
    "ray-x/go.nvim",
    dependencies = { "ray-x/guihua.lua" },
    config = function()
      require("go").setup({})
    end
  },
  {
    "folke/which-key.nvim",
    event = "VeryLazy",
    init = function()
      vim.o.timeout = true
      vim.o.timeoutlen = 300
    end
  },
	{
		"kelly-lin/telescope-ag",
		dependencies = { "nvim-telescope/telescope.nvim" },
	},

	{"wellle/targets.vim"},
	{"romainl/vim-cool"},
	{"tpope/vim-endwise"},
	{"tpope/vim-surround"},
	{"tpope/vim-commentary"},
  {"nvim-lualine/lualine.nvim"},
  {"nvim-tree/nvim-web-devicons"},
  {"simrat39/rust-tools.nvim"},
  {"nvim-tree/nvim-tree.lua"},
  {"folke/trouble.nvim", icons = false},
  {"nvim-telescope/telescope.nvim", dependencies = { "nvim-lua/plenary.nvim" }},
  {"nvim-treesitter/nvim-treesitter", dependencies = { "nvim-treesitter/nvim-treesitter-context" }, run = ":TSUpdate"},
})

