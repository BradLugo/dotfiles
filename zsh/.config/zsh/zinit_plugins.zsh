#!/usr/bin/env zsh
# vim:syntax=sh
# vim:filetype=sh

# https://github.com/zdharma/zplugin/wiki
# https://github.com/zdharma/zplugin/blob/master/GALLERY.md
zinit ice wait"0" atload"_zsh_autosuggest_start" lucid
zinit light zsh-users/zsh-autosuggestions

zinit ice wait"0" lucid
zinit light zsh-users/zsh-completions

#zinit light zsh-users/zsh-syntax-highlighting
zinit ice wait"0" atinit"zpcompinit; zpcdreplay" lucid
zinit light zdharma/fast-syntax-highlighting

zinit ice as"program" make'!' atclone'./direnv hook zsh > zhook.zsh' atpull'%atclone' pick"direnv" src"zhook.zsh" lucid
zinit light direnv/direnv

#zinit ice wait"0" lucid
# must load it otherwise bindkeys won't work
zinit light zsh-users/zsh-history-substring-search

zinit ice wait"0" lucid
zinit load zdharma/history-search-multi-word

zinit ice wait"0" lucid
zinit light junegunn/fzf

#zinit light mafredri/zsh-async

zinit ice as"completion" lucid
zinit snippet https://github.com/docker/cli/blob/master/contrib/completion/zsh/_docker

# https://github.com/laggardkernel/git-ignore
zinit ice pick'init.zsh' blockf
zinit light laggardkernel/git-ignore
alias gi="git-ignore"

# OMZ Plugins
# https://github.com/zdharma/zplugin/blob/master/doc/INTRODUCTION.adoc#oh-my-zsh-prezto
# https://github.com/robbyrussell/oh-my-zsh/tree/master/plugins
#
#zinit ice wait"0" lucid
#zinit snippet OMZ::plugins/python/python.plugin.zsh
#zinit ice wait"0" lucid
#zinit snippet OMZ::plugins/ruby/ruby.plugin.zsh
init ice wait"0" lucid
zinit snippet OMZP::git
init ice wait"0" lucid
zinit snippet OMZP::kubectl

#
# Prezto Plugins
# https://github.com/sorin-ionescu/prezto/blob/master/modules
#
#zinit snippet PZT::modules/python/init.zsh

zinit light-mode for \
    zinit-zsh/z-a-rust \
    zinit-zsh/z-a-as-monitor \
    zinit-zsh/z-a-patch-dl \
    zinit-zsh/z-a-bin-gem-node
