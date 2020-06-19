set autoindent

call plug#begin('~/.vim/plugged')

Plug 'uiiaoo/java-syntax.vim'
Plug 'preservim/nerdtree'
Plug 'preservim/nerdcommenter'
Plug 'dracula/vim', { 'as': 'dracula' }
Plug 'terryma/vim-multiple-cursors'
Plug 'itchyny/lightline.vim'
Plug 'junegunn/fzf.vim'
Plug 'airblade/vim-gitgutter'
Plug 'jreybert/vimagit'
Plug 'tpope/vim-fugitive'
Plug 'pangloss/vim-javascript'

" Initialize plugin system
call plug#end()

let g:lightline = {
      \ 'colorscheme': 'darcula',
      \ }

colorscheme dracula
set tabstop=4
set ts=4 sw=4
set laststatus=2
set number
