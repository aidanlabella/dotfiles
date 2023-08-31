##	~/.bashrc shell configuration file
##
##	This file contains configuration commands which will
##	be executed for each interactive non-login shell (e.g. 
##	a terminal emulator or which starts up (e.g., each
##	shell window, and most commands given to the shell).
##	Changes to this file will NOT take effect in existing
##	shells unless you give the shell-level command "source ~/.bash_profile",
##	but they WILL take effect in shells created after you
##	change this file.

## Begin by including the "standard" configuration file, which will
## configure this shell according to the local standard configuration.
## NOTE:  IF YOU DON'T DO THIS, YOU ARE RESPONSIBLE FOR TRACKING ANY
## CHANGES WHICH ARE MADE TO THE STANDARD CONFIGURATION!!!
plugins=(git zsh-syntax-highlighting zsh-autosuggestions)

source /usr/local/lib/config/Bash_Profile

export PS1="\[\e[01;35m\][\[\e[01;32m\]\u\[\e[m\]\[\e[01;32m\]@\[\e[m\]\[\e[01;32m\]\h\[\e[m\] \[\e[01;34m\]\W\[\e[01;37m\]\\[\e[01;35m\]]\[\e[01;37m\]\$\[\e[m\] "
## Here is where you should put any changes you wish to make to the 
## standard configuration (e.g., altering the search path, redefining
## the prompt, etc.)

alias cshw='cd ~/Courses/CS344/Prolog'
alias plc='cd ~/Courses/CS344/'
alias cs='cd ~/Courses/CS344/'
alias ls='ls --color=auto'
alias ll='ls -la'
alias csp='cd ~/Courses/CS352/prjF/CSCI352-FinalProject/ '
alias c='clear'
alias cd..='cd ..'
alias ..='cd ..'
alias q='exit'

### tmux
alias t='tmux'
alias ta='tmux a'
alias tn='tmux new -s'

set -o vi


export TERM=xterm-256color

#bash ~/misc/pfetch/pfetch
