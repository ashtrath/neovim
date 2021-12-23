local lualine = require 'lualine'
local toggleterm = { sections = { lualine_a = { 'filetype' } }, filetypes = { 'toggleterm' } }

lualine.setup {
  options = {
    icons_enabled = true,
    theme = 'auto',
    component_separators = { left = '', right = '' },
    section_separators = { left = '', right = '' },
    disabled_filetypes = { 'help', 'dashboard'},
    always_divide_middle = true
  },

  sections = {
    lualine_a = { 'mode' },
    lualine_b = { { 'diagnostics', sources = { 'nvim_diagnostic' } }, 'branch' },
    lualine_c = { { 'filename', file_status = true } },
    lualine_x = { 'encoding', 'fileformat', 'filetype' },
    lualine_y = { 'progress' },
    lualine_z = { 'location' }
  },

  inactive_sections = {
    lualine_a = {},
    lualine_b = {},
    lualine_c = { { 'filename', file_status = true }, 'branch' },
    lualine_x = { 'location' },
    lualine_y = {},
    lualine_z = {}
  },

  tabline = {},
  extensions = { 'nvim-tree', toggleterm }
}

