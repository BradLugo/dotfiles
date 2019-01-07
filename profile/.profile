# Add RVM to PATH for scripting. Make sure this is the last PATH variable change.
#export PATH="$PATH:$HOME/.rvm/bin"

#[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*
export USER_BASE_PATH=$(python -m site --user-base)
export PATH=$PATH:$USER_BASE_PATH/bin

export PATH="$HOME/.cargo/bin:$PATH"

export PATH="/Users/brad/.cargo/bin/bin:$PATH"

# Add environment variable for Go
export GOPATH=/Users/brad/Development/Go
export PATH=$PATH:$GOPATH/bin

# Add environment variable for ASP.NET Core development
export ASPNETCORE_ENVIRONMENT=development

# Add Visual Studio Code (code)
export PATH="$PATH:/Applications/Visual Studio Code.app/Contents/Resources/app/bin"

# Add $HOME/bin
export PATH=$HOME/bin:$PATH

alias l='ls -lFh'     #size,show type,human readable
alias la='ls -lAFh'   #long list,show almost all,show type,human readable
alias lr='ls -tRFh'   #sorted by date,recursive,show type,human readable
alias lt='ls -ltFh'   #long list,sorted by date,show type,human readable
alias ll='ls -l'      #long list
alias ldot='ls -ld .*'
alias lS='ls -1FSsh'
alias lart='ls -1Fcart'
alias lrt='ls -1Fcrt'

alias zshrc="$EDITOR ~/.zshrc && source ~/.zshrc"

alias falias='alias | grep'
alias hgrep='history | grep'

# Lists the ten most used commands.
alias history-stat="history 0 | awk '{print \$2}' | sort | uniq -c | sort -n -r | head"

# md5 check sum compatibility with the Linux/GNU counter part
alias md5sum='md5 -r'
