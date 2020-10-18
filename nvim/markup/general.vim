"Neovim configruation files
"Author: Aidan LaBella - RIT Department of Computer Science
"Email: apl1341@cs.rit.edu 
"
"syntax/general.vim
"configures various syntax highlighting options


"Enable JSDOC highlighting
let g:javascript_plugin_jsdoc = 1

"
let &t_8f="\<Esc>[38;2;%lu;%lu;%lum"
let &t_8b="\<Esc>[48;2;%lu;%lu;%lum"
"highlight Normal ctermbg=NONE
"highlight nonText ctermbg=NONE
hi Normal guibg=NONE ctermbg=NONE
set termguicolors


