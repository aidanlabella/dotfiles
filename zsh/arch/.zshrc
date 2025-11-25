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

# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
source /usr/share/zsh/share/antigen.zsh

source /home/aidan/.aidans_theme.zsh
ZSH_THEME="aidans-theme"

export ATH_CONDENSE_PROMPT=0

export OS_ICON="󰣇"
export OS_COLOR=$CYAN
export SWIFT_DB_FILE='/oscar/data/jpober/shared/mwa_fall_16_v2/sql/swift.db'

# Plugins, themes

COMPLETION_WAITING_DOTS="true"
ENABLE_CORRECTION="true"

source ~/.plugins.zsh
source ~/.zsh-syntax-hi-dracula.sh
#
#Env. Vars 
export A='/home/aidan/Brown/Agendas'
export R='/home/aidan/sandbox/swift'
export SWDB='/home/aidan/ccv/data/alabella/swift'

#Useful Aliases
alias p='pwd'
alias pp='pwd -P'
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
alias mysql='mariadb'

## Directory Shortcuts
alias dff='cd ~/dotfiles'
alias cs='cd ~/Brown/FALL23'
alias csr='cd ~/Brown/GRA'
alias sw='cd ~/sandbox/swift && conda activate swift_env'
alias av='cd ~/aidans_vault'
alias osc='cd /oscar/data/jpober/shared'
alias cshw='cd ~/Brown/CSCI1760/hw1'
alias 237='cd ~/Classes/CSCI2370'

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
alias ccvc='ssh -XYJ alabella@sshcampus.ccv.brown.edu alabella@login010'
alias sswa='ssh -XYJ alabella@sshcampus.ccv.brown.edu,alabella@login010 alabella@pswiftcit.services.brown.edu'
alias sab='echo Youre already here, dumbass | cowsay'
alias ssw='ssh alabella@swift'

## tmux
alias t='tmux new -s system'
alias ta='tmux a'
alias tn='tmux new -s'

alias cr='cd ${R}'
alias crs='cd ${R}/src/swift; conda activate swift_env;'
alias cdb='cd ${SWDB}'
alias cro='cd ~/ccv/sandbox/swift'
alias csp='cd ~/sandbox/DEEPSPrj'
alias exa='cd ~/sandbox/exact'
alias nga='cd ~/sandbox/ngafid2.0'
alias 15e='sudo /home/aidan/Brown/CSCI1515/devenv/cs1515-run-docker'
alias rx='export DISPLAY=:0'

alias gloo='git log --oneline'

## Printing at Brown
alias p4bw='lpr -H print.cs.brown.edu -U "not_yours" -P BW4'
alias p4c='lpr -H print.cs.brown.edu -U "not_yours" -P C4'

# SQL
alias swsql='sqlite3 ${SWIFT_DB_FILE}'

export JAVA_HOME='/usr/lib/jvm/default'
export CRYPTOGRAPHY_OPENSSL_NO_LEGACY=1
eval "$(pyenv init -)"

source /home/aidan/sandbox/swift/swift.env
source /home/aidan/.env/sqtex.env

source /home/aidan/sandbox/ngafid2.0/init_env.sh

set -o vi

pfetch
# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh


[ -f /opt/miniconda3/etc/profile.d/conda.sh ] && source /opt/miniconda3/etc/profile.d/conda.sh

#eval "$(starship init zsh)"
