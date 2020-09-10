
function! timestamp#include()
endfunction

function!  MyTimestamp()
  r !date '+\%Y-\%m-\%d \%H:\%M [UTC\%z,\%U,\%a,\%b]'
endfunction

:nnoremap <Leader>tt :call MyTimestamp()<CR>

