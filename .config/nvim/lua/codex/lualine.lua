--[[===================================    CONFIGRATIONS    ===================================]]
-- the themes in ./codex/themes/lualine_themes.lua
local theme = require("codex.themes.lualine_themes")
require("lualine").setup({
	options = {
		theme = theme.gruvbox, -- or string value ->  "auto",
		icons_enabled = true,
		section_separators = { left = "", right = "" }, -- { left = '', right = ''}, or -- { left = '', right = '' }
		component_separators = { left = "", right = "" }, -- { left = '', right = ''} , or -- { left = "▎", right = "▎" }
		disabled_filetypes = {
			statusline = {},
			winbar = {},
		},
		ignore_focus = {},
		always_divide_middle = true,
		globalstatus = false,
		refresh = {
			statusline = 1000,
			tabline = 1000,
			winbar = 1000,
		},
	},
	sections = {
		lualine_a = { "mode" },
		lualine_b = { "branch" },
		lualine_c = {
			-- Diff(Git Signify)
			{
				"diff",
				colored = true, -- Displays a colored diff status if set to true
				symbols = { added = "   ", modified = " ", removed = " " }, -- Changes the symbols used by the diff.

				source = nil, -- A function that works as a data source for diff.
			},
			-- Filename Section
			{
				"filename",
				file_status = true, -- Displays file status (readonly status, modified status)
				newfile_status = false, -- Display new file status (new file means no write after created)
				path = 0, -- 0: Just the filename, see docs(:h) for more
				symbols = {
					modified = "  ", -- Text to show when the file is modified.
					readonly = " ", -- Text to show when the file is non-modifiable or readonly.
					unnamed = "[No Name] ", -- Text to show for unnamed buffers.
					newfile = "[New]", -- Text to show for newly created file before first write
				},
			},
			-- Diagnostics Section
			{
				"diagnostics",
				sources = { "nvim_diagnostic" },
				-- Displays diagnostics for the defined severity types
				sections = { "error", "warn", "info", "hint" },
				symbols = { error = " ", warn = " ", info = " ", hint = " " },
				colored = true, -- Displays diagnostics status in color if set to true.
				update_in_insert = true, -- Update diagnostics in insert mode.
				always_visible = false, -- Show diagnostics even if there are none.
			},
		},
		-- lualine_x = { "encoding", "fileformat", "filetype" },
		lualine_x = {
			{
				"searchcount",
				maxcount = 999,
				timeout = 500,
			},
			{
        -- File-Type
				"filetype",
				colored = true, -- Displays filetype icon in color if set to true
				icon_only = false, -- Display only an icon for filetype
				icon = { align = "left" }, -- Display filetype icon on the right hand side
			},
			"fileformat",
			"encoding",
		},
		lualine_y = { "progress" },
		lualine_z = { "location" },
	},
	inactive_sections = {
		lualine_a = {},
		lualine_b = {},
		lualine_c = {
			{
				"filename",
				file_status = true, -- Displays file status (readonly status, modified status)
				newfile_status = false, -- Display new file status (new file means no write after created)
				path = 0, -- 0: Just the filename, see docs(:h) for more
				symbols = {
					modified = "  ", -- Text to show when the file is modified.
					readonly = " ", -- Text to show when the file is non-modifiable or readonly.
					unnamed = "[No Name] ", -- Text to show for unnamed buffers.
					newfile = "[New]", -- Text to show for newly created file before first write
				},
			},
		},
		lualine_x = { "location" },
		lualine_y = {},
		lualine_z = {},
	},
})
