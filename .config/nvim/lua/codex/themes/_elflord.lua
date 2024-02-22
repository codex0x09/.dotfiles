function Elflord()
  --IndentBlanklineChar
  vim.cmd[[ hi! IndentBlanklineChar guifg=#afbfbf guibg=none]]
  vim.cmd[[ hi! link IndentBlanklineSpaceChar IndentBlanklineChar]]
  --[[ Cmp Signs ]]
  --vim.cmd[[ hi! link CmpItemAbbrMatch Function]] --to color matching chars
  vim.cmd[[ hi! CmpItemKind guifg=#799d6a]]
  vim.cmd[[ hi! link CmpItemAbbr Function]] --now it color un-matched
  vim.cmd[[ hi! link CmpItemMenu Operator]]
  --[[ Git Signs ]]
  vim.cmd[[hi! GitSignsAdd guifg=#60ff60]]
  vim.cmd[[hi! link GitSignsChange Comment]]
  vim.cmd[[hi! GitSignsDelete guifg=#ff0000]]
  --[[ Illuminate ]]
  vim.cmd[[hi! IlluminatedWordText gui=bold guibg=#3f3f3f]]
  vim.cmd[[hi!  IlluminatedWordWrite gui=bold guibg=#3f3f3f]]
  vim.cmd[[hi!  IlluminatedWordRead gui=bold guibg=#3f3f3f]]
  --[[ HTML ]]
  vim.cmd[[hi!  htmlTag gui=bold guifg=#60ff60]]

  --Groups
  vim.cmd[[hi! StatusLineNC gui=italic guifg=Black guibg=#403c41]]
  vim.cmd[[hi! StatusLine gui=italic guifg=Black guibg=#948444]]
  vim.cmd[[hi! Question gui=bold guibg=none guifg=#65c254]]
  vim.cmd[[hi! Title gui=bold guifg=#799d6a guibg=none]]
  vim.cmd[[hi! VertSplit guifg=#777777 guibg=#403c41]]
  vim.cmd[[hi! Normal guibg=none guifg=#e8e8d3]]
  vim.cmd[[hi! NoText guibg=none guifg=#222222]]
  vim.cmd[[ hi!Todo gui=underline,bold guifg=#60ff60 guibg=#481036]]

  vim.cmd[[hi! Identifier gui=bold guifg=#30dfff]]
  vim.cmd[[hi! Statement gui=bold guifg=#ba5454]]
  vim.cmd[[hi! Function guifg=#ff7400 gui=bold]]
  vim.cmd[[hi! Repeat gui=bold guifg=#76d365]]
  vim.cmd[[hi! Special gui=bold guifg=Red]]
  vim.cmd[[hi! Operator guifg=#ff0f0f]]
  vim.cmd[[hi! Number guifg=#ffb050 ]]
  vim.cmd[[hi! String guifg=#eecc88]]

  vim.cmd[[hi! lineNr gui=underline,bold guifg=#ff7400 guibg=none]]
  vim.cmd[[hi! CursorLineNr guifg=#ff5400 guibg=#2b2b2b]]
  vim.cmd[[hi! lineNrAbove guifg=#65c254]]
  vim.cmd[[hi! LineNrBelow guifg=#bfbfbf]]
  vim.cmd[[hi! CursorLine guibg=#1b1b1b]]
  vim.cmd[[hi! CursorLineSign guibg=none]]
  vim.cmd[[hi! lCursor guifg=bg guibg=fg]]
  vim.cmd[[hi! CurSearch guibg=#60ff60 guifg=#000080]]
  vim.cmd[[hi! Search guibg=#ff6400 guifg=#111111]]

  --[[Linked Groups]]
  vim.cmd[[ hi! link MsgSeparator StatusLine]]
  vim.cmd[[ hi! link EndofBuffer String]]
  vim.cmd[[ hi! link Visual IncSearch]]
end
return Elflord()
-- Comment color  #80a0ff  maginta #ffa0ff  #df50df   #799d6a
