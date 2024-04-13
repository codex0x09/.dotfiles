local ok, lspconfig = pcall(require, "lspconfig")
if not ok then
	print("init_lsp_servers.lua: install lspconfig, or write it yourself cody.")
	return
end

-- setup servers

-- systems dev
lspconfig.clangd.setup({})
lspconfig.bashls.setup({})
lspconfig.vimls.setup({})
lspconfig.lua_ls.setup({})
-- web dev
lspconfig.html.setup({})
lspconfig.jsonls.setup({})
lspconfig.emmet_ls.setup({})
lspconfig.tsserver.setup({})
lspconfig.tailwindcss.setup({})
lspconfig.intelephense.setup({})
