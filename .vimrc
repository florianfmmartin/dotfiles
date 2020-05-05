"-------------"
" vim plugins "
"-------------"
        call plug#begin('~/.vim/plugged')

        " theme plugins
        " Plug 'morhetz/gruvbox'
        " Plug 'arcticicestudio/nord-vim'
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
                set smarttab

                " numbers column
                set number relativenumber
                set signcolumn=yes

                " config ui
                set nocompatible
                set lazyredraw
                set showmatch " show matching "([{
                set showcmd " shows the ungoing command
                set showtabline=2
                filetype plugin on
                set ruler
                set wildmenu
                set scrolloff=4
                set path+=**
                set timeoutlen=300

                " searching
                set incsearch
                set hlsearch
                nnoremap <leader><space> :noh<CR>

                " extra line management
                nnoremap <leader>o o<Esc>

                " fold
                set foldenable
                set foldlevelstart=10
                set foldmethod=indent

                " invisibles
                set listchars=eol:¬,space:·
                set list

                " tab navigation
                nnoremap <leader>t :tabn<CR>
                nnoremap <leader>s <C-w><C-w>

                " split navigation
                set splitright
                nnoremap <C-J> <C-W><C-J>
                nnoremap <C-K> <C-W><C-K>
                nnoremap <C-L> <C-W><C-L>
                nnoremap <C-H> <C-W><C-H>

                " autocompletion setup
                inoremap <leader>n <C-n>
                inoremap <leader>p <C-p>
                inoremap <leader><Esc> <C-e>
                set completeopt=menuone
                set cursorline
                set shortmess+=c
                inoremap ( ()<++><Esc>F(:noh<Enter>a
                inoremap { {}<++><Esc>F{:noh<Enter>a
                inoremap [ []<++><Esc>F[:noh<Enter>a

                " move line visual
                xnoremap K :move '<-2<CR>gv-gv
                xnoremap J :move '>+1<CR>gv-gv

                " naviguation
                nnoremap zm z.
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
                inoremap <leader><leader> <Esc>/<++><Enter>:noh<Enter>"_c4l
                nnoremap <leader><leader> <Esc>/<++><Enter>:noh<Enter>"_c4l
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
                set noshowmode

                " fzf settings
                nnoremap <leader>f :Files<CR>
                let g:fzf_action = { 'enter': 'tab split' , 'ctrl-l': 'vsplit' }

                " tcomment settings
                nnoremap <leader>c :TComment<CR>

                " NERDTree settings
                nnoremap <leader>n :NERDTreeToggle<CR>
                let NERDTreeShowHidden=1

                " startify settings
                if !has('nvim')
                        let g:startify_custom_header = [
                        \ '         _            ',
                        \ ' __   __(_) _ __ ___  ',
                        \ ' \ \ / /| || ''_ ` _ \ ',
                        \ '  \ V / | || | | | | |',
                        \ '   \_/  |_||_| |_| |_|',
                        \ '',
                        \ '',
                        \ ]
                endif

                if has('nvim')
                        let g:startify_custom_header = [
                        \ '                        _            ',
                        \ '  _ __   ___  _____   _(_)_ __ ___   ',
                        \ ' | ''_ \ / _ \/ _ \ \ / / | ''_ ` _ \  ',
                        \ ' | | | |  __/ (_) \ V /| | | | | | | ',
                        \ ' |_| |_|\___|\___/ \_/ |_|_| |_| |_| ',
                        \ '',
                        \ '',
                        \ ]
                endif

                " goyo settings
                nnoremap <leader>gy :Goyo<CR> :set showmode<CR>

