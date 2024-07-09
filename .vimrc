"****************************************************************************
"#f42<Leader> <Single-quot> ===> To Open NERDTree In Config Location <===#f42
"****************************************************************************
"TODO: Hints `(>^.^<)` vim
"
" --> leader = <Space> , --> jk = <Esc> , --> <Space>' = vim_config_Tree
" --> gf = on any the following file name, it'll open that file, gf (goto file), see :h gf
source ~/.vim/codex/options.vim
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
"
colorscheme retrobox "deus retrobox  habamax tokyonight codedark miramare srcery
set tgc
set background=dark
"
" * convert Xterm color into gui hex values
" * then use tgc to enable gui color support
" set termguicolors
"
" -- Airline
let g:airline_theme = "deep_space"
"<<--
"
"-- Enhancing Themes
" Italics
hi! Comment cterm=italic gui=italic
" <<--
hi! Search cterm=none ctermbg=202 ctermfg=233
hi! CurSearch cterm=none ctermbg=9 ctermfg=232
hi! cursorline cterm=none ctermbg=233  "17 "236
hi! MatchParen cterm=reverse cterm=bold ctermfg=202 ctermbg=None gui=bold guifg=#ff6000 guibg=NONE 
hi! Special cterm=bold ctermfg=202 ctermbg=None
hi! VertSplit cterm=reverse ctermfg=236 ctermbg=234 guifg=#303030 guibg=#1c1c1c
hi! EndOfBuffer ctermbg=None
" Line Number
"hi! LineNr ctermfg=30 " 23
"hi! lineNrAbove
"hi! CursorLineNr
"hi! LineNrBelow
" <<--
" Transparency
"hi! Normal ctermbg=None
"hi! Terminal ctermbg=None
" <<--
"hi! cursorlineNr cterm=bold ctermfg=30 ctermbg=234 "235 "233  "17 "236
"hi! Normal ctermfg=255
"hi! Visual cterm=none ctermbg=202 ctermfg=232
"}}}
