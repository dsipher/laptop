call plug#begin('~/.local/share/nvim/plugged')
Plug 'godlygeek/Tabular'
Plug 'itchyny/lightline.vim'
Plug 'neovimhaskell/haskell-vim'
Plug 'bling/vim-bufferline'
Plug 'tpope/vim-surround'
Plug 'dracula/vim',{'as':'dracula'}
call plug#end()

let mapleader=" "

colorscheme dracula
set termguicolors
"Cursorshape
set guicursor=

syntax on
filetype plugin indent on

"Autoindent new lines
set autoindent
set smartindent
set smarttab
set expandtab
"Number of autoindent spaces
set shiftwidth=2
"Spaces per tab
set softtabstop=2
"set tabstop=8
"set shiftround

"Dont show modes
set noshowmode
set laststatus=2
"Primary clipboard
set clipboard+=unnamedplus
"Linenumbers
set number
"Relative numbers
set relativenumber
"Highlight matching braces
set showmatch
"Visualbell instead of beep
set visualbell
"Highlight all searches
set hlsearch
"Smartcase search
set smartcase
"Case insensitive search
set ignorecase
"Search for strings incrementally
set incsearch
"Col and row ruler 
set ruler
"Number of undo
set undolevels=1000
"modern backspace behavior 
set backspace=indent,eol,start
"lightline
let g:lightline = {
    \ 'colorscheme': 'one',
    \ }

"term
au BufEnter * if &buftype == 'terminal' | :startinsert | endif
au TermOpen * setlocal nonumber norelativenumber bufhidden=hide
tnoremap <Esc> <C-\><C-n>
noremap <C-k> :q<CR>
nnoremap <C-o> :rightbelow split term://bash<CR>
nnoremap <C-j> :rightbelow sbn<CR>
nnoremap <tab> :bn<CR>

"vim-surround
vmap <leader>] S]
vmap <leader>) S)
vmap <leader>" S"
vmap <leader>' S'
vmap <leader>} S}
nmap <leader>] ysiw]
nmap <leader>) ysiw)
nmap <leader>" ysiw"
nmap <leader>' ysiw'
nmap <leader>} ysiw}

"netrw nerdtree style
let g:netrw_liststyle = 3
"netrw rm banner
let g:netrw_banner = 0
"netrw size
let g:netrw_winsize = 25
let g:netrw_altv = 1
let g:netrw_browse_split = 4
nnoremap <leader>p :Vexplore<CR>
"Search hl off
nnoremap <leader>/ :noh<CR>
"V-block cgn 
nnoremap <leader>v <C-V>
"Tabular
nnoremap <leader>= :Tabularize /=<CR>
nnoremap <leader>- :Tabularize /-><CR>
nnoremap <leader>, :Tabularize /,<CR>
nnoremap <leader># :Tabularize /#-}<CR>

vmap a= :Tabularize /=<CR>
vmap a- :Tabularize /-><CR>
vmap a, :Tabularize /,<CR>
vmap a# :Tabularize /#-}<CR>

"haskell 
let g:haskell_indent_if = 3
let g:haskell_indent_case = 2
let g:haskell_indent_let = 4
let g:haskell_indent_where = 6
let g:haskell_indent_before_where = 2
let g:haskell_indent_after_bare_where = 2
let g:haskell_indent_do = 3
let g:haskell_indent_in = 1
let g:haskell_indent_guard = 2
"let g:haskell_indent_section = 2
let g:haskell_indent_case_alternative = 1

let g:haskell_classic_highlighting = 1
"let g:haskell_enable_quantification = 1
"let g:haskell_enable_recursivedo = 1
"let g:haskell_enable_arrowsyntax = 1
"let g:haskell_enable_pattern_synonyms = 1
"let g:haskell_enable_typeroles = 1
"let g:haskell_enable_static_pointers = 1
"let g:haskell_backpack = 1
