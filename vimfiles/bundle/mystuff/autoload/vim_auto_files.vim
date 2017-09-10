
function! vim_auto_files#include()
endfunction

" $MYVIMRC sometimes is not set.
" Repleace it with a new variable calculated from scriptnames command.
let s:myvimrc=""
function! s:ScriptNamesFunc()
  scriptnames
endfunction
redir => s:myvimrc
silent call s:ScriptNamesFunc()
redir END
let s:myvimrc=split(s:myvimrc, '\n')[0]
let s:myvimrc=split(s:myvimrc, ': ')[1]

" Found reference directory
"let s:refdir=fnamemodify(s:myvimrc,":p:h")
"let s:refdir=fnamemodify($VIM."/..",":p")
if !empty($VIMHOME)
  let s:refdir=$VIMHOME
elseif !empty($HOME)
  let s:refdir=$HOME."/.vim"
elseif !(has("win64") || has("win32") || has("win16"))
 let s:refdir=getcwd().'/vimfiles'
end

if (!exists("g:vim_cache_directory"))
  let g:vim_cache_directory=s:refdir."/vimcache"
endif

" Make dirs!
for adir in  [g:vim_cache_directory, g:vim_cache_directory."/backup", g:vim_cache_directory."/swap", g:vim_cache_directory."/undo"]
  if !isdirectory(adir)
    call mkdir(adir)
  endif
endfor

" Vim info file path
execute "set viminfo+=n".escape(g:vim_cache_directory,'\')."/viminfo"

" Cetral location for backup/swap/undo files.
" Double // required to handle name collisions.
let &backupdir=g:vim_cache_directory."/backup//"
let &directory=g:vim_cache_directory."/swap//"
let &undodir=g:vim_cache_directory."/undo//"

" echo "CHECK: set viminfo+=n".g:vim_cache_directory."/viminfo"
" echo "OUT: " . &viminfo
" echo "CHECK: set backupdir=".g:vim_cache_directory."/backup//"
" echo "OUT: " . &backupdir
" echo "CHECK: set directory=".g:vim_cache_directory."/swap//"
" echo "OUT: " . &directory
" echo "CHECK: set undodir=".g:vim_cache_directory."/undo//"
" echo "OUT: " . &undodir

