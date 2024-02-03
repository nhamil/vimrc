execute pathogen#infect()

" Basic setup 
set ignorecase
set nu 
set noea 
set shortmess+=I

" Set leader to spacebar 
nnoremap <SPACE> <Nop>
let mapleader=" "

" Set up NERDTree 
let g:NERDTreeQuitOnOpen = 0
let g:NERDTreeWinPos = "right"
nnoremap <leader>f :NERDTreeToggle

" Set up vim-airline
set laststatus=2
let g:airline_theme='onedark'

" Terminal 
set termwinsize=10x0
nnoremap <leader>t :below terminal 

" Shift tab should go back
nnoremap <S-Tab> <<
inoremap <S-Tab> <C-d>

" Visual mode tab 
vmap <Tab> >gv 
vmap <S-Tab> <gv 

" Spaces for tabs
filetype plugin indent on 
set tabstop=4
set shiftwidth=4
set expandtab

" Color scheme
set term=xterm-256color
set t_Co=256
set t_ut=
colorscheme codedark
syntax on

