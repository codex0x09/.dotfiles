"                      .=====================.
"                   ~ .|configer #ff6400 vim |. ~
"                      `=====================`
"[t_u7] it request cursor position (for xterm) when vim launched and it causes issue sometimes when vim 
"set t_u7=                      "launched due to some terminal, thus leave it empty
set ambw=double                 "Or setting ambiwidth=double] also will fix the (Replace mode at starting vim)
syntax on
filetype plugin indent on
set nowrap                      " don't wrap the lines of codes
set noswapfile                  " don't make Swap-files
set novb                        " set to no visual beep
set nocp                        " set no compatible
set cursorline                  "cursorline(row),for column set cursorclumn
set number
set relativenumber
set fileencoding=utf-8
set noswapfile
set wildmode=longest,list,full  "enable autocompletion using ctrl+n
set splitright splitbelow
set laststatus=2                "to dispaly the status_bar.
set tabstop=4                   "set our tab size to 2 spaces
set softtabstop=4
set shiftwidth=4
set autoindent                  "indentings
set smartindent
set cindent
set expandtab                  "convert our tab to spaces
set backspace=2                "enabling backspace deletes lines
set ignorecase smartcase       "search settings
set hlsearch                   "highligt search  words after hitting <cr>
set incsearch                  "highligt search incremently
"let loaded_matchparen=1       "1--> disable highlight brackets, <Space> enable it
set formatoptions -=cro        "stop auto commenting
"set fillchars+=vert:\          "Replacing | in the vert sparator with <Space>
set scrolloff=5 "show a few lines of context aroud the cursor . this from vim90/defaults.vim
set guicursor=a:block "(a)stands for all modes set guicursor=n-v-c:block,o:hor50,i-ci:hor15,r-cr:hor30,sm:block
set t_Co=256 "coloring the vim terminal
"-------------------------------------------
"for multy lines 76,77,78..
"set colorcolumn=80            "adding column as you want via column number
"set signcolumn=no            "adding a single column before numbers column
"----------------------------------------
" Vim can highlight whitespaces for you in a convenient way:
":set list
":set listchars="tab:<->",trail:.,extends:#,nbsp:\|.
" \ is skip characher
" use shift-k to get help for them
":set listchars=multispace:---+
":set listchars=multispace:.\|
"-------------------------------------------
