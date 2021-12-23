local cmp = require 'cmp'
local lspkind = require 'lspkind'
local luasnip = require 'luasnip'

local function check_backspace()
  local col = vim.fn.col '.' - 1
  return col == 0 or vim.fn.getline('.'):sub(col, col):match '%s' ~= nil
end

local feedkeys = vim.fn.feedkeys
local pumvisible = vim.fn.pumvisible
local replace_termcodes = vim.api.nvim_replace_termcodes
local next_item_keys = replace_termcodes('<c-n>', true, true, true)
local prev_item_keys = replace_termcodes('<c-p>', true, true, true)
local backspace_keys = replace_termcodes('<tab>', true, true, true)
local snippet_next_keys = replace_termcodes('<plug>luasnip-expand-or-jump', true, true, true)
local snippet_prev_keys = replace_termcodes('<plug>luasnip-jump-prev', true, true, true)

cmp.setup {
  completion = {
    completeopt = 'menu, menuone, noselect, noinsert',
    keyword_length = 3
  },
  snippet = {
    expand = function(args)
      luasnip.lsp_expand(args.body)
    end,
  },

  documentation = {
    border = 'solid',
  },
  
  formatting = {
    format = lspkind.cmp_format({ with_text = false, maxwidth = 50 }),
  },

  mapping = {
    ['<C-Space>'] = cmp.mapping.complete(),
    ['<C-e>'] = cmp.mapping.close(),
    ['<CR>'] = cmp.mapping.confirm { select = true, },
    ['<Tab>'] = cmp.mapping(function(fallback)
      if pumvisible() == 1 then
        feedkeys(next_item_keys, 'n')
      elseif luasnip.expand_or_jumpable() then
        feedkeys(snippet_next_keys, '')
      elseif check_backspace() then
        feedkeys(backspace_keys, 'n')
      else
        fallback()
      end
    end, {
      'i',
      's',
    }),
  },

  ['<S-Tab>'] = cmp.mapping(function(fallback)
    if pumvisible() == 1 then
      feedkeys(prev_item_keys, 'n')
    elseif luasnip.jumpable(-1) then
      feedkeys(snippet_prev_keys, '')
    else
      fallback()
    end
  end, {
    'i',
    's',
  }),

  sources = {
    { name = 'nvim_lsp', priority = 10 },
    { name = 'luasnip' },
    { name = 'path' },
    { name = 'buffer', keyword_length = 8 },
  },
}
