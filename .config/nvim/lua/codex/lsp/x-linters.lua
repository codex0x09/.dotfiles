local ok, lint = pcall(require, "lint")
if not ok then
	return
end

lint.linters_by_ft = {
	-- systems dev
	bash = { "shellcheck" },
	sh = { "shellcheck" },
	vim = { "vint" },
	-- web dev
	javascript = { "eslint_d", "codespell" },
	typescript = { "eslint_d", "codespell" },
	javascriptreact = { "eslint_d", "codespell" },
	typescriptreact = { "eslint_d", "codespell" },
	json = { "eslint_d", "codespell" },
	markdown = { "eslint_d", "codespell" },
	css = { "eslint_d", "codespell" },
	scss = { "eslint_d", "codespell" },
	html = { "htmlhint", "codespell" },
	php = { "phpmd", "codespell" },
}

local lint_augroup = vim.api.nvim_create_augroup("lint", { clear = true })

vim.api.nvim_create_autocmd({ "BufEnter", "BufWritePost", "InsertLeave" }, {
	group = lint_augroup,
	callback = function()
		lint.try_lint()
	end,
})

vim.keymap.set("n", "<leader>ll", function()
	print("-*- your Linters Loaded Manually -*-")
	lint.try_lint()
end, { desc = "Trigger Linting for current File" })
