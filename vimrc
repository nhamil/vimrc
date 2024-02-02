execute pathogen#infect()

" turn on NERDTree 
let g:NERDTreeQuitOnOpen = 0
let g:NERDTreeWinPos = "left"

" shift tab should go back
nnoremap <S-Tab> <<
inoremap <S-Tab> <C-d>

" visual mode tab 
vmap <Tab> >gv 
vmap <S-Tab> <gv 

" vim-airline
set laststatus=2
let g:airline_theme='onedark'

" case insensitive search
set ignorecase

" spaces for tabs
filetype plugin indent on 
set tabstop=4
set shiftwidth=4
set expandtab

" line numbers
set nu

" custom key commands
nnoremap  <leader>nt :NERDTree

" window sizes should be same
set noea

" color scheme
set term=xterm-256color
set t_Co=256
set t_ut=
colorscheme codedark
syntax on
