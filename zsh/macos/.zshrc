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

ZSH_THEME="powerlevel10k/powerlevel10k"

COMPLETION_WAITING_DOTS="true"
ENABLE_CORRECTION="true"

source ~/.zsh-syntax-hi-dracula.sh
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
alias ls='gls --color=auto'
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
alias cs='cd ~/RIT/DSCI789'
alias csrs='cd ~/RIT/UGRA/D2S2/ngafid2.0/src/main/java/org/ngafid'
alias dff='cd ~/dotfiles'
alias csr='cd ~/RIT/UGRA/D2S2/ngafid2.0'
alias exa='cd ~/RIT/UGRA/D2S2/exact'

## RIT Machines
alias styx='ssh apl1341@styx.cs.rit.edu'

## Emacs
alias cem='emacs -nw'

## Neovim
alias vim='nvim'
alias nvi='nvim'

## SSH - Remote Machines
alias sdt='ssh aidan@aidans-desktop || ssh aidan@192.168.1.8'
alias sas='ssh alabella@homeserver || ssh alabella@192.168.1.2'
alias sns='ssh ngafid@homeserver || ssh ngafid@192.168.1.2'

## tmux
alias t='tmux'
alias ta='tmux a'
alias tn='tmux new -s'

## mySQL
alias ngsql='mysql -u root -p ngafid'

#Env. Vars 
source ~/RIT/UGRA/D2S2/ngafid2.0/init_env.sh

## MACOS-Specific
export PATH="/opt/homebrew/opt/mysql@5.7/bin:$PATH"
export JAVA_HOME="/Library/Java/JavaVirtualMachines/jdk-11.0.13.jdk/Contents/Home"

### Aliases from linux to mac
alias eix='brew search'
alias lsblk='diskutil list'

### Aliases to the better utils for Mac
alias sed='gsed'

pfetch

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh
