# zsh runtime configuration
# Arch
# Aidan LaBella -- alabella@brown.edu
 

# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

# Plugin Management
source "${HOME}/.zgen/zgen.zsh"

# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH="/home/aidan/.oh-my-zsh"

export OS_ICON="󰣇"

# Plugins, themes
zgen load jeffreytse/zsh-vi-mode
ZSH_THEME="aidans-theme"

COMPLETION_WAITING_DOTS="true"
ENABLE_CORRECTION="true"

source ~/.zsh-syntax-hi-onedark.sh
plugins=(git zsh-syntax-highlighting zsh-autosuggestions conda)

source $ZSH/oh-my-zsh.sh
#
#Env. Vars 
export A='/home/aidan/Brown/Agendas'
export R='/home/aidan/sandbox/swift'
export SWDB='/home/aidan/ccv/data/alabella/swift'

#Useful Aliases
alias ls='lsd'
alias la='ls -la'
alias ..='cd ..'
alias cd..='cd ..'
alias ll='ls -l --group-directories-first'
alias ls-la='ls -la'
alias q='exit'
alias c='clear'
alias update='yay -Syyu'
alias open='xdg-open'
alias anon='unset HISTFILE'

## Directory Shortcuts
alias dff='cd ~/dotfiles'
alias cs='cd ~/Brown/FALL23'
alias csr='cd ~/Brown/GRA'
alias sw='cd ~/sandbox/swift'
alias av='cd ~/aidans_vault'

## RIT Machines
alias styx='ssh apl1341@styx.cs.rit.edu'

## Emacs
alias cem='emacs -nw'

## Neovim
alias nvi='nvim'
alias nv='nvim'

## SSH - Remote Machines
alias sas='ssh alabella@homeserver || ssh alabella@192.168.1.2'
alias sdt='ssh aidan@aidans-pc || ssh aidan@192.168.198.8'
alias ivy='ssh alabella@ssh.cs.brown.edu'
alias ccv='ssh -XY alabella@sshcampus.ccv.brown.edu'
alias sab='echo Youre already here, dumbass | cowsay'

## tmux
alias t='tmux new -s system'
alias ta='tmux a'
alias tn='tmux new -s'

alias cr='cd ${R}'
alias crs='cd ${R}/src/python'
alias cdb='cd ${SWDB}'
alias csp='cd ~/sandbox/DEEPSPrj'
alias exa='cd ~/sandbox/exact'

alias gloo='git log --oneline'

## Printing at Brown
alias p4bw='lpr -H print.cs.brown.edu -U "not_yours" -P BW4'
alias p4c='lpr -H print.cs.brown.edu -U "not_yours" -P C4'

# postgreSQL
# alias swsql='psql -U aidan --dbname=swift_results --port=1341'

export JAVA_HOME='/usr/lib/jvm/java-11-openjdk'
eval "$(pyenv init -)"

source /home/aidan/sandbox/swift/swift.env
source /home/aidan/.env/sqtex.env

set -o vi

pfetch

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
__conda_setup="$('/usr/bin/conda' 'shell.zsh' 'hook' 2> /dev/null)"
if [ $? -eq 0 ]; then
    eval "$__conda_setup"
else
    if [ -f "/usr/etc/profile.d/conda.sh" ]; then
        . "/usr/etc/profile.d/conda.sh"
    else
        export PATH="/usr/bin:$PATH"
    fi
fi
unset __conda_setup
# <<< conda initialize <<<

