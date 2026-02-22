# Picks Postgres up and uses the first version found on computer
_pg_found=""
if [ -d /opt/homebrew/opt ]; then
    _pg_found=$(find /opt/homebrew/opt -maxdepth 2 -type d -name "postgresql@*" -exec test -d {}/bin \; -print -quit 2>/dev/null | head -n 1)
        [ -n "$_pg_found" ] && _pg_found="$_pg_found/bin"
        fi
        if [ -n "$_pg_found" ]; then
            export PATH="$_pg_found:$PATH"
            fi
            unset _pg_found
