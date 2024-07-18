


#!/bin/bash

# Function to create a directory if it doesn't exist
create_directory() {
  if [ ! -d "$1" ]; then
    echo "Directory $1 does not exist. Creating..."
    mkdir -p "$1"
  else
    echo "Directory $1 already exists."
  fi
}

# Function to create files with content
create_files() {
  local dir=$1
  for i in {1..5}; do
    local file="$dir/file$i.txt"
    echo "Creating $file..."
    echo "This is file number $i" > "$file"
    echo "Adding some more lines to $file" >> "$file"
    for j in {1..5}; do
      echo "Line $j in file $i" >> "$file"
    done
  done
}

# Function to list files and their contents
list_files() {
  local dir=$1
  echo "Listing files in $dir:"
  for file in "$dir"/*; do
    echo "Contents of $file:"
    cat "$file"
    echo ""
  done
}

# Function to calculate the total number of lines in all files
count_lines() {
  local dir=$1
  local total_lines=0
  for file in "$dir"/*; do
    local lines_in_file=$(wc -l < "$file")
    total_lines=$((total_lines + lines_in_file))
  done
  echo "Total number of lines in all files: $total_lines"
}

# Main script execution
DIRECTORY="test_directory"

create_directory "$DIRECTORY"
create_files "$DIRECTORY"
list_files "$DIRECTORY"
count_lines "$DIRECTORY"
