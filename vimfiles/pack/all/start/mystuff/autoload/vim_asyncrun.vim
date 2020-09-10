
function! vim_asyncrun#include()
endfunction

""""""""""""""""""""""""""

" Asyncrun has some issue with multiple shell flag
let g:asyncrun_shell=&shell
let g:asyncrun_shellflag=&shellcmdflag
let g:asyncrun_wrapper = &shell . ' ' . &shellcmdflag

" On windows Asyncrun uses an intermediate cmd file
if has("win64") || has("win32") || has("win16")
  let g:asyncrun_shell='cmd.exe'
  let g:asyncrun_shellflag='/C'
endif

" NOTE : with this configuration you need to put your command between quote, e.g.
" :AsyncRun "ls *.txt"

