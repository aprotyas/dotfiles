syntax on
set background=dark
let g:colors_name = 'jellybeans'
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

if empty(glob('~/.vim/autoload/plug.vim'))
          silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
              \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
            autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
    endif


call plug#begin('~/.vim/plugged')

Plug 'nanotech/jellybeans.vim', { 'tag': 'v1.7' }
Plug 'preservim/nerdtree'

call plug#end()
