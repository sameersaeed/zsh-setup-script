directory() {
	echo '%F{green}%2~%f'
}

username(){
	echo '[%(?.%F{blue}%n@%m%f.%F{red}%n@%m%f)] %#'
}

current_time() {
	echo '%F{yellow}[%D{%r}]%f'
}

ZSH_THEME_GIT_PROMPT_DIRTY="*"
ZSH_THEME_GIT_PROMPT_CLEAN=""
ZSH_THEME_GIT_PROMPT_PREFIX="("
ZSH_THEME_GIT_PROMPT_SUFFIX=")"

PROMPT='%B$(current_time) $(directory) $(username)%b '
RPROMPT='%F{gray}$(git_prompt_info)%f'
