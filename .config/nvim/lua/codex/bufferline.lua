local status_ok, bufferline = pcall(require, "bufferline")
if not status_ok then
	return
end

bufferline.setup {
  options = {
    separator_style = "thin",                            -- |"thin" |"thick" | "slant" | { 'any', 'any' },
    numbers = "buffer_id",                               -- | "ordinal" | "buffer_id" | "both",
    show_buffer_close_icons = false,
    show_close_icon = false,
    show_buffer_icons = true,
    indicator_icon = "   ",                              --"▎"  --old value is --"▎"
    diagnostics = "nvim_lsp",                             --| "coc",
    diagnostics_update_in_insert = true,
    diagnostics_indicator = function(count, level)
      local icon = level:match("error") and " " or " "
      return " " .. icon .. count
    end,
    offsets = {
      {
        filetype = "NvimTree",
        text = "CODE_X-0x09",
        highlight = "Directory",
        separator = true -- use a "true" to enable the default, or set your own character
      }
    },
  },
  --[[============================ HIGHLIGHTING - SECTION =================================]]--
  --TODO: see :h bufferline and search for /highlight
  highlights = {
    indicator_selected = {
      fg = '#00ffff',
      --bg = '<colour-value-here>',
    },
  },
}
