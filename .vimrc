filetype plugin on
filetype indent on

syntax enable

set guioptions-=T
set guioptions-=e
set t_Co=256
set guitablabel=%M\ %t
set background=dark
colorscheme kolor

set backspace=eol,start,indent
set showmatch
set ignorecase
set smartcase
set incsearch
set hlsearch

set so=7
set cc=80
set ruler
set cmdheight=2
set laststatus=2
set statusline=\ %F%m%r%h\ %w\ \ CWD:\ %r%{getcwd()}%h\ \ \ Line:\ %l

set wildmenu
set wildignore=*.o,*~,*.pyc,.git/*,*/.DS_Store

if has("mouse")
	set mouse=a
endif

set noerrorbells
set novisualbell
set t_vb=
set tm=500

set encoding=utf8
set ffs=unix,dos,mac
set expandtab
set smarttab
set shiftwidth=4
set tabstop=4
set ai
set si
set nowrap

set nowb
set nobackup
set noswapfile

map 0 ^

autocmd BufReadPost *
     \ if line("'\"") > 0 && line("'\"") <= line("$") |
     \   exe "normal! g`\"" |
     \ endif
" Remember info about open buffers on close
set viminfo^=%

func! DeleteTrailingWS()
  exe "normal mz"
  %s/\s\+$//ge
  exe "normal `z"
endfunc
autocmd BufWrite * :call DeleteTrailingWS()

