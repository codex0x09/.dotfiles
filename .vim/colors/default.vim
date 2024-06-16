" Vim color file
" Maintainer:	The Vim Project <https://github.com/vim/vim>
" Last Change:	2023 Aug 10
" Former Maintainer:	Bram Moolenaar <Bram@vim.org>

" This is the default color scheme.  It doesn't define the Normal
" highlighting, it uses whatever the colors used to be.

" Set 'background' back to the default.  The value can't always be estimated
" and is then guessed.
hi clear Normal
set bg&

" Remove all existing highlighting and set the defaults.
hi clear

" Load the syntax highlighting defaults, if it's enabled.
if exists("syntax_on")
  syntax reset
endif

let colors_name = "default"

"Hi there (>^.^<) Codex's here <3
hi! Comment cterm=italic gui=italic
hi! Search cterm=none ctermfg=233 ctermbg=202
hi! Visual cterm=none ctermfg=232 ctermbg=202
hi! VertSplit cterm=reverse ctermfg=236 ctermbg=234 guifg=#303030 guibg=#1c1c1c
hi! CurSearch cterm=none ctermbg=9 ctermfg=232
hi! CursorLine cterm=none ctermbg=233
hi! link CursorColumn CursorLine
hi! CursorLineNr cterm=bold,italic ctermbg=233 ctermfg=196
hi! LineNr ctermfg=111 "104  "247  "30 " 23
hi! SpellBad ctermbg=23 ctermfg=255
" vim: sw=2
