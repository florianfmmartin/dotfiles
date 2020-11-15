" nerdtree

let NERDTreeShowHidden=1
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif

nnoremap <leader>nt :NERDTreeToggle<CR>
let g:which_key_map.n.t = "tree"
