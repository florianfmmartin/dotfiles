" tmux

nnoremap <leader>to :VtrOpenRunner<CR>
nnoremap <leader>tl :VtrSendLinesToRunner<CR>
vnoremap <leader>tl :VtrSendLinesToRunner<CR>
nnoremap <leader>tr :VtrClearRunner<CR>

let g:which_key_map.t = { 'name' : 'tmux' }
let g:which_key_map.t.o = 'open'
let g:which_key_map.t.l = 'send line'
let g:which_key_map.t.r = 'clear'
