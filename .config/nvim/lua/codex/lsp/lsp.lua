local lsp = require('lsp-zero')
lsp.preset('recommended')
lsp.setup()
lsp = {
  set_sources = 'lsp',
  set_basic_mappings = true,
  set_extra_mappings = false,
  use_luasnip = true,
  use_nvim_lsp = true,
  set_format = true,
  documentation_window = true,
}
require 'lspconfig'.lua_ls.setup {
  settings = {
    Lua = {
      runtime = {
        -- Tell the language server which version of Lua you're using (most likely LuaJIT in the case of Neovim)
        version = 'LuaJIT',
      },
      diagnostics = {
        -- Get the language server to recognize the `vim` global
        globals = { 'vim' },
      },
      workspace = {
        -- Make the server aware of Neovim runtime files
        library = vim.api.nvim_get_runtime_file("", true),
        checkThirdParty = false,
      },
      -- Do not send telemetry data containing a randomized but unique identifier
      telemetry = {
        enable = false,
      },
    },
  },
}

--lsp config for  Bash (>^.^<) it's work
--git it in mason and the config form it's repo
--the package name is: bash-language-server; on mason/github

vim.api.nvim_create_autocmd('FileType', {
  pattern = 'sh',
  callback = function()
    vim.lsp.start({
      name = 'bash-language-server',
      cmd = { 'bash-language-server', 'start' },
    })
  end,
})


--Emmet_ls config
local lspconfig = require('lspconfig')
local capabilities = vim.lsp.protocol.make_client_capabilities()
capabilities.textDocument.completion.completionItem.snippetSupport = true

lspconfig.emmet_ls.setup({
    -- on_attach = on_attach,
    capabilities = capabilities,
    filetypes = { "css", "eruby", "html", "javascript", "javascriptreact", "less", "sass", "scss", "svelte", "pug", "typescriptreact", "vue" },
    init_options = {
      html = {
        options = {
          -- For possible options, see: https://github.com/emmetio/emmet/blob/master/src/config.ts#L79-L267
          ["bem.enabled"] = true,
        },
      },
    }
})


--intelephense setup working verywell only by using lines with --*--
--local lspconfig = require "lspconfig" -- lspconfig is defined above at line 53
local util = require "lspconfig/util"
lspconfig.intelephense.setup {
  --cmd = { "intelephense", " --stdio" },-- don't need it, lspconfig.nvim do that
  FileType = { "php", "phpdoc" },
  root_dir = util.root_pattern { "/home/codeman/", "*.php" }
}


--Enable (broadcasting) snippet capability for completion
--[[
local capabilities = vim.lsp.protocol.make_client_capabilities()
capabilities.textDocument.completion.completionItem.snippetSupport = true

require 'lspconfig'.html.setup {
  capabilities = capabilities,
  configurationSection = { "php","html", "css", "javascript" },
  embeddedLanguages = {
    php = true,
    css = true,
    javascript = true,

  }
}
]]


-- autocmd setup it's really powerfull, lsp works only in working/entering buffers
-- if you open buffer(1),then you go to othe tab for instence
-- the lsp for buffer(1) is to disable till you back to it
-- [[
--vim.api.nvim_create_autocmd('FileType', {
--  pattern = { "php", "phpdoc" },
--  callback = function()
--    vim.lsp.start({
--      name = "intelephense",
--      cmd = { "intelephense", " --stdio" }
--      -- 	cmd: /home/codeman/.local/share/nvim/mason/bin/intelephense
--    })
--  end
--})
