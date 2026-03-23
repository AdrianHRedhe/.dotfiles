# Picks Postgres up and uses the first version found on computer
for _pg_dir in /opt/homebrew/opt/postgresql@*/bin; do
    [ -d "$_pg_dir" ] && export PATH="$_pg_dir:$PATH" && break
done
unset _pg_dir
