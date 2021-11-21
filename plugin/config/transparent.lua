local transparent = require 'transparent'

transparent.setup({
  enable = true,
  extra_groups = {
    "StatusLineNC",
    "StatusLine",
    "NvimTreeStatusLine"
  },
  exclude = {
    "BufferLineTabClose",
    "BufferlineBufferSelected",
    "BufferLineFill",
    "BufferLineBackground",
    "BufferLineSeparator",
    "BufferLineIndicatorSelected"
  },
})
