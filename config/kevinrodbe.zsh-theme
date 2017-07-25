# Colors: black|red|blue|green|yellow|magenta|cyan|white
local green_bold=$fg_bold[green]
local red_bold=$fg_bold[red]
local magenta_bold=$fg_bold[magenta]
local blue_bold=$fg_bold[blue]
local cyan_bold=$fg_bold[cyan]
local yellow_bold=$fg_bold[yellow]

# Git info.
ZSH_THEME_GIT_PROMPT_PREFIX="(%{$fg[blue]%}"
ZSH_THEME_GIT_PROMPT_SUFFIX="%{$reset_color%}"
ZSH_THEME_GIT_PROMPT_DIRTY="%{$fg[blue]%})%{$reset_color%}%{$fg[red]%}🔥 %{$reset_color%}"
ZSH_THEME_GIT_PROMPT_CLEAN="%{$fg[blue]%})%{$reset_color%}%{$fg[yellow]%} 💯%{$reset_color%}"

# Git status.
ZSH_THEME_GIT_PROMPT_ADDED="%{$green_bold%}+%{$reset_color%}"
ZSH_THEME_GIT_PROMPT_DELETED="%{$red_bold%}-%{$reset_color%}"
ZSH_THEME_GIT_PROMPT_MODIFIED="%{$magenta_bold%}*%{$reset_color%}"
ZSH_THEME_GIT_PROMPT_RENAMED="%{$blue_bold%}>%{$reset_color%}"
ZSH_THEME_GIT_PROMPT_UNMERGED="%{$cyan_bold%}=%{$reset_color%}"
ZSH_THEME_GIT_PROMPT_UNTRACKED="%{$yellow_bold%}?%{$reset_color%}"

PROMPT='%{$fg[cyan]%}%c%{$fg_bold[blue]%}$(git_prompt_info) $(git_prompt_status) : %{$reset_color%}'
