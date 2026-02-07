# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH
eval $(/opt/homebrew/bin/brew shellenv)
export PATH=$PATH:/usr/local/bin
export PATH=$PATH:$HOME/.local/bin

# Path to your oh-my-zsh installation.
export ZSH="$HOME/.oh-my-zsh"

setopt extended_glob

export BAT_THEME="Catppuccin Mocha"

# Define a source_dir function
function source_dir() {
    if [[ -d "$1" ]]; then
        for f in "$1"/*(N); do
            source "$f"
        done
    fi
}

# Sourcing aliases some which might come from other packages
source_dir ~/.shell/aliases
# source_dir ~/.shell/functions


# Avoid issue with docker
export DOCKER_DEFAULT_PLATFORM=linux/x86_64

# Remove 'You have mail' for cronjobs
unset MAILCHECK


ZSH_THEME="robbyrussell"

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion.
# Case-sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment one of the following lines to change the auto-update behavior
# zstyle ':omz:update' mode disabled  # disable automatic updates
# zstyle ':omz:update' mode auto      # update automatically without asking
# zstyle ':omz:update' mode reminder  # just remind me to update when it's time

# Uncomment the following line to change how often to auto-update (in days).
# zstyle ':omz:update' frequency 13

# Uncomment the following line if pasting URLs and other text is messed up.
# DISABLE_MAGIC_FUNCTIONS="true"

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

plugins=(
	git
	zsh-syntax-highlighting
	zsh-autosuggestions
	command-time
)


# User configuration

# export MANPATH="/usr/local/man:$MANPATH"

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='mvim'
# fi
export EDITOR="nvim"
export PAGER="nvim -R -"
# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# Example aliases
alias zshconfig="~/.zshrc"
alias ohmyzsh="mate ~/.oh-my-zsh"
alias v="nvim"
alias eject="diskutil eject"


# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
__conda_setup="$('/Users/adrian/miniconda3/bin/conda' 'shell.zsh' 'hook' 2> /dev/null)"
if [ $? -eq 0 ]; then
    eval "$__conda_setup"
else
    if [ -f "/Users/adrian/miniconda3/etc/profile.d/conda.sh" ]; then
        . "/Users/adrian/miniconda3/etc/profile.d/conda.sh"
    else
        export PATH="/Users/adrian/miniconda3/bin:$PATH"
    fi
fi
unset __conda_setup
# <<< conda initialize <<<
export nvim="~/.config/nvim/lua/adrianhredhe"
export PATH="/opt/homebrew/opt/openjdk/bin:$PATH"
export CPPFLAGS="-I/opt/homebrew/opt/openjdk/include#"



bindkey '^Y' autosuggest-accept



alias sshpi="ssh pi@adrianhredhe.com"
rsyncTo() {
  local dest="pi@adrianhredhe.com:~/"
  echo "$1" | xargs -I {} rsync -avz {} "$dest"
}

rsyncFrom() {
  local src="pi@adrianhredhe.com:~/"
  echo "$1" | xargs -I {} rsync -avz "$src"{} .
}


# Lets do a simple fg
fg_last_job() {
  fg  # Or fg %+, or use jobs to select if needed.
}

zle -N fg_last_job fg_last_job  # Create a zle function
bindkey '^Z' fg_last_job       # Bind Ctrl+X to the zle functio
#bindkey '^Z' "fg"



# source /opt/homebrew/Cellar/fzf/0.55.0/shell/key-bindings.zsh
# source /opt/homebrew/Cellar/fzf/0.55.0/shell/completion.zsh



autoload -U compinit promptinit

compinit
zstyle ':completion:*' matcher-list 'm:{a-zA-Z}={A-Za-z}' 'r:|=*' 'l:|=* r:|=*'
fpath=(/usr/local/share/zsh-completions $fpath)



unsetopt LIST_BEEP
# xset b off


funcpath="$HOME/.shell/autoload"
FPATH="$funcpath:$FPATH"
autoload ${=$(cd "$funcpath" && echo *)}

# Where should I put you?
bindkey -s '^f' "tmux-sessionizer\n"

# alias remove_input_files_from_git = "git ls-files | grep -i input | xargs git rm --cached"
export PATH="/opt/homebrew/opt/postgresql@16/bin:$PATH"

# Fix completions for uv run to autocomplete .py files
_uv_run_mod() {
    if [[ "$words[2]" == "run" && "$words[CURRENT]" != -* ]]; then
        _arguments '*:filename:_files -g "*.py"'
    else
        _uv "$@"
    fi
}
compdef _uv_run_mod uv
#

# export LH = "~/projects/dataplatform-lakehouse"
# export SYN = "~/projects/dataplatform-synapse"
# export PG = "~/projects/dataplatform-postgresql"
# export MDR = "~/projects/dataplatform-mdr"
# export NOTES = "~/OneDrive - Fora AB/Skrivbordet/notes"
export PATH="/opt/homebrew/opt/postgresql@15/bin:$PATH"


# Sourcing everything i want to source only if the files exist
# First expression evaluates if things exists and second only runs if they do
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
[ -f $ZSH/oh-my-zsh.sh ] && source $ZSH/oh-my-zsh.sh
[ -f ~/fzf-git.sh/fzf-git.sh ] && source ~/fzf-git.sh/fzf-git.sh
[ -f ~/.my_custom_commands.sh ] && source ~/.my_custom_commands.sh
[ -f ~/.my_custom_commands.zsh ] && source ~/.my_custom_commands.zsh
