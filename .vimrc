"****************************************************************************
"#f42<Leader> <Single-quot> ===> To Open NERDTree In Config Location <===#f42
"****************************************************************************
"TODO: Hints `(>^.^<)` vim
"
" --> leader = <Space> , --> jk = <Esc> , --> <Space>' = vim_config_Tree
"
source ~/.vim/codex/Options.vim
source ~/.vim/codex/keybindings.vim
source ~/.vim/codex/plugins_Config.vim
source ~/.vim/codex/vim_plug.vim
"
"Enabling Man Page in vim `(>^.^<)` vim
runtime! ftplugin/man.vim
"
"############################################################################

"  .=======================.
"  |configer #ff6c88 Colors|
"  `=======================`
"{{{ Themes :------------------------------JK
"********* for -->Tokyo-nihgt *************
"<<--
let g:airline_theme = "dark" 
"-->>"purify"
"color tokyonight "retrobox "codedark "miramare "srcery
"
" for Xterm color
hi! Comment cterm=none
hi! Normal ctermbg=None
hi! Terminal ctermbg=None
hi! LineNr ctermfg=30 " 23
hi! EndOfBuffer ctermbg=None
hi! cursorline cterm=none ctermbg=233  "17 "236
hi! cursorlineNr cterm=bold ctermfg=30 ctermbg=234 "235 "233  "17 "236

hi! Normal ctermfg=255
hi! Visual cterm=none ctermbg=202 ctermfg=232
hi! link Search Visual
hi! CursorLine cterm=none ctermbg=233"'
"
"hi! Comment cterm=bold  "doesn't work well with tmux !? even 'italic'.
"
"hi! lineNrAbove
"hi! CursorLineNr
"hi! LineNrBelow
"
"******************************************
" {#00005f = 17 Xterm-number}   ctermfg=202
"******************************************
"color ayu
"color desert
"color onedark
"color elflord
"color srcery
"color miramare
"color codedark
"colorscheme purify
"colorscheme gruvbox
"colorscheme vimbrains
"colorscheme jellybeans
"colorscheme desert-night
"##############################
"}}}
