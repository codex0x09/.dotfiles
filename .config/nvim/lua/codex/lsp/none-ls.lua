local null_ls = require("null-ls")

-- setting lsps to aim on specific jobs
null_ls.setup({
	sources = {
		-- formatters
		null_ls.builtins.formatting.stylua,
		-- daigonistics
	},
})
