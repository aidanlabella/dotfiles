"Neovim configruation files
"Author: Aidan LaBella - RIT Department of Computer Science
"Email: apl1341@cs.rit.edu 
"
"settings/plugins.vim
"adds plugins with VimPlug


call plug#begin('~/.vim/plugged')

"put plugins below this line
Plug 'uiiaoo/java-syntax.vim'
Plug 'preservim/nerdtree'
Plug 'preservim/nerdcommenter'
Plug 'dracula/vim', { 'as': 'dracula' }
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'junegunn/fzf'
Plug 'airblade/vim-gitgutter'
Plug 'tpope/vim-fugitive'
Plug 'pangloss/vim-javascript'
Plug 'ryanoasis/vim-devicons'
Plug 'liuchengxu/vim-which-key'
Plug 'Xuyuanp/nerdtree-git-plugin'
Plug 'tiagofumo/vim-nerdtree-syntax-highlight'
Plug 'junegunn/gv.vim'
Plug 'rbgrouleff/bclose.vim'
Plug 'francoiscabrol/ranger.vim'
Plug 'vim-syntastic/syntastic'
Plug 'machakann/vim-sandwich'
Plug 'psliwka/vim-smoothie'
Plug 'lervag/vimtex'

" May reduce performance
Plug 'neoclide/coc.nvim', {'branch': 'release'}


"No longer used/too buggy
"Plug 'jiangmiao/auto-pairs'
"Plug 'puremourning/vimspector'
" Initialize plugin system
call plug#end()
