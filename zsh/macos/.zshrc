# zsh runtime configuration
# macOS
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
export ZSH="/Users/aidan/.oh-my-zsh"
export OS_ICON=''

ZSH_THEME="aidans-theme"

COMPLETION_WAITING_DOTS="true"
ENABLE_CORRECTION="true"

source ~/.zsh-syntax-hi-onedark.sh
plugins=(git zsh-syntax-highlighting zsh-autosuggestions)

source $ZSH/oh-my-zsh.sh

## Homebrew
if type brew &>/dev/null
then
  FPATH="$(brew --prefix)/share/zsh/site-functions:${FPATH}"

  autoload -Uz compinit
  compinit
fi

#Custom commands/modifications
alias ls='lsd'
alias bls='/bin/ls --color=auto'
alias gloo='git log --oneline'

#Useful Aliases
alias la='ls -la'
alias ..='cd ..'
alias cd..='cd ..'
alias ll='ls -l --group-directories-first'
alias q='exit'
alias c='clear'
alias update='brew update && brew upgrade'

## Directory Shortcuts
alias cs='cd ~/RIT/2221'
alias dff='cd ~/dotfiles'
alias csrs='cd ~/RIT/UGRA/D2S2/ngafid2.0/src/main/java/org/ngafid'
alias csrj='cd ~/RIT/UGRA/D2S2/ngafid2.0/src/main/javascript'
alias csr='cd ~/RIT/UGRA/D2S2/ngafid2.0'
alias cr='cd ~/sandbox/swift'
alias crs='cd ~/sandbox/swift/src/python'
alias exa='cd ~/RIT/UGRA/D2S2/exact'

## RIT Machines
alias styx='ssh apl1341@styx.cs.rit.edu'

## Emacs
alias cem='emacs -nw'

## Neovim
alias nvi='nvim'

## SSH - Remote Machines
alias sdt='ssh aidan@aidan-gentbox || ssh aidan@192.168.44.8'
alias sas='ssh -XY alabella@homeserver || ssh -XY alabella@192.168.1.2'
alias sns='ssh ngafid@homeserver || ssh ngafid@192.168.1.2'
alias ccv='ssh -XY alabella@ssh.ccv.brown.edu'
alias ccvc='ssh -XYJ aidan@aidans-archbox,alabella@sshcampus.ccv.brown.edu alabella@login010'
alias ivy='ssh alabella@ssh.cs.brown.edu'
alias sab='ssh -XY aidan@aidans-archbox || ssh -XYJ alabella@ssh.cs.brown.edu ${AB}'
alias sas='ssh alabella@homeserver || ssh alabella@192.168.1.2'
alias sdsl='ssh apl1341@dsl.cs.rit.edu'
alias sdt='ssh -XY aidan@aidans-pc || ssh -XY aidan@192.168.198.8'
alias slab='ssh aidan@gol2518-r1.main.ad.rit.edu'
alias sng='ssh aidan.labella@ngafid.org'
alias sns='ssh ngafid@homeserver || ssh ngafid@192.168.1.2'
alias stp='ssh aidan@apl-gol-2518.student.rit.edu'
alias ssw='ssh -XYJ aidan@aidans-archbox alabella@swift'

## tmux
alias t='tmux'
alias ta='tmux a'
alias tn='tmux new -s'

### Aliases from linux to mac
alias eix='brew search'
alias lsblk='diskutil list'

### Aliases to the better utils for Mac
alias sed='gsed'

pfetch

set -o vi

# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
__conda_setup="$('/opt/homebrew/Caskroom/miniconda/base/bin/conda' 'shell.zsh' 'hook' 2> /dev/null)"
if [ $? -eq 0 ]; then
    eval "$__conda_setup"
else
    if [ -f "/opt/homebrew/Caskroom/miniconda/base/etc/profile.d/conda.sh" ]; then
        . "/opt/homebrew/Caskroom/miniconda/base/etc/profile.d/conda.sh"
    else
        export PATH="/opt/homebrew/Caskroom/miniconda/base/bin:$PATH"
    fi
fi
unset __conda_setup

if [ -f "/opt/homebrew/Caskroom/miniconda/base/etc/profile.d/mamba.sh" ]; then
    . "/opt/homebrew/Caskroom/miniconda/base/etc/profile.d/mamba.sh"
fi
# <<< conda initialize <<<

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh
