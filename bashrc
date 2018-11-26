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

# Python Anaconda distribution
export PATH="/Users/romek/anaconda3/bin:$PATH"

# My personal scripts
export PATH="/Users/romek/Spaces/Scripts:$PATH"
