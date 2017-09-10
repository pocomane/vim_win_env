
function! unite_conf#include()
endfunction

""""""""""""""""""""""""""""""
" BUNDLE NEED: Unite

let g:unite_source_history_yank_enable = 1
let g:unite_enable_start_insert = 1
let g:unite_cursor_line_highlight = 'TabLine'
let g:unite_no_split = 1
"let g:unite_split_rule = "topleft"
"let g:unite_enable_split_vertically = 1
let g:unite_split_rule = "botright"
noremap <Leader>bb :Unite -no-split buffer<CR>
noremap <Leader>ff :Unite -no-split file_rec<CR>

let g:unite_data_directory=g:vim_cache_directory."/unite"

