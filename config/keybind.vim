
"██╗░░██╗███████╗██╗░░░██╗██████╗░██╗███╗░░██╗██████╗░░██████╗
"██║░██╔╝██╔════╝╚██╗░██╔╝██╔══██╗██║████╗░██║██╔══██╗██╔════╝
"█████═╝░█████╗░░░╚████╔╝░██████╦╝██║██╔██╗██║██║░░██║╚█████╗░
"██╔═██╗░██╔══╝░░░░╚██╔╝░░██╔══██╗██║██║╚████║██║░░██║░╚═══██╗
"██║░╚██╗███████╗░░░██║░░░██████╦╝██║██║░╚███║██████╔╝██████╔╝
"╚═╝░░╚═╝╚══════╝░░░╚═╝░░░╚═════╝░╚═╝╚═╝░░╚══╝╚═════╝░╚═════╝░

let mapleader = ' '

" Remove annoying keybind
nnoremap Q <Nop>
nnoremap q: <Nop>
nnoremap <C-z> <Nop>

" Fast saving
nnoremap <C-s> :<C-u>w<CR>
vnoremap <C-s> :<C-u>w<CR>
cnoremap <C-s> <C-u>w<CR>

"|===============|
"|  B U F F E R  |
"|===============|

" Buffer Switching
nnoremap <silent><A-h> :bp<CR> 
nnoremap <silent><A-l> :bn<CR>

" Create New Buffer
nnoremap <silent><leader>bn :enew<CR>

" Close Current Buffer
nnoremap <silent><C-x> :bp <bar> bd! #<CR>

" Close All Buffer
nnoremap <silent><C-xx> :bufdo bd! #<CR>

"|===================|
"|  T E R M I N A L  |
"|===================|

" Turn Terminal to normal mode with esc
tnoremap <Esc> <C-\><C-n>

"|==============|
"| P A N E L S  |
"|==============|

" Panel Switching
tnoremap <C-h> <C-\><C-n><C-w><C-h>
tnoremap <C-j> <C-\><C-n><C-w><C-j>
tnoremap <C-k> <C-\><C-n><C-w><C-k>

"|=================|
"|  P L U G I N S  |
"|=================|

" NvimTree
nnoremap <silent><C-f> :NvimTreeToggle<CR>

" Telescope
nnoremap <silent><C-p> :Telescope find_files<CR>
nnoremap <silent><leader>f :Telescope live_grep<CR>
nnoremap <silent><leader>h :Telescope oldfiles<CR>

