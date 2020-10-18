" rnb.vim -- Vim color scheme.
" Author:      Aidan LaBella (apl1341@rit.edu)
" Webpage:     http://people.rit.edu/~apl1341/
" Description: A color scheme I created

set background=dark

"highlight clear
if exists("syntax_on")
    syntax reset
endif
let g:colors_name="apltheme"

"----------------------------------------------------------------
" General settings                                              |
"----------------------------------------------------------------
"----------------------------------------------------------------
" Syntax group   | Foreground    | Background    | Style        |
"----------------------------------------------------------------

" --------------------------------
" Editor settings
" --------------------------------
hi Normal          ctermfg=none    ctermbg=none    cterm=none  guibg=#000000 guifg=#ffffff

hi Cursor          ctermfg=none    ctermbg=none    cterm=none
hi CursorLine      ctermfg=none    ctermbg=none    cterm=none
hi LineNr          ctermfg=4    ctermbg=none    cterm=none   guifg=#000080
hi CursorLineNR    ctermfg=none    ctermbg=none    cterm=none

" -----------------
" - Number column -
" -----------------
hi CursorColumn    ctermfg=none    ctermbg=none    cterm=none
hi FoldColumn      ctermfg=none    ctermbg=none    cterm=none
hi SignColumn      ctermfg=none    ctermbg=none    cterm=none
hi Folded          ctermfg=none    ctermbg=none    cterm=none

" -------------------------
" - Window/Tab delimiters - 
" -------------------------
hi VertSplit       ctermfg=none    ctermbg=none    cterm=none
hi ColorColumn     ctermfg=none    ctermbg=none    cterm=none
hi TabLine         ctermfg=none    ctermbg=none    cterm=none
hi TabLineFill     ctermfg=none    ctermbg=none    cterm=none
hi TabLineSel      ctermfg=none    ctermbg=none    cterm=none

" -------------------------------
" - File Navigation / Searching -
" -------------------------------
hi Directory       ctermfg=none    ctermbg=none    cterm=none
hi Search          ctermfg=none    ctermbg=none    cterm=none
hi IncSearch       ctermfg=none    ctermbg=none    cterm=none

" -----------------
" - Prompt/Status -
" -----------------
hi StatusLine      ctermfg=none    ctermbg=none    cterm=none
hi StatusLineNC    ctermfg=none    ctermbg=none    cterm=none
hi WildMenu        ctermfg=none    ctermbg=none    cterm=none
hi Question        ctermfg=none    ctermbg=none    cterm=none
hi Title           ctermfg=none    ctermbg=none    cterm=none
hi ModeMsg         ctermfg=none    ctermbg=none    cterm=none
hi MoreMsg         ctermfg=none    ctermbg=none    cterm=none

" --------------
" - Visual aid -
" --------------
hi MatchParen      ctermfg=14   ctermbg=none    cterm=none  guifg=#00ffff  guibg=#ffffff
hi Visual          ctermfg=none	ctermbg=15	cterm=none
hi VisualNOS       ctermfg=none    ctermbg=none    cterm=none
hi NonText         ctermfg=none    ctermbg=none    cterm=none

hi Todo            ctermfg=11    ctermbg=none    cterm=none 	guifg=#ffff00  guibg=#000000	
hi Underlined      ctermfg=none    ctermbg=none    cterm=none
hi Error           ctermfg=none    ctermbg=none    cterm=none
hi ErrorMsg        ctermfg=none    ctermbg=none    cterm=none
hi WarningMsg      ctermfg=none    ctermbg=none    cterm=none
hi Ignore          ctermfg=none    ctermbg=none    cterm=none
hi SpecialKey      ctermfg=none    ctermbg=none    cterm=none

" --------------------------------
" Variable types
" --------------------------------
hi Constant        ctermfg=11   ctermbg=none    cterm=none 	guifg=#ffff00
hi String          ctermfg=42    ctermbg=none    cterm=none   guifg=#00d787	
hi StringDelimiter ctermfg=42    ctermbg=none    cterm=none   guifg=#00d787	
hi Character       ctermfg=160    ctermbg=none    cterm=none  guifg=#d70000	
hi Number          ctermfg=160    ctermbg=none    cterm=none  guifg=#d70000	
hi Boolean         ctermfg=160    ctermbg=none    cterm=none  guifg=#d70000	
hi Float           ctermfg=160    ctermbg=none    cterm=none  guifg=#d70000	

