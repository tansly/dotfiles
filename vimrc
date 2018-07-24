set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

" The following are examples of different formats supported.
" Keep Plugin commands between vundle#begin/end.
" plugin on GitHub repo
"Plugin 'tpope/vim-fugitive'
" plugin from http://vim-scripts.org/vim/scripts.html
"Plugin 'L9'
" Git plugin not hosted on GitHub
"Plugin 'git://git.wincent.com/command-t.git'
" git repos on your local machine (i.e. when working on your own plugin)
"Plugin 'file:///home/gmarik/path/to/plugin'
" The sparkup vim script is in a subdirectory of this repo called vim.
" Pass the path to set the runtimepath properly.
"Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}
" Install L9 and avoid a Naming conflict if you've already installed a
" different version somewhere else.
"Plugin 'ascenator/L9', {'name': 'newL9'}

" gist vim
Plugin 'mattn/webapi-vim' 
Plugin 'mattn/gist-vim'

Plugin 'jeaye/color_coded'

Plugin 'tpope/vim-fugitive'
Plugin 'tpope/vim-surround'
Plugin 'tpope/vim-repeat'
Plugin 'tpope/vim-commentary'

Plugin 'godlygeek/tabular'

Plugin 'altercation/vim-colors-solarized'

Plugin 'vim-syntastic/syntastic'

Plugin 'autozimu/LanguageClient-neovim'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line

syntax enable

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
set undodir=~/.vim/undo/
set undoreload=10000
set mouse=a
set colorcolumn=80
set nowrap
set backspace=indent,start
set ruler
set nohlsearch
set completeopt=menu,menuone,longest

inoremap jj <Esc>

map <leader>r :set norelativenumber!<CR>
map <leader>/ :nohlsearch<CR>

" buffer navigation
set hidden
map <leader>b :buffers<CR>
map <leader>h :bprevious<CR>
map <leader>l :bnext<CR>
map <leader>L :b#<CR>

set background=dark
let g:solarized_italic=0
colorscheme solarized
call togglebg#map("<F5>")

autocmd BufRead,BufNewFile */src/linux*/* silent let g:color_coded_enabled=0
autocmd BufRead,BufNewFile */src/linux*/* set noexpandtab
autocmd BufRead,BufNewFile */src/linux*/* set tabstop=8
autocmd BufRead,BufNewFile */src/linux*/* set shiftwidth=8

if &diff
    set norelativenumber
endif

let g:color_coded_enabled=0

let g:netrw_liststyle=3
let g:netrw_banner=0
let g:netrw_browse_split=4
let g:netrw_winsize=25

let g:syntastic_cpp_compiler_options='-std=c++17'
let g:syntastic_mode_map = { "mode": "passive", "active_filetypes": ["java", "python"], "passive_filetypes": [] }
let g:syntastic_python_checkers=['python']

let g:LanguageClient_serverCommands = {
    \ 'c': ['clangd'],
    \ 'cpp': ['clangd'],
    \ }
