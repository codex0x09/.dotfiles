local ok, conform = pcall(require, "conform")
if not ok then
	return
end

conform.setup({
	formatters_by_ft = {
		-- systems dev
		cpp = { "clang-format" },
		cxx = { "clang-format" },
		hpp = { "clang-format" },
		h = { "clang-format" },
		c = { "clang-format" },
		bash = { "beautysh" },
		sh = { "beautysh" },
		zsh = { "beautysh" },
		csh = { "beautysh" },
		ksh = { "beautysh" },
		lua = { "stylua" },
		-- web dev
		javascript = { { "prettierd" }, { "prettier" } },
		typescript = { { "prettierd" }, { "prettier" } },
		javascriptreact = { { "prettierd" }, { "prettier" } },
		typescriptreact = { { "prettierd" }, { "prettier" } },
		json = { { "prettierd" }, { "prettier" } },
		markdown = { { "prettierd" }, { "prettier" } },
		css = { { "prettierd" }, { "prettier" } },
		scss = { { "prettierd" }, { "prettier" } },
		graphql = { { "prettierd" }, { "prettier" } },
		html = { "htmlbeautifier" },
		sql = { "sqlfmt" },
		php = { "php-cs-fixer" },
	},
})

vim.keymap.set({ "n", "v" }, "<leader>=", function()
	conform.format({
		lsp_fallback = true,
		async = false,
		timeout_ms = 500,
	})
end, { desc = "Format file or rang(in visual mode)" })
