
set nocompatible
filetype off

set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

Bundle 'gmarik/vundle'
nmap <Leader>bi :BundleInstall<CR>
nmap <Leader>bu :BundleInstall!<CR> " Because this also updates
nmap <Leader>bc :BundleClean<CR>

Bundle 'tomtom/tcomment_vim.git'
nnoremap // :TComment<CR>
vnoremap // :TComment<CR>

Bundle 'Lokaltog/vim-powerline'
Bundle 'altercation/vim-colors-solarized.git'
Bundle 'mileszs/ack.vim'
Bundle 'tpope/vim-repeat'
Bundle 'tpope/vim-surround'
Bundle 'scrooloose/syntastic'
Bundle 'scratch.vim'
Bundle 'wincent/Command-T'

" new snipmate and deps
" https://github.com/garbas/vim-snipmate
Bundle "MarcWeber/vim-addon-mw-utils"
Bundle "tomtom/tlib_vim"
Bundle "honza/snipmate-snippets"
Bundle "garbas/vim-snipmate"

" JS
Bundle 'pangloss/vim-javascript'
Bundle 'leshill/vim-json'
Bundle 'itspriddle/vim-jquery'

" evaluate
" https://github.com/xolox/vim-session

filetype plugin indent on 

syntax enable
set background=dark
"let g:solarized_termcolors=256
colorscheme solarized

let mapleader = ","
set pastetoggle=<F10>

set encoding=utf-8
set laststatus=2
set cmdheight=2
set ruler
set number
set colorcolumn=100
set cul

set backup
set backupdir=~/.vim/backup
set directory=~/.vim/tmp

set wildmenu
set wildmode=longest,list
set wildignore+=*.o,*.obj,*.exe,*.so,*.dll,*.pyc,.svn,.hg,.bzr,.git,.sass-cache,*.class,*.scssc,*.cssc,sprockets%*,*.lessc

set autoread
set hidden
set history=999
set autowrite

set tabstop=4
set backspace=indent,eol,start
set shiftwidth=4
set autoindent
set cindent
set smarttab
set expandtab

set scrolloff=4
set sidescrolloff=4

set ignorecase
set smartcase
set incsearch
set hlsearch

set showmatch
set matchtime=2

set noerrorbells
set novisualbell
set t_vb=

set mousehide
set mouse=a

" powa!
set ttyfast 
set lazyredraw

" as3 support
au BufRead,BufNewFile *.as set filetype=javascript

" typos
command! W w
command! Q q
map <F1> <Esc>
imap <F1> <Esc>

" edit vimrc
nmap <silent> <leader>v :e ~/.vim/vimrc<CR>

" <C-PageUp>/<C-PageDown> switch buffers for runaways
nmap [5^ <ESC>:bn<CR>
nmap [6^ <ESC>:bp<CR>
