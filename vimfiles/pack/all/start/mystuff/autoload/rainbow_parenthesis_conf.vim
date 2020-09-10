
function! rainbow_parenthesis_conf#include()
endfunction

""""""""""""""""""""""""""""""
" BUNDLE NEED: RainbowParenthesis

let g:rainbow_conf = {
    \   'guifgs': ['blue', 'cyan', 'green', 'yellow', 'magenta', 'red' ],
    \   'ctermfgs': ['blue', 'cyan', 'green', 'yellow', 'magenta', 'red' ],
    \}
autocmd VimEnter * RainbowToggle

