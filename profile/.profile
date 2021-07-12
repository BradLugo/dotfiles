export PATH=/usr/local/opt/texinfo/bin:$PATH
export PATH=/usr/local/opt/llvm/bin:$PATH

# Add RVM to PATH for scripting. Make sure this is the last PATH variable change.
#export PATH=$PATH:$HOME/.rbenv/bin

#if type brew &>/dev/null; then
#    eval "$(rbenv init -)"
#fi
#[[ -s "$HOME/.rvm/scripts/rvm" ]] && eval "$(rbenv init -)" # Load RVM into a shell session *as a function*
#export USER_BASE_PATH=$(python -m site --user-base)
#export PATH=$PATH:$USER_BASE_PATH/bin

# Add environment variable for Cargo (Rust development)
export PATH=$PATH:$HOME/.cargo/bin

# Add environment variable for Go
export GOPATH=$HOME/Development/go
export PATH=$PATH:$GOPATH/bin

# Add environment variable for ASP.NET Core development
export ASPNETCORE_ENVIRONMENT=Development

export PATH=$PATH:/usr/local/share

# Add Visual Studio Code (code)
[ -d '/Applications/Visual Studio Code.app/Contents/Resources/app/bin' ] && export PATH="$PATH:/Applications/Visual Studio Code.app/Contents/Resources/app/bin"

# Add $HOME/bin
export PATH=$HOME/bin:$PATH

#export PYENV_ROOT="$HOME/.pyenv"
#export PATH="$PYENV_ROOT/bin:$PATH"
#if command -v pyenv 1>/dev/null 2>&1; then eval "$(pyenv init -)"; fi

# Add local Python to path
export PATH=$PATH:/usr/local/anaconda3/bin
export PYENV_ROOT=$HOME/.pyenv
export PATH=$PYENV_ROOT/bin:$PATH
eval "$(pyenv init --path)"
eval "$(pyenv init -)"
eval "$(pyenv virtualenv-init -)"

# nvm
#export NVM_DIR="$HOME/.nvm"
#[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
#[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

[ -d '/Library/Frameworks/Mono.framework/Versions/Current/bin/' ] && export PATH=$PATH:/Library/Frameworks/Mono.framework/Versions/Current/bin
[ -f '/Applications/VMware Fusion.app/Contents/Library/vmrun' ] && export PATH="$PATH:/Applications/VMware Fusion.app/Contents/Library/vmrun"

alias l='ls -lFh'     #size,show type,human readable
alias la='ls -lAFh'   #long list,show almost all,show type,human readable
alias lr='ls -tRFh'   #sorted by date,recursive,show type,human readable
alias lt='ls -ltFh'   #long list,sorted by date,show type,human readable
alias ll='ls -l'      #long list
alias ldot='ls -ld .*'
alias lS='ls -1FSsh'
alias lart='ls -1Fcart'
alias lrt='ls -1Fcrt'

alias zshrc="\$EDITOR ~/.zshrc && source ~/.zshrc"

alias falias='alias | grep'
alias hgrep='history | grep'

# md5 check sum compatibility with the Linux/GNU counter part
alias md5sum='md5 -r'
