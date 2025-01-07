antigen bundle zsh-users/zsh-autosuggestions
antigen bundle zsh-users/zsh-completions
antigen bundle zsh-users/zsh-syntax-highlighting
antigen apply

# Save and load history
HISTFILE=~/.zsh_history       # Location to save your history
HISTSIZE=100000               # Number of commands to keep in memory
SAVEHIST=1000000               # Number of commands to save to HISTFILE

# Append history rather than overwrite
setopt APPEND_HISTORY
setopt SHARE_HISTORY          # Share history across all sessions
