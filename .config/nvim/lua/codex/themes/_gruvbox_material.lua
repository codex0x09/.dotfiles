-- Default options:

vim.cmd [[
    " Important!!
    if has('termguicolors')
    set termguicolors
    endif

    " For dark version.
    set background=dark

    " For light version.
    "* set background=light

    " Set contrast.
    " This configuration option should be placed before `colorscheme gruvbox-material`.
    " Available values: 'hard', 'medium'(default), 'soft'
    let g:gruvbox_material_background = 'hard'

    " For better performance
    let g:gruvbox_material_better_performance = 1

    "The foreground color palette used in this color scheme.
    "- `material`: Carefully designed to have a soft contrast.
    "- `mix`: Color palette obtained by calculating the mean of the other two.
    "- `original`: The color palette used in the original gruvbox.
    "Available values:   `'material'`, `'mix'`, `'original'` Default value: 'material'
    let g:gruvbox_material_foreground = 'original'

    "To enable bold in function name just like the original gruvbox, set this option to `1`.
    let g:gruvbox_material_enable_bold = 1

    "To enable italic in this color scheme, set this option to `1`. Default value: 0
    "let g:gruvbox_material_enable_italic = 1

    "To use transparent background, set this option to `1`.
    "If you want more ui components to be transparent (for example, status line
    "background), set this option to `2`.
    let g:gruvbox_material_transparent_background = 1

    "Control the |hl-Visual| and the |hl-VisualNOS| highlight group.
    "Available values:   `'grey background'`, `'green background'`, `'blue background'`, `'red background'`, `'reverse'`
    let g:gruvbox_material_visual = 'reverse'

    "The contrast of line numbers, indent lines, etc.
    "Type:               |String|
    "Available values:   `'low'`, `'high'`
    let g:gruvbox_material_ui_contrast = 'high'

    let g:gruvbox_material_float_style = 'dim' " bright -> for un-transparent mode

    "let g:gruvbox_material_diagnostic_text_highlight = 0
    let g:gruvbox_material_diagnostic_virtual_text = ''
    colorscheme gruvbox-material
  ]]
-- Apply custom highlights on colorscheme change.
-- Must be declared before executing ':colorscheme'.
local grpid = vim.api.nvim_create_augroup('custom_highlights_gruvboxmaterial', {})
vim.api.nvim_create_autocmd('ColorScheme', {
    group = grpid,
  pattern = 'gruvbox-material',
  callback = function()
    local function hl_lnk(src, trgt)
      vim.api.nvim_set_hl(0, src, { link = trgt })
    end

    hl_lnk('DiagnosticErrorText', 'TSDanger')
    hl_lnk('DiagnosticWarnText',  'TSWarning')
    hl_lnk('DiagnosticHintText',  'TSNote')
    hl_lnk('DiagnosticInfoText',  'TSTodo')
  end
})

vim.cmd [[
    hi! Debug           guifg=#ff9e64
    hi! DiagnosticError  guifg=#db4b4b
    hi! DiagnosticWarn  guifg=#e0af68
    hi! DiagnosticInfo  guifg=#0db9d7
    hi! DiagnosticHint  guifg=#1abc9c
    hi! DiagnosticOk    guifg=LightGreen
    hi! DiagnosticUnderlineError gui=undercurl guisp=#db4b4b
    hi! DiagnosticUnderlineWarn  gui=undercurl guisp=#e0af68
    hi! DiagnosticUnderlineInfo  gui=undercurl guisp=#0db9d7
    hi! DiagnosticUnderlineHint  gui=undercurl guisp=#1abc9c
    hi! DiagnosticUnderlineOk    gui=underline guisp=LightGreen
    hi! DiagnosticVirtualTextError guifg=#db4b4b  "guibg=#362c3d
    hi! DiagnosticVirtualTextWarn  guifg=#e0af68  "guibg=#373640
    hi! DiagnosticVirtualTextInfo  guifg=#0db9d7  "guibg=#22374b
    hi! DiagnosticVirtualTextHint  guifg=#1abc9c  "guibg=#233745
    hi! link DiagnosticVirtualTextOk    DiagnosticOk
    hi! link DiagnosticFloatingError    DiagnosticError
    hi! link DiagnosticFloatingWarn    DiagnosticWarn
    hi! link DiagnosticFloatingInfo    DiagnosticInfo
    hi! link DiagnosticFloatingHint    DiagnosticHint
    hi! link DiagnosticFloatingOk    DiagnosticOk
    hi! link DiagnosticSignError    DiagnosticError
    hi! link DiagnosticSignWarn    DiagnosticWarn
    hi! link DiagnosticSignInfo    DiagnosticInfo
    hi! link DiagnosticSignHint    DiagnosticHint
    hi! link DiagnosticSignOk    DiagnosticOk
    hi! DiagnosticDeprecated  cterm=strikethrough gui=strikethrough guisp=Red
    hi! DiagnosticUnnecessary gui=italic

    hi! Search guibg=#ff6400 guifg=#000000
    hi! MatchParen gui=bold guifg=#ff6400 guibg=None
    hi! CursorLineNr gui=bold guifg=#ff6400  "#ffaf5f
    hi! CursorLine guibg=#202020  "#12122a
]]
  --vim.cmd[[hi! CurSearch guibg=#60ff60 guifg=#000080]]
  --vim.cmd[[hi! Search guibg=#ff6400 guifg=#111111]]

--/////////////////////////////////////////////////////////
--[[      see :h gruvbox_material -> configuration
Style used to make floating windows stand out from other windows. `'bright'`
makes the background of these windows lighter than |hl-Normal|, whereas
`'dim'` makes it darker.

Floating windows include for instance diagnostic pop-ups, scrollable
documentation windows from completion engines, overlay windows from
installers, etc.

    Type:               |String|
    Available values:   `'bright'`, `'dim'`
    Default value:      `'bright'`

    let g:gruvbox_material_float_style = 'bright'

  **********************************

g:gruvbox_material_diagnostic_text_highlight~

Some plugins support highlighting error/warning/info/hint texts, by default
these texts are only underlined, but you can use this option to also highlight
the background of them.

    Type:               |Number|
    Available values:   `0`, `1`
    Default value:      `0`


  **********************************

g:gruvbox_material_diagnostic_virtual_text~

Some plugins can use the virtual text feature of Neovim to display
error/warning/info/hint information. You can use this option to adjust the
way these virtual texts are highlighted.

    Type:               |String|
    Available values:   `'grey'`, `'colored'`, `'highlighted'`
    Default value:      `'grey'`

Currently, the following plugins are supported:

]]
-- Diagnosting """ Diagnostic Highlight """
--/////////////////////////////////////////////////////////
