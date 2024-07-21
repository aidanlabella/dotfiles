"Neovim configruation files
"Author: Aidan LaBella - RIT Department of Computer Science
"Email: apl1341@cs.rit.edu 
"
"/keybindings/apps/files.vim
"file management keybindings

function! OpenFileExpSplit()
    execute 'vnew'
    execute 'Explore'
endfunction

command! OpenFSplit call OpenFileExpSplit()

let g:which_key_map['f'] = {
      \ 'name' : '+files' ,
      \ 'f' : ['FZF'     , 'find file']    ,
      \ 'r' : ['RangerCurrentDirectory'     , 'ranger']    ,
      \ 'R' : ['Ranger'     , 'ranger ~']    ,
      \ 't' : ['OpenFSplit'     , 'file tree']    ,
      \ 'e' : ['Explore'     , 'explore files']    ,
\ }
