execute pathogen#infect()

" Read .vimrc in the current directory 
set exrc 
set secure 

" Basic setup 
set ignorecase
set number
set noea 
set relativenumber
set shortmess+=I

" Window navigation 
nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l
nnoremap <Tab> <C-w>w
nnoremap <S-Tab> <C-w>W
nnoremap <CR> <C-w>x
nnoremap <BS> <C-w>=

" Set leader to spacebar 
nnoremap <SPACE> <Nop>
let mapleader=" "

" Set up NERDTree 
let g:NERDTreeQuitOnOpen = 1
let g:NERDTreeWinPos = "right"
nnoremap <leader>nt :NERDTreeFocus<CR>

" Set up vim-airline
set laststatus=2
let g:airline_theme='onedark'

" Terminal 
set termwinsize=10x0
nnoremap <leader>tm :below terminal<CR>

" Shift tab should go back
inoremap <S-Tab> <C-d>

" Visual mode tab 
vmap <Tab> >gv 
vmap <S-Tab> <gv 

" Spaces for tabs
filetype plugin indent on 
set tabstop=4
set shiftwidth=4
set expandtab
set cino=(0,W4,(s,m1

" Color scheme
set term=xterm-256color
set t_Co=256
set t_ut=
colorscheme codedark
syntax on

" Set up coc.nvim 
try 
    source ~/.vim/intellisense.vim
catch 
    " Do nothing 
endtry

