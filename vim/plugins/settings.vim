"Neovim configruation files
"Author: Aidan LaBella - RIT Department of Computer Science
"Email: apl1341@cs.rit.edu 
"
"plugins/settings.vim
"configure plugin settings

"Python syntax
let g:python_highlight_all = 1

"Airline
let g:airline#extensions#tabline#enabled = 1 
let g:airline_powerline_fonts = 1
let g:airline#extensions#tabline#show_tab_nr = 1
let g:airline#extensions#tabline#tab_nr_type= 2
let g:airline#extensions#tabline#fnamemod = ':t'
let g:airline#extensions#tabline#show_tab_type = 1
let g:airline#extensions#whitespace#enabled = 0
let g:airline#extensions#tabline#buffer_idx_mode = 1

set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let hostname=system('hostname -s | tr -d "\n"')
let username=system('whoami | tr -d "\n"')
let g:airline_section_x = '%{username}@%{hostname}'

"Startify
function! StartifyEntryFormat()
        return 'WebDevIconsGetFileTypeSymbol(absolute_path) ." ". entry_path'
endfunction

"NERDTree
let g:NERDTreeHijackNetrw = 0
let NERDTreeMapOpenInTab='<ENTER>'
set fillchars+=vert:\ 

"COC/LSP
inoremap <silent><expr> <CR> coc#pum#visible() ? coc#pum#confirm()
                              \: "\<C-g>u\<CR>\<c-r>=coc#on_enter()\<CR>"

autocmd CursorHold * silent call CocActionAsync('highlight')

""use <tab> for trigger completion and navigate to the next complete item
function! s:check_back_space() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~ '\s'
endfunction

"inoremap <silent><expr> <Tab>
      "\ pumvisible() ? "\<C-n>" :
      "\ <SID>check_back_space() ? "\<Tab>" :
      "\ coc#refresh()
inoremap <silent><expr> <TAB>
      \ coc#pum#visible() ? coc#pum#next(1) :
      \ CheckBackspace() ? "\<Tab>" :
      \ coc#refresh()
inoremap <expr><S-TAB> coc#pum#visible() ? coc#pum#prev(1) : "\<C-h>"

function! CheckBackspace() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction

let g:coc_disable_startup_warning = 1
"
"Ranger
let g:ranger_map_keys = 0
