function conda_prompt() {
    if [[ -n $CONDA_DEFAULT_ENV && $CONDA_DEFAULT_ENV != "base" ]]; then
        echo " ($CONDA_DEFAULT_ENV) "
    fi
}

# Update the prompt to include the conda environment
GREEN="%{$fg_bold[green]%}"
YELLOW="%{$fg_bold[yellow]%}"
BLUE="%{$fg_bold[blue]%}"
PINK="%{$fg_bold[pink]%}"
CYAN="%{$fg_bold[cyan]%}"
RED="%{$fg_bold[red]%}"
RESET="%{$reset_color%}"
# OS_ICON=""

PROMPT='$OS_ICON $YELLOW%~ $BLUE$(conda_prompt)$RED$(git_prompt_info) $RESET'

ZSH_THEME_GIT_PROMPT_PREFIX="$CYAN "
ZSH_THEME_GIT_PROMPT_SUFFIX=""
ZSH_THEME_GIT_PROMPT_DIRTY=" $RED⦿"
ZSH_THEME_GIT_PROMPT_CLEAN=" $GREEN⦾"
