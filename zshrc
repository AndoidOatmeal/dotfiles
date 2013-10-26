# Path to your oh-my-zsh configuration.
ZSH=$HOME/.oh-my-zsh

# Name of the oh-my-zsh theme to load
ZSH_THEME="juanghurtado"

# Uncomment following line if you want to disable command autocorrection
DISABLE_CORRECTION="true"

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
plugins=(git)

source $ZSH/oh-my-zsh.sh

# Customize to your needs...
export PATH=$PATH:/usr/bin:/bin:/usr/sbin:/sbin:/usr/local/bin

# Aliases
alias hg="history | grep"

# Always run tmux with 256 colors
alias tmux="tmux -2"
