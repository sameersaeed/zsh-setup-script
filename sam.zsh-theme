#green directory
directory() {
	echo '%F{green}%2~%f'
}

#blue username, turns red if error
username(){
	echo '[%(?.%F{blue}%n@%m%f.%F{red}%n@%m%f)] %#'
}

#displays current time
current_time() {
	echo '%F{yellow}[%D{%r}]%f'
}

#git prompt
ZSH_THEME_GIT_PROMPT_DIRTY="*"
ZSH_THEME_GIT_PROMPT_CLEAN=""
ZSH_THEME_GIT_PROMPT_PREFIX="("
ZSH_THEME_GIT_PROMPT_SUFFIX=")"

#will display [time][directory][username] on left
PROMPT='%B$(current_time) $(directory) $(username)%b '
#will display git prompt info on right
RPROMPT='%F{gray}$(git_prompt_info)%f'
