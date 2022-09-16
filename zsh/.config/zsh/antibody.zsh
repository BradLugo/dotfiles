#!/usr/bin/env zsh
# vim:syntax=sh
# vim:filetype=sh

#
# Antibody plugin management
#
# brew install getantibody/tap/antibody
#
# https://getantibody.github.io/usage
#
local plugins_list=${ZSHCONFIG}/zsh_plugins.txt

local managed_plugins=${ZSHCONFIG}/zsh_plugins.zsh

function antibody.install() {
    echo 'Installing plugins ... '
    antibody bundle < ${plugins_list} > ${managed_plugins}
    echo 'Done!'
}

function antibody.purge() {
    if [[ ! -z "$1" ]]; then
       /usr/local/bin/antibody purge $1
    fi
}

alias antibody.list='antibody list'
alias antibody.update='antibody update'
alias antibody.home='antibody home'

if [[ ! -e "$managed_plugins" ]]; then;
    antibody.install
fi
