
"██████╗░██╗░░░░░██╗░░░██╗░██████╗░██╗███╗░░██╗░██████╗
"██╔══██╗██║░░░░░██║░░░██║██╔════╝░██║████╗░██║██╔════╝
"██████╔╝██║░░░░░██║░░░██║██║░░██╗░██║██╔██╗██║╚█████╗░
"██╔═══╝░██║░░░░░██║░░░██║██║░░╚██╗██║██║╚████║░╚═══██╗
"██║░░░░░███████╗╚██████╔╝╚██████╔╝██║██║░╚███║██████╔╝
"╚═╝░░░░░╚══════╝░╚═════╝░░╚═════╝░╚═╝╚═╝░░╚══╝╚═════╝░

call plug#begin('~/.local/share/nvim/site/autoload')

 " Speed up neovim load time
  Plug 'nathom/filetype.nvim'
  Plug 'lewis6991/impatient.nvim'

" Icons & Themes
  Plug 'folke/tokyonight.nvim', { 'branch': 'main' }
  Plug 'kyazdani42/nvim-web-devicons'
  Plug 'xiyaowong/nvim-transparent'

  " UI
  Plug 'lukas-reineke/indent-blankline.nvim'
  Plug 'akinsho/nvim-bufferline.lua'
  Plug 'nvim-lualine/lualine.nvim'
  Plug 'kyazdani42/nvim-tree.lua'
  Plug 'glepnir/dashboard-nvim'
  Plug 'folke/zen-mode.nvim', { 'for': 'markdown' }

  " Formatting & Linting
  Plug 'neovim/nvim-lspconfig'
  Plug 'williamboman/nvim-lsp-installer'
  Plug 'onsails/lspkind-nvim'
  Plug 'tami5/lspsaga.nvim'
  Plug 'sbdchd/neoformat'

  " Completion
  Plug 'hrsh7th/nvim-cmp'
  Plug 'hrsh7th/cmp-nvim-lsp'
  Plug 'hrsh7th/cmp-path'
  Plug 'hrsh7th/cmp-buffer'
  Plug 'L3MON4D3/LuaSnip'
  Plug 'saadparwaiz1/cmp_luasnip'
  Plug 'gelguy/wilder.nvim', { 'do': 'UpdateRemotePlugins' }

  " Highlights
  Plug 'nvim-treesitter/nvim-treesitter', { 'do': ':TSUpdate' }
  Plug 'norcalli/nvim-colorizer.lua'
  
  " Search
  Plug 'nvim-telescope/telescope-fzf-native.nvim', { 'do': 'make' }
  Plug 'nvim-telescope/telescope.nvim'
  Plug 'nvim-lua/plenary.nvim'

  " Terminal
  Plug 'akinsho/toggleterm.nvim'

  " Markdown Preview
  Plug 'iamcco/markdown-preview.nvim', { 'do': { -> mkdp#util#install() }, 'for': ['markdown', 'vim-plug']}

  " Other
  Plug 'henriquehbr/nvim-startup.lua'
  Plug 'numToStr/Comment.nvim'
  Plug 'windwp/nvim-autopairs'
	" Plug 'wakatime/vim-wakatime'
  Plug 'andweeb/presence.nvim' " Discord Rich Presence

call plug#end()

" Load all lua (plugins) file inside config folder
for plugin in split(glob('%/config/*.lua'), '\n')
    exe 'luafile' plugin
endfor
