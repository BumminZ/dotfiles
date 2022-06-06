syntax on
set nu ru et
set ts=2 sts=2 sw=2
set cursorline
set hlsearch
set number
set relativenumber
set autoindent
set tabstop=4
set smarttab
set softtabstop=4
set mouse=a

call plug#begin()


Plug 'junegunn/vim-easy-align'
Plug 'https://github.com/junegunn/vim-github-dashboard.git'
Plug 'SirVer/ultisnips' | Plug 'honza/vim-snippets'
Plug 'scrooloose/nerdtree'
Plug 'tpope/vim-fireplace'
Plug 'rdnetto/YCM-Generator'
Plug 'fatih/vim-go'
Plug 'nsf/gocode'
Plug 'junegunn/fzf'
Plug 'http://github.com/tpope/vim-surround' " Surrounding ysw)
Plug 'https://github.com/tpope/vim-commentary' " For Commenting gcc & gc
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'https://github.com/rafi/awesome-vim-colorschemes' " Retro Scheme
Plug 'neoclide/coc.nvim', { 'branch': 'master', 'do': 'yarn install --frozen-lockfile' }  " Auto Completion
Plug 'https://github.com/ryanoasis/vim-devicons' " Developer Icons
Plug 'https://github.com/tc50cal/vim-terminal' " Vim Terminal
Plug 'https://github.com/preservim/tagbar' " Tagbar for code navigation
Plug 'https://github.com/terryma/vim-multiple-cursors' " CTRL + N for multiple cursors
Plug 'catppuccin/nvim', {'name': 'catppuccin'}

set encoding=UTF-8

call plug#end()

let g:NERDTreeDirArrowExpandable="+"
let g:NERDTreeDirArrowCollapsible="~"

nnoremap <C-n> :NERDTree<CR>
nnoremap <C-e> :NERDTreeToggle<CR>
nnoremap <C-q> :q<CR>
nnoremap <C-s> :w<CR>

nmap <F8> :TagbarToggle<CR>

command! -nargs=0 Prettier :CocCommand prettier.forceFormatDocument

:set completeopt-=preview
:colorscheme catppuccin
