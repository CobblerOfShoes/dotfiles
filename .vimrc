"Alex Schumann
"Vim settings

" Make vim not compatible because the internet says its problematic
set nocompatible

" ~~~Readability~~~ {{{

" Enable line numbers
set number

" Enable syntax highlighting
syntax on

" }}}

" ~~~Improve Controls/Cursor~~~ {{{

" Enable mouse
set mouse=a

" Highlight cursor line
set cursorline

" }}}

" ~~~Filetype Configurations~~~ {{{

" Enable type file detection
filetype on
" Enable plugins and load plugin for detected file type
filetype plugin on
" Load an indent file for the detected file tye
filetype indent on
" The three above are equivalent to: filetype plugin indent on

" }}}

" ~~~Indentation~~~ {{{

" Enable auto indentation
set autoindent

" Set shift width to 2 spaces
set shiftwidth=2

" Set tab width to 2 columns
set softtabstop=2

" Use spaces instead of tabs
set expandtab

" }}}

" ~~~Searching~~~ {{{

" Ignore capital letters
set ignorecase
" Overide ignore case when searching capitals
set smartcase

" Show matching words during search
set showmatch

" Use highlighting when searching
set hlsearch

" }}}

" ~~~Commands~~~ {{{

" Show command you type on last line of screen
set showcmd

" Show mode on last line
set showmode

" }}}

" ~~~VIMSCRIPT~~~ {{{

" NOT WORKING
" The following enables code folding
" Uses marker method of folding
"augroup filetype_vim
"  autocmd!
"  autocmd FileType vim setlocal foldmethod=marker
"augroup END

" Enable code folding with {{{ }}}
set foldmethod=marker
" Bind space to open/close folds
nnoremap <space> za

" }}}

" ~~~PLUGINS~~~ {{{

" NERDTree
" Bind F2 to open NERDTree menu
nmap     <F2>    :NERDTreeToggle<CR>
" Show bookmarks table
let g:NERDTreeShowBookmarks = 1
" Show hidden files
let g:NERDTreeShowHidden = 1
" Hide line numbers (enabled in vim)
let g:NERDTreeShowLineNumbers = 0
" Use minimal menu
let g:NERDTreeMinimalMenu = 1
" Set menu to left side
let g:NERDTreeWinPos = "left"
" Set width to 31 columns
let g:NERDTreeWinSize = 31

" Polyglot (Language support)
let g:polyglot_disabled = ['markdown']
" Disable auto indentation if its bugged
" let g:polyglot_disabled = ['autoindent']

" Set keybind Ctrl + P to toggle auto pairs
let g:AutoPairsShortcutToggle = '<C-P>'

" Airline
let g:airline_theme='night_owl'
let g:airline#extensions#tabline#enabled = 1 " Enable the list of buffers

" }}}

" ~~~VIM Customization~~~ {{{

packadd! everforest

set background=dark
colorscheme everforest

" }}}
