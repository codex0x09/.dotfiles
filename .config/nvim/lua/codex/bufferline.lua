local status_ok, bufferline = pcall(require, "bufferline")
if not status_ok then
  return
end


--[[    numbers = "ordinal",       -- | "ordinal" | "buffer_id" | "both" | function({ ordinal, id, lower, raise }): string,
function(opts)
    return string.format('%s|%s', opts.id, opts.raise(opts.ordinal))
  end
--]]

bufferline.setup {
  options = {
    separator_style = "thin", -- |"thin" |"thick" | "slant" | { 'any', 'any' },
    numbers = "buffer_id",       -- | "ordinal" | "buffer_id" | "both",
    show_buffer_close_icons = false,
    show_close_icon = false,
    show_buffer_icons = true,
    indicator_icon = "",                      --"▎"             --old value is --"▎"
    --left_trunc_marker = "",                 -- this add from buf_line_example
    --right_trunc_marker = "",                -- this add from buf_line_example
    underline = false,
    diagnostics = "nvim_lsp",                  --| "coc",
    diagnostics_update_in_insert = true,
    diagnostics_indicator = function(count, level)
      local icon = level:match("error") and " " or " "
      return " " .. icon .. count
    end,
  },
}
