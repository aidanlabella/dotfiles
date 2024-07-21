"Neovim configruation files
"Author: Aidan LaBella - RIT Department of Computer Science
"Email: apl1341@cs.rit.edu 
"
"keybindings/keys.vim
"entrypoint of keybindings

let g:mapleader = "\<Space>"
let g:maplocalleader = ','
let g:which_key_map =  {}

nnoremap <silent> <leader>      :<c-u>WhichKey '<Space>'<CR>
nnoremap <silent> <localleader> :<c-u>WhichKey  ','<CR>

function! OpenFileExpTab()
    execute 'tabnew'
    execute 'Explore'
endfunction


command! OpenFTab call OpenFileExpTab()

let g:which_key_map['V'] = [ ':vnew'  , 'Open VSplit' ]
let g:which_key_map['E'] = [ ':Explore'  , 'Open Files' ]
let g:which_key_map['F'] = [ ':OpenFTab'  , 'Open Tab (files)' ]

source $HOME/.vim/keybindings/apps/files.vim
source $HOME/.vim/keybindings/apps/exit.vim
source $HOME/.vim/keybindings/apps/tabs.vim
source $HOME/.vim/keybindings/apps/git.vim
source $HOME/.vim/keybindings/apps/tagbar.vim
source $HOME/.vim/keybindings/apps/coc.vim
source $HOME/.vim/keybindings/apps/vimtex.vim

call which_key#register('<Space>', "g:which_key_map")
