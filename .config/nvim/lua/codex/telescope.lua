local ok, builtin = pcall(require, "telescope.builtin")
if not ok then
	print("telescope.lua: telescope not install")
	return
end

vim.keymap.set("n", "<leader>ff", builtin.find_files, {})
vim.keymap.set("n", "<leader>fg", builtin.git_files, {})
vim.keymap.set("n", "<leader>b", builtin.buffers, {})
vim.keymap.set("n", "<leader>fh", builtin.help_tags, {})
vim.keymap.set("n", "<leader>fk", builtin.keymaps, {})
--vim.keymap.set('n', '<leader>fg', builtin.live_grep, {})

--[[ __________________Telescope_Extensions_________________ ]] --

--[[
-- install this plugin firs "nvim-telescope/telescope-ui-select.nvim"
-- to enable lsp diagnostics use telescope
local telescope = builtin
local telescope_themes = require("telescope.themes")
telescope.setup({
  extensions = {
    ["ui-select"] = {
      telescope_themes.get_dropdown { }
    }
  }
})
telescope.load_extension("ui-select")

--]]
