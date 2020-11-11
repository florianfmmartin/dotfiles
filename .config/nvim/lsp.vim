" lsp

set completefunc=LanguageClient#complete
let g:LanguageClient_virtualTextPrefix = "-- "
let g:LanguageClient_hideVirtualTextsOnInsert = 1
let g:LanguageClient_serverCommands = {
            \ 'cmake': ['cmake-language-server'],
            \ 'cpp': ['ccls'],
            \ 'html': ['html-languageserver'],
            \ 'latex': ['texlab'],
            \ 'plaintex': ['texlab'],
            \ 'tex': ['texlab'],
            \ 'ocaml': ['ocamllsp'],
            \ 'python': ['/home/florianfmmartin/.local/bin/pyls'],
            \ 'rust': ['rust-analyzer'],
            \ }

nmap <silent><leader>lh <Plug>(lcn-hover)
nmap <silent><leader>lr <Plug>(lcn-rename)
nmap <silent><leader>ld <Plug>(lcn-definition)
nmap <silent><leader>li <Plug>(lcn-implementation)
nmap <silent><leader>lf <Plug>(lcn-format)

let g:which_key_map.l = {
    \ 'name': 'lang',
    \ 'h': 'hover',
    \ 'r': 'rename',
    \ 'd': 'def',
    \ 'i': 'imp',
    \ 'f': 'format',
    \ }

