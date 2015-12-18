#
# ~/.bash_profile
#

[[ -f ~/.bashrc ]] && . ~/.bashrc

###########

export PATH="~/.local/bin:/opt/scripts:$PATH"

# node
NPM_PKGS="~/.npm-packages"
export PATH="$NPM_PKGS/bin:$PATH"
export NODE_PATH="$NPM_PKGS/lib/node_modules:$NODE_PATH"
