--------------------------------------
--[[        Auto-Install  Lazy    ]]--
--------------------------------------
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable", -- latest stable release
    lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)
---------------------------------------

--------------------------------------
-- [[       Lazy Install         ]] --
--------------------------------------
  local plugins = {
  -- Helper Plugins for Other Plugnis
  'nvim-lua/popup.nvim',      -- An implementation of the Popup API from vim in Neovim
  'nvim-lua/plenary.nvim',    -- Useful lua functions used by lots of plugins
  'nvim-tree/nvim-web-devicons',
  ---------------------------------------------------------------------------------------
  -- [[     DASHBOARDS     ]] --
  {
    "goolord/alpha-nvim",
    event = "VimEnter",
    dependencies = {
      "nvim-tree/nvim-web-devicons"
    },
  },

  -- [[     THEMES     ]] --
  --
  --   { '~/.config/nvim/awesome-vim-colorschemes/', opt = true }
  'Mofiqul/vscode.nvim',   -- vscode theme
  'folke/tokyonight.nvim',
  'sainnhe/gruvbox-material',
  'craftzdog/solarized-osaka.nvim',
  --  { "catppuccin/nvim", as = "catppuccin" }
  --  'sainnhe/everforest'
  -------------------------------------------------------------------
  -- [[     FILE BROWSERS     ]] --
  {
    'nvim-telescope/telescope.nvim', tag = '0.1.5',
    -- or                          , tag = '0.1.x',
    dependencies = { 'nvim-lua/plenary.nvim' }
  },
  --[[
  {
    "nvim-tree/nvim-tree.lua"
  },
  --]]
  {
    "nvim-neo-tree/neo-tree.nvim",
    branch = "v3.x",
    dependencies = {
      "nvim-lua/plenary.nvim",
      "nvim-tree/nvim-web-devicons",
      "MunifTanjim/nui.nvim",
    }
  },
  {
    'akinsho/bufferline.nvim', version = "*",
    dependencies = 'nvim-tree/nvim-web-devicons'
  },
  {
    'nvim-lualine/lualine.nvim',
    dependencies = { 'nvim-tree/nvim-web-devicons', lazy = true }
  },
  --Tagbar for code navigation
  { 'preservim/tagbar', build = ':tagbar' },
  'dstein64/vim-startuptime',
  -- Tmux
  'christoomey/vim-tmux-navigator', -- Navigation Between Tmux/N-Vim using [Vi] Motion
  'tpope/vim-obsession', -- Allwos Tmux Saves N-Vi-M Sessions
  -- Highlight Documantation
  { 'nvim-treesitter/nvim-treesitter', build = ':TSUpdate' },   --Treesitter build = 'TSUpdate'
  'RRethy/vim-illuminate',                                    --Highlight Documantation{vars name ,ect}
  'nvim-treesitter/playground',                               -- Useful for developing {plugins/themes}
  'norcalli/nvim-colorizer.lua',
  { "shellRaining/hlchunk.nvim" },
  -- Git
  'lewis6991/gitsigns.nvim', --use 'tpope/vim-fugitive'
  -------------------------------------------------------------------
  --[[##########  -- lSP Zone  --    #############]]
  -- LSP
  'VonHeikemen/lsp-zero.nvim',
  'williamboman/mason.nvim',
  'williamboman/mason-lspconfig.nvim',
  'WhoIsSethDaniel/mason-tool-installer.nvim',
  'neovim/nvim-lspconfig',   -- enable LSP
  -- Autocompletion
  'hrsh7th/nvim-cmp',           -- The main completion plugin {main}
  'hrsh7th/cmp-buffer',         -- buffer completions {cmp extension}
  'hrsh7th/cmp-path',           -- path completions {cmp extension}
  'hrsh7th/cmp-cmdline',        -- vim commands(:) completions
  'hrsh7th/cmp-nvim-lsp',       -- path completions {cmp extension}
  'saadparwaiz1/cmp_luasnip',   -- snippet completions {cmp extension}
  'hrsh7th/cmp-nvim-lua',
  -- 'hrsh7th/cmp-nvim-lsp-signature-help'
  { 'ray-x/lsp_signature.nvim', commit = 'c9dc249' }, -- signature(functions arrags completion)
  -------------------------------------------------------------------

  --[[ UI-Improvements and Notifications ]] --
  --[[
  { 'nvimdev/lspsaga.nvim', -- Improroves the Neovim build-in LSP (and gives top info at line 0)
    dependencies = {
      'nvim-treesitter/nvim-treesitter', -- optional
      'nvim-tree/nvim-web-devicons'     -- optional
    },
  },
  --]]
  --{'mrded/nvim-lsp-notify'},
  --{'rcarriga/nvim-notify'},
  -------------------------------------------------------------------

  -- Snippets
  'L3MON4D3/LuaSnip',               -- snippet engine
  'rafamadriz/friendly-snippets',   -- a bunch of snippets to use
  -------------------------------------------------------------------
}
local opts = {}
require("lazy").setup(plugins,opts)
