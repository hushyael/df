let colors_name = "sema"

set background=dark

hi clear
hi clear LineNr
hi clear WinSeparator
hi clear VertSplit
hi clear SignColumn
hi clear StatusLineNC

if exists("syntax_on")
  syntax reset
endif

" General
hi Directory                         guifg=#CCCCCC    guibg=NONE       gui=NONE
hi Normal                            guifg=#CCCCCC    guibg=#222222    gui=NONE
hi NonText                           guifg=#CCCCCC    guibg=#222222    gui=NONE
hi Search                            guifg=#222222    guibg=#D6D4A6    gui=NONE
hi Pmenu                             guifg=#CCCCCC    guibg=#333333    gui=NONE
hi WinSeparator                      guifg=#222222    guibg=#222222    gui=NONE
hi MatchParen                        guifg=#222222    guibg=#CCCCCC    gui=NONE
hi LineNr                            guifg=#626262    guibg=#222222    gui=NONE
hi CursorLineNr                      guifg=#CCCCCC    guibg=#222222    gui=NONE
hi StatusLine                        guifg=#CCCCCC    guibg=#222222    gui=NONE
hi WarningMsg                        guifg=orange     guibg=NONE       gui=NONE
hi ErrorMsg                          guifg=#FDA293    guibg=NONE	   gui=NONE
hi Error                             guifg=#FDA293    guibg=NONE       gui=NONE
hi TSError                           guifg=#FDA293    guibg=NONE       gui=NONE
hi EndOfBuffer                       guifg=bg         guibg=bg         gui=NONE

" Syntax highlighting
hi Statement                         guifg=#AED7F5    guibg=NONE    gui=NONE
hi Special                           guifg=#CCCCCC    guibg=NONE    gui=NONE
hi Comment                           guifg=#FDA293    guibg=NONE    gui=NONE
hi String                            guifg=#BEDD9F    guibg=NONE    gui=NONE
hi Constant                          guifg=#E6A4DF    guibg=NONE    gui=NONE
hi Operator                          guifg=#CCCCCC    guibg=NONE    gui=NONE
hi Type                              guifg=#D6D4A6    guibg=NONE    gui=NONE
hi Identifier                        guifg=#AED7F5    guibg=NONE    gui=NONE
hi PreProc                           guifg=#AED7F5    guibg=NONE    gui=NONE

hi @keyword                          guifg=#AED7F5
hi @keyword.function                 guifg=#AED7F5
hi @keyword.operator                 guifg=#CCCCCC
hi @keyword.type                     guifg=#D6D4A6
hi @keyword.control                  guifg=#6BCBF7
hi @field.go                         guifg=#CCCCF8
hi @error                            guifg=#FDA293    gui=undercurl guisp=#C74E39

" Semantic tokens
hi @lsp.type.function                guifg=#CCCCCC
hi @lsp.type.method                  guifg=#CCCCCC
hi @lsp.type.parameter               guifg=#CCCCCC
hi @lsp.type.struct                  guifg=#D6D4A6
hi @lsp.type.interface               guifg=#6BCBF7
hi @lsp.type.builtinType             guifg=#D6D4A6
hi @lsp.type.enumMember              guifg=#CCCCF8
hi @lsp.type.property                guifg=#CCCCF8
hi @lsp.type.number                  guifg=#E6A4DF
hi @lsp.type.string  		         guifg=#BEDD9F
hi @lsp.type.macro	                 guifg=#C4D9B0
hi @lsp.type.formatSpecifier         guifg=#CCCCF8
hi @lsp.type.variable                guifg=#CCCCCC
hi @lsp.type.operator          	     guifg=#CCCCCC
hi @lsp.type.namespace         	     guifg=#CCCCCC
hi @lsp.type.selfTypeKeyword         guifg=#AED7F5
hi @lsp.mod.trait                    guifg=#6BCBF7
hi @lsp.mod.mutable                  gui=undercurl

" NvimTree
hi NvimTreeSpecialFile               guifg=#CCCCCC     guibg=NONE     gui=NONE
hi NvimTreeImageFile                 guifg=#CCCCCC     guibg=NONE     gui=NONE
hi NvimTreeOpenedFile                guifg=#D6D4A6     guibg=NONE     gui=NONE
	" Git
	hi NvimTreeGitDirty              guifg=#D6D4A6     guibg=NONE     gui=NONE
	hi NvimTreeGitNew                guifg=#BEDD9F     guibg=NONE     gui=NONE
	hi NvimTreeGitStaged             guifg=#D6D4A6     guibg=NONE     gui=NONE
	hi NvimTreeGitDirty              guifg=#D6D4A6     guibg=NONE     gui=NONE
	hi NvimTreeGitDeleted            guifg=#FDA293     guibg=NONE     gui=NONE
	hi NvimTreeGitMerge              guifg=#CCCCF8     guibg=NONE     gui=NONE

" Neotree
	" Git
	hi NeoTreeGitAdded				 guifg=#BEDD9F     guibg=NONE     gui=NONE
	hi NeoTreeGitUntracked			 guifg=#BEDD9F     guibg=NONE     gui=NONE
	hi NeoTreeGitConflict			 guifg=#CCCCF8     guibg=NONE     gui=NONE
	hi NeoTreeGitDeleted			 guifg=#FDA293     guibg=NONE     gui=NONE
	hi NeoTreeGitIgnored			 guifg=#8C8C8C     guibg=NONE     gui=NONE
	hi NeoTreeGitModified			 guifg=#E2C08D     guibg=NONE     gui=NONE

" Diagnostics
hi DiagnosticError 			 		 guifg=#FDA293
hi DiagnosticWarn             		 guifg=#FEBF6E
hi DiagnosticUnderlineError          guifg=#CCCCCC     gui=undercurl  guisp=#C74E39
hi DiagnosticUnderlineWarn 			 guifg=#CCCCCC     gui=undercurl  guisp=#FEBF6E
hi DiagnosticUnnecessary 			 guifg=#626262	   gui=undercurl  guisp=#C74E39

" Diff
hi DiffAdd        guibg=#203b30
hi DiffChange     guibg=#1f2231
hi DiffDelete  guifg=#656565   guibg=#37222c
hi DiffText       guibg=#394b70
