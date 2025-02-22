
function! zettelkasten#include()
endfunction

function!  MyZkPath()
  return "~/store/zettelkasten/"
endfunction

function!  MyZkNote()
  let dat = MyZkPath().fnameescape(strftime('%Y_%m_%d_%H_%M_%S_').substitute(substitute(strftime('%z'), '+', "p", ''), '-', 'm', ''))
  let cmd = "e ".dat.".md"
  execute cmd
endfunction

function!  MyZkCopyLink()
  let lnk='[link]('.expand('%:t').')'
  let @"=lnk
  echo "link copied: ".lnk
endfunction

function!  MyZkFind()
  let cmd='vimgrep /'.input('search in notes: ').'/f '.MyZkPath().'\d\d\d\d_\d\d_\d\d_\d\d_\d\d_*.[mM][dD]'
  execute cmd
  echo cmd
endfunction

:nnoremap <Leader>ze :call MyZkNote()<CR>
:nnoremap <Leader>zl :call MyZkCopyLink()<CR>
:nnoremap <Leader>zf :call MyZkFind()<CR>

