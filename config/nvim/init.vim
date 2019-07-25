" Specify a directory for plugins
" - For Neovim: ~/.local/share/nvim/plugged
" - Avoid using standard Vim directory names like 'plugin'
call plug#begin('~/.local/share/nvim/plugged')

" Make sure you use single quotes

" Shorthand notation; fetches https://github.com/junegunn/vim-easy-align
"Plug 'junegunn/vim-easy-align'

" Any valid git URL is allowed
"Plug 'https://github.com/junegunn/vim-github-dashboard.git'

" Multiple Plug commands can be written in a single line using | separators
"Plug 'SirVer/ultisnips' | Plug 'honza/vim-snippets'

" On-demand loading
"Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }
"Plug 'tpope/vim-fireplace', { 'for': 'clojure' }

" Using a non-master branch
"Plug 'rdnetto/YCM-Generator', { 'branch': 'stable' }

" Using a tagged release; wildcard allowed (requires git 1.9.2 or above)
"Plug 'fatih/vim-go', { 'tag': '*' }

" Plugin options
"Plug 'nsf/gocode', { 'tag': 'v.20150303', 'rtp': 'vim' }

" Plugin outside ~/.vim/plugged with post-update hook
"Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }

" Unmanaged plugin (manually installed and updated)
"Plug '~/my-prototype-plugin'

" gist vim
Plug 'mattn/webapi-vim' 
Plug 'mattn/gist-vim'

Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-repeat'
Plug 'tpope/vim-commentary'

Plug 'godlygeek/tabular'

Plug 'altercation/vim-colors-solarized'

Plug 'vim-syntastic/syntastic'

Plug 'autozimu/LanguageClient-neovim', { 'branch': 'next', 'do': 'bash install.sh' }

Plug 'rightson/vim-p4-syntax'

Plug 'junegunn/fzf.vim'

" Initialize plugin system
call plug#end()

let mapleader = "\<Space>"

set number
set expandtab
set softtabstop=4
set shiftwidth=4
set autoindent
set smartindent
set smarttab
set showmatch
set incsearch
set tags=./tags;
set showcmd
set ignorecase
set smartcase
set wildmenu
set cursorline
set undofile
set undolevels=1000
set undoreload=10000
"set mouse=a
set colorcolumn=80
set nowrap
set backspace=indent,start
set ruler
set nohlsearch
set completeopt=menu,menuone,longest
set diffopt=vertical
set relativenumber
set nomodeline

inoremap jj <Esc>

map <leader>r :set relativenumber!<CR>
map <leader>/ :nohlsearch<CR>

" buffer navigation
set hidden
map <leader>b :buffers<CR>
map <leader>h :bprevious<CR>
map <leader>l :bnext<CR>
map <leader>L :b#<CR>

tnoremap <A-h> <C-\><C-N><C-w>h
tnoremap <A-j> <C-\><C-N><C-w>j
tnoremap <A-k> <C-\><C-N><C-w>k
tnoremap <A-l> <C-\><C-N><C-w>l
inoremap <A-h> <C-\><C-N><C-w>h
inoremap <A-j> <C-\><C-N><C-w>j
inoremap <A-k> <C-\><C-N><C-w>k
inoremap <A-l> <C-\><C-N><C-w>l
nnoremap <A-h> <C-w>h
nnoremap <A-j> <C-w>j
nnoremap <A-k> <C-w>k
nnoremap <A-l> <C-w>l
tnoremap <Esc><Esc> <C-\><C-n>

set background=light
let g:solarized_italic=0
colorscheme solarized
call togglebg#map("<F5>")

autocmd BufRead,BufNewFile */src/linux*/* set noexpandtab
autocmd BufRead,BufNewFile */src/linux*/* set tabstop=8
autocmd BufRead,BufNewFile */src/linux*/* set shiftwidth=8

let g:netrw_liststyle=3
let g:netrw_banner=0
let g:netrw_browse_split=4
let g:netrw_winsize=25

let g:syntastic_cpp_compiler_options='-std=c++17'
let g:syntastic_mode_map = { "mode": "passive", "active_filetypes": ["python", "tex"], "passive_filetypes": [] }
let g:syntastic_python_checkers=['python']

let g:LanguageClient_serverCommands = {
    \ 'c': ['clangd'],
    \ 'cpp': ['clangd'],
    \ 'java': ['~/bin/eclipse_jdt_ls'],
    \ 'javascript': ['node', '~/src/javascript-typescript-langserver/lib/language-server-stdio.js'],
    \ 'rust': ['rls'],
    \ }

let g:LanguageClient_autoStart=0
