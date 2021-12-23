local transparent = require 'transparent'

transparent.setup({
  enable = true,
  extra_groups = {
    "StatusLineNC",
    "StatusLine",
    "ZenBg",
  },
  exclude = {
    "BufferLineTabClose", "BufferlineBufferSelected", "BufferLineFill",
    "BufferLineBackground", "BufferLineSeparator", "BufferLineIndicatorSelected"
  },
})
