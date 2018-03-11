# chrisandrew.cl ZSH Theme

PROMPT='
${_current_dir} $(_prompt_git)
%{$fg[white]%}%{$reset_color%} '

local _current_dir="%{$FG[103]%}  %(5~|%-1~/…/%3~|%4~)%{$reset_color%} "

_prompt_git() {
  if [[ $(git_prompt_info) == "" ]]; then
    return
  fi
  echo -n "%{$fg[blue]%}%{$reset_color%} $(git_prompt_info)"
}

ZSH_THEME_GIT_PROMPT_PREFIX="%{$fg[blue]%}"
ZSH_THEME_GIT_PROMPT_SUFFIX="%{$reset_color%}"

ZSH_THEME_GIT_PROMPT_DIRTY=" %{$fg[red]%}✗%{$reset_color%}"
ZSH_THEME_GIT_PROMPT_CLEAN=" %{$fg[green]%}✔%{$reset_color%}"

zle_highlight=( default:bold fg=white )

export GREP_COLORS="mc=00;36:ms=31:mt=01;38:ln=31"

