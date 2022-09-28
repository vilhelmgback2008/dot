set nocompatible

syntax enable
filetype plugin indent on

set background=dark
set notermguicolors
set t_Co=16
colorscheme default
set laststatus=2
set ruler
set wildmode=full,longest,list
set wildmenu
set wildignore+=.swp
let mapleader = ","
set clipboard+=unnamedplus
set backspace=indent,eol,start
set number
set relativenumber
set title
set guioptions=
set guifont=Terminus\ (TTF)\ 14
set tabstop=4
set softtabstop=4
set shiftwidth=4
set shiftround
set expandtab
set smarttab
set autoindent
set smartindent
set cindent
let c_comment_strings=1
set nolangremap
set nospell
set encoding=UTF-8
set filetype=unix
set mouse=
set nrformats-=octal
set display=truncate
set scrolloff=1
set sidescrolloff=5
set linebreak
set wrap
set nottimeout
set history=1000
set showcmd
set noshowmatch
set showmode
set dir=/tmp
set swapfile
set undodir=/tmp
set undofile
set backupdir=/tmp
set backup
set nowritebackup
set incsearch
set hlsearch
set ignorecase
set smartcase
set pastetoggle=<F4>
set splitbelow
set splitright
set autoread
set autowrite
set hidden

au FileType perl set tabstop=4 shiftwidth=4 softtabstop=4

autocmd BufReadPost *
            \ if line("'\"") >= 1 && line("'\"") <= line("$") && &ft !~# 'commit'
            \ |   exe "normal! g`\""
            \ | endif
