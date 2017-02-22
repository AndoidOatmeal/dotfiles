# Path to your oh-my-zsh installation.
export ZSH=/Users/andrewaunelle/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
ZSH_THEME="castle-black"

setopt extended_glob

# Example aliases
alias zshrc="vim ~/.zshrc"
alias zshreload="source ~/.zshrc"
alias vimrc="vim ~/.vimrc"
alias tmuxconf="vim ~/.tmux.conf"
alias tmuxreload="tmux source-file ~/.tmux.conf"
alias sshconf="vim ~/.ssh/config"
alias svim="sudo vim"
alias simpledate="date '+%Y%m%d'"
alias pm='python manage.py'


function add_ssh_key() {
    local key_prefix="$1"
    if [ -z "$key_prefix" ]; then
        echo "Please provide an SSH key prefix as an argument"
        return 1
    else
        local key_path=~/.ssh/"${key_prefix}_id_ed25519"
        echo "Attemping to load SSH key \"$key_path\" for 3 hours..."
        ssh-add -t 3h "$key_path"
        echo "Done"
    fi
}

alias addkey='add_ssh_key'
alias clearkeys='ssh-add -D'


# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
# User configuration
plugins=(git rails vi-mode history-substring-search mvn zsh-syntax-highlighting)

source $ZSH/oh-my-zsh.sh

# Fix for history-substring-search bug (https://github.com/robbyrussell/oh-my-zsh/issues/1433)
bindkey '\e[A' history-substring-search-up
bindkey '\e[B' history-substring-search-down

# Update to gruvbox color palette for each shell
~/.vim/bundle/gruvbox/gruvbox_256palette_osx.sh

archey --nocolor | lolcat
fortune | lolcat

export WORKON_HOME=~/.virtualenvs
export VIRTUALENVWRAPPER_PYTHON='/usr/local/bin/python3'
source /usr/local/bin/virtualenvwrapper.sh

# Show slashes after ls directories
alias ls='ls -Gph'

# Grep history
alias hg='history | grep'

# Tmux use 256 colors
alias tmux='tmux -2'

# Cd aliases
alias ....='cd ../../../'
alias .....='cd ../../../../'
alias ......='cd ../../../../../'
alias .......='cd ../../../../../../'
alias ........='cd ../../../../../../../'
alias .........='cd ../../../../../../../../'

# Vi mode
set -o vi

# Don't enable 'clear', use ctrl-l instead
alias clear='echo "Dont use clear, use <ctrl-l> instead."'

alias unzipall='for zip in *.zip;do mkdir -p ${zip%.zip};unzip $zip -d ${zip%.zip}; done'

# TODO move this to a script in ~/bin so that it doesn't appear online
alias plexbackup='rsync -avPz dragonstone:/apps/plexmediaserver/MediaLibrary/"Plex\ Media\ Server/Plug-in\ Support" ~/Documents/Plex\ Data\ Backups'

export HOMEBREW_NO_ANALYTICS=1

export PATH="$PATH:$HOME/.rvm/bin" # Add RVM to PATH for scripting
export PATH="$HOME/bin:$PATH"

# Get colors in man pages
man() {
    env \
    LESS_TERMCAP_mb=$(printf "\e[1;31m") \
    LESS_TERMCAP_md=$(printf "\e[1;31m") \
    LESS_TERMCAP_me=$(printf "\e[0m") \
    LESS_TERMCAP_se=$(printf "\e[0m") \
    LESS_TERMCAP_so=$(printf "\e[1;44;33m") \
    LESS_TERMCAP_ue=$(printf "\e[0m") \
    LESS_TERMCAP_us=$(printf "\e[1;32m") \
    man "$@"
}

alias dj="python manage.py"
alias djdd="python manage.py dumpdata"
alias djld="python manage.py loaddata"
alias djm="python manage.py migrate"
alias djsh="python manage.py shell"
alias djsm="python manage.py schemamigration"
alias djs="python manage.py syncdb --noinput"
alias djt="python manage.py test"
alias djrs="python manage.py runserver"
