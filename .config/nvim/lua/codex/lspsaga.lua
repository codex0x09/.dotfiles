local ok, lspsaga = pcall(require, "lspsaga")
if not ok then
	print("lspsaga.lua: install me")
	return
end

lspsaga.setup({
	-- lightbulb for avalable code_action in current line
	lightbulb = {
		enable = false,
		sign = false,
		virtual_text = false,
	},
	-- dynamically render breadcrumbs symbols in winbar
	breadcrumbs = {
		enable = true,
		separator = " › ",
    hide_keword = false, -- when true some symbols like if and for ,will be ignored
    show_file = true, -- shows file name before symbols
    folder_level = 1, -- shows how many dir layers before the file name
    color_mode = true, -- enable coloring for name/symbols
    delay = 300 -- dynamic render delay
	},
})
