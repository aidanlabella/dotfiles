"Neovim configruation files
"Author: Aidan LaBella - RIT Department of Computer Science
"Email: apl1341@cs.rit.edu 
"
"keybindings/apps/tagbar.vim
"keybindings for tagbar

let g:which_key_map['o'] = {
      \ 'name' : '+outline (tagbar)' ,
      \ 'o' : [':TagbarToggle'     , 'open outline']          ,
      \ 's' : [':TagbarShowTag'     , 'show tag']         ,
\ }
