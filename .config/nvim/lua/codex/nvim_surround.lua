local ok, surround = pcall(require, "nvim-surround")
if not ok then
	print("nvim_surround.lua: install me")
	return
end

-- see :h nvim_surround ; for usage, config and more!!
surround.setup({
	keymaps = {
		insert = "<C-g>s",
		insert_line = "<C-g>S",
		normal = "ys",
		normal_cur = "yss",
		normal_line = "yS",
		normal_cur_line = "ySS",
		visual = "S",
		visual_line = "gS",
		delete = "ds",
		change = "cs",
		change_line = "cS",
	},
})
