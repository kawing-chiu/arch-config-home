#
# ~/.bash_profile
#

[[ -f ~/.bashrc ]] && . ~/.bashrc

###########

export PATH="$HOME/.local/bin:$HOME/opt/scripts:/opt/scripts:$PATH"

# for web dev
export FRONTEND_DEBUG="on"
export BACKEND_DEBUG="on"

# node
NPM_PKGS="$HOME/.npm-packages"
export PATH="$NPM_PKGS/bin:$PATH"
export NODE_PATH="$NPM_PKGS/lib/node_modules:$NODE_PATH"

# airflow
export AIRFLOW_HOME="$HOME/.airflow"
