	#!/usr/bin/env zsh
# vim:syntax=zsh
# vim:filetype=zsh

# system executables
#export PATH=$PATH:/usr/bin:/bin:/usr/sbin:/sbin:/usr/libexec
# local system binaries
export PATH=/usr/local/sbin:/usr/local/bin:$PATH

#-----------------------------------------------------
# ensure to only execute on ZSH
# https://stackoverflow.com/a/9911082/339302
[ ! -n "$ZSH_VERSION" ] && return

#-----------------------------------------------------
# Load the plugins before scripts
#
#source ${ZSHCONFIG}/antibody.zsh
#source /usr/local/opt/zinit/zinit.zsh
#source ~/.zinit/bin/zinit.zsh

#source ${ZSHCONFIG}/zsh_plugins.zsh
source "$HOME/.config/zsh/zinit_plugins.zsh"

# Setting autoloaded functions
#
my_zsh_fpath=${ZSHCONFIG}/functions

fpath=($my_zsh_fpath $fpath)

if [[ -d "$my_zsh_fpath" ]]; then
    for func in $my_zsh_fpath/*; do
        autoload -Uz ${func:t}
    done
fi
unset my_zsh_fpath

#-----------------------------------------------------
#
# Load all scripts ${ZSHCONFIG}/lib/*.zsh
#
my_zsh_lib=${ZSHCONFIG}/lib
if [[ -d "$my_zsh_lib" ]]; then
   for file in $my_zsh_lib/*.zsh; do
      source $file
   done
fi
unset my_zsh_lib

eval "$(starship init zsh)"
