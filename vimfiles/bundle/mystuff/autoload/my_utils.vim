
"""""""""""""""""""""""""""""""""""""
" Visual block handling

function! my_utils#visual_get()
  let a = col("'<")
  let b = col("'>")
  let c = col("$")
  if a >= c
    return [0, 0]
  endif
  if b >= c
    let b = c - 1
  endif
  let a = a - 1
  let s = b - a
  return [s, a]
endfunction
  
function! my_utils#visual_go()
  let [s, a] = my_utils#visual_get()
  if s == 0
    return 0
  endif
  let cmd = "normal! 0"
  if a>0
    let cmd = cmd . a . "l"
  endif
  exe cmd
  return s
endfunction

function! my_utils#visual_clear()
  let s = my_utils#visual_go()
  if s > 0
    let cmd = "normal! " . s . "dl"
    exe cmd
  endif
  return s
endfunction

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""

