"-------------"
" vim plugins "
"-------------"
        call plug#begin('~/.vim/plugged')

        " theme plugins
        Plug 'joshdick/onedark.vim'

        " airline plugin
        Plug 'vim-airline/vim-airline'
        Plug 'vim-airline/vim-airline-themes'

        " FuZzy File plugin
        Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
        Plug 'junegunn/fzf.vim'

        " tcomment plugin
        Plug 'tomtom/tcomment_vim'

        " fugitive plugin
        Plug 'tpope/vim-fugitive'

        " surronds plugin
        Plug 'tpope/vim-surround'

        " css color plugin
        Plug 'ap/vim-css-color'

        " git gutter plugin
        Plug 'airblade/vim-gitgutter'

        " lsp client plugin
        Plug 'autozimu/LanguageClient-neovim', {
            \ 'branch': 'next',
            \ 'do': 'bash install.sh',
            \ }

        " better syntax
        Plug 'bfrg/vim-cpp-modern'
        Plug 'pangloss/vim-javascript'
        Plug 'ocaml/vim-ocaml'
        Plug 'vim-python/python-syntax'
        Plug 'rust-lang/rust.vim'

        " vim-tmux-runner
        Plug 'christoomey/vim-tmux-runner'

        " which key again...
        Plug 'liuchengxu/vim-which-key'

        " ghosttext
        Plug 'raghur/vim-ghost', {'do': ':GhostInstall'}

        " ranger
        Plug 'rbgrouleff/bclose.vim'
        Plug 'francoiscabrol/ranger.vim'

        call plug#end()

