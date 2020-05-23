"-------------"
" vim plugins "
"-------------"
        call plug#begin('~/.vim/plugged')

        " theme plugins
        Plug 'morhetz/gruvbox'
        Plug 'arcticicestudio/nord-vim'
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

        " nerdtree plugin
        Plug 'scrooloose/nerdtree'
        Plug 'xuyuanp/nerdtree-git-plugin'
        Plug 'tiagofumo/vim-nerdtree-syntax-highlight'

        " surronds plugin
        Plug 'tpope/vim-surround'

        " css color plugin
        Plug 'ap/vim-css-color'

        " git gutter plugin
        Plug 'airblade/vim-gitgutter'

        " startify plugin
        Plug 'mhinz/vim-startify'

        " goyo plugin
        Plug 'junegunn/goyo.vim'

        " undo tree plugin
        Plug 'mbbill/undotree'

        " lsp client plugin
        Plug 'autozimu/LanguageClient-neovim', {
            \ 'branch': 'next',
            \ 'do': 'bash install.sh',
            \ }

        " vim wiki plugin
        Plug 'vimwiki/vimwiki'

        " float preview
        Plug 'ncm2/float-preview.nvim'

        " better syntax
        Plug 'bfrg/vim-cpp-modern'
        Plug 'pangloss/vim-javascript'
        Plug 'ocaml/vim-ocaml'
        Plug 'vim-python/python-syntax'

        " vim-tmux-runner
        Plug 'christoomey/vim-tmux-runner'

        " vim be good
        Plug 'ThePrimeagen/vim-be-good'

        " which key again...
        Plug 'liuchengxu/vim-which-key'

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
                let g:which_key_map =  {}
                let g:which_key_sep = '->'
                call which_key#register(',', "g:which_key_map")
                let g:which_key_map = {
                    \ ',' : 'which_key_ignore',
                    \ }

                " tab and indent
                set tabstop=4
                set softtabstop=4
                set expandtab
                set autoindent
                set nosmarttab
                autocmd Filetype cpp setlocal noexpandtab

                function LeaderReTab(len)
                        let &l:tabstop = a:len
                        let &l:softtabstop = a:len
                        %retab!
                endfunction

                nnoremap <leader>rt :call LeaderReTab(
                let g:which_key_map.r = { 'name' : 'reload' }
                let g:which_key_map.r.t = 'tab'

                " numbers column
                set number
                set signcolumn=yes

                " config ui
                filetype plugin on
                syntax on
                set conceallevel=0
                let g:vimwiki_conceallevel=0
                set lazyredraw
                set showmatch " show matching "([{
                set showcmd " shows the ungoing command
                set showtabline=2
                set ruler
                set scrolloff=8
                set path+=**
                set timeoutlen=300
                set cursorline
                call matchadd('DiffDelete', '\%81v')
                nnoremap <leader>rc :w<CR>:source %<CR>
                let g:which_key_map.r.c = 'config'

                " buffers
                set hidden
                nnoremap <leader>bn :bnext<CR>
                nnoremap <leader>bv :bprevious<CR>
                nnoremap <leader>bq :bp <BAR> bd #<CR>
                let g:which_key_map.b = { 'name' : 'buffer' }
                let g:which_key_map.b.n = 'next'
                let g:which_key_map.b.v = 'prev'
                let g:which_key_map.b.q = 'quit'

                " clipboard
                set clipboard+=unnamedplus
                vnoremap t $hy

                " searching
                set incsearch
                set hlsearch
                nnoremap <leader><space> :noh<CR>

                " extra line management
                nnoremap <leader>o O<Esc>
                let g:which_key_map.o = 'line'

                " fold
                set foldenable
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

                " move line visual
                xnoremap K :move '<-2<CR>gv-gv
                xnoremap J :move '>+1<CR>gv-gv
                xnoremap < <V
                xnoremap > >V

                " naviguation
                nnoremap <Up> <Nop>
                nnoremap <Down> <Nop>
                nnoremap <Left> <Nop>
                nnoremap <Right> <Nop>
                inoremap <Up> <Nop>
                inoremap <Down> <Nop>
                inoremap <Left> <Nop>
                inoremap <Right> <Nop>
                vnoremap <Up> <Nop>
                vnoremap <Down> <Nop>
                vnoremap <Left> <Nop>
                vnoremap <Right> <Nop>
                inoremap <leader><leader> <Esc>la
                nnoremap <leader><leader> <Esc>la
                nnoremap ; :

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

                set noshowmode

                " fzf settings
                nnoremap <leader>f :Files<CR>
                let g:fzf_action = { 'enter': 'tab split' ,
                                        \ 'ctrl-s': 'vsplit' }
                let g:which_key_map.f = 'fzf'

                " tcomment settings
                nnoremap <leader>c :TComment<CR>
                vnoremap <leader>c :TComment<CR>
                let g:which_key_map.c = 'comment'
                let g:which_key_map._ = {
                    \ 'name' : 'which_key_ignore',
                    \ }

                " NERDTree settings
                nnoremap <leader>n :NERDTreeToggle<CR>
                let NERDTreeShowHidden=1
                let g:which_key_map.n = 'file'

                " gutter
                let g:which_key_map.h = {
                    \ 'name' : 'gutter',
                    \ 'p' : 'preview',
                    \ 's' : 'stage',
                    \ 'u' : 'undo',
                    \ }

                " startify settings
                let g:startify_custom_header = [
                \ '                        _            ',
                \ '  _ __   ___  _____   _(_)_ __ ___   ',
                \ ' | ''_ \ / _ \/ _ \ \ / / | ''_ ` _ \  ',
                \ ' | | | |  __/ (_) \ V /| | | | | | | ',
                \ ' |_| |_|\___|\___/ \_/ |_|_| |_| |_| ',
                \ '',
                \ '',
                \ ]
                let g:startify_files_number = 18
                let g:startify_lists = [
                  \ { 'type': 'dir',       'header': ['   Recent files'] },
                  \ ]

                " goyo settings
                nnoremap <leader>gy :Goyo<CR>
                let g:which_key_map.g = { 'name' : 'goyo' }
                let g:which_key_map.g.y = 'goyo'

                let g:goyo_height=45

                function! s:goyo_enter()
                        set showmode
                        set nocursorline
                endfunction

                function! s:goyo_leave()
                        set noshowmode
                        set cursorline
                endfunction

                autocmd! User GoyoEnter nested call <SID>goyo_enter()
                autocmd! User GoyoLeave nested call <SID>goyo_leave()

                " undo tree settings
                nnoremap <leader>ut :UndotreeToggle<CR>
                let g:which_key_map.u = { 'name' : 'undo' }
                let g:which_key_map.u.t = 'tree'

                " lsp settings
                let g:LanguageClient_serverCommands = {
                    \ 'python': ['/home/florian/.local/bin/pyls'],
                    \ 'ocaml' : ['/home/florian/.opam/default/bin/ocamllsp'],
                    \ 'cpp'   : ['/usr/bin/ccls'],
                    \ }
                let g:LanguageClient_useFloatingHover = 1
                let g:LanguageClient_virtualTextPrefix='-- '

                nnoremap <leader>lh :call LanguageClient#textDocument_hover()<CR>
                nnoremap <leader>ld :call LanguageClient#textDocument_definition({'gotoCmd': 'vsplit'})<CR>
                nnoremap <leader>lm :call LanguageClient_contextMenu()<CR>
                let g:which_key_map.l = { 'name' : 'lang' }
                let g:which_key_map.l.h = 'hover'
                let g:which_key_map.l.d = 'def'
                let g:which_key_map.l.m = 'menu'

                " vimwiki
                let g:which_key_map.w = { 'name' : 'wiki',
                    \ 'i' : 'diary',
                    \ 's' : 'select',
                    \ 't' : 'tab',
                    \ 'w' : 'wiki',
                    \ 'd' : 'delete',
                    \ 'h' : 'html',
                    \ 'hh': 'browse',
                    \ 'r' : 'rename',
                    \ ',' : {
                        \ 'name' : 'diary',
                        \ 'i' : 'generate',
                        \ 'm' : 'tomorrow',
                        \ 't' : 'tab',
                        \ 'w' : 'make',
                        \ 'y' : 'yesterday',
                        \ },
                    \ }

                " float preview settings
                let g:float_preview#docked=0

                " better syntax settings
                let g:python_highlight_all = 1

                " vimtmux
                nnoremap <leader>to :VtrOpenRunner<CR>
                nnoremap <leader>tl :VtrSendLinesToRunner<CR>
                nnoremap <leader>tr :VtrClearRunner<CR>
                let g:which_key_map.t = { 'name' : 'tmux' }
                let g:which_key_map.t.o = 'open'
                let g:which_key_map.t.l = 'send line'
                let g:which_key_map.t.r = 'clear'

                " which key
                nnoremap <silent> <leader> :WhichKey ','<CR>
                let g:which_key_use_floating_win = 0
                autocmd! FileType which_key
                autocmd  FileType which_key set laststatus=0 noshowmode noruler
                  \| autocmd BufLeave <buffer> set laststatus=2 showmode ruler

