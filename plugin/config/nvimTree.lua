local tree = require 'nvim-tree'
local g = vim.g

g.vim_tree_special_files = {
  "README.md",
  "LICENSE",
  "Makefile",
  "package.json",
  "package-lock.json",
}

g.nvim_tree_indent_markers = 1
g.nvim_tree_git_hl = 1
g.nvim_tree_highlight_opened_files = 1
g.nvim_tree_root_folder_modifier = ":~"
g.nvim_tree_add_trailing = 1
g.nvim_tree_group_empty = 1
g.nvim_tree_disable_window_picker = 1
g.nvim_tree_icon_padding = " "
g.nvim_tree_respect_buf_cwd = 1

tree.setup {
  disable_netrw = true,
  hijack_netrw = true,
  open_on_tab = false,
  hijack_cursor = true,
  update_cwd = true,

  update_to_buf_dir = {
    enable = true,
    auto_open = true,
  },

  update_focused_file = {
    enable = true,
    update_cwd = true,
    ignore_list = { ".git", "node_modules", ".cache" },
  },

  diagnostics = {
    enable = true,
    icons = {
      hint = "",
      info = "",
      warning = "",
      error = "",
    }
  },

  view = {
     auto_resize = false,
     side = "left",
     width = 23,
  },

  show_icons = {
    git = true,
    folders = true,
    files = true,
  },

  icons = {
    default = " ",
    symlink = " ",
    git = {
      deleted = "",
      ignored = "◌",
      unstaged = "✗",
      staged = "✓",
      staged = "✓",
      unmerged = "",
      renamed = "➜",
      untracked = "★",
    },
  
    folder = {
      default = "",
      empty = "",
      empty_open = "",
      open = "",
      symlink = "",
      symlink_open = "",
    },
  },

  termguicolors = true,
  hide_dotfiles = false,
}

