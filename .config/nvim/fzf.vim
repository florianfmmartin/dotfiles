" fzf

let g:fzf_layout = {'window':{'width':1,'height':0.98}}
let g:fzf_preview_window = 'up:45%'
let g:fzf_colors =
            \ { 'fg':      ['fg', 'Normal'],
            \ 'bg':      ['bg', 'Normal'],
            \ 'hl':      ['fg', 'Title'],
            \ 'fg+':     ['fg', 'CursorLine', 'CursorColumn', 'Normal'],
            \ 'bg+':     ['bg', 'CursorLine', 'CursorColumn'],
            \ 'hl+':     ['fg', 'Statement'],
            \ 'info':    ['fg', 'PreProc'],
            \ 'gutter':  ['bg', 'Normal'],
            \ 'border':  ['fg', 'Ignore'],
            \ 'prompt':  ['fg', 'Conditional'],
            \ 'pointer': ['fg', 'Exception'],
            \ 'marker':  ['fg', 'Keyword'],
            \ 'spinner': ['fg', 'Label'],
            \ 'header':  ['fg', 'Comment'] }

nnoremap <leader>z :Files ~<CR>
nnoremap <leader>f :Files<CR>
nnoremap <leader>s :Lines<CR>
nnoremap <leader>w :Lines <C-R>=expand("<cword>")<CR><CR>
nnoremap <leader>lg :Tags<CR>

let g:which_key_map.f = 'fzf home'
let g:which_key_map.z = 'fzf cwd'
let g:which_key_map.s = 'search'
let g:which_key_map.w = '* fzf '
let g:which_key_map.l = { 'name' : 'lang' }
let g:which_key_map.l.g = 'tags gen'
