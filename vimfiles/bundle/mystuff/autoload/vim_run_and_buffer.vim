
function! s:ExpandCmdLine(cmdline)
  let expanded_cmdline = a:cmdline
  for part in split(a:cmdline, ' ')
     if part[0] =~ '\v[%#<]'
        let expanded_part = fnameescape(expand(part))
        let expanded_cmdline = substitute(expanded_cmdline, part, expanded_part, '')
     endif
  endfor
  return expanded_cmdline
endfunction

function! s:SetAsScratchBuffer()
  setlocal buftype=nofile bufhidden=wipe nobuflisted noswapfile nowrap
endfunction

function! s:ExecuteCommand(info, cmdline)
  call s:SetAsScratchBuffer()
  call setline(1, 'You entered:    ' . a:info)
  call setline(2, 'Expanded Form:  ' .a:cmdline)
  call setline(3,substitute(getline(2),'.','=','g'))
  execute '$read !'. a:cmdline
  " setlocal nomodifiable
  1
endfunction

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

function! s:RunShellCommand(cmdline)
  let expanded_cmdline = s:ExpandCmdLine(a:cmdline)
  enew
  call s:ExecuteCommand(a:cmdline, expanded_cmdline)
  1
endfunction

function! s:RunShellCommandLeft(cmdline)
  let expanded_cmdline = s:ExpandCmdLine(a:cmdline)
  botright new " TODO : change this !
  call s:ExecuteCommand(a:cmdline, expanded_cmdline)
  1
endfunction

function! s:RunShellCommandDown(cmdline)
  let expanded_cmdline = s:ExpandCmdLine(a:cmdline)
  botright new
  call s:ExecuteCommand(a:cmdline, expanded_cmdline)
  1
endfunction

command! -complete=shellcmd -nargs=+ Sh call s:RunShellCommand(<q-args>)
command! -complete=shellcmd -nargs=+ Shdown call s:RunShellCommandDown(<q-args>)
command! -complete=shellcmd -nargs=+ Shleft call s:RunShellCommandLeft(<q-args>)

function! vim_run_and_buffer#include()
endfunction

