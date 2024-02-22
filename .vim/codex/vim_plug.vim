"=========================
"Plugins/vim-plug manager|
"=========================
call plug#begin('~/.vim/autoload/plugged')
	Plug 'https://github.com/vim-airline/vim-airline' "Status bar(airline)
	Plug 'https://github.com/preservim/nerdtree' "File Explorer(NerdTree)
	Plug 'https://github.com/preservim/tagbar' "Tagbar for code navigation
	Plug 'https://github.com/rafi/awesome-vim-colorschemes' "Retro Scheme
	"Plug 'craftzdog/solarized-osaka.nvim' "Solarized ColorScheme (Requires Neovim >= 0.7.2)
	Plug 'https://github.com/ap/vim-css-color' "CSS Color Preview
	Plug 'https://github.com/ryanoasis/vim-devicons' "Developer Icons
	"Plug 'https://github.com/neoclide/coc.nvim' "Auto Completion(for Nvim only)
	Plug 'sheerun/vim-polyglot' "SyntaxHighlighting/like treesitter
	Plug 'tpope/vim-obsession'
	Plug 'christoomey/vim-tmux-navigator'
	Plug 'https://github.com/wolandark/vim-live-server.git' "live-server
call plug#end()
