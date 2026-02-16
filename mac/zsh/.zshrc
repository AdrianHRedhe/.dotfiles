# ------------------------------------------------------------------------------
# 1. ENVIRONMENT & PATHS
# ------------------------------------------------------------------------------
# Ensure PATH only contains unique entries
typeset -U path
# Load editor / pager etc
[ -f ~/.shell/env.sh ] && source ~/.shell/env.sh

# Remove 'You have mail' for cronjobs
unset MAILCHECK
# ZSH behaviour
setopt extended_glob
unsetopt LIST_BEEP
# Linux version to turn off the bell
# xset b off

# ------------------------------------------------------------------------------
# 2. MODULAR LOADER
# ------------------------------------------------------------------------------
function source_dir() {
    if [[ -d "$1" ]]; then
        for f in "$1"/*(N); do
            source "$f"
        done
    fi
}

# Sourcing aliases / paths some which might come from other stow packages
source_dir ~/.shell/aliases
source_dir ~/.shell/paths

# ------------------------------------------------------------------------------
# 3. OH-MY-ZSH CONFIGURATION
# ------------------------------------------------------------------------------
export ZSH="$HOME/.oh-my-zsh"
ZSH_THEME="robbyrussell"

plugins=(
	git
	zsh-syntax-highlighting
	zsh-autosuggestions
	command-time
)

[ -f $ZSH/oh-my-zsh.sh ] && source $ZSH/oh-my-zsh.sh

# ------------------------------------------------------------------------------
# 4. COMPLETIONS & KEYBINDS
# ------------------------------------------------------------------------------
# 1. Set up search path
funcpath="$HOME/.shell/autoload"
fpath=($funcpath /usr/local/share/zsh-completions $fpath)

# 2. Lazily Autoload functions that are in .shell/autoload folder
autoload -Uz ${=$(cd "$funcpath" && echo *)}

# 3. Setup case-insensitive line completion for zsh
autoload -U compinit && compinit -u
zstyle ':completion:*' matcher-list 'm:{a-zA-Z}={A-Za-z}' 'r:|=*' 'l:|=* r:|=*'

# 4. Set up keybinds
bindkey '^Y' autosuggest-accept
bindkey -s '^f' "tmux-sessionizer\n"
bindkey -s '^[a' "fzf-cd-parent\n"

# Suspension and re-attachment both use ctrl-z e.g. toggle
fg_last_job() { fg }
zle -N fg_last_job fg_last_job  # Create a zle function needed to bindkey
bindkey '^Z' fg_last_job        # Bind Ctrl+z to the zle functio


# ------------------------------------------------------------------------------
# 5. THIRD PARTY TOOLS
# ------------------------------------------------------------------------------
# Fix completions for uv run to autocomplete .py files (Hint does not work as of now)
# if [[ -z "$_UV_COMPLETION_LOADED" ]]; then
    # eval "$(uv generate-shell-completion zsh)"
    # export _UV_COMPLETION_LOADED=1
# fi

# export LH = "~/projects/dataplatform-lakehouse"
# export SYN = "~/projects/dataplatform-synapse"
# export PG = "~/projects/dataplatform-postgresql"
# export MDR = "~/projects/dataplatform-mdr"
# export NOTES = "~/OneDrive - Fora AB/Skrivbordet/notes"

# Sourcing everything i want to source only if the files exist
# First expression evaluates if things exists and second only runs if they do
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
[ -f ~/fzf-git.sh/fzf-git.sh ] && source ~/fzf-git.sh/fzf-git.sh
