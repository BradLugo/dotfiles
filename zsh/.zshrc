#!/usr/bin/env zsh
# vim:syntax=zsh
# vim:filetype=zsh

# for profiling zsh
# https://unix.stackexchange.com/a/329719/27109
#
#zmodload zsh/zprof

export ZSHCONFIG=${ZDOTDIR:-$HOME}/.config/zsh

ZSH_INIT=${ZSHCONFIG}/init.zsh

if [[ -s ${ZSH_INIT} ]]; then
    source ${ZSH_INIT}
else
    echo "Could not find the init script ${ZSH_INIT}"
fi

source ~/.profile

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
