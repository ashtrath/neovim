local saga = require 'lspsaga'

saga.init_lsp_saga {
  use_saga_diagnostic_sign = true,

  error_sign = ' ',
  warn_sign = ' ',
  hint_sign = ' ',
  infor_sign = ' ',
  diagnostic_header_icon = '   ',
  code_action_icon = ' ',

  code_action_prompt = {
    enable = true,
    sign = true,
    sign_priority = 40,
    virtual_text = true,
  },

  max_preview_lines = 10,
  border_style = "round",
}

-- Keymaps
local opts = { noremap = true, silent = true }

vim.api.nvim_set_keymap('n', '<C-j>', '<Cmd>Lspsaga diagnostic_jump_next<CR>', opts)
vim.api.nvim_set_keymap('n', 'K', ':Lspsaga hover_doc<CR>', opts)
vim.api.nvim_set_keymap('i', '<C-k>', '<Cmd>Lspsaga signature_help<CR>', { silent = true })
vim.api.nvim_set_keymap('n', 'gh', '<Cmd>Lspsaga lsp_finder<CR>', opts)
