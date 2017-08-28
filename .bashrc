#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
PS1='[\u@\h \W]\$ '

###########

#####
# functions
debug () {
    export FRONTEND_DEBUG="on"
    export BACKEND_DEBUG="on"
}
no_debug () {
    unset FRONTEND_DEBUG
    unset BACKEND_DEBUG
}
use_weinre () {
    export WEINRE_ADDR="http://192.168.1.50:3030/target/target-script-min.js#test"
}
no_weinre () {
    unset WEINRE_ADDR
}

#####
# aliases
#
alias aw='startx ~/.xinitrc awesome'
alias mate='startx ~/.xinitrc mate'
alias kde='startx ~/.xinitrc kde'

alias Man='man -K -w --regex'
# --langmap="C++:+." means also consider files with no extension as C++ files
alias Ctags='ctags --langmap="C++:+." --C++-kinds="+p" --fields="+iaS" --extra="+f+q" --languages="C,C++,Python,Lua,PHP,Vim" -R'

# C and C++ compiler shortcuts
alias Gcc='gcc -ggdb3 -Wall -Wextra -std=gnu99 -o test'
alias G++='g++ -ggdb3 -Wall -Wextra -std=c++11 -o test -pthread'

# cnpm
alias cnpm="npm --registry=https://registry.npm.taobao.org \
--cache=$HOME/.npm/.cache/cnpm \
--disturl=https://npm.taobao.org/dist"

alias cconda-activate="source ~/opt/miniconda3/bin/activate"
