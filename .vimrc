syntax on
set background=dark
colorscheme cosmic-barf
let g:colors_name = 'cosmic-barf'
set tabstop=2
set sw=2
set softtabstop=2
set cursorline
filetype indent on
set wildmenu
set lazyredraw
set showmatch
set incsearch
nnoremap <leader><space> :nohlsearch<CR>
set number
set autoindent
set hlsearch
set expandtab
set cindent
autocmd BufRead,BufNewFile *.launch setfiletype roslaunch
autocmd BufRead,BufNewFile *.hsp setfiletype spice
