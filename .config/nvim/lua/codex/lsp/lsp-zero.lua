require("lsp-zero")
local lsp = require("lsp-zero")
lsp.preset("recommended")
lsp.setup()
lsp = {
	set_sources = "lsp",
	set_basic_mappings = true,
	set_extra_mappings = false,
	use_luasnip = true,
	use_nvim_lsp = true,
	set_format = true,
	documentation_window = true,
}
