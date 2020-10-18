"Neovim configruation files
"Author: Aidan LaBella - RIT Department of Computer Science
"Email: apl1341@cs.rit.edu 
"
"keybindings/apps/exit.vim
"keybindings for exiting the editor/saving buffers

let g:which_key_map['W'] = [ 'w'                                  , 'write' ]
let g:which_key_map['q'] = {
      \ 'name' : '+quit' ,
      \ 'x' : [':x'     , 'save and exit current buffer']          ,
      \ 'X' : [':xa!'     , 'save and exit all buffers']         ,
      \ 'q' : [':q'    , 'exit current buffer']            ,
      \ 'f' : [':q!'    , 'force quit current buffer']            ,
      \ 'Q' : [':qa!'    , 'exit all buffers']            ,
\ }
