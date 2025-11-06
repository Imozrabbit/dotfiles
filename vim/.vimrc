" Set compatibility to Vim only "
set nocompatible

" Basic Config "
syntax enable
filetype plugin indent on
set noshowmode
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
call plug#begin()
    Plug 'ghifarit53/tokyonight-vim'
    Plug 'itchyny/lightline.vim'
    Plug 'junegunn/fzf', { 'do': { -> fzf#install() }}
    Plug 'junegunn/fzf.vim'
    Plug 'preservim/nerdtree' |
    Plug 'preservim/nerdtree' |
        \ Plug 'Xuyuanp/nerdtree-git-plugin'|
        \ Plug 'ryanoasis/vim-devicons'|
        \ Plug 'tiagofumo/vim-nerdtree-syntax-highlight'
call plug#end()

"Tokyonight theme config
let g:tokyonight_style = 'night'
let g:tokyonight_enable_italic = 1
let g:tokyonight_transparent_background = 1
colorscheme tokyonight

"Lightline config
let g:lightline = {
    \ 'colorscheme':'darcula',
    \}

"Nerdtree git plugin config
let g:NERDTreeGitStatusUseNerdFonts = 1 "default map
let g:NERDTreeGitStatusShowIgnored = 1 "show ignored status
let g:NERDTreeGitStatusConsealBrackets = 1
let g:NERDTreeHighlightFolders = 1 "enables folder icon highlighting using exact match
let g:NERDTreeHighlightFoldersFullName = 1 "highlights the folder name

"Start NerdTree unless afile or session is specified
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists('s:std_in') && v:this_session == '' | NERDTree | endif
"Exit Vim if NerdTree is the only window remaining in the only tab
autocmd BufEnter * if tabpagenr('$') == 1 && winnr('$') == 1 && exists('b:NERDTree') && b:NERDTree.isTabTree() | call feedkeys(":quit\<CR>:\<BS>") | endif

"fzf config
let g:fzf_vim = {} "fzf search the whole sys
let g:fzf_vim.preview_window = ['right,50%','ctrl-/']
nmap <silent> <C-N> :NERDTreeToggle<CR>

" Basic styling
highlight Comment cterm=italic
highlight SpellBad ctermbg=Red ctermfg=White
highlight SpellCap cterm=NONE ctermbg=NONE
highlight SpellRare cterm=NONE ctermbg=NONE
highlight SpellLocal cterm=Underline ctermbg=NONE
