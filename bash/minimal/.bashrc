# .bashrc

# Source global definitions
if [ -f /etc/bashrc ]; then
	. /etc/bashrc
fi

# User specific environment
if ! [[ "$PATH" =~ "$HOME/.local/bin:$HOME/bin:" ]]
then
    PATH="$HOME/.local/bin:$HOME/bin:$PATH"
fi
# Prompt
export PS1="\[\e[01;92m\][\[\e[01;32m\]\u\[\e[m\]\[\e[01;32m\]@\[\e[m\]\[\e[01;32m\]\h\[\e[m\] \[\e[01;34m\]\W\[\e[01;37m\]\\[\e[01;92m\]]\[\e[01;34m\]\$\[\e[m\] "
#PS1="\[\e[01;32m\][\u@\h \[\e[01;34m\]\]\\W\[\e[01;32m\]]\e\[[01;34m\]\\$ \[\e[m\] "

# Uncomment the following line if you don't like systemctl's auto-paging feature:
# export SYSTEMD_PAGER=

# User specific aliases and functions

alias ls='ls --color=auto'
alias cemacs='emacs -nw'
alias cem='emacs -nw'
alias q='exit'
alias c='clear'

# Shortcuts

alias la='ls -la'
alias ..='cd ..'
alias cd..='cd ..'
alias ll='ls -l'

#Java JDK
#export JAVA_HOME=/usr/lib/jvm/java-11-openjdk-11.0.6.10-0.fc31.x86_64

#Env. Vars 

# A nice root-user warning :p
echo "Don't drink and root!" | cowsay

set -o vi
