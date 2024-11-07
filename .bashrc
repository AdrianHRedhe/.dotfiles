# Launch Zsh
# if [ -t 1 ]; then
# exec zsh
# fi
# eval "$(starship init bash)"





export PATH="/mingw64/bin:/usr/bin:/c/Users/ahaj/bin:/c/Program Files/Microsoft VS Code/bin:/c/Users/ahaj/.local/bin:/c/Users/ahaj/AppData/Local/Programs/Python/Python312/Scripts:/c/Users/ahaj/AppData/Local/Programs/Python/Python312:/c/Users/ahaj/AppData/Local/Programs/Python/Launcher:/c/Users/ahaj/AppData/Local/Microsoft/WindowsApps:/c/Users/ahaj/AppData/Local/Programs/Microsoft VS Code/bin:/cmd:/c/Users/ahaj/AppData/Local/Microsoft/WindowsApps:/c/Users/ahaj/bin:/c/Users/ahaj/bin/nvim-win64/bin:/c/Users/ahaj/AppData/Local/Programs/Git/usr/bin"

#export PATH=$PATH:$HOME/bin
#export PATH=$PATH:$HOME/bin/nvim-win64/bin
export PATH=$PATH:$HOME/AppData/Local/Programs/Git/cmd

# Add autocomplete to bashrc
. /c/Users/ahaj/AppData/Local/Programs/Git/mingw64/share/git/completion/git-completion.bash

alias v="nvim"


export JAVA_HOME="$HOME/AppData/Local/Programs/Microsoft/jdk-11.0.25.9-hotspot"
export PATH="$JAVA_HOME/bin:$PATH"
export PYSPARK_PYTHON=python
export PYSPARK_DRIVER_PYTHON=python



# NICE EXPORTS
export ZSH="$HOME/.oh-my-zsh"
export onedrive="OneDrive - Fora AB" 
export notes="$HOME/$onedrive/Skrivbordet/notes"
export cb="$HOME/team_codebase"
export dc="$HOME/team_codebase/dataplatform-datacontracts"
export syn="$HOME/team_codebase/dataplatform-synapse"
export mdr="$HOME/team_codebase/dataplatform-mdr"
export pg="$HOME/team_codebase/dataplatform-postgresql"
export nb="$HOME/team_codebase/personal-dp-synapse/notebook-py"
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
	-1 -h  --color=auto'



eval "$(fzf --bash)"

source ~/fzf-git.sh/fzf-git.sh
