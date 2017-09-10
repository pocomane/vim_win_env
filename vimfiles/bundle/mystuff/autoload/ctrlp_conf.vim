
function! ctrlp_conf#include()
endfunction

""""""""""""""""""""""""""""""
" BUNDLE NEED: CtrlP

" CtrlP
let g:ctrlp_open_new_file = 'r'
" CtrlP + Solarized = Fix
:hi CursorLine ctermfg=white

""""""""""" ALTRO !!!! TESTS !!!!
" function! Unaprova(cmd)
"   execute ":enew\n:read !".a:cmd
" endfunction
" command! -nargs=1 Msh call Unaprova('<args>')

