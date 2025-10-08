batch_tar() {
    for dir in batch_*; do
        if [ -d "$dir" ]; then
            tar -cf "${dir}.tar" "$dir"
        fi
    done
}

tar_all() {
    for dir in */; do  # Loop through all directories in the current directory
        if [ -d "$dir" ] && [ "$dir" != "./" ]; then  # Check if it's a directory and not the current directory
            tar -cf "${dir%/}.tar" "$dir"  # Create a tar file for the directory
        fi
    done
}

remove_tar_files() {
    for file in *.tar; do
        if [ -f "$file" ]; then  # Check if it's a regular file
            rm "$file"  # Remove the tar file
        fi
    done
}

