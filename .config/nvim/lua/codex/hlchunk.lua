require("hlchunk").setup({
	chunk = {
		enable = true,
		notify = true,
		use_treesitter = true,
		-- details about support_filetypes and exclude_filetypes in https://github.com/shellRaining/hlchunk.nvim/blob/main/lua/hlchunk/utils/filetype.lua
		-- support_filetypes = ft.support_filetypes,
		--exclude_filetypes = ft.exclude_filetypes,
		chars = {
			horizontal_line = "─",
			vertical_line = "│",
			left_top = "╭",
			left_bottom = "╰",
			right_arrow = ">",
		},
		style = {
			--{ fg = "#806d9c" },
			{ fg = "#c21f30" }, --  this fg is used to highlight good chunk
			{ fg = "#efaf00" }, -- this fg is used to highlight bad chunk
		},
		textobject = "",
		max_file_size = 1024 * 1024,
		error_sign = true,
	},

	indent = {
		enable = true,
		use_treesitter = true,
		chars = {
			"│",
		},
		style = {
			{ fg = vim.fn.synIDattr(vim.fn.synIDtrans(vim.fn.hlID("Whitespace")), "fg", "gui") },
		},
	},

	line_num = {
		enable = false,
		use_treesitter = false,
		--    style = "#cc7000", -- For Gruvbox vimy
		--[[
    style = "#efaf00", -- For Gruvbox vimy
    style = "#bbbbbb", -- for all themes
    style = "#df2a2a",
    style = "#806d9c",
  --]]
	},

	blank = {
		enable = true,
		chars = {
			" ",
		},
		style = {
			vim.fn.synIDattr(vim.fn.synIDtrans(vim.fn.hlID("Whitespace")), "fg", "gui"),
		},
	},
})
