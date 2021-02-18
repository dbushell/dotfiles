" Enhance command-line completion
set wildmenu

" Allow cursor keys in insert mode
set esckeys

" Allow backspace in insert mode
set backspace=indent,eol,start

" Optimize for fast terminal connections
set ttyfast

" Add the g flag to search/replace by default
set gdefault

" Use UTF-8
set encoding=utf-8
set fileencoding=utf-8

" Change mapleader
let mapleader=","

set viminfo+=n~/.vim/viminfo
set backupdir=~/.vim/backup
set directory=~/.vim/swap
set undodir=~/.vim/undo
set undofile

" Respect modeline in files
set modeline
set modelines=4

" Enable per-directory .vimrc files and disable unsafe commands in them
set exrc
set secure

" Highlight searches
set hlsearch

" Ignore case of searches
set ignorecase

" Highlight dynamically as pattern is typed
set incsearch

" Always show status line
set laststatus=2

" Enable mouse in all modes
" set mouse=a

" Disable error bells
set noerrorbells

" Don’t reset cursor to start of line when moving around.
set nostartofline

" Don’t show the intro message when starting Vim
set shortmess=atI

" Show the current mode
set showmode

" Show the filename in the window titlebar
set title

" Show the (partial) command as it’s being typed
set showcmd

" Start scrolling three lines before the horizontal window border
set scrolloff=10

" Enable line numbers
set number

" Enable syntax highlighting
syntax enable

" highlight matching parenthesis and brackets
 set showmatch
 set t_Co=256

" Highlight current line
set cursorline

" Make tabs as wide as two spaces
set tabstop=2
set shiftwidth=2
set expandtab

" Show the cursor position
set ruler

" Show “invisible” characters
set listchars=tab:»\ ,extends:›,precedes:‹,nbsp:·,trail:·,eol:¬
set list
