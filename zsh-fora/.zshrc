# If you come from bash you might have to change your $PATH.
#export PATH=$PATH:$HOME/AppData/Local/miniconda3/Scripts
#export PATH=$PATH:$HOME/AppData/Local/miniconda3/condabin

#export PATH=/mingw64/bin:/usr/bin:/c/Users/ahaj/bin:/c/Windows/System32/OpenSSH:/c/Users/ahaj/AppData/Local/Programs/Python/Python312/Scripts:/c/Users/ahaj/AppData/Local/Programs/Python/Python312:/c/Users/ahaj/AppData/Local/Programs/Python/Launcher:/c/Users/ahaj/AppData/Local/Microsoft/WindowsApps:/cmd:/c/Users/ahaj/bin:/c/Users/ahaj/bin/nvim-win64/bin:

export PATH=$PATH:$HOME/bin
export PATH=$PATH:$HOME/bin/nvim-win64/bin
export PATH=$PATH:$HOME/AppData/Local/Programs/Git/usr/bin



#:"$Home/AppData/Local/miniconda3/condabin"

# Path to your Oh My Zsh installation.
export ZSH="$HOME/.oh-my-zsh"
export notes="$HOME/OneDrive - Fora AB/Skrivbordet/notes"
export cb="$HOME/team_codebase"
export dc="$HOME/team_codebase/dataplatform-datacontracts"
export syn="$HOME/team_codebase/dataplatform-synapse"
export nb="$HOME/team_codebase/personal-dp-synapse/notebook-py"
export nvim="$HOME/AppData/Local/nvim"


# Set name of the theme to load --- if set to "random", it will
# load a random theme each time Oh My Zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/ohmyzsh/ohmyzsh/wiki/Themes
ZSH_THEME="robbyrussell"

# Set list of themes to pick from when loading at random
# Setting this variable when ZSH_THEME=random will cause zsh to load
# a theme from this variable instead of looking in $ZSH/themes/
# If set to an empty array, this variable will have no effect.
# ZSH_THEME_RANDOM_CANDIDATES=( "robbyrussell" "agnoster" )

# configure node version manager
export NVM_DIR=~/.nvm
[ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh" --no-use # This loads nvm
alias node='unalias node ; unalias npm ; nvm use default ; node $@'
alias npm='unalias node ; unalias npm ; nvm use default ; npm $@'

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

# Uncomment the following line to display red dots whilst waiting for completion.
# You can also set it to another string to have that shown instead of the default red dots.
# e.g. COMPLETION_WAITING_DOTS="%F{yellow}waiting...%f"
# Caution: this setting can cause issues with multiline prompts in zsh < 5.7.1 (see #5765)
# COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# You can set one of the optional three formats:
# "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# or set a custom format using the strftime function format specifications,
# see 'man strftime' for details.
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load?
# Standard plugins can be found in $ZSH/plugins/
# Custom plugins may be added to $ZSH_CUSTOM/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(
#	git
#	zsh-syntax-highlighting
	zsh-autosuggestions
	command-time
	zsh-aliases-ls
)

source $ZSH/oh-my-zsh.sh

# User configuration

# export MANPATH="/usr/local/man:$MANPATH"

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='nvim'
# fi

# Compilation flags
# export ARCHFLAGS="-arch $(uname -m)"

# Set personal aliases, overriding those provided by Oh My Zsh libs,
# plugins, and themes. Aliases can be placed here, though Oh My Zsh
# users are encouraged to define aliases within a top-level file in
# the $ZSH_CUSTOM folder, with .zsh extension. Examples:
#: - $ZSH_CUSTOM/aliases.zsh
# - $ZSH_CUSTOM/macos.zsh
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias notes="mate ~/OneDrive - Fora AB/Skrivbordet/notes"
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"
alias v="nvim"
alias vim="vim"

# source ~/AppData/Local/miniconda3/etc/profile.d/conda.sh

# # maual set conda env
#export CONDA_DEFAULT_ENV=default
#export CONDA_EXE=/c/Users//miniconda3/Scripts/conda.exe
#export CONDA_PREFIX='C:\Users\ahaj\AppData\miniconda3\envs\default'
#export CONDA_PREFIX_1='\C:\Users\ahaj\AppData\rrminiconda3'
#export CONDA_PROMPT_MODIFIER='(default) '
#export CONDA_PYTHON_EXE=/c/Users/peter/miniconda3/python.exe
#export CONDA_SHLVL=2
#export PATH=/c/Users/peter/miniconda3/envs/default:/c/Users/peter/miniconda3/envs/default/Library/mingw-w64/bin:/c/Users/peter/miniconda3/envs/default/Library/usr/bin:/c/Users/peter/miniconda3/envs/default/Library/bin:/c/Users/peter/miniconda3/envs/default/Scripts:/c/Users/peter/miniconda3/envs/default/bin:/c/Users/peter/miniconda3/condabin:$PATH
#
#

# Dont look at honeypot files when lsing
alias ls='ls \
	--ignore "*.DAT*" \
	--ignore "!!!!*" \
	--ignore "ZZZZZ*" \
	--ignore "DxbaY*" \
	--ignore "KTPocMy*" \
	--ignore "sKEpUE*" \
	--ignore "XORXOR*" \
	--ignore "ntuser*" \
	--ignore "eNflNXw*" \
	-1 -h  --color=auto'

vf() {
	vim $(fzf)
}

ex() {
	explorer "$@"
}


google() {
    # Combine all arguments into a single query string separated by '+'
    local query=$(echo "$*" | sed 's/ / /g')

	explorer "https://google.com/search?q=$query"
    # Use explorer.exe to open the Google search URL in the default browser
    #explorer "https://www.google.com/search?q=$query"
}


gh() {
	~/.local/bin/gh.exe "$@"
}


# using ripgrep combined with preview
# find-in-file - usage: fif <searchTerm>
fif() {
  rg "$#" --files-with-matches --path-separator "\\" | fzf --preview "bat {}"
}

#bat \
	 # --style=numbers \
	 # --color=always \
	 # | rg --colors 'match:bg:yellow'
		
	  #--line-range :500 {} 2> /dev/null \

  #"highlight -O ansi -l {} 2> /dev/null | rg --colors 'match:bg:yellow' --ignore-case --pretty --context 10 '$1' || rg --ignore-case --pretty --context 10 '$1' {}"

# bindkey -v
alias v="nvim"
