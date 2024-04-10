local ok, comment = pcall(require, "Comment")
if not ok then
	print("comment.lua: install me")
	return
end

comment.setup({
	---Add a space b/w comment and the line
	padding = true,
	---Whether the cursor should stay at its position
	sticky = true,
	---Lines to be ignored while (un)comment
	ignore = nil,
	---LHS of toggle mappings in NORMAL mode
	toggler = {
		---Line-comment toggle keymap
		--line = "gcc",
		line = "g;",
		---Block-comment toggle keymap
		--block = "gbc",
		block = "g'",
	},
	---LHS of operator-pending mappings in NORMAL and VISUAL mode
	opleader = {
		---Line-comment keymap
		line = "gc",
		---Block-comment keymap
		block = "gb",
	},
	---LHS of extra mappings
	extra = {
		---Add comment on the line above
		--above = "gcO",
		above = "<leader>gk",
		---Add comment on the line below
		--below = "gco",
		below = "<leader>gj",
		---Add comment at the end of line
		--eol = "gcA",
		eol = "ga", -- However "ga" orginally mapped to ":as[cii]" see :h ga
	},
	---Enable keybindings
	---NOTE: If given `false` then the plugin won't create any mappings
	mappings = {
		---Operator-pending mapping; `gcc` `gbc` `gc[count]{motion}` `gb[count]{motion}`
		basic = true,
		---Extra mapping; `gco`, `gcO`, `gcA`
		extra = true,
	},
	---Function to call before (un)comment
	pre_hook = nil,
	---Function to call after (un)comment
	post_hook = nil,
})
