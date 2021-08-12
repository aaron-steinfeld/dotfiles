set nocompatible

""""""""""""""""""""""
" Colors and Fonts
""""""""""""""""""""""
syntax enable

set bg=dark

" Terminal 256 colors
set t_Co=256

set encoding=utf8
try
    lang en_US
catch
endtry

set ffs=unix,dos,mac

" show line numbers
set number


" better filename completion in vim command line
set wildmode=list:longest,full
set wildmenu

" underline!
set cursorline
"set cursorcolun

" Search/replace word under cursor
nnoremap <Leader>s :%s/\<<C-r><C-w>\>/

" tell me when i'm in insert or visual mode
set showmode

" show me the command being typed currently
set showcmd

" don't ding at me
set noerrorbells
set novisualbell 

" save my undo history for this buff along with the file
" could save some headaches
" the // causes fully qualified path to be in the swp name
set undofile
set undodir=~/.vim/tmp/undo//,~/.tmp//,/tmp//
" max number of undos; default is 1000 on UNIX
"set undolevels=500
" max number of lines to save in the .un file, default is 10000
"set undorelad=500

" where to put swp files
set directory=~/.vim/tmp/swp//,~/.tmp//,/tmp//

" don't create foo~ files
set nobackup

" to try to get rid of 'hit ENTER to continue' prompts
set shortmess=a
set cmdheight=2

" always give me at least 3 lines before and after cursor
set scrolloff=3

" tab settings
set expandtab
set shiftwidth=2
set tabstop=2
set softtabstop=2
set smarttab
set autoindent


" avoid that damn "no write since last change" warning when
" switching buffers
set hidden

set encoding=utf-8
set shell=/bin/zsh

" aesthetics
set background=dark

" not all terms are 256 :(
if &t_Co == 256
    colorscheme molokai
endif
     
" show status line at bottom 0=never, 1=when > 1 window open
" 2=always
set laststatus=2

" with these, if you include capitals in a search it'll do
" the right thing, if you just use lowercase,
" it'll be case insensitive
set ignorecase
set smartcase

" %s/p/r -> %s/p/r/g
set gdefault

" highlight search results as I type
set incsearch
set showmatch
" but allow me to get rid of the highlighting afterwards with ,space
nnoremap <CR> :noh<CR>

" allow bs to erase previously entered chars, autoindent, \n's etc
set backspace=indent,eol,start

" When opening a new line and no filetype-specific indenting is enabled, keep
" the same indent as the line you're currently on. Useful for READMEs, etc.
set autoindent
set smartindent

" === KEY MAPPINGS ===
let mapleader=","

" quick window split with ,s[vh] (vertical, horizontal)
nnoremap <leader>sv <C-w>v<C-w>l
nnoremap <leader>sh <C-w>s<C-w>j

" move around splits faster
nnoremap <leader><Left> <C-w>h
nnoremap <leader><Down> <C-w>j
nnoremap <leader><Up> <C-w>k
nnoremap <leader><Right> <C-w>l

" Map ctrl-c to copy to clipboard
map <C-c> "+y<CR> 

filetype indent plugin on
