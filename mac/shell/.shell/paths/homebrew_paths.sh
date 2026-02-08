# Check if the standard Apple Silicon path exists
if [[ -x /opt/homebrew/bin/brew ]]; then
    # Hardcoded if brew is in expected location
    export HOMEBREW_PREFIX="/opt/homebrew"
    export HOMEBREW_CELLAR="/opt/homebrew/Cellar"
    export HOMEBREW_REPOSITORY="/opt/homebrew"
    fpath=("/opt/homebrew/share/zsh/site-functions" $fpath)
    export PATH="/opt/homebrew/bin:/opt/homebrew/sbin${PATH+:$PATH}"
    export MANPATH="/opt/homebrew/share/man${MANPATH+:$MANPATH}"
    export INFOPATH="/opt/homebrew/share/info${INFOPATH+:$INFOPATH}"
else
    # Fallback for custom installs
    if command -v brew >/dev/null; then
        eval "$(brew shellenv)"
    fi
fi
