#!/usr/bin/env zsh
# vim:syntax=sh
# vim:filetype=sh

#
# Antidote plugin management
#
# brew install antidote
#
# https://getantidote.github.io/usage
#
local plugins_list=${ZSHCONFIG}/zsh_plugins.txt

local managed_plugins=${ZSHCONFIG}/zsh_plugins.zsh

function antidote.install() {
    echo 'Installing plugins ... '
    antidote bundle < ${plugins_list} > ${managed_plugins}
    echo 'Done!'
}

function antidote.purge() {
    if [[ ! -z "$1" ]]; then
       /usr/local/bin/antidote purge $1
    fi
}

alias antidote.list='antidote list'
alias antidote.update='antidote update'
alias antidote.home='antidote home'

if [[ ! -e "$managed_plugins" ]]; then;
    antidote.install
fi