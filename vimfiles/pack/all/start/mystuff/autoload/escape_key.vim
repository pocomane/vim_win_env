
function! escape_key#include()
endfunction

" Sane switching to normal mode for non-amarican keyboard
" Note: by default you can use
"   ctrl-[ - exactly the same as Esc, however on some 
"            keyboard ctrl-[ can be difficult to type.
"   ctrl-C - Almost similar to Esc, but has some differences (see
"            ":help ctrl-C" for details).
"   alt-anything - you will enter (and stay) the normal mode and execute
"                  the the command "anything". - not in gvim
" Moreover, the CTRL ones are great if you remap CAPS to CTRL !
" (but them do not work in gvim, why?)
inoremap <C-l> <Esc>
nnoremap <C-l> <Esc>
onoremap <C-l> <Esc>
vnoremap <C-l> <Esc>gV
inoremap <A-l> <Esc>
nnoremap <A-l> <Esc>
onoremap <A-l> <Esc>
vnoremap <A-l> <Esc>gV

