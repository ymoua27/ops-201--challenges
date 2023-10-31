#!/bin/bash

# Script Name                conditionals.sh
# Author Name                Yue Moua
# Date of latest revision    10/30/2023
# Purpose                    Demonstrate conditionals, creating a script to detect if a file/directory exists, then creaates it if it does not
# Execution                  bash conditionals.sh 

# Array of directory names
directories=("Beaky" "Benjamin" "Doua" "Me")

# Loop through the array

# Set the desktop directory path
desktop_dir="$HOME/Desktop"

# Array of directory names to create
directories=("1" "2" "3" "4")


for dir_name in "${directories[@]}"; do
  dir_path="$desktop_dir/$dir_name"

  if [ ! -d "$dir_path" ]; then
    mkdir -p "$dir_path"
    if [ $? -eq 0 ]; then
      echo "Created directory: $dir_path"
  else
    echo "Directory already exists: $dir_path"
  fi
fi

done 