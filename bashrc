echo "Loading ~/.bashrc"

# Short aliases
alias v='nvim'
alias vim='nvim'
alias vimold='/usr/bin/vim'

# Other aliases
alias ls='ls -GF'

# Add RVM to PATH for scripting. Make sure this is the last PATH variable change.
export PATH="$PATH:$HOME/.rvm/bin"

# Node Version Manager
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

# My personal scripts
export PATH="/Users/romek/Spaces/Scripts:$PATH"

# The next line updates PATH for the Google Cloud SDK.
if [ -f '/Users/romek/Spaces/Projects/Freelancing/AccessMBCT/Code/google-cloud-sdk/path.zsh.inc' ]; then . '/Users/romek/Spaces/Projects/Freelancing/AccessMBCT/Code/google-cloud-sdk/path.zsh.inc'; fi

# The next line enables shell command completion for gcloud.
if [ -f '/Users/romek/Spaces/Projects/Freelancing/AccessMBCT/Code/google-cloud-sdk/completion.zsh.inc' ]; then . '/Users/romek/Spaces/Projects/Freelancing/AccessMBCT/Code/google-cloud-sdk/completion.zsh.inc'; fi


#
# Aliases
#

alias retox="rm -rf .tox && tox"


#
# Shortcut aliases
#

# Useful commands
alias ep="echo $PATH | tr : '\n'"

# Dotfiles
alias vb="vim ~/.bashrc"
alias sb="source ~/.bashrc"

# Git
alias g="git"
alias gb="git branch"
alias gbd="git branch -D"
alias gco="git checkout"
alias gcob="git checkout -b"
alias gl="git log"
alias gp="git pull"
alias gpo="git push origin"
alias gpsuo="git push --set-upstream origin"

# Django
alias m="python manage.py"
alias mrs="python manage.py runserver"
alias wmrs="watchmedo auto-restart --directory=templates/ --recursive -- ./manage.py runserver"
alias dtmrs="DISABLE_TOOLBAR=1 python manage.py runserver"
alias mm="python manage.py migrate"
alias mmm="python manage.py makemigrations"

