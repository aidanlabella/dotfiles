"Neovim configruation files
"Author: Aidan LaBella - RIT Department of Computer Science
"Email: apl1341@cs.rit.edu 
"
"keybindings/apps/coc.vim
"keybindings for coc/lsp

let g:which_key_map.l = {
      \ 'name' : '+lsp' ,
      \ 'c' : ['<Plug>(coc-definition)', 'definition'],
      \ 't' : ['<Plug>(coc-type-definition)' , 'type definition'],
      \ 'i' : ['<Plug>(coc-implementation)'  , 'implementation'],
      \ 'r' : ['<Plug>(coc-references)', 'references'],
      \ 'f' : [':CocFix', 'quick fix'],
      \ }
