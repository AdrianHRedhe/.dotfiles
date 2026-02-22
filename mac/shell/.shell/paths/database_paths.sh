# Picks Postgres up and uses the first version found on computer
if [ -d /opt/homebrew/opt ]; then
    for d in /opt/homebrew/opt/postgresql@*/bin; do
        if [ -d "$d" ]; then
            _pg_found="$d"
            break
        fi
    done
fi
if [ -n "$_pg_found" ]; then
    export PATH="$_pg_found:$PATH"
fi
unset _pg_found
