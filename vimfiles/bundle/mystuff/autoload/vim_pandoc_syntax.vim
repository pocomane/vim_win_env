
function! vim_pandoc_syntax#include()
endfunction

""""""""""""""""""""""""""""""
" BUNDLE NEED: vim-pandoc-syntax

" disable conceal (chars visual substitution)
let g:pandoc#syntax#conceal#use=0

" enable pandoc type for markdow
augroup pandoc_syntax
  au! BufNewFile,BufFilePRe,BufRead *.md,*.markdown set filetype=markdown.pandoc
augroup END

