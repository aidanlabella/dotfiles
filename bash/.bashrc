# Sample .bashrc for SuSE Linux
# Copyright (c) SuSE GmbH Nuernberg

# There are 3 different types of shells in bash: the login shell, normal shell
# and interactive shell. Login shells read ~/.profile and interactive shells
# read ~/.bashrc; in our setup, /etc/profile sources ~/.bashrc - thus all
# settings made here will also take effect in a login shell.
#
# NOTE: It is recommended to make language settings in ~/.profile rather than
# here, since multilingual X sessions would not work properly if LANG is over-
# ridden in every subshell.

# Some applications read the EDITOR variable to determine your favourite text
# editor. So uncomment the line below and enter the editor of your choice :-)
#export EDITOR=/usr/bin/vim
#export EDITOR=/usr/bin/mcedit

# For some news readers it makes sense to specify the NEWSSERVER variable here
#export NEWSSERVER=your.news.server

# If you want to use a Palm device with Linux, uncomment the two lines below.
# For some (older) Palm Pilots, you might need to set a lower baud rate
# e.g. 57600 or 38400; lowest is 9600 (very slow!)
#
#export PILOTPORT=/dev/pilot
#export PILOTRATE=115200

test -s ~/.alias && . ~/.alias || true
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
#neofetch is/(was?) brokn so use screenfetch instead
alias neofetch='screenfetch'

#Env. Vars 

source ~/RIT/CSResearch/D2S2/ngafid2.0/init_env.sh

