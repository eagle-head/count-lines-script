#!/bin/bash

# Check if the folder path is provided
if [ "$#" -ne 1 ]; then
    echo "Usage: $0 folder_path"
    exit 1
fi

folder_path=$1

# Check if the folder exists
if [ ! -d "$folder_path" ]; then
    echo "Error: Folder not found"
    exit 1
fi

# Function to count lines in a file
count_lines() {
    local file=$1
    local line_count=$(wc -l "$file" | awk '{print $1}')
    echo $line_count
}

# Initialize the total line count
total_line_count=0

# Iterate through each file in the folder and its subfolders
while IFS= read -r -d '' file; do
    if [ -f "$file" ]; then
        line_count=$(count_lines "$file")
        total_line_count=$((total_line_count + line_count))
    fi
done < <(find "$folder_path" -type f -print0)

echo "Total lines: $total_line_count"
