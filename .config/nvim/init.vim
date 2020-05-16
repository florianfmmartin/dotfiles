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

        call plug#end()

"----------"
" settings "
"----------"
        "----------"
        " built in "
        "----------"
                " leader
                let mapleader = ","

                " tab and indent
                set tabstop=4
                set softtabstop=4
                set expandtab
                set autoindent
                set nosmarttab

                " numbers column
                set number relativenumber
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
                set clipboard+=unnamedplus
                set cursorline
                call matchadd('DiffDelete', '\%81v')

                " searching
                set incsearch
                set hlsearch
                nnoremap <leader><space> :noh<CR>

                " extra line management
                nnoremap <leader>o O<Esc>

                " fold
                set foldenable
                set foldlevelstart=10
                set foldmethod=indent

                " invisibles
                set listchars=eol:¬,space:·
                set list

                " tab navigation
                nnoremap <leader>t :tabn<CR>

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

                " function! CommandPalette()
                "         let buf = nvim_create_buf(v:false, v:true)
                "         let opts = {'relative': 'editor', 'width': 40, 'height': 3, 'col': 68,
                "                   \ 'row': 2, 'anchor': 'NW', 'style': 'minimal'}
                "         let win = nvim_open_win(buf, 1, opts)
                "         call ActivatePalette()
                " endfunction
                "
                " function! ActivatePalette()
                "         inoremap <CR> <Esc>V"ay:q<CR>:call DeactivatePalette()<CR>:<C-R>a<CR>
                " endfunction
                "
                " function! DeactivatePalette()
                "         inoremap <CR> <CR>
                " endfunction

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

                set noshowmode

                " fzf settings
                nnoremap <leader>f :Files<CR>
                let g:fzf_action = { 'enter': 'tab split' ,
                                        \ 'ctrl-l': 'vsplit' }

                " tcomment settings
                nnoremap <leader>c :TComment<CR>
                vnoremap <leader>c :TComment<CR>

                " NERDTree settings
                nnoremap <leader>n :NERDTreeToggle<CR>
                let NERDTreeShowHidden=1

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

                " lsp settings
                let g:LanguageClient_serverCommands = {
                    \ 'python': ['/home/florian/.local/bin/pyls'],
                    \ 'ocaml' : ['/home/florian/.opam/default/bin/ocamllsp'],
                    \ 'cpp'   : ['/usr/bin/ccls'],
                    \ }
                let g:LanguageClient_useFloatingHover = 1

                nnoremap <leader>lh :call LanguageClient#textDocument_hover()<CR>
                nnoremap <leader>ld :call LanguageClient#textDocument_definition({'gotoCmd': 'vsplit'})<CR>
                nnoremap <leader>lm :call LanguageClient_contextMenu()<CR>

                " float preview settings
                let g:float_preview#docked=0

