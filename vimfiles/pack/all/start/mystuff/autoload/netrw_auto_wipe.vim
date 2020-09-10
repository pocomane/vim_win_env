
function! netrw_auto_wipe#include()
endfunction

au FileType netrw au BufLeave <buffer> setlocal bufhidden=wipe

