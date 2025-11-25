# Aidan's custom ZSH theme!
autoload -Uz vcs_info
zstyle ':vcs_info:*' enable git
zstyle ':vcs_info:git:*' formats '(%b)'

# Update the prompt to include the conda environment
WHITE=$'\e[1;37m'
GREEN=$'\e[1;32m'
YELLOW=$'\e[1;33m'
BLUE=$'\e[1;34m'
CYAN=$'\e[1;36m'
ORANGE=$'\e[38;2;255;165;0m'
RED=$'\e[1;31m'
MAGENTA=$'\e[1;35m'
RESET=$'\e[0m'

ATH_GIT_PROMPT_STATUS=""

function get_git_sync_status() {
  if git rev-parse --is-inside-work-tree &>/dev/null; then
    local branch=$(git symbolic-ref --short HEAD 2>/dev/null)
    local upstream=$(git rev-parse --abbrev-ref --symbolic-full-name @{u} 2>/dev/null)

    local ahead=0
    local behind=0
    local modified=0

    if [[ -n $upstream ]]; then
      ahead=$(git rev-list --count HEAD ^"$upstream" 2>/dev/null)
      behind=$(git rev-list --count "$upstream" ^HEAD 2>/dev/null)
    fi

    modified=$(git status --porcelain | grep -c '^[ MADRCU]')


    if [[ -n $branch ]]; then
      ATH_GIT_PROMPT_STATUS=" $ORANGE [$GREEN=$branch $MAGENTA$ahead $CYAN$behind $YELLOW✎$modified$ORANGE]"
    else
      ATH_GIT_PROMPT_STATUS=" $ORANGE [!(detached HEAD)]"
    fi
  fi
}

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

precmd_functions+=(get_git_sync_status)

OS_COLOR=$WHITE

#PROMPT='$OS_COLOR$OS_ICON $WHITE${str}[%~${str}]${git_status}$GREEN  $RESET'
PROMPT='%{$OS_COLOR%}$OS_ICON %{$WHITE%}${str}[%~${str}]${ATH_GIT_PROMPT_STATUS}%{$GREEN%}  %{$RESET%}'
RPROMPT='%{$CYAN%}$(conda_prompt)%{$YELLOW%}$(slurm_prompt) %{$GREEN%}󰁥 $(date +"%I:%M %p")%{$RESET%}'

ZSH_THEME_GIT_PROMPT_PREFIX="$RED "
ZSH_THEME_GIT_PROMPT_SUFFIX=""
ZSH_THEME_GIT_PROMPT_DIRTY=" $RED⦿"
ZSH_THEME_GIT_PROMPT_CLEAN=" $GREEN⦾"
