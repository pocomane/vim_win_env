
function! quickfix_conf#include()
endfunction

set shellpipe=2>\&1\ \|\ tee\ %s
set errorformat+=%f:%l:%c:\ %m
"set makeprg=gcc\ -c\ -o\ out.o\ %
set makeprg=mingw32-make\ -j4

