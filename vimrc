execute pathogen#infect()

" Set leader to spacebar 
let mapleader=" "

" Set up NERDTree 
let g:NERDTreeQuitOnOpen = 0
let g:NERDTreeWinPos = "right"
nnoremap <leader>f :NERDTreeToggle

" Terminal 
set termwinsize=10x0
nnoremap <leader>t :below terminal 

" Shift tab should go back
nnoremap <S-Tab> <<
inoremap <S-Tab> <C-d>

" Visual mode tab 
vmap <Tab> >gv 
vmap <S-Tab> <gv 

" Set up vim-airline
set laststatus=2
let g:airline_theme='onedark'

" Case insensitive search
set ignorecase

" Spaces for tabs
filetype plugin indent on 
set tabstop=4
set shiftwidth=4
set expandtab

" Line numbers
set nu

" Window sizes should be same
set noea

" Color scheme
set term=xterm-256color
set t_Co=256
set t_ut=
colorscheme codedark
syntax on
