" Set compatibility to Vim only "
set nocompatible

" Basic Config "
syntax enable
filetype plugin indent on
set path+=**
set linebreak
set mouse=a
set tabstop=4
set softtabstop=4
set shiftwidth=4
set fillchars+=eob:\

" Default language for spell checker "
set spelllang=en_us

" Show matching brackets "
set showmatch

" Do smart case matching "
set smartcase

" Do case insensitive matching "
set ignorecase

" Enable mouse "
set mouse=a

" Automatically wrap text that extends beyond the screen length "
set wrap

" Show line numbers and relative line numbers"
set number
set relativenumber

" Status bar"
set laststatus=2

"Convert tabs to spaces"
set expandtab

"Bring up a menu while selecting options"
set wildmenu

"Plugin Section
"call plug#begin()

"call plug#end()

" Basic styling
highlight Comment cterm=italic
highlight SpellBad ctermbg=Red ctermfg=White
highlight SpellCap cterm=NONE ctermbg=NONE
highlight SpellRare cterm=NONE ctermbg=NONE
highlight SpellLocal cterm=Underline ctermbg=NONE
