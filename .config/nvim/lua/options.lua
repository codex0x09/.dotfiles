-- :help options
vim.opt.writebackup = false			-- if a file is being edited by another program (or was written to file), it is not allowed to be edited
vim.opt.backup = false				-- creates a backup file
--vim.opt.clipboard = "unnamedplus"		-- allows neovim to access the system clipboard
-- vim.opt.cmdheight = 2 				-- more space in the neovim command line for displaying messages {default is 1}
vim.opt.completeopt = { "menuone", "noselect"}  -- mostly just for cmp
vim.opt.conceallevel = 0 			-- so that `` is visible in markdown files
vim.opt.fileencoding = "utf-8"			-- the encoding written to a file
vim.opt.hlsearch = true				-- hilghlight all matches on previous search pattern
vim.opt.ignorecase = true			-- ignore case in search patterns
-- vim.opt.mouse = "a"				-- allow the mouse to be used in neovim
vim.opt.pumheight = 18				-- pop up menu height {default 0 (which max window)}
vim.opt.pumblend = 15		      -- it will make any foalt ro pop up menu Transparent (*6*)
vim.opt.showmode = false			-- we don't need to see things like -- INSERT -- anymore
vim.opt.showtabline = 2				-- always show tabs
vim.opt.smartcase = true			-- smart case
vim.opt.smartindent = true			-- make indenting smarter again
vim.opt.splitbelow = true			-- force all horizontal splits to go below current window
vim.opt.splitright = true			-- force all vertical splits to go to the right of current window
vim.opt.swapfile = false			-- creates a swapfile
vim.opt.termguicolors = true		-- set term gui colors (most terminals support this)
vim.opt.timeoutlen = 200			-- time to wait for a mapped sequence to complete (in milliseconds)
vim.opt.undofile = true				-- enable persistent undo
vim.opt.updatetime = 300			    -- faster completion (4000ms default)
vim.opt.expandtab = true			-- convert tabs to spaces
vim.opt.shiftwidth = 2				-- the number of spaces inserted for each indentation
vim.opt.softtabstop = 2				-- the number of spaces inserted for each indentation
vim.opt.tabstop = 2   				-- insert 2 spaces for a tab
vim.opt.cursorline = false		-- highlight the current line
vim.opt.number = true		  		-- set numberd lines
vim.opt.relativenumber = true	-- set relative numbered lines
vim.opt.numberwidth = 4             -- set number column width to 2 {default 4}
vim.opt.signcolumn = "yes"			-- always show the sign column, otherwise it would shift the text each time
vim.opt.wrap = false				-- display lines as one long line
vim.opt.scrolloff = 4				-- scroll off the end of file by nambers
vim.opt.sidescrolloff = 8			-- is one of my favorit, for side scrolling or wirtting

-- vim.cmd "" or [[]] for passing vimScript via lua
vim.cmd [[let b:man_default_sections = '3,2']]  -- let default pages related to programming
vim.cmd [[set nrformats+=alpha]]    -- for increament chars see :h change.txt -> line 409
vim.cmd [[set iskeyword+=-]]		-- let vim assumes any wodrds sperated by hiphen(-) is a word (e.i codex-do)
vim.cmd [[set guicursor=i-n-c-ci-cr-v-ve-o-r-sm:block]] -- set the cursor shape in all the mode block cursor(||)
vim.cmd [[let g:loaded_perl_provider = 0]] -- disable perl provider warning
vim.cmd [[let g:loaded_ruby_provider = 0]] -- disable perl provider warning
-- vim.cmd[[:intro ]] -- display the intro
