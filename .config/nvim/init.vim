" config

" plugged
call plug#begin('~/.vim/plugged')

" whichkey
Plug 'liuchengxu/vim-which-key'

" colorscheme
Plug 'arcticicestudio/nord-vim'

" airline
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'

" fzf
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'

" tcomment
Plug 'tomtom/tcomment_vim'

" surronds
Plug 'tpope/vim-surround'

" colorize
Plug 'ap/vim-css-color'

" signify
Plug 'mhinz/vim-signify'

" lsp
Plug 'autozimu/LanguageClient-neovim', {
            \ 'branch': 'next',
            \ 'do': 'bash install.sh',
            \ }

" treesitter
Plug 'nvim-treesitter/nvim-treesitter', { 'do': ':TSUpdate' }

" polyglot
Plug 'sheerun/vim-polyglot'

" tmux
Plug 'christoomey/vim-tmux-runner'

" ranger
Plug 'rbgrouleff/bclose.vim'
Plug 'francoiscabrol/ranger.vim'

" deoplete
Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }

" float
Plug 'ncm2/float-preview.nvim'

" startify
Plug 'mhinz/vim-startify'

call plug#end()

" whichkey
source /home/florianfmmartin/.config/nvim/whichkey.vim

" settings
source /home/florianfmmartin/.config/nvim/settings.vim

" colorscheme
source /home/florianfmmartin/.config/nvim/colorscheme.vim

" airline
source /home/florianfmmartin/.config/nvim/airline.vim

" fzf
source /home/florianfmmartin/.config/nvim/fzf.vim

" tcomment
source /home/florianfmmartin/.config/nvim/tcomment.vim

" signify
source /home/florianfmmartin/.config/nvim/signify.vim

" lsp
source /home/florianfmmartin/.config/nvim/lsp.vim

" treesitter
source /home/florianfmmartin/.config/nvim/treesitter.vim

" tmux
source /home/florianfmmartin/.config/nvim/tmux.vim

" ranger
source /home/florianfmmartin/.config/nvim/ranger.vim

" deoplete
source /home/florianfmmartin/.config/nvim/deoplete.vim

" float
source /home/florianfmmartin/.config/nvim/float.vim

" startify
source /home/florianfmmartin/.config/nvim/startify.vim

" whichkey mapping
nnoremap <silent> <leader> :WhichKey ','<CR>

