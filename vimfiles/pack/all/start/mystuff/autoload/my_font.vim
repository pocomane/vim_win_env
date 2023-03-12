
function! my_font#include()
endfunction

if has("win64") || has("win32") || has("win16")
  set guifont=Lucida\ console:h10
else
  set guifont=Monospace\ 13
endif

