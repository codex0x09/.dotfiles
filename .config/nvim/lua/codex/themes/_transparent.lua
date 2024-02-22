function MyAlacritty()
  --[[
    vim.api.nvim_set_hl(0, "Normal", { bg = "none" })
    vim.api.nvim_set_hl(0, "NormalNC", { bg = "none" })
    vim.api.nvim_set_hl(0, "SignColumn", { bg = "none" })
    vim.api.nvim_set_hl(0, "DiagnosticSignError", { bg = "none" })
    vim.api.nvim_set_hl(0, "DiagnosticSignWarn", { bg = "none" })
    vim.api.nvim_set_hl(0, "DiagnosticSignHint", { bg = "none" })
    vim.api.nvim_set_hl(0, "DiagnosticSignInfo", { bg = "none" })
    vim.api.nvim_set_hl(0, "ErrorMsg", { bg = "none" })
    vim.api.nvim_set_hl(0, "GitSignsAddLnVirtLn", { bg = "none" })
    vim.cmd("highlight CursorLineNr guibg=none")
  --]]
  vim.cmd[[hi! Normal guibg=none]]
end
return MyAlacritty()
