
function! cui_handle#include()
endfunction

" Quick buffer operation
:nnoremap <C-k> :bn<CR>
:nnoremap <C-j> :bp<CR>

" Quick windows movement
:nnoremap <C-UP> :wincmd k<CR>
:nnoremap <C-DOWN> :wincmd j<CR>
:nnoremap <C-LEFT> :wincmd h<CR>
:nnoremap <C-RIGHT> :wincmd l<CR>

" Toggle displayed line movement
function MoveOnDisplayedLines()
 nnoremap <silent> j :normal! gj<CR>
 nnoremap <silent> k :normal! gk<CR>
endfunction
function MoveOnActualLines()
 nnoremap <silent> j :normal! j<CR>
 nnoremap <silent> k :normal! k<CR>
endfunction
nnoremap <leader>ll :call MoveOnActualLines()<CR>
nnoremap <leader>LL :call MoveOnDisplayedLines()<CR>
call MoveOnDisplayedLines()

