local nvim = vim.g

nvim.tokyonight_style = "night"
nvim.tokyonight_transparent = true
nvim.tokynight_sidebars = {
  "terminal",
  "NvimTree",
  "qf"
}
nvim.tokyonight_hide_inactive_statusline = true
nvim.tokyonight_transparent_sidebar = true
nvim.tokyonight_lualine_bold = true

vim.cmd[[colorscheme tokyonight]]
