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

:nnoremap <silent> K <Nop>

:vnoremap > >:normal gv<CR>
:vnoremap < <:normal gv<CR>

:vnoremap J :m '>+1<CR>gv=gv
:vnoremap K :m '<-2<CR>gv=gv

:nnoremap H :bnext<CR>zz
:nnoremap L :bprev<CR>zz

:nnoremap E :Lex<CR>:vertical resize 50<CR>

" Align regex
command! -nargs=? -range Align <line1>,<line2>call AlignSection('<args>')
vnoremap <silent> <Leader>a :Align<CR>
function! AlignSection(regex) range
    let extra = 1
    let sep = empty(a:regex) ? '=' : a:regex
    let maxpos = 0
    let section = getline(a:firstline, a:lastline)
    for line in section
        let pos = match(line, ' *'.sep)
        if maxpos < pos
            let maxpos = pos
        endif
    endfor
    call map(section, 'AlignLine(v:val, sep, maxpos, extra)')
    call setline(a:firstline, section)
endfunction

function! AlignLine(line, sep, maxpos, extra)
    let m = matchlist(a:line, '\(.\{-}\) \{-}\('.a:sep.'.*\)')
        if empty(m)
        return a:line
    endif
    let spaces = repeat(' ', a:maxpos - strlen(m[1]) + a:extra)
    return m[1] . spaces . m[2]
endfunction
