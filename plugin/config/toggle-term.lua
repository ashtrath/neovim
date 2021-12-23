local terminal = require 'toggleterm'

terminal.setup {
  size = function(term)
    if term.direction == 'horizontal' then
      return 10
    elseif term.direction == 'vertical' then
      return vim.o.columns * 0.40
    end
  end,

  open_mapping = [[<C-t>]],
  hide_number = true,
  shade_filetypes = {},
  shade_terminals = true,
  shading_factor = '1',
  start_in_insert = true,
  insert_mappings = true,
  persist_size = true,
  direction = 'horizontal',
  close_on_exit = true,
  shell = vim.o.shell
}

local git = require('toggleterm.terminal').Terminal:new ({
  id = 100,
  cmd = "gitui",
  direction = "float",
  on_open = function()
    vim.cmd("inoremap jk <Nop>")
  end,
})

function gitui_toggle()
  git:toggle()
end

vim.api.nvim_set_keymap("n", "<leader>gg", "<cmd>lua gitui_toggle()<CR>", { noremap = true, silent = true })
