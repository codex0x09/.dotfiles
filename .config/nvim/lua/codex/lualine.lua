require('lualine').setup({
  options = {
    icons_enabled = true,
    --theme = 'auto',
    component_separators = { left = '|', right = '|' },
    section_separators = { left = '', right = '' },
    --component_separators = { left = '', right = ''},
    -- section_separators = { left = '', right = ''},
    disabled_filetypes = {
      statusline = {},
      winbar = {},
    },
    ignore_focus = {},
    always_divide_middle = true,
    globalstatus = false,
    refresh = {
      statusline = 1000,
      tabline = 1000,
      winbar = 1000,
    }
  },
  sections = {
    lualine_a = { 'mode' },
    lualine_b = { 'branch', 'diff', 'diagnostics' },
    lualine_c = { 'filename' },
    lualine_x = { 'encoding', 'fileformat', 'filetype' },
    lualine_y = { 'progress' },
    lualine_z = { 'location' }
  },
  inactive_sections = {
    lualine_a = {},
    lualine_b = {},
    lualine_c = { 'filename' },
    lualine_x = { 'location' },
    lualine_y = {},
    lualine_z = {}
  },
   tabline = { -- work also for bufferline just uncomment them
       lualine_a = {'buffer_number','filetype','buffers'},--filename
       lualine_b = {'diagnostics'},  --lualine_b = {'branch'},
       lualine_c = {},  --lualine_c = {'filename'},
       lualine_x = {},
       lualine_y = {},
       lualine_z = {'tabs'}
   },
  winbar = {},
  inactive_winbar = {},
  extensions = {}
})


--[[ GruvBox Theme]]
local colors = {
  black        = '#1a1a1a',
  white        = '#ebdbb2',
  red          = '#fb4934',
  green        = '#b8bb26',
  blue         = '#83a598',
  yellow       = '#fe8019',
  gray         = '#a89984',
  darkgray     = '#3c3836',
  lightgray    = '#504945',
  inactivegray = '#7c6f64',
}
local gruvbox = {
  normal = {
    a = { bg = colors.red, fg = colors.black, gui = 'bold' },
    b = { bg = colors.darkgray, fg = colors.yellow },
    c = { bg = colors.black, fg = colors.gray }
    -- to make them transparent; comment "b" and empty "c"
    -- b = { bg = colors.darkgray, fg = colors.yellow },
    -- c = { bg = " " , fg = ""}
  },
  insert = {
    a = { bg = colors.red, fg = colors.black, gui = 'bold' },
    b = { bg = colors.black, fg = colors.yellow },
    c = { bg = colors.black, fg = colors.yellow }
  },
  visual = {
    a = { bg = colors.blue, fg = colors.black, gui = 'bold' },
    b = { bg = colors.lightgray, fg = colors.white },
    c = { bg = colors.black, fg = colors.gray }
  },
  replace = {
    a = { bg = colors.red, fg = colors.black, gui = 'bold' },
    b = { bg = colors.lightgray, fg = colors.white },
    c = { bg = colors.black, fg = colors.white }
  },
  command = {
    a = { bg = colors.green, fg = colors.black, gui = 'bold' },
    b = { bg = colors.lightgray, fg = colors.white },
    c = { bg = colors.black, fg = colors.gray }
  },
  inactive = {
    a = { bg = colors.darkgray, fg = colors.gray, gui = 'bold' },
    b = { bg = colors.darkgray, fg = colors.gray },
    c = { bg = colors.darkgray, fg = colors.gray }
  },
}


  --green        = '#60bb26',
--[[ Legacy Vim Theme ]]
local elfo_colors = {
  black        = '#181818',
  white        = '#f5deb3',
  red          = '#ff0000',
  green        = '#60ff60',
  blue         = '#000080',
  yellow       = '#ff5522',
  gray         = '#303030',
  darkgray     = '#282828',
  lightgray    = '#504945',
  inactivegray = '#7c6f64',
}
local elflord = {
  normal = {
    a = { bg =elfo_colors.gray, fg =elfo_colors.green, gui = 'bold' },
    b = { bg =elfo_colors.darkgray, fg =elfo_colors.yellow },
    c = { bg =elfo_colors.black, fg =elfo_colors.white }
    -- to make them transparent; comment "b" and empty "c"
    -- b = { bg =elfo_colors.darkgray, fg =elfo_colors.yellow },
    -- c = { bg = " " , fg = ""}
  },
  insert = {
    a = { bg =elfo_colors.red, fg =elfo_colors.black, gui = 'bold' },
    b = { bg =elfo_colors.black, fg =elfo_colors.red },
    c = { bg =elfo_colors.black, fg =elfo_colors.yellow }
  },
  visual = {
    a = { bg =elfo_colors.blue, fg =elfo_colors.green, gui = 'bold' },
    b = { bg =elfo_colors.gray, fg =elfo_colors.green },
    c = { bg =elfo_colors.blue, fg =elfo_colors.green }
  },
  replace = {
    a = { bg =elfo_colors.yellow, fg =elfo_colors.black, gui = 'bold' },
    b = { bg =elfo_colors.lightgray, fg =elfo_colors.white },
    c = { bg =elfo_colors.black, fg =elfo_colors.white }
  },
  command = {
    a = { bg =elfo_colors.gray, fg =elfo_colors.green, gui = 'bold' },
    b = { bg =elfo_colors.gray, fg =elfo_colors.green },
    c = { bg =elfo_colors.blue, fg =elfo_colors.green }
  },
  inactive = {
    a = { bg =elfo_colors.darkgray, fg =elfo_colors.yellow, gui = 'bold' },
    b = { bg =elfo_colors.darkgray, fg =elfo_colors.white },
    c = { bg =elfo_colors.darkgray, fg =elfo_colors.white }
  },
}

require('lualine').setup { options = { theme = gruvbox } } -- 'auto'->string  gruvbox --> var
