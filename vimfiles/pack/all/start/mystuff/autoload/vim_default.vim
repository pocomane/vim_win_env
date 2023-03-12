
function! vim_default#include()
endfunction

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
set nowrap
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

let g:markdown_fenced_languages = ['c','js=javascript','lua','go']

