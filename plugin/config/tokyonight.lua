local nvim = vim.g
local cmd = vim.cmd

nvim.tokyonight_style = "night"
nvim.tokyonight_transparent = true

nvim.tokynight_sidebars = {
  "terminal",
  "NvimTree",
  "qf"
}
nvim.tokyonight_transparent_sidebar = true
nvim.tokyonight_lualine_bold = true

cmd[[colorscheme tokyonight]]
