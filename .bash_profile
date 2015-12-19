#
# ~/.bash_profile
#

[[ -f ~/.bashrc ]] && . ~/.bashrc

###########

export PATH="~/.local/bin:/opt/scripts:$PATH"

# for web dev
export FRONTEND_DEBUG="on"
export BACKEND_DEBUG="on"

# node
NPM_PKGS="~/.npm-packages"
export PATH="$NPM_PKGS/bin:$PATH"
export NODE_PATH="$NPM_PKGS/lib/node_modules:$NODE_PATH"
