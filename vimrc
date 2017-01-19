set nocompatible
set laststatus=2

set clipboard=unnamedplus

set mouse=a
set ttymouse=xterm

set timeoutlen=1000 ttimeoutlen=0

set t_Co=256
set background=dark
colorscheme solarized

set number
set relativenumber

set backspace=indent,eol,start

set history=1000

set showcmd

set showmode

set hidden
set encoding=utf-8
syntax on

set noswapfile
set nobackup
set nowb

set autoindent
set smartindent
set smarttab
set shiftwidth=2
set softtabstop=2
set tabstop=2
set expandtab

" Auto indent pasted text
nnoremap p p=`]<C-o>
nnoremap P P=`]<C-o>

filetype plugin on
filetype indent on

" Display tabs and trailing spaces visually
" set list listchars=tab:\ \ ,trail:·

set nowrap       "Don't wrap lines
set linebreak    "Wrap lines at convenient points

" Stay in visual mode when indenting. You will never have to run gv after
" performing an indentation.
vnoremap < <gv
vnoremap > >gv

" ================ Folds ============================

set foldmethod=indent   "fold based on indent
set foldnestmax=3       "deepest fold is 3 levels
set nofoldenable        "dont fold by default

" ================ Search ===========================

set incsearch       " Find the next match as we type the search
set hlsearch        " Highlight searches by default
set ignorecase      " Ignore case when searching...
set smartcase       " ...unless we type a capital

set rtp+=/usr/lib/python3.6/site-packages/powerline/bindings/vim/
python3 from powerline.vim import setup as powerline_setup
python3 powerline_setup()
python3 del powerline_setup

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
let g:syntastic_aggregate_errors = 1
let g:syntastic_javascript_checkers = ['eslint']


