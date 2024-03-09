local ok , neo_tree = pcall(require, "neo-tree")
if not ok then
  return
end
-- If you want icons for diagnostic errors, you'll need to define them somewhere:
neo_tree.setup({
vim.keymap.set('n','<leader>e', ':Neotree filesystem reveal left toggle<CR>',{ silent = true}),
  default_component_configs = {
    diagnostics = {
      symbols = {
        hint = "󰌵",
        info = "",
        warn = "",
        error = " ",
      },
      highlights = {
        hint = "DiagnosticSignHint",
        info = "DiagnosticSignInfo",
        warn = "DiagnosticSignWarn",
        error = "DiagnosticSignError",
      },
    },
  }
})
