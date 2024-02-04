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
nnoremap <leader>nt :NERDTreeToggle

" Set up vim-airline
set laststatus=2
let g:airline_theme='onedark'

" Terminal 
set termwinsize=10x0
nnoremap <leader>tm :below terminal 

" Shift tab should go back
nnoremap <S-Tab> <<
inoremap <S-Tab> <C-d>

" Visual mode tab 
vmap <Tab> >gv 
vmap <S-Tab> <gv 

" Smooth scrolling
function SmoothScroll(up)
    if a:up
        let scrollaction="\<C-y>"
    else
        let scrollaction="\<C-e>"
    endif
    exec "normal " . scrollaction
    redraw
    let counter=1
    while counter<&scroll
        let counter+=1
        sleep 5m
        redraw
        exec "normal " . scrollaction
    endwhile
endfunction

nnoremap <C-U> :call SmoothScroll(1)<Enter>
nnoremap <C-D> :call SmoothScroll(0)<Enter>
inoremap <C-U> <Esc>:call SmoothScroll(1)<Enter>i
inoremap <C-D> <Esc>:call SmoothScroll(0)<Enter>i

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

" Set up coc.nvim 
try 
    source ~/.vim/intellisense.vim
catch 
    " Do nothing 
endtry