hi Identifier      ctermfg=11    ctermbg=none    cterm=none   guifg=#ffff00
hi Function        ctermfg=27    ctermbg=none    cterm=none   guifg=#005fff	
hi cType           ctermfg=34    ctermbg=none    cterm=none   guifg=#00af00	
hi cOperator	   ctermfg=15    guifg=#ffffff


" --------------------------------
" Language constructs
" --------------------------------
hi Statement       ctermfg=196    ctermbg=none    cterm=none   guifg=#ff0000	
hi Conditional     ctermfg=196    ctermbg=none    cterm=none   guifg=#ff0000
hi Repeat          ctermfg=93   ctermbg=none    cterm=none   guifg=#8700ff	
hi Label           ctermfg=11    ctermbg=none    cterm=none   guifg=#ffff00	
hi Operator        ctermfg=11    ctermbg=none    cterm=none   guifg=#ffff00	
hi Keyword         ctermfg=5    ctermbg=none    cterm=none   guifg=#800080	
hi Exception       ctermfg=13   ctermbg=none    cterm=none   guifg=#ff00ff
hi Comment         ctermfg=244    ctermbg=none    cterm=none   guifg=#808080	

hi Special         ctermfg=11    ctermbg=none    cterm=none   guifg=#ffff00	
hi SpecialChar     ctermfg=none    ctermbg=none    cterm=none
hi Tag             ctermfg=none    ctermbg=none    cterm=none
hi Delimiter       ctermfg=none    ctermbg=none    cterm=none
hi SpecialComment  ctermfg=none    ctermbg=none    cterm=none
hi Debug           ctermfg=none    ctermbg=none    cterm=none

" ----------
" - C like -
" ----------
hi PreProc         ctermfg=13    ctermbg=none    cterm=none   guifg=#ff00ff
hi Include         ctermfg=11    ctermbg=none    cterm=none   guifg=#ffff00	
hi Define          ctermfg=11    ctermbg=none    cterm=none   guifg=#ffff00	
hi Macro           ctermfg=11    ctermbg=none    cterm=none   guifg=#ffff00	
hi PreCondit       ctermfg=13    ctermbg=none    cterm=none   guifg=#ff00ff
hi cppType         ctermfg=11    ctermbg=none    cterm=none   guifg=#ffff00	

hi Type            ctermfg=93    ctermbg=none    cterm=none   guifg=#8700ff	
hi StorageClass    ctermfg=13    ctermbg=none    cterm=none   guifg=#ff00ff
hi Structure       ctermfg=5     ctermbg=none    cterm=none   guifg=#800080	
hi Typedef         ctermfg=5     ctermbg=none    cterm=none   guifg=#800080	
hi cAnsiFunction   ctermfg=21     guifg=#0000ff
" --------------------------------
" Diff
" --------------------------------
hi DiffAdd         ctermfg=none    ctermbg=none    cterm=none
hi DiffChange      ctermfg=none    ctermbg=none    cterm=none
hi DiffDelete      ctermfg=none    ctermbg=none    cterm=none
hi DiffText        ctermfg=none    ctermbg=none    cterm=none

" --------------------------------
" Completion menu
" --------------------------------
hi Pmenu           ctermfg=none    ctermbg=none    cterm=none
hi PmenuSel        ctermfg=none    ctermbg=none    cterm=none
hi PmenuSbar       ctermfg=none    ctermbg=none    cterm=none
hi PmenuThumb      ctermfg=none    ctermbg=none    cterm=none

" --------------------------------
" Spelling
" --------------------------------
hi SpellBad        ctermfg=none    ctermbg=none    cterm=none
hi SpellCap        ctermfg=none    ctermbg=none    cterm=none
hi SpellLocal      ctermfg=none    ctermbg=none    cterm=none
hi SpellRare       ctermfg=none    ctermbg=none    cterm=none

" --------------------------------
" Java
" --------------------------------
hi javaOperator		ctermfg=none    ctermbg=none    cterm=none
hi javaIdentifier		ctermfg=none    ctermbg=none    cterm=none
hi javaType            ctermfg=93    ctermbg=none    cterm=none   guifg=#8700ff	
hi javaStorageClass    ctermfg=13    ctermbg=none    cterm=none   guifg=#ff00ff