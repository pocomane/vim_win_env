
function! netrw_auto_wipe#include()
endfunction

function! F_netrw_close()
"  echon "netrw closed "
  setlocal bufhidden=wipe
endfunction

au FileType netrw au BufLeave <buffer> call F_netrw_close()

