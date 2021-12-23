vim.opt.list = true

require("indent_blankline").setup({
  char = "▏",
  show_current_context = true,
  show_end_of_line = false,
  disable_with_nolist = true,
  filetype_exclude = {
    "help",
    "git",
    "NvimTree",
    "markdown",
    "snippets",
    "gitconfig",
    "terminal",
    "lspinfo"
  },
  buftype_exclude = {
    "terminal",
    "nofile"
  },
})
