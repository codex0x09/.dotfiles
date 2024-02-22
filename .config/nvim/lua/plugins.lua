-- you must visit packer repo for more info and Search: (lazy load)
local fn = vim.fn
local install_path = fn.stdpath "data" .. "/site/pack/packer/start/packer.nvim"
if fn.empty(fn.glob(install_path)) > 0 then
  PACKER_BOOTSTRAP = fn.system {
    "git",
    "clone",
    "--depth",
    "1",
    "https://github.com/wbthomason/packer.nvim",
    install_path,
  }
  print "Installing packer close and re-open Neovim codex (>^.^<)"
  vim.cmd [[packadd packer.nvim]]
end
----------------------------------------
-- [[        Packer Settings         ]] --
----------------------------------------
-- Autocommand that reloads neovim whenever you save the plugins.lua file
vim.cmd [[
 augroup packer_user_config
 autocmd!
 autocmd BufWritePost plugins.lua source <afile> | PackerSync
 augroup end
 ]]

----------------------------------------
--Use a protected call so we don't error out on first use
-- we can simply do; local packer = require("packer"). But the following better
local status_ok, packer = pcall(require, "packer")
if not status_ok then
  return print "there is some problem look at plugins.lua"
end
----------------------------------------
packer.init {
--{{{ codex: I added in 10.feb.2034, so removet if it didn't work well, it from yuiky
  opt_defualt = true, -- Default to using opt (as opposed to start) plugins/ it doesn't work :-[
--}}}
  display = {  -- Have packer use a popup window { See :hlep packer }
    open_fn = function()
      return require("packer.util").float { border = "rounded" }
    end
  },
  max_jobs = 7, -- Limit the number of simultaneous jobs. nil means no limit
  preview_updates = false, -- If true, always preview updates before choosing which plugins to update, same as `PackerUpdate --preview`.
}
---------------------------------------------------------------------------------------
--[[        Auto-Install  Packer    ]]
return require('packer').startup(function(use)
   -- Have packer manage itself
  use {
    'wbthomason/packer.nvim',
    --{{{ codex:
    opt = false
    --}}}
}
  ---------------------------------------------------------------------------------------
  -- Helper Plugins for Other Plugnis
  use 'nvim-lua/popup.nvim'      -- An implementation of the Popup API from vim in Neovim
  use 'nvim-lua/plenary.nvim'    -- Useful lua functions used by lots of plugins
  ---------------------------------------------------------------------------------------
  -- [[      My Plugins     ]] --
  -- Themes
  --  use { '~/.config/nvim/awesome-vim-colorschemes/', opt = true }
  use 'Mofiqul/vscode.nvim'   -- vscode theme
  use 'folke/tokyonight.nvim'
  use 'sainnhe/gruvbox-material'
  use 'craftzdog/solarized-osaka.nvim'
  -- use { "catppuccin/nvim", as = "catppuccin" }
  -- use 'sainnhe/everforest'
  -------------------------------------------------------------------
  -- Plugins
  use { 'kyazdani42/nvim-tree.lua', tag = "*", run = ':NvimTreeToggle' }
  use 'nvim-tree/nvim-web-devicons'
  use {
    'akinsho/bufferline.nvim', tag = "*",
    requires = 'nvim-tree/nvim-web-devicons'
  }
  use {
    'nvim-lualine/lualine.nvim',
    requires = { 'nvim-tree/nvim-web-devicons', opt = true }
  }
  --Tagbar for code navigation
  use { 'preservim/tagbar', run = ':tagbar' }
  use 'dstein64/vim-startuptime'
  -- Tmux
  use 'christoomey/vim-tmux-navigator' -- Navigation Between Tmux/N-Vim using [Vi] Motion
  use 'tpope/vim-obsession' -- Allwos Tmux Saves N-Vi-M Sessions
  -- Highlight Documantation
  use { 'nvim-treesitter/nvim-treesitter', run = ':TSUpdate' }   --Treesitter run = 'TSUpdate'
  use 'RRethy/vim-illuminate'                                    --Highlight Documantation{vars name ,ect}
  use 'nvim-treesitter/playground'                               -- Useful for developing {plugins/themes}
  use 'norcalli/nvim-colorizer.lua'
  use { "shellRaining/hlchunk.nvim" }
  -- Git
  use 'lewis6991/gitsigns.nvim' --use 'tpope/vim-fugitive'
  -------------------------------------------------------------------
  --[[##########  -- lSP Zone  --    #############]]
  -- LSP
  use 'VonHeikemen/lsp-zero.nvim'
  use 'neovim/nvim-lspconfig'   -- enable LSP
  use 'williamboman/mason.nvim'
  use 'williamboman/mason-lspconfig.nvim'
  -- Autocompletion
  use 'hrsh7th/nvim-cmp'           -- The main completion plugin {main}
  use 'hrsh7th/cmp-buffer'         -- buffer completions {cmp extension}
  use 'hrsh7th/cmp-path'           -- path completions {cmp extension}
  use 'hrsh7th/cmp-cmdline'        -- vim commands(:) completions
  use 'hrsh7th/cmp-nvim-lsp'       -- path completions {cmp extension}
  use 'saadparwaiz1/cmp_luasnip'   -- snippet completions {cmp extension}
  use 'hrsh7th/cmp-nvim-lua'
  --use 'hrsh7th/cmp-nvim-lsp-signature-help'
  use 'ray-x/lsp_signature.nvim' -- signature(functions arrags completion)
  -- Snippets
  use 'L3MON4D3/LuaSnip'               -- snippet engine
  use 'rafamadriz/friendly-snippets'   -- a bunch of snippets to use
  -------------------------------------------------------------------
  -- Automatically set up your configration after clonig packer.nvim
  -- Put this at the end after all plugins.
  if PACKER_BOOTSTRAP then
    require('packer').sync()
  end
end)
