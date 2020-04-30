set autoindent

call plug#begin('~/.vim/plugged')

Plug 'uiiaoo/java-syntax.vim'
Plug 'preservim/nerdtree'
Plug 'preservim/nerdcommenter'
Plug 'tpope/vim-fugitive'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'

" Initialize plugin system
call plug#end()

let g:airline_theme='light'
let g:airline#extensions#tabline#formatter = 'jsformatter'

colorscheme aidanstheme
