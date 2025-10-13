# Launch Zsh
# if [ -t 1 ]; then
# exec zsh
# fi
# eval "$(starship init bash)"


export PATH="/mingw64/bin:/usr/bin:/c/Users/ahaj/bin:/c/Program Files/Microsoft VS Code/bin:/c/Users/ahaj/.local/bin:/c/Users/ahaj/AppData/Local/Programs/Python/Python312/Scripts:/c/Users/ahaj/AppData/Local/Programs/Python/Python312:/c/Users/ahaj/AppData/Local/Programs/Python/Launcher:/c/Users/ahaj/AppData/Local/Microsoft/WindowsApps:/c/Users/ahaj/AppData/Local/Programs/Microsoft VS Code/bin:/cmd:/c/Users/ahaj/AppData/Local/Microsoft/WindowsApps:/c/Users/ahaj/bin:/c/Users/ahaj/bin/nvim-win64/bin:/c/Users/ahaj/AppData/Local/Programs/Git/usr/bin"

#export PATH=$PATH:$HOME/bin
#export PATH=$PATH:$HOME/bin/nvim-win64/bin
export PATH=$PATH:$HOME/AppData/Local/Programs/Git/cmd
export PATH=$PATH:$HOME/AppData/Local/Microsoft/WinGet/Packages/Docker.DockerCLI_Microsoft.Winget.Source_8wekyb3d8bbwe/docker
#AppData/Local/Microsoft/WinGet/Packages/Docker.DockerCLI_Microsoft.Winget.Source_8wekyb3d8bbwe/docker/

# Add autocomplete to bashrc
. /c/Users/ahaj/AppData/Local/Programs/Git/mingw64/share/git/completion/git-completion.bash

alias v="nvim"


#export JAVA_HOME="$HOME/jdk"
#export JAVA_HOME="/c/PROGRA~1/Microsoft/jdk-11.0.25.9-hotspot"
#export PATH="$JAVA_HOME/bin:$PATH"
#export JAVA_HOME="$HOME/../../Program Files/Microsoft/jdk-11.0.25.9-hotspot"
#export PYSPARK_PYTHON=python
#export PYSPARK_DRIVER_PYTHON=python
#export SPARK_HOME="$HOME/AppData/Local/Programs/Python/Python312/Lib/site-packages/pyspark"
#export PATH="$SPARK_HOME/bin:$PATH"
#export PYSPARK_SUBMIT_ARGS="--master local[2] pyspark-shell"
#export PYSPARK_SUBMIT_ARGS="--name PySparkShell pyspark-shell"
export EDITOR="nvim"
export PAGER="nvim -R -"


# NICE EXPORTS
export ZSH="$HOME/.oh-my-zsh"
export onedrive="OneDrive - Fora AB" 
export notes="$HOME/$onedrive/Skrivbordet/notes"
export cb="$HOME/team_codebase"
export dc="$HOME/team_codebase/dataplatform-datacontracts"
export syn="$HOME/team_codebase/dataplatform-synapse"
export mdr="$HOME/team_codebase/dataplatform-mdr"
export pg="$HOME/team_codebase/dataplatform-postgresql"
export lh="$HOME/team_codebase/dataplatform-lakehouse"
export dfr="$HOME/OneDrive\ \-\ Fora\ AB/Skrivbordet/downloads_from_remote"

export nvim="$HOME/AppData/Local/nvim/lua/adrianhredhe"
export dot_nvim="$HOME/.dotfiles/nvim/"

shopt -s histappend   # append history when closing session

alias notes='cd && cd "OneDrive - Fora AB" && cd Skrivbordet/notes'

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
    --ignore "Ozrpv*"\
    --ignore "VLlfAN*"\
    --ignore "LRNPkOoS3*"\
    --ignore "LRNPkOo*"\
    --ignore "TQSMO*"\
    --ignore "IASvoVF*"\
	-1 -h  --color=auto'


alias gst="git status" 
alias gsts="git status -sb"
alias gl="git log"
alias gll="git log --oneline"
alias gd="git diff"
alias gdw="git diff-words"
alias gp="git push"
alias gs="git switch"
alias gc="git commit"
alias git_reset_soft="git reset --soft $(git merge-base origin/main HEAD)"

eval "$(fzf --bash)"

source ~/fzf-git.sh/fzf-git.sh
alias databricks="$HOME/.vscode/extensions/databricks.databricks-2.10.2-win32-x64/bin/databricks.exe"

