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
export PATH

export PS1="\[\e[01;35m\][\[\e[01;32m\]\u\[\e[m\]\[\e[01;32m\]@\[\e[m\]\[\e[01;32m\]\h\[\e[m\] \[\e[01;34m\]\W\[\e[01;37m\]\\[\e[01;35m\]]\[\e[01;37m\]\$\[\e[m\] "
# Uncomment the following line if you don't like systemctl's auto-paging feature:
# export SYSTEMD_PAGER=

# User specific aliases and functions

alias cs='cd ~/RIT/CSCI250'
alias csp='cd ~/RIT/CSCI243/Proj*/CSCI243-FinalProject/'
alias cemacs='emacs -nw'
alias cem='emacs -nw'
alias styx='ssh apl1341@styx.cs.rit.edu'
alias hp='~/Docume*/perf*'
alias bal='~/Docume*/balan*'
alias pst='~/Docume*/stat*'
alias swenp='cd ~/IntelliJProjects/team-project*/src/main/java/com/webcheckers'
alias swenpmod='cd ~/IntelliJProjects/team-project-2191-swen-261-12-b-team/src/main/java/com/webcheckers/model'
alias cshw='cd ~/RIT/CSCI250/Homew*'
alias csr='cd ~/RIT/CSResearch/D2S2/ngafid2*'
alias q='exit'
alias cst='cd ~/RIT/CSCI262/Homew*'
alias csrs='cd ~/RIT/CSResearch/D2S2/ngafid2.0/src/main/java/org/ngafid'
alias c='clear'

# non-SUSE-Specific

alias la='ls -la'
alias lsa='ls -a'
alias ..='cd ..'
alias cd..='cd ..'
alias ll='ls -l'

# Gentoo-specific
alias emerge-up='sudo emerge -uDU --ask --keep-going --with-bdeps=y @world'


#export JAVA_HOME=/usr/lib/jvm/java-11-openjdk-11.0.6.10-0.fc31.x86_64

#Env. Vars 

source ~/RIT/CSResearch/D2S2/ngafid2.0/init_env.sh
