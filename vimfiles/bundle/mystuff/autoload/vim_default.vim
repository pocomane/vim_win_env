
function! vim_default#include()
endfunction

" The skip_defautls is needed to avoid to mess with options in some other
" stage of startup (e.g. defaults.vim will change nocompatible flag that
" will affect a lot of other options)
let skip_defaults_vim=1

set nocompatible

filetype plugin indent on

" Misc
set encoding=utf-8
"set number
set relativenumber
"set nonu
set nu
set tabstop=2
set shiftwidth=2
set softtabstop=2
set expandtab
set smarttab
set showmode
set colorcolumn=85
"au FocusLost * :wa
set wrap
set linebreak
set ignorecase
"set laststatus=2

set ruler

set showmatch

" Modified buffer can be in background without rising error
set hidden

" Persistent undo
set undofile

" Auto C-like identation with '=='
set cindent

" Smart case search
" note: it affects regexp substitution also. To avoid it
" you can use I at end of regexp. ex. :%s/fiND/replace/gI
set smartcase

" Enable mouse support
" ( use <shift>MouseButton for the 
"  normal clipboard operation)
:set mouse=a

" Show search result
set incsearch
set showmatch
set hlsearch

" Tab-complete menu
set wildmenu
set wildmode=full

" Pedagogico
" inoremap <Esc> <nop>
" inoremap <Up> <nop>
" inoremap <Right> <nop>
" inoremap <Down> <nop>
" inoremap <Left> <nop>
" noremap <Up> <nop>
" noremap <Right> <nop>
" noremap <Down> <nop>
" noremap <Left> <nop>

syntax enable
"runtime! syntax/syntax.vim

