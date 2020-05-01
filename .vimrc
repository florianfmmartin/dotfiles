" vim plugins
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

" ctags
Plug 'majutsushi/tagbar'

" tcomment plugin
Plug 'tomtom/tcomment_vim'

" fugitive (git)
Plug 'tpope/vim-fugitive'

" nerdtree
Plug 'scrooloose/nerdtree'
Plug 'xuyuanp/nerdtree-git-plugin'
" Plug 'ryanoasis/vim-devicons'
Plug 'tiagofumo/vim-nerdtree-syntax-highlight'

" surronds
Plug 'tpope/vim-surround'

" css color
Plug 'ap/vim-css-color'

" git gutter
Plug 'airblade/vim-gitgutter'

" ale
Plug 'w0rp/ale'

call plug#end()

" leader
let mapleader = ","

" color
set termguicolors
colorscheme onedark
let g:airline_powerline_fonts = 1
let g:airline_theme='lucius'
set noshowmode

" tab and indent
set tabstop=4
set softtabstop=4
set expandtab

" numbers
set number relativenumber

" config ui
set lazyredraw
set showmatch " show matching "([{
set showcmd " shows the ungoing command
filetype plugin on

" searching
set incsearch
set hlsearch
nnoremap <leader><space> :noh<CR>

" insert
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

" fzf setup
nnoremap <leader>f :Files<CR>
let g:fzf_action = { 'enter': 'tab split' , 'ctrl-n': 'vsplit'}

" tcomment setup
nnoremap <leader>c :TComment<CR>

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

" NERDTree
nnoremap <leader>n :NERDTreeToggle<CR>
let NERDTreeShowHidden=1

" ctags
let g:tagbar_ctags_bin='/usr/bin/uctags'
nnoremap <leader>d :TagbarToggle<CR><C-w><C-l>
inoremap <leader>d <Esc>:TagbarToggle<CR><C-w><C-l>
set tags+=tags;/

" git gutter

