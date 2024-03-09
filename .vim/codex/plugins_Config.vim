"  .=======================.
"  |Air Line #ff6c88 Config|
"  `=======================`
"{{{  Air Line :
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#bufferline#enabled = 1
let g:airline#extensions#tabline#show_buffers = 1
"
"let g:airline_theme = 'base16_material_vivid'
"'base16_nord''base16_material_vivid' 'base16_solarized'
" base16_nord base16_material_darker 
"

"let g:airline_powerline_fonts = 1
let g:airline_symbols_ascii = 1
let g:airline#extensions#whitespace#enabled = 1
"silent! call airline#extensions#whitespace#disable(ftplugin/*)
"######################################################################"
"}}}

"  .=======================.
"  |NerdTree #fabc88 Config|
"  `=======================`
"{{{  NERDTree :

let g:NERDTreeDirArrowExpandable="+"                                     
let g:NERDTreeDirArrowCollapsible="~"                                    
"
"[:NERDTreeFocus<CR>]  is same with [:NERDTree<CR>(it goes to dir)]     
"nnoremap <C-f> :NERDTreeFocus<CR>                                       
"nnoremap <C-n> :NERDTree<CR>                                            
nnoremap <leader>e :NERDTreeToggle<CR>                                       
"####################################################################
"}}}

"  .=====================.
"  |Tagbar #a0ffaa config|
"  .=====================.
"{{{   TagBar :

nmap <leader>[ :TagbarToggle<CR>                                              
set completeopt-=preview " For No Preniew                                
"####################################################################
"}}}
