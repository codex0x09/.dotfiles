local theme = "gruvbox-material" -- "gruvbox-material" "molokai" "one" "deep-space" "solarized-osaka"
if (theme == "gruvbox-material") then
  require("codex.themes._gruvbox_material")
  return
elseif (theme == "tokyonight") then
  require("codex.themes._tokyonight")
  return
elseif (theme == "vscode") then
  vim.cmd.colorscheme(theme)
  require("codex.themes._vscode")
  return
elseif (theme == "solarized-osaka") then
  require("solarized-osaka").setup({
    transparent = false, -- Enable this to disable setting the background color
    vim.cmd.colorscheme(theme)
  })
  print("Hey Codex, Enjoy Solarized-osaka \"(>^.^<)\"")
  return
elseif (theme == "elflord") then
  vim.cmd.colorscheme(theme)
  require("codex.themes._elflord")
  print("Hi Codex, your Theme is loaded successfully \"(>^.^<)\"")
  return
else
  vim.cmd.colorscheme(theme)
  vim.cmd [[
  hi! Normal guibg=none
  hi! SignColumn guibg=none
  hi! LineNr guibg=none
  ]]
  print("Hi Codex, your Theme is loaded successfully \"(>^.^<)\"")
end
