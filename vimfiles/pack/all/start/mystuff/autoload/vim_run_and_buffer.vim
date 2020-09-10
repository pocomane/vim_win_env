
function! vim_run_and_buffer#include()
endfunction

""""""""""""""""""""""""""

function! s:ExpandCmdLine(cmdline)
  echo a:cmdline
  let expanded_cmdline = a:cmdline
  for part in split(a:cmdline, ' ')
     if part[0] =~ '\v[%#<]'
        let expanded_part = fnameescape(expand(part))
        let expanded_cmdline = substitute(expanded_cmdline, part, expanded_part, '')
     endif
  endfor
  return expanded_cmdline
endfunction

function! s:LogEnteredCommand(cmdline)
  normal! G
  let info = '===== You entered the command:  ' . a:cmdline
  put =info
  1
endfunction

function! s:SetScratchBuffer()
  setlocal buftype=nofile bufhidden=wipe nobuflisted noswapfile nowrap
  1
endfunction

function! s:RunShellCommandInBuffer(cmdline)
  normal! G
  let info = '===== The command expanded to:  ' .a:cmdline
  put =info
  let info = '===== Command result follows ====='
  put =info
  execute '$read !'. a:cmdline
  " setlocal nomodifiable
  1
endfunction

""""""""""""""""""""""""""

function! s:RunShellCommandScratch(cmdline)
  let expanded_line = s:ExpandCmdLine(a:cmdline)
  enew
  call s:SetScratchBuffer()
  call s:LogEnteredCommand(a:cmdline)
  call s:RunShellCommandInBuffer(expanded_line)
  1
endfunction

function! s:RunShellCommandSplit(cmdline)
  let expanded_line = s:ExpandCmdLine(a:cmdline)
  botright new
  call s:SetScratchBuffer()
  call s:LogEnteredCommand(a:cmdline)
  call s:RunShellCommandInBuffer(expanded_line)
  1
endfunction

let s:scratch_file = g:vim_cache_directory."/scratch.txt"

function! s:RunShellCommandFile(cmdline)
  let expanded_line = s:ExpandCmdLine(a:cmdline)
  execute 'edit' s:scratch_file
  normal! ggdG
  call s:LogEnteredCommand(a:cmdline)
  call s:RunShellCommandInBuffer(expanded_line)
  write
  1
endfunction

function! s:OpenCommandFile()
  execute 'edit'  s:scratch_file
  1
endfunction

command! -complete=shellcmd -nargs=+ Sh call s:RunShellCommandScratch(<q-args>)
command! -complete=shellcmd -nargs=+ Shell call s:RunShellCommandSplit(<q-args>)
command! -complete=shellcmd -nargs=+ SH call s:RunShellCommandFile(<q-args>)
command! SO call s:OpenCommandFile()

