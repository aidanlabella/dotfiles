# My Custom ZSH Theme!!

autoload -Uz vcs_info
autoload -Uz add-zsh-hook

# Enable ZSH internals 
zstyle ':vcs_info:*' enable git
zstyle ':vcs_info:git:*' formats '(%b)'

# Zsh Line edit (ZLE)
zle -N zle-keymap-select update_prompt
zle -N zle-line-init update_prompt

# Define colors (with %{ %} for non-printing sequences)
WHITE="%{$(echo -e '\e[1;37m')%}"
GREEN="%{$(echo -e '\e[1;32m')%}"
YELLOW="%{$(echo -e '\e[1;33m')%}"
BLUE="%{$(echo -e '\e[1;34m')%}"
CYAN="%{$(echo -e '\e[1;36m')%}"
ORANGE="%{$(echo -e '\e[38;2;255;165;0m')%}"
RED="%{$(echo -e '\e[1;31m')%}"
MAGENTA="%{$(echo -e '\e[1;35m')%}"
RESET="%{$(echo -e '\e[0m')%}"

# Global variables for each prompt "widget"
typeset -g ATH_GIT_PROMPT_STATUS=""
typeset -g ATH_CONDA_PROMPT_STATUS=""
typeset -g ATH_SLURM_PROMPT_STATUS=""

get_git_sync_status() {
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

        local to_push=""
        local to_pull=""

        if [[ ahead -gt 0 ]]; then
            to_push=" ${MAGENTA} $ahead"
        fi

        if [[ behind -gt 0 ]]; then
            to_pull=" ${CYAN} $behind"
        fi

        local to_stage=""
        modified=$(git status --porcelain | grep -c '^[ MADRCU]')

        if [[ modified -gt 0 ]]; then
            to_stage=" ${YELLOW} $modified"
        fi

        if [[ -n $branch ]]; then
            ATH_GIT_PROMPT_STATUS=" ${ORANGE} [${GREEN} $branch${to_push}${to_pull}${to_stage}${ORANGE}]"
        else
            ATH_GIT_PROMPT_STATUS=" ${ORANGE} [!(detached HEAD)]"
        fi
    else
        ATH_GIT_PROMPT_STATUS=""
    fi
}

#pyenv_prompt() {
    #if [[ -n $PYENV_VERSION ]]; then
        #echo " ($PYENV_VERSION) "
    #fi
#}

conda_prompt() {
    if [[ -n $CONDA_DEFAULT_ENV && $CONDA_DEFAULT_ENV != "base" ]]; then
        ATH_CONDA_PROMPT_STATUS=" ($CONDA_DEFAULT_ENV) "
    else
        ATH_CONDA_PROMPT_STATUS=""
    fi
}

get_slurm_time_remaining() {
    t="$(squeue -h -j $SLURM_JOBID -o %L)"
    tf=$(echo "$t" | tr '-' 'd ')
    echo "$tf"
}

slurm_prompt() {
    if [[ -n $SLURM_STEP_NODELIST ]]; then
        ATH_SLURM_PROMPT_STATUS="$YELLOW $SLURM_STEP_NODELIST(T-$(get_slurm_time_remaining))"
    else
        ATH_SLURM_PROMPT_STATUS=""
    fi
}

function update_prompt {
    local prompt_head
    if [[ $KEYMAP == vicmd ]]; then
        prompt_head=" "  # Command mode indicator

        if [[ $ZLE_STATE == visual ]]; then
            prompt_head="󰊪 "  # Visual mode
        fi
    else
        prompt_head=" "  # Insert mode indicator
    fi

    # Set the prompt while preserving additional elements like the directory
    # PROMPT="${prompt_head} %~ "  # Adjust this format as needed
    # PROMPT="%m %~ ${prompt_head}"
    PS1="$R_SIDE $prompt_head${RESET}"
    zle reset-prompt
}

zle-line-init() {
    update_prompt
}

# Register precmd hooks
precmd_functions+=(get_git_sync_status conda_prompt slurm_prompt)

setopt prompt_subst

local f_cwd="[%~]"
if [[ -n $ATH_CONDENSE_PROMPT ]]; then
    f_cwd="[%B%4(~|%-2~//%1~|%~)]"
fi

# Set prompt format strings
R_SIDE="${OS_COLOR}$OS_ICON ${f_cwd}${RESET}${ATH_GIT_PROMPT_STATUS}${GREEN}"
PS1='$R_SIDE  ${RESET}'
RPS1='${CYAN}${ATH_CONDA_PROMPT_STATUS}${RED}${ATH_SLURM_PROMPT_STATUS}${YELLOW}󰁥 $(date +"%I:%M:%S %p")${RESET}'
