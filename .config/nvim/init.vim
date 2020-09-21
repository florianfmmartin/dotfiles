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

        " surronds plugin
        Plug 'tpope/vim-surround'

        " css color plugin
        Plug 'ap/vim-css-color'

        " vim signify
        Plug 'mhinz/vim-signify'

        " lsp client plugin
        Plug 'autozimu/LanguageClient-neovim', {
            \ 'branch': 'next',
            \ 'do': 'bash install.sh',
            \ }

        " treesitter better syntax
        Plug 'nvim-treesitter/nvim-treesitter'

        " polyglot
        Plug 'sheerun/vim-polyglot'

        " vim-tmux-runner
        Plug 'christoomey/vim-tmux-runner'

        " which key again...
        Plug 'liuchengxu/vim-which-key'

        " ranger
        Plug 'rbgrouleff/bclose.vim'
        Plug 'francoiscabrol/ranger.vim'

        " snips
        Plug 'SirVer/ultisnips'

        call plug#end()

"----------"
" settings "
"----------"
        "----------"
        " built in "
        "----------"
                " theme settings
                        set termguicolors
                        colorscheme onedark

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
                        au Filetype cpp setlocal noexpandtab
                        au Filetype ocaml setlocal noexpandtab tabstop=2
                        au Filetype ocaml setlocal softtabstop=2 shiftwidth=2
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
                        let g:which_key_map.r.t = 'tabs'
                        let g:which_key_map.r.l = 'limit'

                " numbers column
                        set number relativenumber
                        set signcolumn=yes

                " config ui
                        filetype plugin on
                        syntax on
                        set conceallevel=0
                        set lazyredraw
                        set showmatch
                        set showcmd
                        set scrolloff=8
                        set path+=**
                        set timeoutlen=300
                        set cursorline
                        set fillchars=vert:\ 
                        call matchadd('SpellBad', '\%80v')
                        hi! VertSplit ctermfg=145 guifg=#ABB2BF
                        hi! Comment cterm=bold gui=bold

                        nnoremap <leader>rc :w<CR>:source ~/.config/nvim/init.vim<CR>
                        let g:which_key_map.r.c = 'config'

                " buffers
                        set hidden
                        nnoremap gt :bnext<CR>
                        nnoremap gb :bprevious<CR>
                        nnoremap ge :bp <BAR> bd #<CR>

                " clipboard
                        set clipboard+=unnamedplus
                        vnoremap T $hy

                        nnoremap <leader>y yyp
                        let g:which_key_map.y = "yyp"

                " searching
                        set ignorecase
                        nnoremap <leader><space> :noh<CR>

                " extra line management
                        nnoremap <leader>o O<Esc>
                        let g:which_key_map.o = 'extra line'

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
                        inoremap [ []<Esc>i
                        inoremap " ""<Esc>i
                        autocmd Filetype cpp inoremap { {<CR>}<Esc>O
                        autocmd Filetype tex inoremap $ $$<Esc>i

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
                        nnoremap <Space> w
                        nnoremap <BackSpace> b

                " latex
                        nnoremap <leader>xc :!pdflatex '%:p'<CR>
                        nnoremap <leader>xv :!zathura '%:r'.pdf & disown <CR>
                        let g:which_key_map.x = {
                            \ 'name' : 'latex',
                            \ 'c' : 'compile',
                            \ 'v' : 'view',
                            \ }

                " highlight yank
                        au TextYankPost * silent! lua vim.highlight.on_yank() {timeout=800}

                " spell checking
                        inoremap <C-l> <c-g>u<Esc>[s1z=`]a<c-g>u
                        nnoremap <leader>es :setlocal nospell<CR>
                        nnoremap <leader>ef :setlocal spell spelllang=fr<CR>
                        nnoremap <leader>ee :setlocal spell spelllang=en<CR>
                        let g:which_key_map.e = {
                            \ 'name' : 'spell',
                            \ 's' : 'stop',
                            \ 'f' : 'français',
                            \ 'e' : 'english',
                            \ }
        "---------"
        " plugins "
        "---------"
                " airline settings
                        let g:airline_powerline_fonts = 1
                        let g:airline_theme='lucius'
                        let g:airline_section_error=''
                        let g:airline_section_warning=''
                        let g:airline#extensions#tabline#enabled = 1
                        let g:airline#extensions#tabline#fnamemod = ':t'
                        let g:airline#extensions#tabline#buffers_label = ''
                        let g:airline_section_c = '%f'
                        let g:airline_section_z = '%l/%L : %02c'
                        set noshowmode

                " fzf settings
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

                        nnoremap <leader>f :Files ~<CR>
                        nnoremap <leader>z :Files<CR>
                        nnoremap <leader>s :Lines<CR>
                        nnoremap <leader>w :Lines <C-R>=expand("<cword>")<CR><CR>
                        nnoremap <leader>lg :Tags<CR>
                        let g:which_key_map.f = 'fzf home'
                        let g:which_key_map.z = 'fzf cwd'
                        let g:which_key_map.s = 'search'
                        let g:which_key_map.w = '* fzf '
                        let g:which_key_map.l = { 'name' : 'lang' }
                        let g:which_key_map.l.g = 'tags gen'

                " tcomment settings
                        nnoremap <leader>c :TComment<CR>
                        vnoremap <leader>c :TComment<CR>
                        let g:which_key_map.c = 'comment'
                        let g:which_key_map._ = {
                            \ 'name' : 'which_key_ignore',
                            \ }
                " signify
                        let g:signify_sign_change="~"

                        nnoremap <leader>gh :SignifyToggleHighlight<CR>
                        nmap <leader>gj <plug>(signify-next-hunk)
                        nmap <leader>gk <plug>(signify-prev-hunk)
                        let g:which_key_map.g = { 'name' : 'git' }
                        let g:which_key_map.g.h = 'highlight'
                        let g:which_key_map.g.j = 'next'
                        let g:which_key_map.g.k = 'prev'

                " lsp settings
                        set completefunc=LanguageClient#complete
                        let g:LanguageClient_serverCommands = {
                        \ 'cmake': ['cmake-language-server'],
                        \ 'cpp': ['ccls'],
                        \ 'html': ['html-languageserver'],
                        \ 'latex': ['texlab'],
                        \ 'ocaml': ['ocamllsp'],
                        \ 'python': ['pyls'],
                        \ 'rust': ['rust-analyzer'],
                        \ }

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
                        let g:which_key_map.b = { 'name' : 'which_key_ignore' }
                        nnoremap <silent> <leader> :WhichKey ','<CR>
                        autocmd! FileType which_key
                        autocmd  FileType which_key set laststatus=0 noshowmode noruler
                          \| autocmd BufLeave <buffer> set laststatus=2 noshowmode ruler

                " ranger
                        let g:ranger_map_keys = 0
                        let g:ranger_replace_netrw = 1
                        nnoremap <leader>n :Ranger<CR>
                        let g:which_key_map.n = 'ranger'

                " snips
                        let g:UltiSnipsExpandTrigger="<tab>"
                        let g:UltiSnipsJumpForwardTrigger="<tab>"
                        let g:UltiSnipsJumpBackwardTrigger="<s-tab>"

        " empty?
        if empty(argv())
            au VimEnter * Files!
        endif

