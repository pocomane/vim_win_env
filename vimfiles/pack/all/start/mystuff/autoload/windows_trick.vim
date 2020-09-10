
function! windows_trick#include()
endfunction

" Some trick for the window version (no-cygwin) of gvim

if has("win64") || has("win32") || has("win16")

"let &shell=fnamemodify("$VIM/../sh.bat",":p")
"let &shell=fnamemodify($REFDIR."/busybox/busybox.exe sh -c",":p")
"let &shell=fnamemodify($REFDIR."/sysview/bin/bash -c",":p")
"let &shell=fnamemodify($REFDIR."/sysview/bin/sh -c",":p")
"set shell=C:/cygwin/bin/bash
"set shell=sh\ -c
"
set shell=busybox.exe
set shellcmdflag=ash\ -c

"set shellcmdflag=
set shellslash
set shellxquote=\"
set backspace=2
set backspace=indent,eol,start

set noerrorbells visualbell
"autocmd GUIEnter * set visualbell t_vb=

" set guifont=Liberation\ Mono:h10

set diffexpr=vim_originalify_diff#diffexpr()

endif

