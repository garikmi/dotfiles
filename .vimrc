filetype plugin indent on
syntax on

colorscheme habamax
" colorscheme slate
" colorscheme retrobox
" colorscheme wildcharm
" colorscheme sorbet
" colorscheme lunaperche

set nobackup nowritebackup
set noswapfile

set number
set relativenumber

set tabstop=4
set shiftwidth=4
set softtabstop=4
set expandtab
set autoindent
set smarttab

set mouse=a
set cursorline

set scrolloff=5

set ignorecase
set hlsearch

set wrap
set incsearch
set timeoutlen=1000
set ttimeoutlen=0
set hidden
set wildmenu
set clipboard=unnamed 
set colorcolumn=75

" set backspace=indent,eol,start

:vnoremap > >:normal gv<CR>
:vnoremap < <:normal gv<CR>

:vnoremap J :m '>+1<CR>gv=gv
:vnoremap K :m '>-2<CR>gv=gv

:nnoremap H :bnext<CR>zz
:nnoremap L :bprev<CR>zz

:nnoremap E :Lex<CR>:vertical resize 50<CR>
