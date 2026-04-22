# Monokai Pro Theme (for zsh-syntax-highlighting)
#
# https://monokai.pro
#
# Monokai Pro color scheme by Wimer Hazenberg
# Adapted for zsh-syntax-highlighting
#
# Paste this file's contents inside your ~/.zshrc before you activate zsh-syntax-highlighting
ZSH_HIGHLIGHT_HIGHLIGHTERS=(main cursor)
typeset -gA ZSH_HIGHLIGHT_STYLES

# Main highlighter styling: https://github.com/zsh-users/zsh-syntax-highlighting/blob/master/docs/highlighters/main.md

## General
### Diffs
### Markup
## Classes
## Comments
ZSH_HIGHLIGHT_STYLES[comment]='fg=#727072'

## Constants
## Entities
## Functions/methods
ZSH_HIGHLIGHT_STYLES[alias]='fg=#a9dc76'
ZSH_HIGHLIGHT_STYLES[suffix-alias]='fg=#a9dc76'
ZSH_HIGHLIGHT_STYLES[global-alias]='fg=#a9dc76'
ZSH_HIGHLIGHT_STYLES[function]='fg=#a9dc76'
ZSH_HIGHLIGHT_STYLES[command]='fg=#a9dc76'
ZSH_HIGHLIGHT_STYLES[precommand]='fg=#a9dc76,italic'
ZSH_HIGHLIGHT_STYLES[autodirectory]='fg=#fc9867,italic'
ZSH_HIGHLIGHT_STYLES[single-hyphen-option]='fg=#fc9867'
ZSH_HIGHLIGHT_STYLES[double-hyphen-option]='fg=#fc9867'
ZSH_HIGHLIGHT_STYLES[back-quoted-argument]='fg=#ab9df2'

## Keywords
## Built ins
ZSH_HIGHLIGHT_STYLES[builtin]='fg=#78dce8'
ZSH_HIGHLIGHT_STYLES[reserved-word]='fg=#78dce8'
ZSH_HIGHLIGHT_STYLES[hashed-command]='fg=#78dce8'

## Punctuation
ZSH_HIGHLIGHT_STYLES[commandseparator]='fg=#ff6188'
ZSH_HIGHLIGHT_STYLES[command-substitution-delimiter]='fg=#fcfcfa'
ZSH_HIGHLIGHT_STYLES[command-substitution-delimiter-unquoted]='fg=#fcfcfa'
ZSH_HIGHLIGHT_STYLES[process-substitution-delimiter]='fg=#fcfcfa'
ZSH_HIGHLIGHT_STYLES[back-quoted-argument-delimiter]='fg=#ff6188'
ZSH_HIGHLIGHT_STYLES[back-double-quoted-argument]='fg=#ff6188'
ZSH_HIGHLIGHT_STYLES[back-dollar-quoted-argument]='fg=#ff6188'

## Serializable / Configuration Languages
## Storage
## Strings
ZSH_HIGHLIGHT_STYLES[command-substitution-quoted]='fg=#ffd866'
ZSH_HIGHLIGHT_STYLES[command-substitution-delimiter-quoted]='fg=#ffd866'
ZSH_HIGHLIGHT_STYLES[single-quoted-argument]='fg=#ffd866'
ZSH_HIGHLIGHT_STYLES[single-quoted-argument-unclosed]='fg=#ff6188'
ZSH_HIGHLIGHT_STYLES[double-quoted-argument]='fg=#ffd866'
ZSH_HIGHLIGHT_STYLES[double-quoted-argument-unclosed]='fg=#ff6188'
ZSH_HIGHLIGHT_STYLES[rc-quote]='fg=#ffd866'

## Variables
ZSH_HIGHLIGHT_STYLES[dollar-quoted-argument]='fg=#fcfcfa'
ZSH_HIGHLIGHT_STYLES[dollar-quoted-argument-unclosed]='fg=#ff6188'
ZSH_HIGHLIGHT_STYLES[dollar-double-quoted-argument]='fg=#fcfcfa'
ZSH_HIGHLIGHT_STYLES[assign]='fg=#fcfcfa'
ZSH_HIGHLIGHT_STYLES[named-fd]='fg=#fcfcfa'
ZSH_HIGHLIGHT_STYLES[numeric-fd]='fg=#fcfcfa'

## No category relevant in spec
ZSH_HIGHLIGHT_STYLES[unknown-token]='fg=#ff6188'
ZSH_HIGHLIGHT_STYLES[path]='fg=#fcfcfa'
ZSH_HIGHLIGHT_STYLES[path_pathseparator]='fg=#ff6188'
ZSH_HIGHLIGHT_STYLES[path_prefix]='fg=#fcfcfa'
ZSH_HIGHLIGHT_STYLES[path_prefix_pathseparator]='fg=#ff6188'
ZSH_HIGHLIGHT_STYLES[globbing]='fg=#fcfcfa'
ZSH_HIGHLIGHT_STYLES[history-expansion]='fg=#ab9df2'
#ZSH_HIGHLIGHT_STYLES[command-substitution]='fg=?'
#ZSH_HIGHLIGHT_STYLES[command-substitution-unquoted]='fg=?'
#ZSH_HIGHLIGHT_STYLES[process-substitution]='fg=?'
#ZSH_HIGHLIGHT_STYLES[arithmetic-expansion]='fg=?'
ZSH_HIGHLIGHT_STYLES[back-quoted-argument-unclosed]='fg=#ff6188'
ZSH_HIGHLIGHT_STYLES[redirection]='fg=#fcfcfa'
ZSH_HIGHLIGHT_STYLES[arg0]='fg=#fcfcfa'
ZSH_HIGHLIGHT_STYLES[default]='fg=#fcfcfa'
ZSH_HIGHLIGHT_STYLES[cursor]='standout'
ZSH_AUTOSUGGEST_HIGHLIGHT_STYLE='fg=#939293'
