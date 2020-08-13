set autoindent

call plug#begin('~/.vim/plugged')
Plug 'uiiaoo/java-syntax.vim'
Plug 'preservim/nerdtree'
Plug 'preservim/nerdcommenter'
Plug 'dracula/vim', { 'as': 'dracula' }
Plug 'terryma/vim-multiple-cursors'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'junegunn/fzf'
Plug 'airblade/vim-gitgutter'
Plug 'jreybert/vimagit'
Plug 'tpope/vim-fugitive'
Plug 'pangloss/vim-javascript'
Plug 'prabirshrestha/async.vim'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'ryanoasis/vim-devicons'
Plug 'liuchengxu/vim-which-key'
Plug 'mhinz/vim-startify'
Plug 'jceb/vim-orgmode'

" Initialize plugin system
call plug#end()

let hostname=system('hostname -s | tr -d "\n"')
let username=system('whoami | tr -d "\n"')
let g:airline_section_y = '%{username}@%{hostname}'
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#formatter = 'unique_tail'

colorscheme dracula
set guifont=NotoMono\ Nerd\ Font:h10
set tabstop=4
set ts=4 sw=4
set laststatus=2
set number
set hidden

cnoreabbrev W w
cnoreabbrev Q q

source ~/dotfiles/nvim/keys.vim
