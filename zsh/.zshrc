#!/usr/bin/env zsh
# vim:syntax=zsh
# vim:filetype=zsh

# for profiling zsh
# https://unix.stackexchange.com/a/329719/27109
#
#zmodload zsh/zprof

# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

#
# https://gist.github.com/ctechols/ca1035271ad134841284
# https://carlosbecker.com/posts/speeding-up-zsh
#
autoload -Uz compinit
if [ $(date +'%j') != $(/usr/bin/stat -f '%Sm' -t '%j' ${ZDOTDIR:-$HOME}/.zcompdump) ]; then
    compinit;
else
    compinit -C;
fi
autoload -U +X bashcompinit && bashcompinit

export SCRIPTS=${HOME}/scripts
export ZSHCONFIG=${ZDOTDIR:-$HOME}/.config/zsh
export ZSH_CACHE_DIR=${HOME}/.cache/zsh

ZSH_INIT=${ZSHCONFIG}/init.zsh

if [[ -s ${ZSH_INIT} ]]; then
    source ${ZSH_INIT}
else
    echo "Could not find the init script ${ZSH_INIT}"
fi

source ~/.profile

##### nvm (node version manager) #####
# placeholder nvm shell function
# On first use, it will set nvm up properly which will replace the `nvm`
# shell function with the real one
nvm() {
  if [[ -d '/usr/local/opt/nvm' ]]; then
    NVM_DIR="$HOME/.nvm"
    export NVM_DIR
    # shellcheck disable=SC1090
    source "${NVM_DIR}/nvm.sh"
    if [[ -e ~/.nvm/alias/default ]]; then
      PATH="${PATH}:${HOME}.nvm/versions/node/$(cat ~/.nvm/alias/default)/bin"
    fi
    # invoke the real nvm function now
    nvm "$@"
  else
    echo "nvm is not installed" >&2
    return 1
  fi
}

#complete -o nospace -C /usr/local/bin/terraform terraform

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh
