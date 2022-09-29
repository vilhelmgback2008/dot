# If not running interactively, don't do anything
[[ $- != *i* ]] && return

PS1='\W\$ '

HISTCONTROL=ignoreboth
HISTSIZE=16000
HISTFILESIZE=24000
HISTFILE=$HOME/.bash_history
shopt -s cmdhist histappend expand_aliases

export TERM=xterm-256color
shopt -s checkwinsize

export VISUAL=vim
export EDITOR=$VISUAL

export BROWSER='google-chrome'

export PAGER=more
export MANPAGER=$PAGER

alias ls='ls -lA --color=always --group-directories-first'
alias l=ls

alias rm='rm -Iv'
alias mv='mv -iv'
alias cp='cp -iv'

alias grep='grep --color=always'

alias vi=vim

alias dot='git --git-dir=$HOME/dot --work-tree=$HOME -c status.showUntrackedFiles=no'

alias screen='screen -q'

shopt -s autocd interactive_comments checkjobs

test -f /usr/share/bash-completion/bash_completion \
	&& source /usr/share/bash-completion/bash_completion \
	|| complete -cf sudo
shopt -s cdspell dirspell

stty -ixon

eval "$(dircolors -b)"
test -s /etc/profile.d/autojump.sh \
	&& source /etc/profile.d/autojump.sh
