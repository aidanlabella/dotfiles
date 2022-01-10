"Neovim configruation files
"Author: Aidan LaBella - RIT Department of Computer Science
"Email: apl1341@cs.rit.edu 
"
"keybindings/apps/tagbar.vim
"keybindings for tagbar

let g:which_key_map['x'] = {
      \ 'name' : '+latex (vimtex)' ,
      \ 'c' : [':VimtexCompile'     , 'compile tex file']          ,
      \ 'x' : [':VimtexClean'     , 'clean tex build']         ,
      \ 'e' : [':VimtexErrors'     , 'view errors']         ,
      \ 'i' : [':VimtexInfo'     , 'view info']         ,
      \ 'l' : [':VimtexLog'     , 'view log']         ,
      \ 'g' : [':VimtexReload'     , 'reload vimtex']         ,
      \ 's' : [':VimtexStatus'     , 'view vimtex status']         ,
\ }
