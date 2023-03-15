 set shell=sh

" syntax highlighting and filetype specific features
 syntax on
 set nocompatible   " be iMproved, required for Vundle
 filetype off       " required for Vundle

 set path+=**
 " VUNDLE plugin stuff
 " set the runtime path to include Vundle and initialize
 set rtp+=~/.vim/bundle/Vundle.vim
 call vundle#begin()
 Plugin 'vim-airline/vim-airline'
 Plugin 'vim-airline/vim-airline-themes'
 Plugin 'preservim/nerdtree'
 Plugin 'Xuyuanp/nerdtree-git-plugin'
 Plugin 'sheerun/vim-polyglot'
 Plugin 'NLKNguyen/papercolor-theme'
 Plugin 'tpope/vim-fugitive'
 Plugin 'Yggdroot/indentLine'
 Plugin 'catppuccin/vim'
 call vundle#end()
 filetype plugin indent on

 " Always display status bar
 set laststatus=2
 set termguicolors

 set background=light
 colorscheme catppuccin_latte
 let g:airline_theme='catppuccin_latte'

 " tabs are four spaces, smart tabbing
 set tabstop=2
 set softtabstop=2
 set shiftwidth=2
 set expandtab
 set smarttab

 " smart and auto indent
 set autoindent
 set smartindent

 " column 100 v-line
 set colorcolumn=100
 " highlight colorcolumn guibg=darkgreen
 " highlight colorcolumn ctermbg=2

 " Show matching brackets
 set showmatch

 " Wrap long lines
 set wrap

 " Case insensitive search
 set ic

 " Only case-sensitive for uppercase searches
 set smartcase

 " Highlight search
 set hlsearch

 " Make search act like search in modern browsers
 set incsearch 

 " allows pattern matching with special characters
 set magic 

 set cursorline

 "set wildmenu" enables a menu at the bottom of the vim/gvim window.
 "The meaning of "list:longest,full" is so that when you do completion in the
 "command line via tab, these events will happen:
 "1. (on the first tab) a list of completions will be shown and the command
 "will be completed to the longest common command.
 "2. (on second tab) the wildmenu will show up with all the completions that
 "were listed before.
 "To test it out, type ":spe" and then hit tab once to see 1 and hit tab 
 "again to see 2.
 set wildmenu
 set wildmode=list:longest,full

 " Prevents redrawing after exec macros
 set lazyredraw

 " show the cursor position all the time
 set ruler  

 " re-mapping <leader> key to ","
 let mapleader=","

 " for clearing search
 nmap <silent> <leader>/ :nohlsearch<CR>
 
 " for sourcing vimrc on the fly
 nmap <leader>v :source ~/.vimrc<CR>

 " for calling nerd-tree
 nmap <leader>n :NERDTree<CR>

 " for nerd-tree vsplit
 let NERDTreeCustomOpenArgs={'file': {'reuse':'all','where':'v','stay':'0'}}

 " Relative line numbering
 set number

 " autoindent in C
 set cindent

 " swp files... disgusting
  set nobackup
  set noswapfile

 " backspace :-)
  set backspace=indent,eol,start

 " roslaunch and hspice file setup
   autocmd BufRead,BufNewFile *.launch setfiletype roslaunch
   autocmd BufRead,BufNewFile *.hsp setfiletype spice

 " NERDTree will show hidden files
 let NERDTreeShowHidden=1
 
 " NERDTree will close if only tab left
 autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif

 " NERDTree will automatically open when vim starts up on a directory
 autocmd StdinReadPre * let s:std_in=1
 autocmd VimEnter * if argc() == 1 && isdirectory(argv()[0]) && !exists("s:std_in") | exe 'NERDTree' argv()[0] | wincmd p | ene | exe 'cd '.argv()[0] | endif

 " airline customization
 " smarter tab line
 let g:airline#extensions#tabline#enabled = 1

 " just show the filename
 let g:airline#extensions#tabline#fnamemod = ':t'

 " rustfmt formats .rs on autosave
 let g:rustfmt_autosave = 1

 " highlighting trailing whitespace
 highlight ExtraWhitespace ctermbg=red guibg=red
 match ExtraWhitespace /\s\+$/
 autocmd BufWinEnter * match ExtraWhitespace /\s\+$/
 autocmd InsertEnter * match ExtraWhitespace /\s\+\%#\@<!$/
 autocmd InsertLeave * match ExtraWhitespace /\s\+$/
 autocmd BufWinLeave * call clearmatches()

 " rust recommended style gives me huge tabs lol
 let g:rust_recommended_style = 0
