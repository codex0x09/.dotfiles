"TODO: why this fail 100%

let mapleader=" "

set timeoutlen=150

""ManPager
nnoremap <leader>m :Man<space>
"====================

""EScapes
inoremap jk <ESC>
vnoremap jk <ESC>
cnoremap jk <ESC>
tnoremap fj <C-W>N

"====================
""Go Command Mode
nnoremap jf :<C-f>
"====================
"Formating
nnoremap <leader>i gg=G <C-o><C-o>
"====================

"Enable/Disable cursorLine
nnoremap <leader>c <cmd>set cursorline<cr>
nnoremap <leader><space> <cmd>set nocursorline<cr>
"====================
"#  # Folding #  #
"====================
"fold from { to }
nnoremap <leader>f <esc>%zf%
"fold a paragraph
nnoremap <leader>z <esc>vipzf
"====================
"
"########################################
"#    	#	    Window	    #		#
"########################################
""Moving cursor around splits (windows)
nnoremap <leader>\ <C-w>w
nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l
"--------
"Terminal mode
tnoremap <C-h> <C-W>N<C-w>h
tnoremap <C-j> <C-W>N<C-w>j
tnoremap <C-k> <C-W>N<C-w>k
tnoremap <C-l> <C-W>N<C-w>l
"====================
""Resizing windows/panes
nnoremap <M-h> <cmd>vertical resiz +3<CR>
nnoremap <M-l> <cmd>vertical resiz -3<CR>
nnoremap <M-k> <cmd>resize +3<CR>
nnoremap <M-j> <cmd>resize -3<CR>
"=================================
"
""Changing windows from Horiz to vert and vise versa
nnoremap <leader>ht <C-w>t<C-w>H
nnoremap <leader>kt <C-w>t<C-w>K
"===============================
""Swap windows in different directions
nnoremap <leader>r <C-w>R
"""""""""""""""""""""
nnoremap <leader>s <cmd>sp<CR>
nnoremap <leader>v <cmd>vs<CR>
nnoremap <leader>q <cmd>q<CR>
"<C-w> is prefix
"<C-w>|(Pipline) max vert window(zoom-in_Vertically)
"<C-w>_(Under_Score) max Horiz window(zoom-in_Horizently)
"<C-w>= makes window in 50% zoom (zoom-out)
nnoremap <leader>h <C-w><bar>
nnoremap <leader>jk  <C-w>_
nnoremap jz <C-w>_<C-w><bar>
nnoremap <leader>k <C-w>=
"########################################

"########################################
"#    	#	Terminal    #		#
"########################################
" To config terminal colors ,see :h terminal
""""""
"open terminal
nnoremap <leader>t <ESC><cmd>terminal<CR><C-\><C-n><cmd>resize -5<CR>i
" To EScape fucossing termianl
tnoremap <ESC> <C-W>N
"_______________________________________#
"
"########################################
"#    	#	Tabs	    #		#
"########################################
nnoremap tn <cmd>tabnew<CR>
nnoremap tj <cmd>tabprevious<CR>
nnoremap tk <cmd>tabnext<CR>
nnoremap th <cmd>tabfirst<CR>
nnoremap tl <cmd>tablast<CR>
nnoremap ti <cmd>tabclose<CR>
"########################################
"
"########################################
"#    	#	Buffers	    #		#
"########################################
nnoremap <Tab> <cmd>bnext<CR>
nnoremap <S-Tab> <cmd>bprevious<CR>
"list buffers and ready to go :_
nnoremap <leader>l <cmd>buffers<CR>:b
"See :h buffer
"########################################
"-------------------------------------------------------#
"Move visually selected lines up or down in various modes
"-------------------------------------------------------#
"for normal mode K--up & J--down
"nnoremap K :m .-2<CR>==
"nnoremap J :m .+1<CR>==

"for visual mode K--up & J--down
vnoremap K :m '<-2<CR>gv=gv
vnoremap J :m '>+1<CR>gv=gv
"#########################################################

"########################################
"#    #  VIM FILE BROWSER   #   #
"########################################
"===============(NERDTree)================
nnoremap <leader>' <Esc><Cmd>NERDTree ~/.vim/codex/<CR>
"
"===============(Netrw)================
"nnoremap <leader>e <ESC><cmd>30vs<CR><cmd>Ntree<CR><C-w>R
"--------------------------------------------------------
"remove Ntree's Banner===
"let g:netrw_banner=0
"===================================================
"Remove search highlighting
nnoremap <leader>n <ESC><cmd>nohlsearch<CR>
"==================================================



"########################################
"#    #  Tab for Complitions #   #
"########################################
"TODO: see :h insert.txt line:687
"NOTE: also see line:622
"For example, the following will map <Tab> to either actually insert a <Tab> if
"the current line is currently only whitespace, or start/continue a CTRL-N
"completion operation:
"==================================================
function! CleverTab()
  if strpart( getline('.'), 0, col('.')-1 ) =~ '^\s*$'
    return "\<Tab>"
  else
    return "\<C-N>"
  endif
endfunction
inoremap <Tab> <C-R>=CleverTab()<CR>
"==================================================


"########################################
"#    #  SAVE & SOURCE FILES   #   #
"########################################
"nnoremap so <Cmd>w<CR><Cmd>so%<CR>
"inoremap <C-s> <cmd>w<CR><cmd>so%<CR>
"nnoremap <C-s> <cmd>w<CR><cmd>so%<CR>
"==================================================
