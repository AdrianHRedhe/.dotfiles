export EDITOR="nvim"
export PAGER="nvim -R -"
export MANPAGER="less -R"
export BAT_THEME="Catppuccin Mocha"

# Help compilers find OpenJDK headers
export CPPFLAGS="-I/opt/homebrew/opt/openjdk/include"

# Avoid issue with docker
export DOCKER_DEFAULT_PLATFORM=linux/x86_64
