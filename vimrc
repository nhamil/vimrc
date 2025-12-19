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
set ttyfast
set lazyredraw

" Set leader to spacebar 
nnoremap <SPACE> <Nop>
let mapleader=" "

" File searching 
set path+=**
set wildmenu
set wildmode=longest:full,full
set wildignore+=*.o,*.obj,*.d,*.swp,*~,*.pyc,.git,*/build/*,*/Build/*,*/.git/*,*/node_modules/*,*/dist/*
set wildignorecase
set wildoptions=pum,fuzzy
nnoremap <leader>fi :find<SPACE>

" Window navigation 
nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l
nnoremap <Tab> <C-w>w
nnoremap <S-Tab> <C-w>W
nnoremap <CR> <C-w>x
nnoremap <BS> <C-w>=

" Set up NERDTree 
let g:NERDTreeQuitOnOpen = 1
let g:NERDTreeWinPos = "right"
nnoremap <leader>nt :NERDTreeFocus<CR>

" Splitting
set splitright
set splitbelow
nnoremap <leader>vs :vsplit<CR>
nnoremap <leader>hs :split<CR>
nnoremap <M-Right> :vertical resize +40<CR>
nnoremap <M-Left> :vertical resize -40<CR>
nnoremap <M-Up> :resize +20<CR>
nnoremap <M-Down> :resize -20<CR>

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
set autoindent
set cino=(0,W4,(s,m1

" File type associations
autocmd! BufNewFile,BufRead *.vs,*.fs set ft=glsl

" File type spacing overrides
autocmd FileType markdown setlocal ts=2 sts=2 sw=2

" Tab shortcuts 
function! GdTabSplitAndBack() 
    execute "tab sp"
    execute "normal gd" 
endfunction
nnoremap <leader>td :call GdTabSplitAndBack()<CR>
nnoremap <leader>tn :tabnew<CR>
nnoremap <leader>tc :tabclose<CR>
nnoremap <leader>to :tabonly<CR>
nnoremap <leader>ts :tab sp<CR>
nnoremap <leader>tb :tab sp <bar> tabp<CR>

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

