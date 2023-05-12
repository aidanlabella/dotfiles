# zsh runtime configuration
# openSUSE Linux
# Aidan LaBella -- alabella@brown.edu
# Brown University CS
 

# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH="/home/aidan/.oh-my-zsh"

ZSH_THEME="powerlevel10k/powerlevel10k"

COMPLETION_WAITING_DOTS="true"
ENABLE_CORRECTION="true"

source ~/.zsh-syntax-hi-onedark.sh
plugins=(git zsh-syntax-highlighting zsh-autosuggestions)

source $ZSH/oh-my-zsh.sh

#Useful Aliases
alias ls='lsd'
alias cd..='cd ..'
alias ll='ls -l --group-directories-first'
alias q='exit'
alias c='clear'
alias update='sudo zypper dup'
alias open='xdg-open'

## Directory Shortcuts
alias cs='cd ~/RIT/2225'
alias csp='cd ~/RIT/2225/CSCI620/BigDataProject'
alias csrs='cd ~/RIT/UGRA/D2S2/ngafid2.0/src/main/java/org/ngafid'
alias dff='cd ~/dotfiles'
alias csr='cd ~/RIT/UGRA/D2S2/ngafid2.0'
alias exa='cd ~/RIT/UGRA/D2S2/exact'

## Emacs
alias cem='emacs -nw'

## Neovim
alias nvi='nvim'
alias nv='nvim'

## SSH - Remote Machines (Mostly RIT)
alias sas='ssh alabella@homeserver || ssh alabella@192.168.1.2'
alias sns='ssh ngafid@homeserver || ssh ngafid@192.168.1.2'
alias slab='ssh aidan@gol2518-r1.main.ad.rit.edu'
alias smass='ssh apl1341@massachusetts.cs.rit.edu'
alias styx='ssh apl1341@styx.cs.rit.edu'
alias smac='ssh aidan@aidans-mbp-2 || ssh aidan@aidans-mbp || ssh aidan@aidans-mbp-3'

## tmux
alias t='tmux new -s system'
alias ta='tmux a'
alias tn='tmux new -s'

## mySQL
alias ngsql='mysql -u root -p ngafid'

alias gloo='git log --oneline'

#Env. Vars 
source ~/RIT/UGRA/D2S2/ngafid2.0/init_env.sh

export JAVA_HOME='/usr/lib64/jvm/java-11-openjdk-11'

set -o vi

pfetch

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh
