#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
PS1='[\u@\h \W]\$ '


# aliases
alias aw='startx ~/.xinitrc awesome'
alias mate='startx ~/.xinitrc mate'

alias Man='man -K -w --regex'
alias Ctags='ctags --langmap="C++:+.idl" --C++-kinds="+p" --extra="+f+q" --languages="C,C++,Python,Lua,PHP,Vim" -R'

alias Gcc='gcc -ggdb3 -Wall -Wextra -std=gnu99 -o test'
alias G++='g++ -ggdb3 -Wall -Wextra -std=c++11 -o test'
