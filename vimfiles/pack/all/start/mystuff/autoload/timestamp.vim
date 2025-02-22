
function! timestamp#include()
endfunction

function!  MyTimestamp()
  let dat = strftime('%Y-%m-%d %H:%M:%S [UTC%z,%a,%h]')
  call append(line('.'), dat)
endfunction

:nnoremap <Leader>tt :call MyTimestamp()<CR>

