# Prompt
autoload -U colors && colors

# load the theme system
autoload -U promptinit && promptinit

# -----------------------------------------------
# for dynamic named directories
setopt prompt_subst
setopt auto_name_dirs

autoload -Uz vcs_info
zstyle ':vcs_info:*' enable git
zstyle ':vcs_info:git*' formats "[%{$fg[blue]%}%b%{$reset_color%}]%m%u%c [%r]"
zstyle ':vcs_info:git*' actionformats "%s  %r/%S %b %m%u%c "

precmd() {
    vcs_info
}

setopt PROMPT_SUBST
PROMPT='╭─ %n@%m %~ ${vcs_info_msg_0_}
╰─ %# '