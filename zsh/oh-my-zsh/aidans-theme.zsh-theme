# Aidan's custom ZSH theme!
source ~/.oh-my-zsh/custom/plugins/gitstatus/gitstatus.prompt.zsh

function conda_prompt() {
    if [[ -n $CONDA_DEFAULT_ENV && $CONDA_DEFAULT_ENV != "base" ]]; then
        echo " ($CONDA_DEFAULT_ENV) "
    fi
}

function git_prompt() {
    if [[ -n $GITSTATUS_PROMPT ]]; then
        echo "$YELLOW ${GITSTATUS_PROMPT:+ $GITSTATUS_PROMPT}"
    fi
}

function slurm_prompt() {
    if [[ -n $SLURM_STEP_NODELIST ]]; then
        echo "$YELLOW  $SLURM_STEP_NODELIST"
    fi
}

# Update the prompt to include the conda environment
GREEN="%{$fg_bold[green]%}"
YELLOW="%{$fg_bold[yellow]%}"
BLUE="%{$fg_bold[blue]%}"
CYAN="%{$fg_bold[cyan]%}"
RED="%{$fg_bold[red]%}"
MAGENTA="%{$fg_bold[magenta]%}"
RESET="%{$reset_color%}"

OS_COLOR=$MAGENTA

PROMPT='$OS_COLOR$OS_ICON $MAGENTA${str}[%~${str}]$(git_prompt)$BLUE$(conda_prompt)$(slurm_prompt) $GREEN $RESET'

ZSH_THEME_GIT_PROMPT_PREFIX="$RED "
ZSH_THEME_GIT_PROMPT_SUFFIX=""
ZSH_THEME_GIT_PROMPT_DIRTY=" $RED⦿"
ZSH_THEME_GIT_PROMPT_CLEAN=" $GREEN⦾"
