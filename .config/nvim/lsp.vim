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
            \ 'python': ['pyls'],
            \ 'rust': ['rust-analyzer'],
            \ }
