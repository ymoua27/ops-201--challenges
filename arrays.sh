#!/bin/bash

# Script Name:              arrays.sh
# Author:                   Yue Moua
# Date of last revision:    10/26/2023
# Purpose:                  Creates four directories, put them in an array, and refrences the array variable to create a new .txt file in each directory

# Create directories
mkdir dir1
mkdir dir2
mkdir dir3
mkdir dir4

# Load directory paths into an array
directories=("dir1" "dir2" "dir3" "dir4")

# Create a .txt file in each directory using array 
for i in "${!directories[@]}"; do
  touch "${directories[i]}/file${i}.txt"
done

# Print a message to confirm directory and file creation
echo "Four directories and four .txt files created: ${directories[@]}."