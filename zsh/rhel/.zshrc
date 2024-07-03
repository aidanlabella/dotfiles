# zsh runtime configuration
# RHEL/Fedora
# Aidan LaBella -- alabella@brown.edu
 

# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
# Linux: /home
# Mac: /Users
export ZSH="/users/alabella/.oh-my-zsh"

ZSH_THEME="aidans-theme"

COMPLETION_WAITING_DOTS="true"
ENABLE_CORRECTION="true"

source ~/.zsh-syntax-hi-onedark.sh
plugins=(git zsh-syntax-highlighting conda zsh-autosuggestions)

source $ZSH/oh-my-zsh.sh

## Homebrew
if type brew &>/dev/null
then
  FPATH="$(brew --prefix)/share/zsh/site-functions:${FPATH}"

  autoload -Uz compinit
  compinit
fi

#Custom commands/modifications
alias ls='ls --color=auto'
alias gloo='git log --oneline'
alias open='xdg-open'

#Useful Aliases
alias la='ls -la'
alias ..='cd ..'
alias cd..='cd ..'
alias ll='ls -l --group-directories-first'
alias q='exit'
alias c='clear'

## Directory Shortcuts
alias cr='cd ~/sandbox/swift'
alias crp='cd /gpfs/data/superlab/clevr'
alias cs='cd ~/RIT/DSCI789'
alias csrs='cd ~/RIT/UGRA/D2S2/ngafid2.0/src/main/java/org/ngafid'
alias dff='cd ~/dotfiles'
alias csr='cd /www/ngafid/ngafid2.0'
alias exa='cd ~/RIT/UGRA/D2S2/exact'

## RIT Machines
alias styx='ssh apl1341@styx.cs.rit.edu'

## Emacs
alias cem='emacs -nw'

## Neovim
alias nvi='nvim'
alias nv='nvim'

## tmux
alias t='tmux'
alias ta='tmux a'
alias tn='tmux new -s'

# SSH Tunnels
alias sstun='ssh -J alabella@ssh.cs.brown.edu aidan@aidans-archbox -L 1341:localhost:1341 -fN'

#Env. Vars 
set -o vi

source ~/sandbox/swift/swift.env
source ~/.modules

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
__conda_setup="$('/oscar/runtime/opt/anaconda/2023.03-1/bin/conda' 'shell.zsh' 'hook' 2> /dev/null)"
if [ $? -eq 0 ]; then
    eval "$__conda_setup"
else
    if [ -f "/oscar/runtime/opt/anaconda/2023.03-1/etc/profile.d/conda.sh" ]; then
        . "/oscar/runtime/opt/anaconda/2023.03-1/etc/profile.d/conda.sh"
    else
        export PATH="/oscar/runtime/opt/anaconda/2023.03-1/bin:$PATH"
    fi
fi
unset __conda_setup
# <<< conda initialize <<<

