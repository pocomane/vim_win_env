"*****************************************************************************
" unified diff
"
" Inspired by http://qiita.com/takaakikasai/items/3d4f8a4867364a46dfa3
"
" Author:   Alisue <lambdalisue@hashnote.net>
" URL:      http://hashnote.net/
" License:  MIT license
" (C) 2015, Alisue, hashnote.net
"*****************************************************************************

function! s:parse_unified_region(line) abort " {{{
  let m = matchlist(a:line, '\v^\@\@ \-(\d+)%(,(\d+))? \+(\d+)%(,(\d+))? \@\@')
  if empty(m)
    throw printf('vim-unified-diffexpr: invalid format "%s" was specified', a:line)
  endif
  let m = m[1 : 4]
  " find correct action
  if m[1] == '0'
    let a = 'a'
  elseif m[3] == '0'
    let a = 'd'
  else
    let a = 'c'
  endif
  " find correct endpoint
  let send = ''
  if !empty(m[1]) && m[1] !=# '0'
    let send = printf(',%d', m[0] + m[1] - 1)
  endif
  let dend = ''
  if !empty(m[3]) && m[3] !=# '0'
    let dend = printf(',%d', m[2] + m[3] - 1)
  endif
  return join([m[0], send, a, m[2], dend], '')
endfunction " }}}

function! s:parse_unified(unified) abort " {{{
  let unified = type(a:unified) == 1 ? split(a:unified, '\v\r?\n') : a:unified
  let _normal = []
  for line in unified
    if line =~# '\v^%(\+\+\+|\-\-\-)'
      continue
    elseif line =~# '\v^\@\@ \-%(\d+)%(,\d+)? \+%(\d+)%(,\d+)? \@\@'
      call add(_normal, s:parse_unified_region(line))
    elseif line =~# '\v^\-'
      call add(_normal, substitute(line, '\v^\-', '< ', ''))
    elseif line =~# '\v^\+'
      if _normal[-1] =~# '\v^\< '
        call add(_normal, '---')
      endif
      call add(_normal, substitute(line, '\v^\+', '> ', ''))
    endif
  endfor
  return _normal
endfunction " }}}

"*****************************************************************************

function! vim_originalify_diff#diff(fname_in, fname_new, fname_out) abort " {{{
  let unified = call('system', ['diff -U 0 ' . a:fname_in . ' ' . a:fname_new])
  let r = s:parse_unified(unified)
  call writefile(r, a:fname_out)
endfunction " }}}

function! vim_originalify_diff#diffexpr() abort " {{{
  return vim_originalify_diff#diff(v:fname_in, v:fname_new, v:fname_out)
endfunction " }}}

