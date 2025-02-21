vim.cmd([[highlight clear]])

if vim.g.syntax_on then
  vim.cmd([[syntax reset]])
end

vim.g.colors_name = "pph"
vim.o.background = "dark"

local white 	 		= "#D7CEBA"
local black 	 		= "#151317"
local gray 		 		= "#525052"
local dark_gray 	= "#201920"

-- local white 	 		= "#FFFFFF"
-- local black 	 		= "#171717"
-- local gray 		 		= "#525252"
-- local dark_gray 	= "#202020"
local red 		 		= "#F56868"
local light_red 	= "#F57868"
local amber 	 		= "#CC873F"
local orange 	 		= "#FFAF00"
local dark_orange = "#C74E39"
local pink		 		= "#F5BAEF"
local green 	 		= "#3FCC59"
local dark_green	= "#293722"
local blue 		 		= "#394b70"
local dark_purple = "#37222C"

local highlights = {
  -- ui
  NormalFloat 	= 	{ fg = white, bg = dark_gray },
  Pmenu 				= 	{ fg = white, bg = dark_gray },
  IncSearch 		= 	{ fg = black, bg = orange },
  Search 				= 	{ fg = black, bg = orange },
  Visual 				= 	{ fg = black, bg = orange },
  Directory 		= 	{ fg = white, bg = "NONE" },
  WarningMsg 		= 	{ fg = amber, bg = "NONE" },
  WinSeparator 	= 	{ fg = black, bg = black },
  Normal 				= 	{ fg = white, bg = black },
  NonText 			= 	{ fg = white, bg = black },
  CursorLineNr	= 	{ fg = white, bg = black },
  StatusLine 		= 	{ fg = white, bg = black },
  WinBar 				= 	{ fg = white, bg = black },
  LineNr 				= 	{ fg = gray, bg = "NONE" },
  ErrorMsg 			= 	{ fg = red, bg = "NONE" },
  Error 				= 	{ fg = red, bg = "NONE" },
  WinBarNC 			= 	{ fg = gray, bg = black },
  MatchParen 		= 	{ fg = white, bg = gray },
  EndOfBuffer 	= 	{ fg = "bg", bg = "bg" },
  -- syntax
  Comment 			= 	{ fg = gray, bg = "NONE" },
	makeCommands	= 	{ fg = white, bg = "NONE" },
  Constant 			= 	{ fg = pink, bg = "NONE" },
  Function 			= 	{ fg = white, bg = "NONE" },
  Identifier 		= 	{ fg = white, bg = "NONE" },
  PreProc 			= 	{ fg = white, bg = "NONE" },
  Statement 		= 	{ fg = white, bg = "NONE" },
  Special 			= 	{ fg = white, bg = "NONE" },
  String 				= 	{ fg = white, bg = "NONE" },
  Operator 			= 	{ fg = white, bg = "NONE" },
  Type 					= 	{ fg = white, bg = "NONE" },
  ["@spell"] 		= 	{ fg = "#626262", bg = "NONE" },
  ["@error"] 		= 	{ fg = red, sp = dark_orange, undercurl = true },
  -- git related
  DiffText	 		=		{ fg = blue },
  DiffAdd 			=		{ bg = dark_green },
  DiffDelete 		=		{ fg = white, bg = dark_purple },
  Added 				= 	{ fg = green, bg = "NONE" },
  Changed 			= 	{ fg = amber, bg = "NONE" },
  Removed 			= 	{ fg = light_red, bg = "NONE" },

  -- diagnostics
  DiagnosticUnderlineError = { fg = white, undercurl = true, sp = dark_orange },
  DiagnosticError = { fg = red },
  DiagnosticWarn 	= { fg = amber },

  -- trouble
  TroubleNormal 	= { bg = black },
  TroubleNormalNC = { bg = black },

	DevIconDockerfile = { fg = white },
	DevIconYml = { fg = white },
	DevIconYaml = { fg = white },
	DevIconGitModules = { fg = white },
	DevIconGitIgnore = { fg = white },
	DevIconMakefile = { fg = white },
	DevIconReadme = { fg = white },
	DevIconSh = { fg = white },
	DevIconEnv = { fg = white },
	DevIconGo = { fg = white },
	DevIconGoMod = { fg = white },
	DevIconGoSum = { fg = white },
}

for group, opts in pairs(highlights) do
  vim.api.nvim_set_hl(0, group, opts)
end
