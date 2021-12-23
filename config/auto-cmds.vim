"|=========================|
"|  A U T O C O M M A N D  |
"|=========================|

" Enable syntax if its not enabled
if !exists('g:syntax_on')
  syntax sync fromstart
endif

" Kinda better scrolling behaviour
if !&scrolloff
    set scrolloff=3       " Show next 3 lines while scrolling.
endif

if !&sidescrolloff
    set sidescrolloff=5   " Show next 5 columns while side-scrolling.
endif

" Blocks changes if buffer is read only.
augroup blockreadonly
  autocmd!
  autocmd BufReadPost * let &l:modifiable = !&readonly
augroup end

" Disable cursorline in some mode
augroup no_cursorline
  autocmd!
  autocmd BufEnter,WinEnter,InsertLeave * set nocursorline
  autocmd BufLeave,WinLeave,InsertEnter * set cursorline
augroup END

" Disables automatic commenting on newline:
autocmd FileType * setlocal formatoptions-=c formatoptions-=r formatoptions-=o

" Autocomand to remember last editing position
augroup vimrc-remember-cursor-position
  autocmd!
  autocmd BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g`\"" | endif
augroup END

" Not really a autocmd, but this prevent typo when typing q/wq on command line
cnoreabbrev <expr> W ((getcmdtype() is# ':' && getcmdline() is# 'W')?('w'):('W'))
cnoreabbrev <expr> Q ((getcmdtype() is# ':' && getcmdline() is# 'Q')?('q'):('Q'))
cnoreabbrev <expr> WQ ((getcmdtype() is# ':' && getcmdline() is# 'WQ')?('wq'):('WQ'))
cnoreabbrev <expr> Wq ((getcmdtype() is# ':' && getcmdline() is# 'Wq')?('wq'):('Wq'))

