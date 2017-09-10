
function! counter_util#include()
endfunction

function! Mystuff_count_util_paste()
  normal! i``"cP"cyiwf`xF`x
endfunction

function! Mystuff_count_util_replace()
  normal! diw
  call Mystuff_count_util_paste()
endfunction

function! Mystuff_count_util_load()
  normal! "cyiw
endfunction

function! Mystuff_count_util_vfill()
  let s = my_utils#visual_clear()
  if s > 0
    call Mystuff_count_util_paste()
  endif
endfunction

noremap <Leader>Cc :call Mystuff_count_util_load()<Enter>
noremap <Leader>cC :call Mystuff_count_util_load()<Enter>

noremap <Leader>cc :call Mystuff_count_util_paste()<Enter>
noremap <Leader>CC :call Mystuff_count_util_replace()<Enter>

noremap <Leader>xx :call Mystuff_count_util_vfill()<Enter>

function! Mystuff_test()
  echo col("0") ." ". col("'<") ." ". col(".") ." ". col("'>") ." ". col("$")
  return 0
endfunction
noremap <Leader>XX :call Mystuff_test()<Enter>


