# Aidan's custom ZSH theme!
source ~/.oh-my-zsh/custom/plugins/gitstatus/gitstatus.prompt.zsh

export PYENV_VIRTUALENV_DISABLE_PROMPT=1

function pyenv_prompt() {
    if [[ -n $PYENV_VERSION ]]; then
        echo " ($PYENV_VERSION) "
    fi
}

function conda_prompt() {
    if [[ -n $CONDA_DEFAULT_ENV && $CONDA_DEFAULT_ENV != "base" ]]; then
        echo " ($CONDA_DEFAULT_ENV) "
    fi
}

function git_prompt() {
    if [[ -n $GITSTATUS_PROMPT ]]; then
        echo "$RED ${GITSTATUS_PROMPT:+ $GITSTATUS_PROMPT}"
    fi
}

function get_slurm_time_remaining() {
    t="$(squeue -h -j $SLURM_JOBID -o %L)"
    tf=$(echo "$t"| tr '-' 'd  ')
    echo "$tf"
}

function slurm_prompt() {
    if [[ -n $SLURM_STEP_NODELIST ]]; then
        echo "$YELLOW $SLURM_STEP_NODELIST(T-$(get_slurm_time_remaining))"
    fi
}

# Update the prompt to include the conda environment
WHITE="%{$fg_bold[white]%}"
GREEN="%{$fg_bold[green]%}"
YELLOW="%{$fg_bold[yellow]%}"
BLUE="%{$fg_bold[blue]%}"
CYAN="%{$fg_bold[cyan]%}"
RED="%{$fg_bold[red]%}"
MAGENTA="%{$fg_bold[magenta]%}"
RESET="%{$reset_color%}"

OS_COLOR=$WHITE

PROMPT='$OS_COLOR$OS_ICON $WHITE${str}[%~${str}]$(git_prompt) $BLUE$(conda_prompt)$(slurm_prompt)$GREEN $RESET'

ZSH_THEME_GIT_PROMPT_PREFIX="$RED "
ZSH_THEME_GIT_PROMPT_SUFFIX=""
ZSH_THEME_GIT_PROMPT_DIRTY=" $RED⦿"
ZSH_THEME_GIT_PROMPT_CLEAN=" $GREEN⦾"
