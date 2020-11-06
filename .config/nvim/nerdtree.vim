" nerdtree

let NERDTreeNaturalSort = 1
let NERDTreeShowHidden = 1
let NERDTreeWinPos = "right"
let NERDTreeStatusline = ""
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif

nnoremap <leader>t :NERDTree<CR>
let g:which_key_map.t = 'tree'

