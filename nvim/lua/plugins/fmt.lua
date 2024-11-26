return {
	"wellle/targets.vim",
	"romainl/vim-cool",
	"tpope/vim-surround",
	"tpope/vim-commentary",
	{
		"m4xshen/autoclose.nvim",
		config = function()
			require("autoclose").setup()
		end
	}
}
