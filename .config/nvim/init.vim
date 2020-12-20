" config

" " plugged
" call plug#begin('~/.vim/plugged')
"
" " whichkey
" Plug 'liuchengxu/vim-which-key'
"
" " colorscheme
" Plug 'joshdick/onedark.vim'
"
" " airline
" Plug 'vim-airline/vim-airline'
" Plug 'vim-airline/vim-airline-themes'
"
" " fzf
" Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
" Plug 'junegunn/fzf.vim'
"
" " tcomment
" Plug 'tomtom/tcomment_vim'
"
" " surronds
" Plug 'tpope/vim-surround'
"
" " colorize
" Plug 'ap/vim-css-color'
"
" " signify
" Plug 'mhinz/vim-signify'
"
" " lsp
" Plug 'autozimu/LanguageClient-neovim', {
"             \ 'branch': 'next',
"             \ 'do': 'bash install.sh',
"             \ }
"
" " treesitter
" Plug 'nvim-treesitter/nvim-treesitter', { 'do': ':TSUpdate' }
"
" " polyglot
" Plug 'sheerun/vim-polyglot'
"
" " tmux
" Plug 'christoomey/vim-tmux-runner'
"
" " ranger
" Plug 'rbgrouleff/bclose.vim'
" Plug 'francoiscabrol/ranger.vim'
"
" " deoplete
" Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
"
" " float
" Plug 'ncm2/float-preview.nvim'
"
" " startify
" Plug 'mhinz/vim-startify'
"
" " tagbar
" Plug 'preservim/tagbar'
"
" " nvim-tree-lua
" Plug 'kyazdani42/nvim-tree.lua'
" Plug 'kyazdani42/nvim-web-devicons'
"
" call plug#end()

" whichkey
source ~/.config/nvim/whichkey.vim

" settings
source ~/.config/nvim/settings.vim

" terminal related
source ~/.config/nvim/term_set.vim

" colorscheme
source ~/.config/nvim/colorscheme.vim

" airline
source ~/.config/nvim/airline.vim

" fzf
source ~/.config/nvim/fzf.vim

" tcomment
source ~/.config/nvim/tcomment.vim

" signify
source ~/.config/nvim/signify.vim

" lsp
source ~/.config/nvim/lsp.vim

" treesitter
source ~/.config/nvim/treesitter.vim

" tmux
source ~/.config/nvim/tmux.vim

" ranger
source ~/.config/nvim/ranger.vim

" deoplete
source ~/.config/nvim/deoplete.vim

" float
source ~/.config/nvim/float.vim

" startify
source ~/.config/nvim/startify.vim

" tagbar
source ~/.config/nvim/tagbar.vim

" nvim-tree-lua
source ~/.config/nvim/nvim-tree-lua.vim

" whichkey mapping
nnoremap <silent> <leader> :WhichKey ','<CR>

