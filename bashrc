source ~/.aliases
source ~/.functions

if [ -f /opt/boxen/env.sh ]; then
  source /opt/boxen/env.sh
fi

if [ -f $(brew --prefix)/etc/bash_completion ]; then
  source $(brew --prefix)/etc/bash_completion
fi

# Enable thefuck tool: https://github.com/nvbn/thefuck
eval "$(thefuck --alias)"
# You can use whatever you want as an alias, like for Mondays:
eval "$(thefuck --alias FUCK)"

# Enable git completion for alias
__git_complete gco _git_checkout
__git_complete gb _git_branch
__git_complete gl _git_pull
__git_complete gp _git_push
__git_complete gm _git_merge
__git_complete gbase _git_rebase

# Enable hiding entries prefixed with a space
export HISTCONTROL=ignorespace

# Enable color file listings
export CLICOLOR=1
export LSCOLORS=gxBxhxDxfxhxhxhxhxcxcx

# editor settings
# export EDITOR='subl3 -w'

source ~/.prompt