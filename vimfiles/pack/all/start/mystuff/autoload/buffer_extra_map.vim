
function! buffer_extra_map#include()
endfunction

""""""""""""""""""""""""""""""
" BUNDLE NEED: CtrlP

let g:bufExplorerDefaultHelp=0
let g:bufExplorerDetailedHelp=0
let g:bufExplorerShowDirectories=1
let g:bufExplorerShowTabBuffer=0
let g:bufExplorerShowUnlisted=1
"let g:bufExplorerSortBy='mru'
let g:bufExplorerSortBy='number'
command BE call BufExplorer()
nnoremap _ :BE<CR>

""""""""""""""""""""""""""""""
" BUNDLE NEED: BufKill

:noremap <Leader>ww :BD<CR>
:noremap <Leader>WW :BD!<CR>

""""""""""""""""""""""""""""""
" BUNDLE NEED: QNameBuf & QNameFile

"nmap <unique> <F4> QNameBufInit(0, 5, 0, 0)<cr>:~
nmap <unique> <F5> :call QNameFileInit('', '', 0)<cr>:~
nmap <Leader>mm :call QNameBufInit(0, 5, 0, 0)<cr>:~
nmap <Leader>nn :call QNameFileInit('', '', 0)<cr>:~

