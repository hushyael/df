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
hi EndOfBuffer                       guifg=bg         guibg=bg         gui=NONE
hi WarningMsg                        guifg=white      guibg=#FDA293    gui=BOLD
hi ErrorMsg                          guifg=#FDA293    guibg=NONE
hi Error                             guifg=#FDA293    guibg=NONE
hi TSError                           guifg=#FDA293    guibg=NONE
hi DiagnosticError 			 		 guifg=#FDA293    guibg=NONE
hi DiagnosticUnderlineError          guifg=#FDA293    guibg=NONE
hi DiagnosticUnnecessary             guifg=#FDA293    guibg=#FDA293
hi DiagnosticUnderlineError          guifg=#FDA293    guibg=NONE
hi DiagnosticUnderlineError          guifg=#FDA293    guibg=NONE
hi DiagnosticUnderlineError          guifg=#FDA293    guibg=NONE
hi DiagnosticUnderlineError          guifg=#FDA293    guibg=NONE

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
hi @error                            guifg=#FDA293

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

hi @lsp.mod.mutable                  gui=undercurl
hi @lsp.mod.trait                    guifg=#6BCBF7

" NvimTree
hi NvimTreeSpecialFile               guifg=#CCCCCC     guibg=#222222     gui=NONE
hi NvimTreeImageFile                 guifg=#CCCCCC     guibg=#222222     gui=NONE
hi NvimTreeOpenedFile                guifg=#D6D4A6     guibg=NONE        gui=NONE

" Diff

" Diagnostics
hi DiagnosticUnnecessary             guifg=NONE
hi DiagnosticUnderlineError 		 guisp=#FDA293 gui=underline

" Telescope
