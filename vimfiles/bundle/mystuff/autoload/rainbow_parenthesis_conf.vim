
function! rainbow_parenthesis_conf#include()
endfunction

""""""""""""""""""""""""""""""
" BUNDLE NEED: RainbowParenthesis

let g:rainbow_conf = {
    \   'guifgs': ['red', 'magenta', 'yellow', 'blue', 'cyan', 'green'],
    \   'ctermfgs': ['red', 'magenta', 'yellow', 'blue', 'cyan', 'green'],
    \}
autocmd VimEnter * RainbowToggle

