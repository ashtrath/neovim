"|=========================|
"|  N V I M   C O N F I G  |
"|=========================|

" Basics
syntax enable
set cursorline
set number
set hlsearch
" colorscheme tokyonight colorscheme loaded on plugin/config/tokyonight.lua

" Indentation
set tabstop=2 softtabstop=2
set shiftwidth=2
set expandtab
set smartindent

" Disable backup thing
set noswapfile
set nobackup
set writebackup " Disable backup but enable write backup just in case

" Enable autocompletion
set wildmode=longest,list

" Hide command
set noshowcmd
set noshowmode

" Other
set mouse=a
set noerrorbells
set nowrap
set ignorecase
set incsearch
set encoding=utf-8
set splitbelow splitright
set termguicolors
set updatetime=300
set signcolumn=yes
set hidden

if has('nvim')
  let $NVIM_TUI_ENABLE_TRUE_COLOR = 1
endif

" Blink cursor for st
if $TERM == 'st' || $TERM == 'st-256color'
  set guicursor=n-v-c:block,i-ci-ve:ver25,r-cr:hor20,o:hor50
    \,a:blinkwait700-blinkoff400-blinkon250-Cursor/lCursor
    \,sm:block-blinkwait175-blinkoff150-blinkon175
endif

if &compatible
  set nocompatible
endif

" Disable various builtin plugins in Vim that bog down speed
let g:loaded_matchparen = 1
let g:loaded_matchit = 1
let g:loaded_logiPat = 1
let g:loaded_rrhelper = 1
let g:loaded_tarPlugin = 1
let g:loaded_gzip = 1
let g:loaded_zipPlugin = 1
let g:loaded_2html_plugin = 1
let g:loaded_shada_plugin = 1
let g:loaded_spellfile_plugin = 1
let g:loaded_netrw = 1
let g:loaded_netrwPlugin = 1
let g:loaded_tutor_mode_plugin = 1
let g:loaded_remote_plugins = 1
let g:did_load_filetypes = 1

" Enable In Neovim Env
let $IN_NEOVIM = 1
