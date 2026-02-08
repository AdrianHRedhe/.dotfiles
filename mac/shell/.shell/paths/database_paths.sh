# Picks Postgres up and uses the first version found on computer
for d in /opt/homebrew/opt/postgresql@*/bin; do
    [ -d "$d" ] && _pg_found="$d"
done
if [ -n "$_pg_found" ]; then
    export PATH="$_pg_found:$PATH"
fi
unset _pg_found
