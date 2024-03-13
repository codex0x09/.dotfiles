--[[ Shorten functions Name ]]--

local opts = { noremap = true, silent = true }

--local term_opts = { silnet = true }

local keymap = vim.api.nvim_set_keymap


-- Remap Space as leader key
keymap("", "<Space>", "<Nop>", opts)
vim.g.mapleader = " "
vim.g.maplocalleader = " "
------------------------------------------------------
--[[               ** MODEs **
normal_MODE = "n"
insert_MODE = "i"
visual_MODE = "v"
visual_block_MODE = "x"
terminal_MODE = "t"
command_MODE = "c"
]]
------------------------------------------------------

--[[##########   -- NORMAL MODE  --    #############]]

--[[##########  -- Man Page --    #############]]
keymap("n", "<leader>m", ":Man ", {}) -- its parameter is ~/.astylerc (sourced)


--[[##########  -- Astyle --    #############]]
--keymap("n", "<leader>g", "ma<Cmd>%!astyle<CR>'a", opts)                                                 -- its parameter is ~/.astylerc (sourced)
keymap("n", "<leader>g", "ma<Cmd>%!astyle --style=java --keep-one-line-blocks  --pad-oper<cr>'a", opts) -- takes arguments only

--[[##########  -- Prettier Format --    #############]]
--keymap("n", "<leader>p", "mp<Cmd>silent %!prettier --stdin-filepath %<CR>'p", opts)

--[[##########  -- Lsp Zero Format --    #############]]
keymap("n", "<leader>=", "<Cmd>LspZeroFormat<CR>", opts) -- takes arguments only

--[[##########  -- Lsp Code Action  --    #############]]
keymap("n", "gk", "<Cmd>lua vim.lsp.buf.hover()<CR>", opts) -- lsp hover
keymap("n", "go", '<cmd>lua vim.diagnostic.open_float()<CR>', opts)

--[[##########  -- Open All Lsp Operations --    #############]]
keymap("n", "gl", ":lua vim.lsp.buf", {}) -- replace 'opts'with'{}' to show the command

--[[##########  -- Open Nvim-Tree --    #############]]
--keymap("n", "<leader>e", "<Cmd>NvimTreeToggle<CR>", opts)

--[[##########  -- Open Config Tree --    #############]]
keymap("n", "<leader>'", "<Cmd>sp|resize 10|e ~/.config/nvim/lua<CR>", opts)

--[[##########  -- Changing Themes --    #############]]
keymap("n", "'t", "<Cmd>sp|resize 10|e ~/.config/nvim/lua/codex/themes/init.lua<CR>", opts)

--[[##########  -- Toggle Indent Blankline --    #############]]
keymap("n", "jt", "<Cmd>DisalbeHl<CR>", opts)
keymap("n", "jr", "<Cmd>DisalbeHl<CR>", opts)

-- uncomment / comment
keymap("n", "<leader>/", "<Cmd>set formatoptions-=cro<CR>", opts)
keymap("n", "<leader>\\", "<Cmd>set formatoptions+=cro<CR>", opts)


-- <C-f> EX-Mode Buffer
keymap("n", "jf", ":<C-f>", opts)

-- Fold / Unfold
--keymap("n", "<leader>f", "$zf%", opts)
keymap("v", "<leader>f", "zf", opts)
keymap("n", "<leader>a", "za", opts)

-- Remove Cursorline/ Set Cursorline
keymap("n", "<leader><Space>", "<Cmd>set nocursorline<CR>", opts)
keymap("n", "<leader>c", "<Cmd>set cursorline<CR>", opts)

-- Split Windows
keymap("n", "<leader>s", ":sp<CR>", opts)
keymap("n", "<leader>v", ":vsp<CR>", opts)

-- Zooming Windows
keymap("n", "<leader>h", "<C-w><bar>", opts)
keymap("n", "<leader>jk", "<C-w>_", opts)
keymap("n", "<leader>k", "<C-w>=", opts)
keymap("n", "jz", "<C-w>_<C-w><bar>", opts)

--Changing windows from Horiz to vert and vise versa
keymap("n", "ht", "<C-w>t<C-w>H", opts)
keymap("n", "kt", "<C-w>t<C-w>K", opts)

--Swap windows in different directions
keymap("n", "<leader>r", "<C-w>R", opts)

-- Better Window Navigation
keymap("n", "<C-h>", "<C-w>h", opts)
keymap("n", "<C-j>", "<C-w>j", opts)
keymap("n", "<C-k>", "<C-w>k", opts)
keymap("n", "<C-l>", "<C-w>l", opts)

-- Resize with [(holding) Alt] + [h j k l]
-- we can use M or A for [Alt key]
keymap("n", "<M-k>", ":resize -2<CR>", opts)          -- Up
keymap("n", "<M-j>", ":resize +2<CR>", opts)          -- Down
keymap("n", "<M-h>", ":vertical resize +2<CR>", opts) -- Left
keymap("n", "<M-l>", ":vertical resize -2<CR>", opts) -- Right

-- Navigate Tabs
keymap("n", "tn", ":tabnew<CR>", opts)
keymap("n", "tk", ":tabnext<CR>", opts)
keymap("n", "tj", ":tabprevious<CR>", opts)

-- Navigate Buffers
keymap("n", "<TAB>", "<Cmd>bnext<CR>", opts)
keymap("n", "<S-TAB>", "<Cmd>bprevious<CR>", opts)
--keymap("n", "<S-h>", "<Cmd>bprevious<CR>", opts)
--keymap("n", "<S-l>", "<Cmd>bnext<CR>", opts)
-- List All Buffers and Able Navigate
---@_set_opt_to_"{}"_display_the_:b_cmd
keymap("n", "<leader>l", ":ls<CR>:b", {})
-- Close Buffers
--keymap("n", "<S-h>", "<Cmd>BufferLineCloseLeft<CR>", opts)
--keymap("n", "<S-l>", "<Cmd>BufferLineCloseRight<CR>", opts)

-- Open terminal in split
keymap("n", "<leader>t", ":botright sp|resize 10|set nu! rnu!|terminal<CR>", opts)

-- Remove Search Highlighting
keymap("n", "<leader>n", ":nohls<CR>", opts)
-- Center The Cursor when Navigate Search with 'n' and 'N'
keymap("n", "n", "nzz", opts)
keymap("n", "N", "Nzz", opts)

-- Center The Cursor when Navigate Search with '#' and '*'
-- "#" and "*" search for words under Cursor,'#':backword '*':forword
keymap("n", "#", "#zz", opts)
keymap("n", "*", "*zz", opts)

------------------------------------------------------

--[[##########   -- INSERT  MODE --    #############]]
-- Press jk fast to enter [[ ESC ]]
keymap("i", "jk", "<ESC>", opts)
------------------------------------------------------

--[[##########  -- Visual MODE  --    #############]]
-- Press jk fast to enter [[ ESC ]]
keymap("v", "jk", "<ESC>", opts)

-- Stay in indent MODE
keymap("v", "<", "<gv", opts)
keymap("v", ">", ">gv", opts)

-- Momve text Up and Down
keymap("v", "<A-j>", ":m .+1<CR>=", opts)
keymap("v", "<A-k>", ":m .-2<CR>=", opts)
keymap("v", "p", '"_dP', opts)
------------------------------------------------------

--[[##########  -- Visual Block MODE  --    #############]]
-- Press jk fast to enter [[ ESC ]]
keymap("x", "jk", "<ESC>", opts)

-- Momve text Up and Down
keymap("x", "J", ":move '>+1<CR>gv-gv'", opts)
keymap("x", "K", ":move '<-2<CR>gv-gv'", opts)
keymap("x", "<A-j>", ":move '>+1<CR>gv-gv'", opts)
keymap("x", "<A-k>", ":move '<-2<CR>gv-gv'", opts)
------------------------------------------------------

--[[##########  -- Terminal MODE --    #############]]
-- Escap form the termial easly
keymap("t", "fj", "<C-\\><C-n>", opts)

-- Bertter terminal mavigation
keymap("t", "<C-h>", "<C-\\><C-n><C-w>h", opts)
keymap("t", "<C-j>", "<C-\\><C-n><C-w>j", opts)
keymap("t", "<C-k>", "<C-\\><C-n><C-w>k", opts)
keymap("t", "<C-l>", "<C-\\><C-n><C-w>l", opts)
------------------------------------------------------

--[[##########  -- Commsnd  MODE --    #############]]
-- Press jk fast to enter [[ ESC ]]
keymap("c", "jk", "<ESC>", opts)
------------------------------------------------------

--[[##########  -- Tagbar --    #############]]
keymap("n", "<leader>[", ":TagbarToggle<cr>", opts)
-----------------------------------------------------
