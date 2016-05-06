# Path to your oh-my-zsh installation.
export ZSH=/Users/andrew/.oh-my-zsh

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

archey -c

# Show slashes after ls directories
alias ls='ls -Gph'

# Grep history
alias hg='history | grep'

# Tmux use 256 colors
alias tmux='tmux -2'

# Show top files in a given directory
alias ducks='du -ckhs * | sort -rh | head'

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

alias jack-vids-sync="rsync -avP ~/Dropbox/Camera\ Uploads\ \(1\)/*.mp4 'dragonstone:/data/Media/Home\ Videos/daves-and-jens-dropbox'"
alias jack-pics-sync="rsync -avP /Users/andrew/Dropbox/Camera\ Uploads\ \(1\)/2015*.jpg 'dragonstone:/data/Media/Photos/daves-and-jens-dropbox'"

export PATH="$PATH:$HOME/.rvm/bin" # Add RVM to PATH for scripting
