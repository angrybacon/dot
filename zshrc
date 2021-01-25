# Aliases
alias grep='grep --color'
alias ls='ls --color --group-directories-first'
alias ll='ls -ghlo'
alias la='ll -a'
alias rsync='rsync --human-readable --info=progress2'
alias tree='tree -C'

# Prompt
autoload -U promptinit; promptinit
prompt pure

# Node version manager
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"
