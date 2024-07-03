"Neovim configruation files
"Author: Aidan LaBella - Brown University Department of Computer Science
"Email: alabella@cs.brown.edu 
"
"keybindings/apps/tabs.vim
"keybindings for tabs and windows

"let g:which_key_map['1'] = [ ':1tabnext'  , 'tab 1' ]
"let g:which_key_map['2'] = [ ':2tabnext'  , 'tab 2' ]
"let g:which_key_map['3'] = [ ':3tabnext'  , 'tab 3' ]
"let g:which_key_map['4'] = [ ':4tabnext'  , 'tab 4' ]
"let g:which_key_map['5'] = [ ':5tabnext'  , 'tab 5' ]
"let g:which_key_map['6'] = [ ':6tabnext'  , 'tab 6' ]
"let g:which_key_map['7'] = [ ':7tabnext'  , 'tab 7' ]
"let g:which_key_map['8'] = [ ':8tabnext'  , 'tab 8' ]
"let g:which_key_map['9'] = [ ':9tabnext'  , 'tab 9' ]
let g:which_key_map['b'] = {
      \ 'name' : '+buffers' ,
      \ 'p' : [':bprevious'     , 'prev. buffer']          ,
      \ 'n' : [':bNext'     , 'next buffer']          ,
\ }

let g:which_key_map['t'] = {
      \ 'name' : '+tabs' ,
      \ 'c' : [':tabclose'     , 'close current tab']          ,
      \ 'n' : [':tabnew'     , 'open new tab']          ,
      \ 't' : ['gt'     , 'switch tabs']         ,
      \ 'l' : ['gt'     , 'one tab forward']         ,
      \ 'h' : ['gT'    , 'one tab backwards']            ,
      \ '1' : [':1tabnext'  , 'tab 1' ],
      \ '2' : [':2tabnext'  , 'tab 2' ],
      \ '3' : [':3tabnext'  , 'tab 3' ],
      \ '4' : [':4tabnext'  , 'tab 4' ],
      \ '5' : [':5tabnext'  , 'tab 5' ],
      \ '6' : [':6tabnext'  , 'tab 6' ],
      \ '7' : [':7tabnext'  , 'tab 7' ],
      \ '8' : [':8tabnext'  , 'tab 8' ],
      \ '9' : [':9tabnext'  , 'tab 9' ],
\ }

let g:which_key_map['w'] = {
      \ 'name' : '+windows' ,
      \ 'w' : ['<C-W>w'     , 'other-window']          ,
      \ 'c' : ['<C-W>c'     , 'delete-window']         ,
      \ '-' : ['<C-W>s'     , 'split-window-below']    ,
      \ '|' : ['<C-W>v'     , 'split-window-right']    ,
      \ '2' : ['<C-W>v'     , 'layout-double-columns'] ,
      \ 'h' : ['<C-W>h'     , 'window-left']           ,
      \ 'j' : ['<C-W>j'     , 'window-below']          ,
      \ 'l' : ['<C-W>l'     , 'window-right']          ,
      \ 'k' : ['<C-W>k'     , 'window-up']             ,
      \ 'H' : ['<C-W>5<'    , 'expand-window-left']    ,
      \ 'J' : [':resize +5'  , 'expand-window-below']   ,
      \ 'L' : ['<C-W>5>'    , 'expand-window-right']   ,
      \ 'K' : [':resize -5'  , 'expand-window-up']      ,
      \ '=' : ['<C-W>='     , 'balance-window']        ,
      \ 's' : ['<C-W>s'     , 'split-window-below']    ,
      \ 'v' : ['<C-W>v'     , 'split-window-below']    ,
      \ '?' : ['Windows'    , 'fzf-window']            ,
      \}
