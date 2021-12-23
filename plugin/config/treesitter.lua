local ts = require 'nvim-treesitter.configs'

ts.setup {
  autotag = { enable = true },
  highlight = {
    enable = true,
    additional_vim_regex_highlighting = true,
    disable = {},
  },
  indent = { enable = false },
  matchupp = { enable = true },
  playground = { enable = true },

  context_commentstring = {
    enable = true,
    config = {
      -- Languages that have a single comment style
      typescript = "// %s",
      css = "/* %s */",
      scss = "/* %s */",
      html = "<!-- %s -->",
      svelte = "<!-- %s -->",
      vue = "<!-- %s -->",
      json = "",
      lua = "-- %s"
    },
  },

  query_linter = {
    enable = true,
    use_virtual_text = true,
    lint_events = { "BufWrite", "CursorHold" }
  },

  ensure_installed = {
    "lua",
    "c",
    "cpp",
    "tsx",
    "json",
    "html",
    "css",
    "javascript",
    "typescript",
  }
}