"----------"
" settings "
"----------"
        "----------"
        " built in "
        "----------"
                " leader
                        let mapleader = ","

                " prefix dict
                        call which_key#register(',', "g:which_key_map")
                        let g:which_key_map =  {}
                        let g:which_key_sep = '->'
                        let g:which_key_map = {
                            \ ',' : 'which_key_ignore',
                            \ }

                " tab and indent
                        set tabstop=4
                        set softtabstop=4
                        set shiftwidth=4
                        set expandtab
                        set autoindent
                        set nosmartindent
                        set nosmarttab
                        autocmd Filetype cpp setlocal noexpandtab

                        function LeaderReTab(len, style)
                                if a:style
                                    set noexpandtab
                                else
                                    set expandtab
                                endif
                                let &l:tabstop = a:len
                                let &l:softtabstop = a:len
                                let &l:shiftwidth = a:len
                                %retab!
                        endfunction
                        nnoremap <leader>rt :call LeaderReTab(

                        nnoremap <leader>rl 039lf<Space>r<CR>

                        let g:which_key_map.r = { 'name' : 'reload' }
                        let g:which_key_map.r.t = 'tab'
                        let g:which_key_map.r.l = 'limit'

                " numbers column
                        set number relativenumber
                        set signcolumn=yes

                " config ui
                        filetype plugin on
                        syntax on
                        set conceallevel=0
                        set lazyredraw
                        set showmatch " show matching "([{
                        set showcmd " shows the ungoing command
                        set scrolloff=8
                        set path+=**
                        set timeoutlen=300
                        set cursorline
                        set fillchars=vert:\ 
                        call matchadd('SpellBad', '\%81v')
                        hi! VertSplit ctermfg=145 guifg=#ABB2BF

                        nnoremap <leader>rc :w<CR>:source ~/.config/nvim/init.vim<CR>
                        let g:which_key_map.r.c = 'config'

                " buffers
                        set hidden
                        nnoremap gt :bnext<CR>
                        nnoremap gb :bprevious<CR>
                        nnoremap ge :bp <BAR> bd #<CR>

                " clipboard
                        set clipboard+=unnamedplus
                        vnoremap t $hy

                        nnoremap <leader>y yyp
                        let g:which_key_map.y = "yyp"

                " searching
                        set ignorecase

                        nnoremap <leader><space> :noh<CR>

                " extra line management
                        nnoremap <leader>o O<Esc>
                        let g:which_key_map.o = 'line'

                " fold
                        set foldlevelstart=10
                        set foldmethod=indent

                " invisibles
                        set listchars=eol:¬,space:·,tab:>\ 
                        set list

                " split navigation
                        set splitright
                        set splitbelow
                        nnoremap <C-J> <C-W><C-J>
                        nnoremap <C-K> <C-W><C-K>
                        nnoremap <C-L> <C-W><C-L>
                        nnoremap <C-H> <C-W><C-H>

                " autocompletion setup
                        set completeopt=menuone
                        set shortmess+=c
                        inoremap ( ()<Esc>i
                        inoremap { {}<Esc>i
                        autocmd Filetype cpp inoremap { {<CR>}<Esc>O
                        inoremap [ []<Esc>i
                        inoremap " ""<Esc>i

                " move line visual
                        xnoremap K :move '<-2<CR>gv-gv
                        xnoremap J :move '>+1<CR>gv-gv
                        xnoremap < <<CR>gv-gv
                        xnoremap > ><CR>gv-gv

                " naviguation
                        nnoremap <Up> <Nop>
                        nnoremap <Down> <Nop>
                        nnoremap <Left> <Nop>
                        nnoremap <Right> <Nop>
                        inoremap <Up> <Nop>
                        inoremap <Down> <Nop>
                        inoremap <Left> <Nop>
                        inoremap <Right> <Nop>
                        nnoremap <leader><leader> <Esc>la
                        inoremap <leader><leader> <Esc>la
                        nnoremap ; :
                        nnoremap : ;
                        nnoremap - $
                        vnoremap - $
                        xnoremap - $
                        inoremap <C-Space> <C-X><C-O>

        "---------"
        " plugins "
        "---------"
                " theme settings
                        set termguicolors
                        colorscheme onedark

                " airline settings
                        let g:airline_powerline_fonts = 1
                        let g:airline_theme='lucius'
                        let g:airline_section_error=''
                        let g:airline_section_warning=''
                        let g:airline#extensions#tabline#enabled = 1
                        let g:airline#extensions#tabline#fnamemod = ':t'
                        let g:airline#extensions#tabline#buffers_label = ''
                        let g:airline_section_c = '%t'
                        let g:airline_section_z = '%l/%L : %02c'
                        set noshowmode

                " fzf settings
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
                        nnoremap <leader>f :FZF ~<CR>
                        nnoremap <leader>z :FZF  <CR>
                        nnoremap <leader>sb :Lines <CR>
                        nnoremap <leader>lg :Tags <CR>
                        let g:which_key_map.f = 'fzf'
                        let g:which_key_map.z = 'fzf cwd'
                        let g:which_key_map.s = {
                            \ 'name' : 'search',
                            \ 'b' : 'buffers',
                            \ }

                " tcomment settings
                        nnoremap <leader>c :TComment<CR>
                        vnoremap <leader>c :TComment<CR>
                        let g:which_key_map.c = 'comment'
                        let g:which_key_map._ = {
                            \ 'name' : 'which_key_ignore',
                            \ }
                " gutter
                        let g:which_key_map.h = {
                            \ 'name' : 'gutter',
                            \ 'p' : 'preview',
                            \ 's' : 'stage',
                            \ 'u' : 'undo',
                            \ }

                " lsp settings
                        set completefunc=LanguageClient#complete

                        " let g:LanguageClient_changeThrottle = 2
                        let g:LanguageClient_serverCommands = {
                            \ 'python': ['/home/florian/.local/bin/pyls'],
                            \ 'ocaml' : ['/home/florian/.opam/default/bin/ocamllsp'],
                            \ 'cpp'   : ['/usr/bin/ccls'],
                            \ 'rust'  : ['rust-analyzer'],
                            \ 'javascript' : ['node lib/language-server'],
                            \ }
                        let g:LanguageClient_useFloatingHover = 1
                        let g:LanguageClient_virtualTextPrefix='-- '

                        nnoremap <leader>lf :LanguageClientStop<CR>
                        nnoremap <leader>ls :LanguageClientStart<CR>
                        nnoremap <leader>lh :call LanguageClient#textDocument_hover()<CR>
                        nnoremap <leader>ld :call LanguageClient#textDocument_definition()<CR>
                        nnoremap <leader>lm :call LanguageClient_contextMenu()<CR>
                        let g:which_key_map.l = { 'name' : 'lang' }
                        let g:which_key_map.l.h = 'hover'
                        let g:which_key_map.l.d = 'def'
                        let g:which_key_map.l.m = 'menu'
                        let g:which_key_map.l.f = 'finish'
                        let g:which_key_map.l.s = 'start'
                        let g:which_key_map.l.g = 'generate' " Comes from fzf

                " better syntax settings
                        let g:python_highlight_all = 1

                " vimtmux
                        nnoremap <leader>to :VtrOpenRunner<CR>
                        nnoremap <leader>tl :VtrSendLinesToRunner<CR>
                        vnoremap <leader>tl :VtrSendLinesToRunner<CR>
                        nnoremap <leader>tr :VtrClearRunner<CR>
                        let g:which_key_map.t = { 'name' : 'tmux' }
                        let g:which_key_map.t.o = 'open'
                        let g:which_key_map.t.l = 'send line'
                        let g:which_key_map.t.r = 'clear'

                " which key
                        let g:which_key_use_floating_win = 0
                        nnoremap <silent> <leader> :WhichKey ','<CR>
                        autocmd! FileType which_key
                        autocmd  FileType which_key set laststatus=0 noshowmode noruler
                          \| autocmd BufLeave <buffer> set laststatus=2 noshowmode ruler
                " ranger
                        let g:ranger_map_keys = 0
                        let g:ranger_replace_netrw = 1
                        nnoremap <leader>n :Ranger<CR>
                        let g:which_key_map.n = 'ranger'

        " empty?
        if empty(argv())
            au VimEnter * FZF!
        endif

