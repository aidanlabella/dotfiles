# zsh runtime configuration
# Gentoo
# Aidan LaBella -- apl1341@cs.rit.edu
 

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
export ZSH="/home/aidan/.oh-my-zsh"

ZSH_THEME="powerlevel10k/powerlevel10k"

COMPLETION_WAITING_DOTS="true"
ENABLE_CORRECTION="true"

source ~/.zsh-syntax-hi-dracula.sh
plugins=(git zsh-syntax-highlighting)

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
alias update='sudo eix-sync && sudo emerge -uDN @world --autounmask'
alias gcl='/usr/bin/gcl'

## Directory Shortcuts
alias cs='cd ~/RIT/2221'
alias csrs='cd ~/RIT/UGRA/D2S2/ngafid2.0/src/main/java/org/ngafid'
alias dff='cd ~/dotfiles'
alias csr='cd ~/RIT/UGRA/D2S2/ngafid2.0'
alias exa='cd ~/RIT/UGRA/D2S2/exact'

## RIT Machines
alias styx='ssh apl1341@styx.cs.rit.edu'
alias sdt='ssh aidan@aidan-gentbox || ssh aidan@192.168.44.8'
alias sas='ssh alabella@homeserver || ssh alabella@192.168.1.2'
alias sns='ssh ngafid@homeserver || ssh ngafid@192.168.1.2'
alias slab='ssh apl1341@gol2518-r1.main.ad.rit.edu'
alias smbp='ssh aidan@aidans-mbp-2'

## Emacs
alias cem='emacs -nw'

## Neovim
alias nvi='nvim'

## tmux
alias t='tmux'
alias ta='tmux a'
alias tn='tmux new -s'

## mySQL
alias ngsql='mysql -u root -p ngafid'

#Env. Vars 
source ~/RIT/UGRA/D2S2/ngafid2.0/init_env.sh

## ROCm
export HSA_OVERRIDE_GFX_VERSION=10.3.0

set -o vi

pfetch

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh
