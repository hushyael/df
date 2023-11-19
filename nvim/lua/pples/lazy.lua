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
		"folke/tokyonight.nvim",
		lazy = false,
		priority = 1000,
		opts = {},
	},
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
    "nvim-neo-tree/neo-tree.nvim",
    branch = "v3.x",
    dependencies = {
      "nvim-lua/plenary.nvim",
      "MunifTanjim/nui.nvim",
		}
	},
	{"sindrets/diffview.nvim"},
  {"simrat39/rust-tools.nvim"},
	{"wellle/targets.vim"},
	{"m4xshen/autoclose.nvim", config = true},
  {"folke/trouble.nvim"},
	{"romainl/vim-cool"},
	{"tpope/vim-fugitive"},
	{"tpope/vim-surround"},
	{"tpope/vim-commentary"},
  {"nvim-lualine/lualine.nvim"},
  {"nvim-tree/nvim-web-devicons"},
  {"nvim-telescope/telescope.nvim", dependencies = { "nvim-lua/plenary.nvim" }},
  {"nvim-treesitter/nvim-treesitter", dependencies = { "nvim-treesitter/nvim-treesitter-context" }, run = ":TSUpdate"},
	{"kelly-lin/telescope-ag", dependencies = { "nvim-telescope/telescope.nvim" }},
	{'akinsho/git-conflict.nvim', version = "*", config = true},
})

