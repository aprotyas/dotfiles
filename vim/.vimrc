" syntax highlighting and filetype specific features
 syntax on
 filetype on
 filetype plugin on
 filetype indent on

 " Always display status bar
 set laststatus=2

 set background=dark
 let g:colors_name = 'jellybeans'
 colorscheme jellybeans

 " tabs are two spaces, smart tabbing
 set tabstop=2
 set shiftwidth=2
 set expandtab
 set smarttab

 " smart and auto indent
 set autoindent
 set smartindent

 " column 80 v-line
 set colorcolumn=80
 highlight colorcolumn guibg=red
 highlight colorcolumn ctermbg=2

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
 filetype indent on

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
 nmap <leader>n :NERDTree<CR<CR>

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

 " vim-plug stuff
   if empty(glob('~/.vim/autoload/plug.vim'))
             silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
                           \
                           https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
                                       autocmd VimEnter * PlugInstall --sync
                                       | source $MYVIMRC
                                           endif


 call plug#begin('~/.vim/plugged')
 Plug 'nanotech/jellybeans.vim', { 'tag': 'v1.7' }
 Plug 'preservim/nerdtree'
 call plug#end()

