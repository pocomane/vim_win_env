
function! vim_shell_conf#include()
endfunction

""""""""""""""""""""""""""""""
" BUNDLE NEED: VimShell

"let g:vimshell_no_default_keymappings=1
"" Normal mode
":nnoremap <CR> <Plug>(vimshell_enter)
":nnoremap q <Plug>(vimshell_hide)
":nnoremap Q <Plug>(vimshell_exit)
":nnoremap <C-p> <Plug>(vimshell_previous_prompt)
":nnoremap <C-n> <Plug>(vimshell_next_prompt)
":nnoremap <C-y> <Plug>(vimshell_paste_prompt)
":nnoremap E <Plug>(vimshell_move_end_argument)
":nnoremap cc <Plug>(vimshell_change_line)
":nnoremap dd <Plug>(vimshell_delete_line)
":nnoremap I <Plug>(vimshell_insert_head)
":nnoremap A <Plug>(vimshell_append_end)
":nnoremap i <Plug>(vimshell_insert_enter)
":nnoremap a <Plug>(vimshell_append_enter)
":nnoremap ^ <Plug>(vimshell_move_head)
":nnoremap <C-c> <Plug>(vimshell_interrupt)
":nnoremap <C-k> <Plug>(vimshell_hangup)
":nnoremap <C-l> <Plug>(vimshell_clear)
":nnoremap <C-z> <Plug>(vimshell_execute_by_background)
":nnoremap <C-p> <Plug>(vimshell_int_previous_prompt)
":nnoremap <C-n> <Plug>(vimshell_int_next_prompt)
":nnoremap <CR> <Plug>(vimshell_int_execute_line)
":nnoremap <C-y> <Plug>(vimshell_int_paste_prompt)
":nnoremap <C-z> <Plug>(vimshell_int_restart_command)
":nnoremap <C-c> <Plug>(vimshell_int_interrupt)
":nnoremap q <Plug>(vimshell_int_exit)
":nnoremap cc <Plug>(vimshell_int_change_line)
":nnoremap dd <Plug>(vimshell_int_delete_line)
":nnoremap I <Plug>(vimshell_int_insert_head)
":nnoremap A <Plug>(vimshell_int_append_end)
":nnoremap i <Plug>(vimshell_int_insert_enter)
":nnoremap a <Plug>(vimshell_int_append_enter)
":nnoremap <C-l> <Plug>(vimshell_int_clear)
"" Insert mode
":inoremap <CR> <Plug>(vimshell_enter)
":inoremap <C-l> <Plug>(vimshell_history_unite)
":inoremap <C-p>/<Up> <Plug>(vimshell_history_neocomplete)
":inoremap <C-n>/<Down> <Plug>(vimshell_history_neocomplete)
":inoremap <TAB> <Plug>(vimshell_command_complete)
":inoremap <C-a> <Plug>(vimshell_move_head)
":inoremap <C-u> <Plug>(vimshell_delete_backward_line)
":inoremap <C-w> <Plug>(vimshell_delete_backward_word)
"":inoremap <C-z> (while execute) <Plug>(vimshell_execute_by_background)
"":inoremap (other)   <Plug>(vimshell_push_current_lqq0ine)
":inoremap <C-t> <Plug>(vimshell_insert_last_word)
":inoremap <C-c> <Plug>(vimshell_interrupt)
":inoremap <C-h> <Plug>(vimshell_delete_backward_char)
":inoremap <BS> <Plug>(vimshell_delete_backward_char)
":inoremap <C-k> <Plug>(vimshell_delete_forward_line)
":inoremap <C-h> <Plug>(vimshell_int_delete_backward_char)
":inoremap <BS> <Plug>(vimshell_int_delete_backward_char)
":inoremap <C-a> <Plug>(vimshell_int_move_head)
":inoremap <C-u> <Plug>(vimshell_int_delete_backward_line)
":inoremap <C-w> <Plug>(vimshell_int_delete_backward_word)
":inoremap <C-k> <Plug>(vimshell_int_delete_forward_line)
":inoremap <CR> <Plug>(vimshell_int_execute_line)
":inoremap <C-c> <Plug>(vimshell_int_interrupt)
":inoremap <C-l> <Plug>(vimshell_int_history_unite)
":inoremap <C-v> <Plug>(vimshell_int_send_input)
":inoremap <C-n> <C-n>
":inoremap <TAB>     Select candidate or start completion

