filetype plugin indent on
syntax on

" habamax slate retrobox wildcharm sorbet lunaperche
colorscheme habamax

set nobackup nowritebackup
set noswapfile

set number
"set relativenumber

set tabstop=4
set shiftwidth=4
set softtabstop=4
set expandtab
set autoindent
set smarttab

set mouse=a
set cursorline

set laststatus=2

set scrolloff=5

set ignorecase
set hlsearch

set wrap
"set wrap!
"set textwidth=0
"set wrapmargin=0

set incsearch
set timeoutlen=1000
set ttimeoutlen=0
set hidden
set wildmenu
set clipboard=unnamed 
set colorcolumn=75

" set backspace=indent,eol,start

set updatetime=100
set signcolumn=auto

" TODO: Add shortcut to grep all marks in either all files or current one
" and list them in quick fix list.

:nnoremap <silent> K <Nop>

:vnoremap > >:normal gv<CR>
:vnoremap < <:normal gv<CR>

:vnoremap J :m '>+1<CR>gv=gv
:vnoremap K :m '<-2<CR>gv=gv

:nnoremap H :bnext<CR>zz
:nnoremap L :bprev<CR>zz

:nnoremap , :copen<CR>
:nnoremap > :cn<CR>
:nnoremap < :cp<CR>

":nnoremap E :Lex<CR>:vertical resize 30<CR>
:nnoremap E :Ex<CR>

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

" Highlight Marks
" :match Todo /FIX/
" PERF: Fully optimised, do not touch.
" HACK: This is a hack.
" TODO: Delete these lines later.
" NOTE: This is a note.
" FIX: Fix this urgently!
" WARNING: This is a dangerous operation.

"term=bold,underline cterm=bold,underline gui=bold,undercurl
"term=bold,reverse cterm=bold,reverse gui=bold,reverse
:highlight PERF    term=bold,underline cterm=bold,underline gui=bold,undercurl ctermfg=176 guisp=#d787d7
:highlight HACK    term=bold,underline cterm=bold,underline gui=bold,undercurl ctermfg=215 guisp=#ffaf5f
:highlight TODO    term=bold,underline cterm=bold,underline gui=bold,undercurl ctermfg=253 guifg=#dadada
:highlight NOTE    term=bold,underline cterm=bold,underline gui=bold,undercurl ctermfg=77  guisp=#5fd75f
:highlight FIX     term=bold,underline cterm=bold,underline gui=bold,undercurl ctermfg=167 guisp=#d75f5f
:highlight WARNING term=bold,underline cterm=bold,underline gui=bold,undercurl ctermfg=215 guisp=#ffaf5f

:call matchadd('PERF', 'PERF:')
:call matchadd('HACK', 'HACK:')
:call matchadd('TODO', 'TODO:')
:call matchadd('NOTE', 'NOTE:')
:call matchadd('FIX', 'FIX:')
:call matchadd('WARNING', 'WARNING:')

":call matchadd('SpellRare', 'PERF:')
":call matchadd('SpellCap', 'HACK:')
":call matchadd('Underlined', 'TODO:')
":call matchadd('SpellLocal', 'NOTE:')
":call matchadd('SpellBad', 'FIX:')
":call matchadd('SpellCap', 'WARNING:')
