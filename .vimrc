filetype plugin on

set smartindent
set tabstop=4
set expandtab
set shiftwidth=4
set number

set linebreak	
set showbreak=+++	
set showmatch	
setlocal comments-=://

set hlsearch
set smartcase
set ignorecase	
set incsearch


" this 
set autoindent
set smarttab
set softtabstop=4	


set ruler

set undolevels=1000
set backspace=indent,eol,start	
set hidden
set noswapfile
if has('gui') 
    set guifont=NanumGothicCoding\ Bold\ 16
endif



nnoremap <up> nop
nnoremap <down> nop
nnoremap <left> <c-w><
nnoremap <right> <c-w>>
nnoremap <C-h> <c-w>h
nnoremap <C-l> <c-w>l 
imap <C-V> <ESC>"+pa
nmap <C-V> "+p

call plug#begin('~/.vim/plugged')

" Make sure you use single quotes
Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }
Plug 'vim-airline/vim-airline'
Plug 'dracula/vim'
Plug 'scrooloose/nerdcommenter'
Plug 'vim-scripts/a.vim'
Plug 'jlanzarotta/bufexplorer'
Plug 'rafi/awesome-vim-colorschemes'


" Initialize plugin system
call plug#end()


let g:airline#extensions#tabline#enabled = 1


nnoremap <C-j> :bp<CR>
nnoremap <C-k> :bn<CR> 
nnoremap <F6> :BufExplorer<CR>

map <Leader>cc <plug>NERDComToggleComment

nmap _ :call NERDComment(0, "toggle")<CR>
vmap _ :call NERDComment("x", "toggle")<CR>


set tags+=../tags
set tags+=../../tags
set tags+=../../../tags
set tags+=../../../../tags
set tags+=/usr/include/systemtags

colorscheme one
set background=dark
runtime delmenu.vim
