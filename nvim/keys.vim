let g:mapleader = "\<Space>"
let g:maplocalleader = ','
let g:which_key_map =  {}
nnoremap <silent> <leader>      :<c-u>WhichKey '<Space>'<CR>
nnoremap <silent> <localleader> :<c-u>WhichKey  ','<CR>

let g:which_key_map['W'] = [ 'w'                                  , 'write' ]
let g:which_key_map['1'] = [ ':1tabnext'  , 'tab 1' ]
let g:which_key_map['2'] = [ ':2tabnext'  , 'tab 2' ]
let g:which_key_map['3'] = [ ':3tabnext'  , 'tab 3' ]
let g:which_key_map['4'] = [ ':4tabnext'  , 'tab 4' ]
let g:which_key_map['5'] = [ ':5tabnext'  , 'tab 5' ]
let g:which_key_map['6'] = [ ':6tabnext'  , 'tab 6' ]
let g:which_key_map['7'] = [ ':7tabnext'  , 'tab 7' ]
let g:which_key_map['8'] = [ ':8tabnext'  , 'tab 8' ]
let g:which_key_map['9'] = [ ':9tabnext'  , 'tab 9' ]

let g:which_key_map['f'] = {
      \ 'name' : '+files' ,
      \ 'f' : ['FZF'     , 'find file']    ,
      \ 'r' : ['RangerCurrentDirectory'     , 'ranger']    ,
      \ 'R' : ['Ranger'     , 'ranger ~']    ,
      \ 't' : ['NERDTreeToggle'     , 'file tree']    ,
      \ 'e' : ['Explore'     , 'explore files']    ,
\ }

let g:which_key_map['q'] = {
      \ 'name' : '+quit' ,
      \ 'x' : [':x'     , 'save and exit current buffer']          ,
      \ 'X' : [':xa!'     , 'save and exit all buffers']         ,
      \ 'q' : [':q'    , 'exit current buffer']            ,
      \ 'f' : [':q!'    , 'force quit current buffer']            ,
      \ 'Q' : [':qa!'    , 'exit all buffers']            ,
\ }

let g:which_key_map['t'] = {
      \ 'name' : '+tabs' ,
      \ 'n' : [':tabnew'     , 'open new tab']          ,
      \ 't' : ['gt'     , 'switch tabs']         ,
      \ 'l' : ['gt'     , 'one tab forward']         ,
      \ 'h' : ['gT'    , 'one tab backwards']            ,
\ }

let g:which_key_map['o'] = {
      \ 'name' : '+outline (tagbar)' ,
      \ 'o' : [':TagbarToggle'     , 'open outline']          ,
      \ 's' : [':TagbarShowTag'     , 'show tag']         ,
\ }

let g:which_key_map['w'] = {
      \ 'name' : '+windows' ,
      \ 'w' : ['<C-W>w'     , 'other-window']          ,
      \ 'd' : ['<C-W>c'     , 'delete-window']         ,
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
\ }

let g:which_key_map.g = {
      \ 'name' : '+git' ,
      \ 'a' : [':Gwrite'                       	   , 'add current'],
      \ 'A' : [':Git add %'                        , 'add all'],
      \ 'b' : [':Git blame'                        , 'blame'],
      \ 'B' : [':GBrowse'                          , 'browse'],
      \ 'c' : [':Git commit'                       , 'commit'],
      \ 'd' : [':Git diff'                         , 'diff'],
      \ 'D' : [':Gdiffsplit'                       , 'diff split'],
      \ 'g' : [':Git'                              , 'fugitive'],
      \ 'G' : [':Gstatus'                          , 'status'],
      \ 'h' : [':GitGutterLineHighlightsToggle'    , 'highlight hunks'],
      \ 'H' : ['<Plug>(GitGutterPreviewHunk)'      , 'preview hunk'],
      \ 'i' : [':Gist -b'                          , 'post gist'],
      \ 'j' : ['<Plug>(GitGutterNextHunk)'         , 'next hunk'],
      \ 'k' : ['<Plug>(GitGutterPrevHunk)'         , 'prev hunk'],
      \ 'l' : [':Git log'                          , 'log'],
      \ 'm' : ['<Plug>(git-messenger)'             , 'message'],
      \ 'p' : [':Git push'                         , 'push'],
      \ 'P' : [':Git pull'                         , 'pull'],
      \ 'r' : [':GRemove'                          , 'remove'],
      \ 's' : ['<Plug>(GitGutterStageHunk)'        , 'stage hunk'],
      \ 'S' : [':!git status'                      , 'status'],
      \ 't' : [':GitGutterSignsToggle'             , 'toggle signs'],
      \ 'u' : ['<Plug>(GitGutterUndoHunk)'         , 'undo hunk'],
      \ 'v' : [':GV'                               , 'view commits'],
      \ 'V' : [':GV!'                              , 'view buffer commits'],
      \ }

call which_key#register('<Space>', "g:which_key_map")
