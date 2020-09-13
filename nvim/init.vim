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
Plug 'autozimu/LanguageClient-neovim'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'ryanoasis/vim-devicons'
Plug 'liuchengxu/vim-which-key'
Plug 'mhinz/vim-startify'
Plug 'jceb/vim-orgmode'
Plug 'Xuyuanp/nerdtree-git-plugin'
Plug 'tiagofumo/vim-nerdtree-syntax-highlight'
Plug 'majutsushi/tagbar'
Plug 'norcalli/nvim-colorizer.lua'
Plug 'pacha/vem-tabline'
Plug 'junegunn/gv.vim'

" Initialize plugin system
call plug#end()

let hostname=system('hostname -s | tr -d "\n"')
let username=system('whoami | tr -d "\n"')
let g:airline_section_x = '%{username}@%{hostname}'

let g:vem_tabline_show_number = 'index'

let g:airline_powerline_fonts = 1

colorscheme dracula
set guifont=NotoMono\ Nerd\ Font:h10
set tabstop=4
set ts=4 sw=4
set laststatus=2
set number
set hidden
set timeoutlen=250

let &t_8f="\<Esc>[38;2;%lu;%lu;%lum"
let &t_8b="\<Esc>[48;2;%lu;%lu;%lum"
set termguicolors

lua require'colorizer'.setup()

cnoreabbrev W w
cnoreabbrev Q q

source ~/dotfiles/nvim/keys.vim
