
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

" Bundle 'Lokaltog/vim-powerline'
Bundle 'skwp/vim-powerline'

Bundle 'mileszs/ack.vim'
let g:ackprg="ack-grep -H --nocolor --nogroup --column"

Bundle 'tpope/vim-repeat'
Bundle 'tpope/vim-surround'
Bundle 'tpope/vim-fugitive'
Bundle 'scrooloose/syntastic'
Bundle 'scratch.vim'
" Bundle 'wincent/Command-T'
Bundle 'vim-scripts/YankRing.vim'

" ctrlp
let g:ctrlp_map = '<c-p>'
let g:ctrlp_cmd = 'CtrlP'
Bundle 'kien/ctrlp.vim'

" Bundle 'Align'
Bundle 'godlygeek/tabular'
if exists(":Tabularize")
    nmap <Leader>a= :Tabularize /=<CR>
    vmap <Leader>a= :Tabularize /=<CR>
    nmap <Leader>a: :Tabularize /:\zs<CR>
    vmap <Leader>a: :Tabularize /:\zs<CR>
endif

" new snipmate and deps
let g:snipMate = {}
let g:snipMate.scope_aliases = {}
let g:snipMate.scope_aliases['php'] = 'php,html'
Bundle "MarcWeber/vim-addon-mw-utils"
Bundle "tomtom/tlib_vim"
Bundle "honza/snipmate-snippets"
Bundle "garbas/vim-snipmate"

" JS
Bundle 'pangloss/vim-javascript'
Bundle 'leshill/vim-json'
Bundle 'itspriddle/vim-jquery'

" racket
Bundle 'wlangstroth/vim-racket'
if has("autocmd")
    au BufReadPost *.rkt,*.rktl set filetype=racket
    au filetype racket set lisp
    au filetype racket set autoindent
endif

" php
" pear install doc.php.net/pman
set keywordprg=pman

filetype plugin indent on 

syntax enable
set t_Co=256 
set background=dark
colorscheme wombat256mod

let mapleader = ","
set pastetoggle=<F10>

set encoding=utf-8
set laststatus=2
set cmdheight=2
set ruler
set number
" set colorcolumn=100
" set cul

set nobackup
set noswapfile
" set backupdir=~/.vim/backup
" set directory=~/.vim/tmp

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

" set list
set listchars=tab:▸\ ,eol:¬,extends:❯,precedes:❮,trail:·

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

set guioptions-=m " remove menu bar
set guioptions-=T " remove toolbar
set guioptions-=l " remove left-hand scroll bar
set guioptions-=r " remove right-hand scroll bar
set guioptions-=b " remove bottom-hand scroll bar
set guioptions-=L

" powa!
set ttyfast 
set lazyredraw

" persistent undo
silent !mkdir ~/.vim/backups > /dev/null 2>&1
set undodir=~/.vim/backups
set undofile

" as3 support
au BufRead,BufNewFile *.as set filetype=javascript
"
au BufRead,BufNewFile Phakefile set filetype=php

" typos
command! W w
command! Q q
map <F1> <Esc>
imap <F1> <Esc>

" edit vimrc
nmap <silent> <leader>v :e ~/.vim/vimrc<CR>

" write with sudo
cnoremap w!! w !sudo tee % >/dev/null

" copy/paste
nnoremap <leader>p "+p
nnoremap <leader>P "+P
nnoremap <leader>y "+y
nnoremap <leader>Y "+Y


" <C-PageUp>/<C-PageDown> switch buffers for runaways
nmap [5^ <ESC>:bn<CR>
nmap [6^ <ESC>:bp<CR>

let g:f5 = "xdo-browser-refresh Google-chrome"

" " F5 and F7 commands {{{
" noremap <silent> <F4> :w<cr>:call RunF5()<cr>
" vnoremap <silent> <F4> <esc>:w<cr>:call RunF5()<cr>gv
" inoremap <silent> <F4> <esc>:w<cr>:call RunF5()<cr>
" func! RunF5()
"     echomsg "EXEC " . g:f5
"         exec "ruby `" . g:f5 . "`"
" endfunc
" 
" noremap <silent> <F7> :w<cr>:call RunF7()<cr>
" vnoremap <silent> <F7> <esc>:w<cr>:call RunF7()<cr>gv
" inoremap <silent> <F7> <esc>:w<cr>:call RunF7()<cr>
" func! RunF7()
"     echomsg "EXEC " . g:f7
"         exec "ruby `" . g:f7 . "`"
" endfunc
" "}}}

nmap <silent> <F5> <ESC>:!xdo-terminal-run-last-cmd magic <cr><cr>
imap <silent> <F5> <ESC>:!xdo-terminal-run-last-cmd magic <cr><cr>

nmap <silent> <F6> <ESC>:!xdo-browser-refresh google-chrome <cr><cr>
imap <silent> <F6> <ESC>:!xdo-browser-refresh google-chrome <cr><cr>
