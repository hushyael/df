return {
	"wellle/targets.vim",
	"ellisonleao/gruvbox.nvim",
	"rebelot/kanagawa.nvim",
	"romainl/vim-cool",
	'famiu/bufdelete.nvim',
	"tpope/vim-surround",
	"tpope/vim-commentary",
	{
		"m4xshen/autoclose.nvim",
		config = function()
			require("autoclose").setup()
		end
	}
}
