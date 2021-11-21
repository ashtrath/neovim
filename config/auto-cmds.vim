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

" Auto insert mode & disable things on terminal 
augroup neo_terminal
  autocmd!
  autocmd TermOpen * startinsert
  autocmd TermOpen * :set nonumber
  autocmd TermOpen * :set laststatus=0
augroup END

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
