
""""""""""""""""""""""""""""""
" BUNDLE NEED: Vim-Commentary

function! commentary_conf#include()
endfunction

autocmd FileType c setlocal commentstring=//\ %s
autocmd FileType cpp setlocal commentstring=//\ %s

