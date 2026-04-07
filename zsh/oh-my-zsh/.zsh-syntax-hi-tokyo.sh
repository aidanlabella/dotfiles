# Tokyo Night Moon Theme (for zsh-syntax-highlighting)
#
# Paste this file's contents inside your ~/.zshrc before you activate zsh-syntax-highlighting

ZSH_HIGHLIGHT_HIGHLIGHTERS=(main cursor)
typeset -gA ZSH_HIGHLIGHT_STYLES

# Main highlighter styling:
# https://github.com/zsh-users/zsh-syntax-highlighting/blob/master/docs/highlighters/main.md

## Comments
ZSH_HIGHLIGHT_STYLES[comment]='fg=#636da6'

## Functions / methods / commands
ZSH_HIGHLIGHT_STYLES[alias]='fg=#82aaff'
ZSH_HIGHLIGHT_STYLES[suffix-alias]='fg=#82aaff'
ZSH_HIGHLIGHT_STYLES[global-alias]='fg=#82aaff'
ZSH_HIGHLIGHT_STYLES[function]='fg=#82aaff'
ZSH_HIGHLIGHT_STYLES[command]='fg=#82aaff'
ZSH_HIGHLIGHT_STYLES[precommand]='fg=#86e1fc'
ZSH_HIGHLIGHT_STYLES[autodirectory]='fg=#ff966c'
ZSH_HIGHLIGHT_STYLES[single-hyphen-option]='fg=#ffc777'
ZSH_HIGHLIGHT_STYLES[double-hyphen-option]='fg=#ffc777'
ZSH_HIGHLIGHT_STYLES[back-quoted-argument]='fg=#c099ff'

## Builtins / keywords
ZSH_HIGHLIGHT_STYLES[builtin]='fg=#86e1fc'
ZSH_HIGHLIGHT_STYLES[reserved-word]='fg=#c099ff'
ZSH_HIGHLIGHT_STYLES[hashed-command]='fg=#86e1fc'

## Punctuation
ZSH_HIGHLIGHT_STYLES[commandseparator]='fg=#fca7ea'
ZSH_HIGHLIGHT_STYLES[command-substitution-delimiter]='fg=#c8d3f5'
ZSH_HIGHLIGHT_STYLES[command-substitution-delimiter-unquoted]='fg=#c8d3f5'
ZSH_HIGHLIGHT_STYLES[process-substitution-delimiter]='fg=#c8d3f5'
ZSH_HIGHLIGHT_STYLES[back-quoted-argument-delimiter]='fg=#fca7ea'
ZSH_HIGHLIGHT_STYLES[back-double-quoted-argument]='fg=#fca7ea'
ZSH_HIGHLIGHT_STYLES[back-dollar-quoted-argument]='fg=#fca7ea'

## Strings
ZSH_HIGHLIGHT_STYLES[command-substitution-quoted]='fg=#c3e88d'
ZSH_HIGHLIGHT_STYLES[command-substitution-delimiter-quoted]='fg=#c3e88d'
ZSH_HIGHLIGHT_STYLES[single-quoted-argument]='fg=#c3e88d'
ZSH_HIGHLIGHT_STYLES[single-quoted-argument-unclosed]='fg=#ff757f'
ZSH_HIGHLIGHT_STYLES[double-quoted-argument]='fg=#c3e88d'
ZSH_HIGHLIGHT_STYLES[double-quoted-argument-unclosed]='fg=#ff757f'
ZSH_HIGHLIGHT_STYLES[rc-quote]='fg=#c3e88d'

## Variables / assignments / descriptors
ZSH_HIGHLIGHT_STYLES[dollar-quoted-argument]='fg=#c8d3f5'
ZSH_HIGHLIGHT_STYLES[dollar-quoted-argument-unclosed]='fg=#ff757f'
ZSH_HIGHLIGHT_STYLES[dollar-double-quoted-argument]='fg=#c8d3f5'
ZSH_HIGHLIGHT_STYLES[assign]='fg=#c8d3f5'
ZSH_HIGHLIGHT_STYLES[named-fd]='fg=#c8d3f5'
ZSH_HIGHLIGHT_STYLES[numeric-fd]='fg=#c8d3f5'

## Other
ZSH_HIGHLIGHT_STYLES[unknown-token]='fg=#ff757f'
ZSH_HIGHLIGHT_STYLES[path]='fg=#c8d3f5'
ZSH_HIGHLIGHT_STYLES[path_pathseparator]='fg=#fca7ea'
ZSH_HIGHLIGHT_STYLES[path_prefix]='fg=#c8d3f5'
ZSH_HIGHLIGHT_STYLES[path_prefix_pathseparator]='fg=#fca7ea'
ZSH_HIGHLIGHT_STYLES[globbing]='fg=#c8d3f5'
ZSH_HIGHLIGHT_STYLES[history-expansion]='fg=#c099ff'

#ZSH_HIGHLIGHT_STYLES[command-substitution]='fg=?'
#ZSH_HIGHLIGHT_STYLES[command-substitution-unquoted]='fg=?'
#ZSH_HIGHLIGHT_STYLES[process-substitution]='fg=?'
#ZSH_HIGHLIGHT_STYLES[arithmetic-expansion]='fg=?'

ZSH_HIGHLIGHT_STYLES[back-quoted-argument-unclosed]='fg=#ff757f'
ZSH_HIGHLIGHT_STYLES[redirection]='fg=#c8d3f5'
ZSH_HIGHLIGHT_STYLES[arg0]='fg=#c8d3f5'
ZSH_HIGHLIGHT_STYLES[default]='fg=#c8d3f5'
ZSH_HIGHLIGHT_STYLES[cursor]='standout'
