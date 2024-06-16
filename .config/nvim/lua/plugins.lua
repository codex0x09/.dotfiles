--------------------------------------
-- [[        Auto-Install  Lazy    ]] --
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
	"nvim-lua/popup.nvim", -- An implementation of the Popup API from vim in Neovim
	"nvim-lua/plenary.nvim", -- Useful lua functions used by lots of plugins
	"nvim-tree/nvim-web-devicons",
	---------------------------------------------------------------------------------------
	-- [[     DASHBOARDS     ]] --
	--[[ {
		"goolord/alpha-nvim",
		event = "VimEnter",
		dependencies = {
			"nvim-tree/nvim-web-devicons",
		},
	}, ]]

	-- [[     THEMES     ]] --
	--
	--   { "~/.config/nvim/awesome-vim-colorschemes/", opt = true }
	"Mofiqul/vscode.nvim", -- vscode theme
	"folke/tokyonight.nvim",
	{ "sainnhe/gruvbox-material", commit = "479150e" },
	"craftzdog/solarized-osaka.nvim",
	{ "catppuccin/nvim", name = "catppuccin", priority = 1000 },
	--  "sainnhe/everforest"
	-------------------------------------------------------------------
	-- [[     LiVE SERVER       ]] --
  { "wolandark/vim-live-server" },
	-- [[     FILE BROWSERS     ]] --
	{
		"nvim-telescope/telescope.nvim",
		tag = "0.1.5",
		-- or                          , tag = "0.1.x",
		dependencies = { "nvim-lua/plenary.nvim" },
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
		},
	},
	{
		"akinsho/bufferline.nvim",
		version = "v4.5.*",
		dependencies = "nvim-tree/nvim-web-devicons",
	},
	{
		"nvim-lualine/lualine.nvim",
		dependencies = { "nvim-tree/nvim-web-devicons", lazy = true },
	},
	-- [[  Tagbar for code navigation   ]] --
	{ "preservim/tagbar", build = ":tagbar" },
	"dstein64/vim-startuptime",
	-- [[  Tmux   ]] --
	"christoomey/vim-tmux-navigator", -- Navigation Between Tmux/N-Vim using [Vi] Motion
	"tpope/vim-obsession", -- Allwos Tmux Saves N-Vi-M Sessions
	-- [[  Highlight Documantation   ]] --
	{ "nvim-treesitter/nvim-treesitter", build = ":TSUpdate", lazy = false }, --Treesitter build = "TSUpdate"
	"RRethy/vim-illuminate", --Highlight Documantation{vars name ,ect}
	"nvim-treesitter/playground", -- Useful for developing {plugins/themes}
	"norcalli/nvim-colorizer.lua",
	{ "shellRaining/hlchunk.nvim" },
	-- [[    Git     ]] --
	"lewis6991/gitsigns.nvim", --use "tpope/vim-fugitive"
	-- [[  Commnet   ]] --
	{
		"numToStr/Comment.nvim",
		event = "VeryLazy",
	},
	-- [[  Nvim-Surround   ]] --
	{
		"kylechui/nvim-surround",
		version = "*",
		event = "VeryLazy",
	},
	-------------------------------------------------------------------
	--[[##########  -- lSP Zone  --    #############]]
	-- LSP
	--"nvimtools/none-ls.nvim", -- Allwos you to specify which lsp-tools do the action you want.[not that powerful]
	{
		"mfussenegger/nvim-lint", -- Allwos you to specify which lsp/lsptools do the action you want.[powerful]
		event = {
			"BufReadPre",
			"BufNewFile",
		},
	},
	{
		"stevearc/conform.nvim",
		event = {
			"BufReadPre",
			"BufNewFile",
		},
	},

	{ -- Core Language Servers --
		"VonHeikemen/lsp-zero.nvim",
		"neovim/nvim-lspconfig",
		"williamboman/mason.nvim",
		"williamboman/mason-lspconfig.nvim",
		"WhoIsSethDaniel/mason-tool-installer.nvim",
		event = "VeryLazy",
	},
	-- Autocompletion
	{
		"hrsh7th/nvim-cmp", -- The main completion plugin {main}
		dependencies = {
			"hrsh7th/cmp-nvim-lsp",
			"hrsh7th/cmp-nvim-lua", -- completions for built in vim apis/functions within nvim
			"saadparwaiz1/cmp_luasnip", -- for lua autocompletion
			"hrsh7th/cmp-buffer", -- buffer completions {cmp extension}
			"hrsh7th/cmp-path", -- path completions {cmp extension}
			"hrsh7th/cmp-cmdline", -- vim commands(:) completions
		},
		event = "VeryLazy",
		-- "hrsh7th/cmp-nvim-lsp-signature-help"
	},
	{
		"L3MON4D3/LuaSnip", -- snippet engine
		dependencies = {
			"rafamadriz/friendly-snippets", -- a bunch of snippets to use by LuaSnip plugin
		},
		event = "VeryLazy",
	},
	{ "ray-x/lsp_signature.nvim", commit = "c9dc249" }, -- signature(functions arrags completion)

	-------------------------------------------------------------------
	--[[ UI-Improvements and Notifications ]]

  -- UI
	{
		-- lspSaga release neovim nightly version, else many feature won't work!!.
		"codex0x09/lspsaga.nvim",

		-- Three ways to lazy load lspsaga
		after = "nvim-lspconfig",

		-- event = "LspAttach"
		-- ft = {"c", "cpp", "hpp", "lua"},
	},
  -- Notifications
  --[[ {
    "arkav/lualine-lsp-progress",
  }, ]]
  -- uncomment this block and do for their config in 'nvim/init.lua'
	--[[ {
		"rcarriga/nvim-notify",
		lazy = false,
	},
  {
    "folke/noice.nvim",
    lazy = false,
  }, ]]
	-------------------------------------------------------------------
}
local opts = {}
require("lazy").setup(plugins, opts)
