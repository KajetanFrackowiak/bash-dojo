
!/bin/bash

# Function to recursively scan directories
scan_directory() {
    local dir="$1"
    local file_extension="$2"

    # Loop through files in the current directory
    for file in "$dir"/*; do
        if [ -d "$file" ]; then
            # If a directory is found, recursively scan it
            scan_directory "$file" "$file_extension"
        elif [ -f "$file" ]; then
            # If a file is found, check its extension
            if [ "${file##*.}" = "$file_extension" ]; then
                echo "$file"  # Display the full path to the file
            fi
        fi
    done
}

# Directory to scan
directory="/home/kajetan/Documents"

# File extension to look for
file_extension="txt"

# Check if the directory exists
if [ -d "$directory" ]; then
    echo "Found .txt files in the directory '$directory':"
    # Start scanning the directory
    scan_directory "$directory" "$file_extension"
else
    echo "Directory '$directory' does not exist."
fi

# Create a backup directory if it doesn't exist
backup_dir="$HOME/.backups"
mkdir -p "$backup_dir"

# Archive the files
backup_file="$backup_dir/$(whoami)_backup_$(date +'%Y-%m-%d').tar.gz"
tar -czvf "$backup_file" "$directory"/*

echo "Backup created: $backup_file"

